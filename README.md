
<!-- README.md is generated from README.Rmd. Please edit that file -->

# noclocksR <img src="man/figures/logo.png" align="right" height="120" alt="" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Project Status:
WIP](https://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
[![Generate
CHANGELOG.md](https://github.com/noclocks/noclocksR/actions/workflows/changelog.yml/badge.svg)](https://github.com/noclocks/noclocksR/actions/workflows/changelog.yml)
[![pkgdown](https://github.com/noclocks/noclocksR/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/noclocks/noclocksR/actions/workflows/pkgdown.yaml)
[![pages-build-deployment](https://github.com/noclocks/noclocksR/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/noclocks/noclocksR/actions/workflows/pages/pages-build-deployment)
<!-- badges: end -->

The goal of noclocksR is to …

## Installation

You can install the development version of noclocksR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("noclocks/noclocksR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# library(noclocksR)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
