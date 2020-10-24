
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flipdownr

<!-- badges: start -->

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/flipdownr)](https://cran.r-project.org/package=flipdownr)

[![CRAN\_time\_from\_release](https://www.r-pkg.org/badges/ago/flipdownr)](https://cran.r-project.org/package=flipdownr)

[![CRAN\_latest\_release\_date](https://www.r-pkg.org/badges/last-release/flipdownr)](https://cran.r-project.org/package=flipdownr)

[![metacran
downloads](https://cranlogs.r-pkg.org/badges/flipdownr)](https://cran.r-project.org/package=flipdownr)

[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/flipdownr)](https://cran.r-project.org/package=flipdownr)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://choosealicense.com/licenses/mit/)

[![R
badge](https://img.shields.io/badge/Build%20with-♥%20and%20R-orange)](https://github.com/feddelegrand7/flipdownr)

The goal of flipdownr is to create a Countdown object within your
RMarkdown documents and Shiny application. `flipdownr` is an R wrapper
of the JavaScript library [flipdown](https://pbutcher.uk/flipdown/)

![](man/figures/bh.gif)

## Installation

You can install `flipdownr` from CRAN with: 
``` r
install.packages("flipdownr")
```

## Functions and Arguments

  - `flipdownr` has one function: `flipdown` which contains the
    following arguments:

  + `downto`: the targeted date for the countdown. It must have the form
    of ‘yyyy-mm-dd’ or ‘yyyy-mm-dd hh:mm:ss\`. Note that you can include
    the time zone (example UTC): ’yyyy-mm-dd hh:mm:ss UTC’;

  + `id`: the id of the countdown. Useful when you need to include many
    countdown objects in one document;

  + `theme`: The theme of the flipdown object. Two possible choices:
    ‘dark’ or ‘light’. Defaults to ‘dark’

  + `headings`: A character vector pecifying the heading related to each
    time part. Defaults to English headings: c(“Days”, “Hours”,
    “Minutes”, “Seconds”).

## Examples

A demo is available
[here](https://ihaddadenfodil.com/post/introducing-the-flipdownr-package-create-a-countdown-in-rmarkdown-documents-and-shiny-apps/)

## Related

#### [countdown](https://github.com/gadenbuie/countdown): countdown timer for R Markdown slides and HTML docs.

## Code of Conduct

Please note that the flipdownr project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
