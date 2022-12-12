# not run
library(shiny)

devtools::load_all()

shiny::shinyApp(ui = shiny_ui, server = shiny_server)
