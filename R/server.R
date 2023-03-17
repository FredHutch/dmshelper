#' Title
#'
#' @param input
#' @param output
#'
#' @return
#' @export
#'
#' @examples
shiny_server <- function(input, output, session) {

  # ------- Create a Word docx output
  output$downloaddocx <- downloadHandler(
    filename <- function() { paste0(getwd(),"/outtext.docx") },
    content <- function(file) { file.copy("outtext.docx", file) },
    contentType = "text/docx"
  )

  # ------- Create a markdown output
  output$downloadmd <- downloadHandler(
    filename <- function() { paste0(getwd(),"/outtext.md") },
    content <- function(file) { file.copy("outtext.md", file) },
    contentType = "text/md"
  )

  # ------- Render the preview and the files for download
  output$html_preview <- renderUI({

    # The following populates example text but allows user changes as long
    # as the selected core (core_datatype) is not changed.
    toggle_example_txt <- reactiveValues(core_datatype = "none")
    observeEvent(input$core_datatype,{
      req(input$core_datatype != toggle_example_txt$core_datatype)
      toggle_example_txt$core_datatype <- input$core_datatype

      # Freeze selected items
      toggle_example_txt$raw_file_description <- input$raw_file_description
      toggle_example_txt$technology_description <- input$technology_description

      shiny::updateTextInput(session, "raw_file_description", value = datatype_raw_by_core(toggle_example_txt))
      shiny::updateTextInput(session, "technology_description", value = datatype_tech_by_core(toggle_example_txt))

    },ignoreInit = TRUE)

      # Get the text of the datatype part of the plan
      datatype_part <- datatype_txt(input)
#
#     # Get the text for the tool part of the plan
#     tools_part <- tools_txt(tools_code_part)
#
#     # Get the text for the standards part of the plan
#     standards_part <- standards_txt(input)
#
#     # Preservation
#     preservation_part <- preservation_txt(
#       repository_part,
#       fair_description(input),
#       duration_description(input)
#     )
#
#     access_part <- access_txt(reuse_part, control_part, hs_part)
#
#     oversight_part <- oversight_txt(oversight_part)

    # -----

    # Combine each section into one vector
    # book <- c(datatype_part, tools_part, standards_part, preservation_part, access_part, oversight_part)
    book <- datatype_part

    # Create downloads
    writeLines(book, file.path(paste0(getwd(), "/outtext.md")))
    rmarkdown::render(
      "outtext.md",
      output_format = rmarkdown::word_document(reference_docx = "doc/template.docx"),
      output_file = paste0(getwd(), "/outtext.docx"),
      quiet = TRUE
    )

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
