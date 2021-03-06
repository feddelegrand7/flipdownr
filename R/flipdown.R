#' Implement a countdown
#'
#' @param downto the targeted date in 'yyyy-mm-dd' or 'yyyy-mm-dd hh:mm:ss' format
#' @param id the id of the flipdown object
#' @param theme the theme of the flipdown object. Possible choices: 'dark', 'light', 'gdila', 'youkous', 'ifri', 'saida'. Defaults to 'dark'
#' @param headings a character vector specifying the heading related to each time part. Defaults to English headings: c("Days", "Hours", "Minutes", "Seconds")
#'
#' @return a countdown object
#' @export
#'
#' @examples
#'
#' flipdown(downto = "2020-11-16 20:20:20 UTC", id = "first", theme = "dark")
#'
#'


flipdown <- function(downto, id,
                     theme = "dark",
                     headings = c("Days", "Hours", "Minutes", "Seconds")) {

  checkmate::assert_character(downto,
                              any.missing = FALSE,
                              all.missing = FALSE,
                              null.ok = FALSE)

  checkmate::assert_character(id, any.missing = FALSE,
                              all.missing = FALSE)

  checkmate::assert_character(headings)


  if (!theme %in% c(
    "dark",
    "light",
    "gdila",
    "youkous",
    "ifri",
    "saida")) {

    stop("only these themes are available:
    'dark',
    'light',
    'gdila',
    'youkous',
    'ifri',
    'saida'")

  }

  downto <- as.numeric(as.POSIXct(downto))

  headings <- jsonlite::toJSON(headings)


  htmltools::tagList(


  flipdown_dependency(),

  htmltools::tags$div(id = glue::glue("{id}"), class = "flipdown"),


  htmltools::tags$script(htmltools::HTML(glue::glue(

    "

  // Set up FlipDown
  const flipdown_{id} = new FlipDown(  {downto}, '{id}',{{

    theme: '{theme}',

    headings: {headings},

  }})

    // Start the countdown
    .start()

    // Do something when the countdown ends
    .ifEnded(() => {{
      console.log('The countdown has ended! 🎉');
    }});


    "

  )))


  )











}
