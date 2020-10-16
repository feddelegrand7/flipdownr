
#' Create an HTML dependency for flipdown.js
#'
#' @rdname html-dependencies
#' @noRd
#'
#'


flipdown_dependency <- function() {
  htmltools::htmlDependency(
    name = "flipdown",
    version = "0.3.2",
    package = "flipdownr",
    src = c(file = "flipdown"),
    script = "flipdown.min.js",
    stylesheet = "flipdown.min.css",
    all_files = FALSE
  )
}

