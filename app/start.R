# not run
library(shiny)

devtools::load_all()
# devtools::install_github("FredHutch/dsmphelper")

options(shiny.host="0.0.0.0", shiny.port=7777)
runApp(shinyApp(ui = shiny_ui, server = shiny_server))
