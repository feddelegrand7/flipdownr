
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flipdownr

<!-- badges: start -->

<!-- badges: end -->

The goal of flipdownr is to create a Countdown object within your
RMarkdown documents and Shiny application. `flipdownr` is an R wrapper
of the JavaScript library [flipdown](https://pbutcher.uk/flipdown/)

![](man/figures/bh.gif)

## Installation

You can install the development version of flipdownr from
[GITHUB](https://github.com/feddelegrand7/flipdownr) with:

``` r

# install.packages("remotes")

remotes::install_github("feddelegrand7/flipdownr")
```

## Functions and Arguments

  - `flipdownr` has one function: `flipdown` which contains the
    following arguments:

  - `downto`: the targeted date for the countdown. It must have the form
    of ‘yyyy-mm-dd’ or ‘yyyy-mm-dd hh:mm:ss\`. Note that you can include
    the time zone (example UTC): ’yyyy-mm-dd hh:mm:ss UTC’;

  - `id`: the id of the countdown. Useful when you need to include many
    countdown objects in one document;

  - `theme`: The theme of the flipdown object. Two possible choices:
    ‘dark’ or ‘light’. Defaults to ‘dark’

  - `headings`: A character vector pecifying the heading related to each
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
