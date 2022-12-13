#' Title
#'
#' @param input
#' @param output
#'
#' @return
#' @export
#'
#' @examples
shiny_server <- function(input, output) {

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

    # Choose between two options for metadata description (short and long)
    if(length(input$metadata_desc) == 2){
      metadata_part <- c(metadata_short(input), "", metadata_long(input))
    } else if (length(input$metadata_desc) == 1){
      if(input$metadata_desc == "short") {
        metadata_part <- metadata_short(input)
      } else {
        metadata_part <- metadata_long(input)
      }
    } else {
      metadata_part <- ""
    }

    # Choose between three options for tools
    if(input$open_source_level == "semiopen"){
      tools_code_part <- tools_semiopen(input)
    } else if (input$open_source_level == "proprietary"){
      tools_code_part <- tools_proprietary(input)
    } else {
      tools_code_part <- tools_open(input)
    }

    # Get the text of the datatype part of the plan
    datatype_part <- datatype_txt(
        input$technology_description,
        input$raw_file_description,
        input$avg_file_size,
        input$total_samples_files,
        input$data_volume,
        input$raw_file_type,
        input$brief_pipeline_description,
        input$processsed_file_description,
        input$avg_processed_file_size,
        input$total_processed_samples_files,
        input$data_processed_volume,
        input$datatype_comment,
        input$shared_technologies,
        input$notshared,
        metadata_part
      )

    # Get the text for the tool part of the plan
    tools_part <- tools_txt(
      tools_code_part
    )

    # Input default text
    if(input$core_datatype == "flow_cytometry"){
      datatype_part <- flow_cytometry_core_datatype(input, metadata_part)
      tools_part <- flow_cytometry_core_tools(tools_code_part)
    }

    # Combine each section into one vector
    book <- c(datatype_part, tools_part)

    # Create downloads
    writeLines(book, file.path(paste0(getwd(),"/outtext.md")))
    rmarkdown::render("outtext.md", output_file = paste0(getwd(),"/outtext.docx"), quiet = TRUE)

    # Render preview
    rmarkdown::render("outtext.md", output_format = rmarkdown::html_document(), output_file = paste0(getwd(),"/outtext.html"), quiet = TRUE)
    htmltools::HTML(readLines("outtext.html"))
  })

}
