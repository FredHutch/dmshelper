#' Does Google Sheets authentication using a Google Service Account. It looks
#' for a `.json` service account key in the ".secrets" directory.
#'
#' @return Provides authentication analagous to gs4_auth()
#' @export
#'
#' @examples
#' # Run before read_sheet() functions
#' do_gs4_auth()
do_gs4_auth <- function() {
  gs4_auth(
    token = gargle::credentials_service_account(path = paste0(
      ".secrets/", grep(".json$", list.files(".secrets"), value = TRUE)
    ),
    scopes = "https://www.googleapis.com/auth/spreadsheets")
  )
}


#' Create the server side for the Shiny app
#'
#' @param input access to user input values and interactions
#' @param output define the reactive outputs
#' @param session app start, stop, or disconnection
#'
#' @return server side of Shiny for use in shinyApp(). Also writes html files
#' and md/docx files for rendering on the site/downloading, respectively.
#' @export
#'
#' @examples
#' # Not run
#' shinyApp(shiny_ui, shiny_server)
shiny_server <- function(input, output, session) {
  # ------- Create a Word docx output that can be downloaded
  output$downloaddocx <- downloadHandler(filename <-
                                           function() {
                                             paste0(getwd(), "/outtext.docx")
                                           },
                                         content <- function(file) {
                                           file.copy("outtext.docx", file)
                                         },
                                         contentType = "text/docx")

  # ------- Create a markdown output that can be downloaded
  output$downloadmd <- downloadHandler(filename <-
                                         function() {
                                           paste0(getwd(), "/outtext.md")
                                         },
                                       content <- function(file) {
                                         file.copy("outtext.md", file)
                                       },
                                       contentType = "text/md")

  # ------- Email submission handling reveals the download buttons
  observeEvent(input$submit_button, {
    pattern <- "\\<[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}\\>"
    # Check if value is actually an email
    if (grepl(pattern, input$user_email, ignore.case = TRUE)) {
      # Collect data and append
      do_gs4_auth()
      sheet_url <-
        "https://docs.google.com/spreadsheets/d/1TprAUklx70D2eaGxpoNHm7Ve1bHfnGwX20h8taDJAAI/edit?usp=sharing"
      sheet_append(
        sheet_url,
        data = data.frame(email = input$user_email, time = Sys.time()),
        sheet = "log"
      )

      # Thank you message
      output$thanks <- renderUI({
        renderText("Thank you!")
      })

      # Reveal buttons
      output$downloaddocx_button <- renderUI({
        downloadButton("downloaddocx", label = "Download .docx")
      })
      output$downloadmd_button <- renderUI({
        downloadButton("downloadmd", label = "Download .md")
      })
    }
  }) # End email prompted download buttons

  # ------- Render the DMS plan preview and the files for download
  output$html_preview <- renderUI({

    toggle_file_types <- reactiveValues(raw_file_description = "none")
    observeEvent(input$raw_file_description, {
      req(input$raw_file_description != toggle_file_types$raw_file_description)

      #  ------- Freeze file type and tech
      toggle_file_types$raw_file_description <-
        input$raw_file_description
      toggle_file_types$technology_description <-
        input$technology_description

      ## ------- Limit choices for data generating tech dropdown
      updateSelectInput(
        session = session,
        inputId = "technology_description",
        choices = datatype_technology_description_options(only = flags_to_cores(toggle_file_types))
      )

      # ------- Observe discipline associated with the raw file type and
      #         open appropriate sample size UI boxes
      for (core_name in colnames(determine_cores(toggle_file_types))) {
        if (determine_cores(toggle_file_types)[[core_name]]) {
          updateTabsetPanel(
            inputId = paste0("sample_size_wizard_", core_name),
            selected = core_name
          )
        } else {
          updateTabsetPanel(
            inputId = paste0("sample_size_wizard_", core_name),
            selected = "null_page"
          )
        }
      }
    }, ignoreInit = TRUE) # End observeEvent(input$raw_file_description...

    # The following populates template text by discipline but allows user changes as long
    # as the selected core (core_datatype) is not changed.
    toggle_example_txt <- reactiveValues(core_datatype = "none")
    observeEvent(input$core_datatype, {
      req(input$core_datatype != toggle_example_txt$core_datatype)
      toggle_example_txt$core_datatype <- input$core_datatype

      #  ------- Freeze selected items
      toggle_example_txt$raw_file_description <-
        input$raw_file_description
      toggle_example_txt$technology_description <-
        input$technology_description

      shiny::updateTextInput(session,
                             "raw_file_description",
                             value = datatype_raw_by_core(toggle_example_txt))
      shiny::updateTextInput(session,
                             "technology_description",
                             value = datatype_tech_by_core(toggle_example_txt))
    }, ignoreInit = TRUE) # End observeEvent(input$core_datatype...

    # Combine each section into one vector to be written
    book <-
      c(
        datatype_txt(input),
        tools_txt(input),
        standards_txt(input),
        preservation_txt(input),
        access_txt(input),
        oversight_txt(input)
      )
    notes <- reference_txt(input)

    # Create downloads
    writeLines(book, file.path(paste0(getwd(), "/outtext.md")))
    rmarkdown::render(
      "outtext.md",
      output_format = rmarkdown::word_document(reference_docx = "doc/template.docx"),
      output_file = paste0(getwd(), "/outtext.docx"),
      quiet = TRUE
    )

    # Render notes
    writeLines(notes, file.path(paste0(getwd(), "/notes.md")))
    rmarkdown::render(
      "notes.md",
      output_format = rmarkdown::html_document(),
      output_file = paste0(getwd(), "/notes.html"),
      quiet = TRUE
    )
    output$html_notes <- renderUI({
      htmltools::HTML(readLines("notes.html"))
    })

    # Render preview
    rmarkdown::render(
      "outtext.md",
      output_format = rmarkdown::html_document(),
      output_file = paste0(getwd(), "/outtext.html"),
      quiet = TRUE
    )
    htmltools::HTML(readLines("outtext.html"))
  })

}
