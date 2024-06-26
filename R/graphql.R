#' #' Query GraphQL Github API
#' #'
#' #' This function helps you retrieving the status of a project board within the organization
#' #'
#' #' @param board_url url of the github project board
#' #' @param github_token access token to the graphql api
#' #'
#' #' @importFrom stringr str_extract
#' #' @importFrom glue glue
#' #' @importFrom gh gh_gql
#' #' @importFrom purrr map_dfr map_chr
#' #' @importFrom gitlabr multilist_to_tibble
#' #' @importFrom tidyr unnest_wider
#' #' @importFrom dplyr mutate select
#' #'
#' #' @return a tibble
#' #'
#' #' @export
#' #' @examples
#' #' \dontrun{
#' #'
#' #' # Example with board hosted in an organization github account
#' #' board_url_organization <- "https://github.com/orgs/ThinkR-open/projects/4/"
#' #' github_token <- Sys.getenv("GITHUB_PAT")
#' #'
#' #' graphql_to_tibble(
#' #'   board_url = board_url_organization,
#' #'   github_token = github_token
#' #' )
#' #'
#' #'
#' #' # Example with board hosted in a user github account
#' #' board_url_user <- "https://github.com/users/the-thinkr/projects/1"
#' #' github_token <- Sys.getenv("GITHUB_PAT")
#' #'
#' #' graphql_to_tibble(
#' #'   board_url = board_url_user,
#' #'   github_token = github_token
#' #' )
#' #' }
#' graphql_to_tibble <- function(board_url, github_token = Sys.getenv("GITHUB_PAT")) {
#'   if (github_token == "") {
#'     stop("You must provide an access token to the Github Api (read:project scope is required)")
#'   }
#'
#'   # extract organization and project number from board url to retrieve the node ID of the
#'   # project within the organization
#'   project_number <- str_extract(
#'     string = board_url,
#'     pattern = "(?<=projects/)[:digit:]{1,}"
#'   )
#'
#'   organization_1 <-
#'     str_extract(string = board_url, pattern = "(?<=github.com/)[:graph:]{1,}(?=/projects/)")
#'   organization <- gsub("orgs/|users/", "", organization_1)
#'   if (grepl("^orgs/", organization_1)) {
#'     is_orgs_or_user <- "orgs"
#'     organization <- gsub("orgs/|users/", "", organization_1)
#'     req_project_id <- glue(
#'       '
#'   query{
#'     organization(login: "$_organization_$"){
#'       projectV2(number: $_project_number_$) {
#'         id
#'       }
#'     }
#'   }',
#'       .open = "$_",
#'       .close = "_$"
#'     )
#'   } else if (grepl("^users/", organization_1)) {
#'     is_orgs_or_user <- "users"
#'     organization <- gsub("orgs/|users/", "", organization_1)
#'     req_project_id <-
#'       req_project_id <- glue(
#'         '
#'   query{
#'     user(login: "$_organization_$"){
#'       projectV2(number: $_project_number_$) {
#'         id
#'       }
#'     }
#'   }',
#'         .open = "$_",
#'         .close = "_$"
#'       )
#'   }
#'
#'   project_id <- gh_gql(req_project_id, .token = github_token) %>%
#'     unlist()
#'
#'
#'   # check whether the provided token has the right scope
#'   if ("errors.message" %in% names(project_id)) {
#'     stop(project_id["errors.message"])
#'   }
#'
#'
#'   # get project board status
#'   req_board_infos <- glue(
#'     'query{
#'     node(id: "$_project_id_$") {
#'         ... on ProjectV2 {
#'           items(first: 100) {
#'             nodes{
#'               id
#'               fieldValues(first: 100) {
#'                 nodes{
#'                   ... on ProjectV2ItemFieldSingleSelectValue {
#'                     name
#'                     field {
#'                       ... on ProjectV2FieldCommon {
#'                         name
#'                       }
#'                     }
#'                   }
#'                 }
#'               }
#'               content{
#'                 ...on Issue {
#'                   title
#'                    url
#'                   number
#'                   state
#'                   createdAt
#'                   updatedAt
#'                   closedAt
#'                 }
#'               }
#'             }
#'           }
#'         }
#'       }
#'     }',
#'     .open = "$_",
#'     .close = "_$"
#'   )
#'
#'   board_infos <- gh_gql(
#'     req_board_infos,
#'     .token = github_token
#'   )
#'
#'   board_infos <- board_infos$data$node$items$nodes
#'
#'
#'   # export to tibble
#'   board_tbl <- map_dfr(board_infos, function(issue) {
#'     multilist_to_tibble(issue) %>%
#'       unnest_wider(content) %>%
#'       mutate(board_column = unlist(fieldValues[[1]])[1]) %>%
#'       select(-fieldValues)
#'   })
#'
#'   return(board_tbl)
#' }
