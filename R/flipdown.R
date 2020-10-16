flipdown <- function(downto, id, theme = "dark", headings = c("Days", "Hours", "Minutes", "Seconds")){



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
      console.log('The countdown has ended!');
    }});


    "











  )))








  )











}
