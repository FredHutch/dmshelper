# not run
library(shiny)
library(dsmphelper)

# devtools::document()
# devtools::load_all()

options(shiny.host="0.0.0.0", shiny.port=7777)
runApp(shinyApp(ui = shiny_ui, server = shiny_server))
