#' No Clocks Theming
#'
#' @description
#' These functions contain various common theming elements and design assets
#' use at No Clocks, LLC across Shiny applications, Quarto and R Markdown
#' documents, and other R related projects.
#'
#' @name theming
NULL

#' No Clocks Color Palette
#'
#' @description
#' The No Clocks color palette is a set of colors that are used in various
#' No Clocks, LLC projects. The palette is designed to be visually appealing
#' and accessible.
#'
#' @seealso [No Clocks Colors]()
#' @seealso [No Clocks Brand Guidelines - Colors]()
#'
#' @return A named vector of colors
#'
#' @export
#'
#' @example examples/ex_color_palette.R
color_palette <- function() {
  c(
    "primary" = "#007bff",
    "secondary" = "#6c757d",
    "success" = "#28a745",
    "info" = "#17a2b8",
    "warning" = "#ffc107",
    "danger" = "#dc3545",
    "light" = "#f8f9fa",
    "dark" = "#343a40"
  )
}

#' No Clocks Typography (Fonts)
#'
#' @description
#' The No Clocks typography is a set of fonts that are used in various
#' No Clocks, LLC projects. The typography is designed to be visually appealing
#' and accessible.
#'
#' @seealso [No Clocks Typography]()
#'
#' @return A named vector of fonts
#'
#' @export
#'
#' @example examples/ex_typography.R
typography <- function() {
  c(
    "primary" = "Roboto",
    "secondary" = "Open Sans",
    "tertiary" = "Lato"
  )
}

# license <- htmltools::HTML(
#   '<div id="licensing">
#       <h2>Licensing</h2>
#       <p>Except where otherwise noted, content on this app is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0</a>.</p>
#       <svg id="cc-by-nc-sa-4-license" class="license" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 298 68">
#         <title>Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</title>
#         <circle fill="transparent" cx="35.1" cy="34.19" r="28.84" shape-rendering="geometricPrecision"/>
#           <path fill="currentColor" d="M34.75,2.19a31.21,31.21,0,0,1,22.86,9.37,30.78,30.78,0,0,1,6.86,10.31,32.65,32.65,0,0,1,2.34,12.32A32.67,32.67,0,0,1,64.5,46.5a29.26,29.26,0,0,1-6.83,10.14A32.85,32.85,0,0,1,47,63.73a31.82,31.82,0,0,1-12.28,2.46,31.16,31.16,0,0,1-12.15-2.43,32.26,32.26,0,0,1-10.4-7,32,32,0,0,1-7-10.37A31.95,31.95,0,0,1,5.24,22,32.09,32.09,0,0,1,12.3,11.5,30.22,30.22,0,0,1,34.75,2.19ZM34.87,8a24.79,24.79,0,0,0-18.46,7.66,27.54,27.54,0,0,0-5.8,8.6,25.35,25.35,0,0,0,0,19.88,26.65,26.65,0,0,0,5.8,8.52,26.38,26.38,0,0,0,8.52,5.71,25.51,25.51,0,0,0,9.94,2,25.86,25.86,0,0,0,10-2,27.76,27.76,0,0,0,8.72-5.78A24.57,24.57,0,0,0,61,34.19,26.42,26.42,0,0,0,59.1,24.13a25.67,25.67,0,0,0-5.66-8.46A25.31,25.31,0,0,0,34.87,8Zm-.4,20.92L30.18,31.1a4.49,4.49,0,0,0-1.68-2,3.82,3.82,0,0,0-1.86-.57q-4.29,0-4.29,5.66a7,7,0,0,0,1.09,4.11,3.66,3.66,0,0,0,3.2,1.55,4,4,0,0,0,3.94-2.75l3.94,2a9.38,9.38,0,0,1-8.4,5,9.32,9.32,0,0,1-6.91-2.63,9.89,9.89,0,0,1-2.63-7.31,9.88,9.88,0,0,1,2.66-7.26A9,9,0,0,1,26,24.25C29.92,24.25,32.75,25.79,34.47,28.88Zm18.46,0L48.7,31.1a4.45,4.45,0,0,0-1.69-2,3.9,3.9,0,0,0-1.91-.57q-4.29,0-4.29,5.66A7,7,0,0,0,41.9,38.3a3.65,3.65,0,0,0,3.2,1.55A4,4,0,0,0,49,37.1l4,2a9.81,9.81,0,0,1-3.54,3.69,9.22,9.22,0,0,1-4.86,1.34A9.28,9.28,0,0,1,37.7,41.5a9.91,9.91,0,0,1-2.6-7.31,9.87,9.87,0,0,1,2.65-7.26,9,9,0,0,1,6.72-2.68Q50.41,24.25,52.93,28.88Z"/>
#         <circle fill="transparent" cx="110.95" cy="34.49" r="28.28" shape-rendering="geometricPrecision"/>
#           <path fill="currentColor" d="M110.76,2.19a30.92,30.92,0,0,1,22.74,9.25,31,31,0,0,1,9.31,22.75q0,13.49-9.14,22.45a31.61,31.61,0,0,1-22.91,9.55,31,31,0,0,1-22.52-9.43,30.83,30.83,0,0,1-9.43-22.57,31.38,31.38,0,0,1,9.43-22.74A30.62,30.62,0,0,1,110.76,2.19ZM110.87,8a24.9,24.9,0,0,0-18.46,7.66,25.73,25.73,0,0,0-7.83,18.57,25.16,25.16,0,0,0,7.77,18.4,25.3,25.3,0,0,0,18.52,7.77,25.7,25.7,0,0,0,18.63-7.83A24.36,24.36,0,0,0,137,34.19a25.25,25.25,0,0,0-7.66-18.57A25.18,25.18,0,0,0,110.87,8Zm8.57,18.28V39.33h-3.65V54.87h-10V39.33h-3.65V26.24a2,2,0,0,1,2-2h13.15a2,2,0,0,1,1.42.6A1.92,1.92,0,0,1,119.44,26.24ZM106.35,18q0-4.52,4.46-4.52c3,0,4.46,1.51,4.46,4.52s-1.49,4.45-4.46,4.45S106.35,21,106.35,18Z"/>
#         <circle fill="transparent" cx="186.78" cy="34.42" r="29.47" shape-rendering="geometricPrecision"/>
#           <path fill="currentColor" d="M186.75,2.19a30.93,30.93,0,0,1,22.75,9.25,30.84,30.84,0,0,1,9.31,22.75q0,13.49-9.14,22.46a31.64,31.64,0,0,1-22.92,9.54,30.73,30.73,0,0,1-22.51-9.49,30.74,30.74,0,0,1-9.43-22.51,31.41,31.41,0,0,1,9.43-22.75A30.65,30.65,0,0,1,186.75,2.19ZM162,25.56a25.2,25.2,0,0,0-1.43,8.63,25.16,25.16,0,0,0,7.77,18.4,26.09,26.09,0,0,0,37.15-.12,23.58,23.58,0,0,0,4.4-5.6L197.84,41.5a8.22,8.22,0,0,1-3.06,4.94,10.48,10.48,0,0,1-5.74,2.2v4.92h-3.72V48.64a14.8,14.8,0,0,1-9.71-3.82l4.4-4.46a10.22,10.22,0,0,0,7.14,2.91,5.12,5.12,0,0,0,2.83-.74,2.68,2.68,0,0,0,1.18-2.46,2.44,2.44,0,0,0-.86-1.94l-3.09-1.32-3.77-1.71-5.08-2.23ZM186.87,7.9a24.8,24.8,0,0,0-18.46,7.72,29.74,29.74,0,0,0-3.54,4.28l12.23,5.49a7.46,7.46,0,0,1,3-4,10.14,10.14,0,0,1,5.2-1.69V14.76H189v4.91a14.24,14.24,0,0,1,8,3l-4.17,4.29a9.43,9.43,0,0,0-5.49-1.88,6,6,0,0,0-2.65.57,2,2,0,0,0-1.17,1.94,1.37,1.37,0,0,0,.28.8l4.06,1.83,2.8,1.26,5.14,2.28,16.4,7.32a29.85,29.85,0,0,0,.8-6.86,25,25,0,0,0-7.66-18.57A25,25,0,0,0,186.87,7.9Z"/>
#         <circle fill="transparent" cx="262.26" cy="34.32" r="29.1" shape-rendering="geometricPrecision"/>
#           <path fill="currentColor" d="M262.76,2.19A30.93,30.93,0,0,1,285.5,11.5a30.76,30.76,0,0,1,9.31,22.69,30.49,30.49,0,0,1-9.14,22.51,31.58,31.58,0,0,1-22.91,9.49,31,31,0,0,1-22.52-9.43,30.83,30.83,0,0,1-9.43-22.57,31.34,31.34,0,0,1,9.43-22.69A30.68,30.68,0,0,1,262.76,2.19ZM262.87,8a24.83,24.83,0,0,0-18.46,7.71,25.57,25.57,0,0,0-7.83,18.52,25,25,0,0,0,7.77,18.4,25.3,25.3,0,0,0,18.52,7.77,25.7,25.7,0,0,0,18.63-7.83A24.49,24.49,0,0,0,289,34.19a25,25,0,0,0-7.66-18.52A25,25,0,0,0,262.87,8ZM248.58,29.67a14.26,14.26,0,0,1,4.75-9.11,14,14,0,0,1,9.31-3.23q7.55,0,12,4.86a17.69,17.69,0,0,1,4.46,12.45,17.15,17.15,0,0,1-4.63,12.26,15.79,15.79,0,0,1-12,4.89,14.24,14.24,0,0,1-9.37-3.26,13.87,13.87,0,0,1-4.75-9.26h8.06q.29,5.83,7,5.83a6.35,6.35,0,0,0,5.43-2.91,13.26,13.26,0,0,0,2.06-7.77q0-5.1-1.89-7.75A6.23,6.23,0,0,0,263.61,24q-6.39,0-7.2,5.65h2.35L252.41,36l-6.34-6.34Z"/>
#         <a xlink:href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank" tabindex="0">
#           <rect fill="transparent" width="298" height="68"/>
#         </a>
#       </svg>
#     </div>'
# )
