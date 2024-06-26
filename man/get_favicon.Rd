% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/favicon.R
\name{get_favicon}
\alias{get_favicon}
\title{Get Favicon from a URL}
\usage{
get_favicon(url)
}
\arguments{
\item{url}{A character vector of URLs.}

\item{out_file}{A single path to a folder to save the favicons, or a
character vector of file paths to save each individual favicon to.}

\item{fallback}{(optional) function to fallback to if favicon is not found.}
}
\value{
A character vector of file paths to the favicons.
}
\description{
This function retrieves the favicon from provided URL or vector of URLs.
}
