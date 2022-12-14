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

    toggle_default_txt <- reactiveValues(core_datatype = "none")

    observeEvent(input$core_datatype,{
      req(input$core_datatype != toggle_default_txt$core_datatype)
      toggle_default_txt$core_datatype <- input$core_datatype

      # Populate some default text
      if(toggle_default_txt$core_datatype == "none"){
        custom_update(session)
      }
      if(toggle_default_txt$core_datatype == "antibody_tech"){
        antibody_tech_update(session)
      }
      if(toggle_default_txt$core_datatype == "flow_cytometry"){
        flow_cytometry_update(session)
      }

    },ignoreInit = TRUE)

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
      tools_code_part <- tools_proprietary()
    } else if (input$open_source_level == "office"){
      tools_code_part <- tools_office()
    } else {
      tools_code_part <- tools_open(input)
    }

    # Choose among some default options for repository
    if(input$repository == "dbgap_3"){
      repository_part <- repository_dbgap_3()
    } else if (input$repository == "gene_3"){
      repository_part <- repository_gene_3()
    } else if (input$repository == "dbgap_pub"){
      repository_part <- repository_dbgap_pub()
    } else if (input$repository == "dbgap_pub_sra"){
      repository_part <- repository_dbgap_pub_sra()
    } else if (input$repository == "none"){
      repository_part <- repository_none(input)
    } else {
      repository_part <- repository_custom(input)
    }

    # Choose among options for reuse
    if(input$reuse == "ns_software"){
      reuse_part <- reuse_ns_software(input)
    } else {
      reuse_part <- reuse_no_restrictions()
    }

    # Choose among options for controls
    if(input$controls == "Controls needed"){
      control_part <- control_restrictions(input)
    } else {
      control_part <- control_no_restrictions()
    }

    # Choose among options for human subjects
    if(input$human_subjects == "Yes"){
      hs_part <- human_subjects()
    } else {
      hs_part <- human_subjects_none()
    }

    # Choose among options for oversight
    if(input$oversight_method == "Laboratory Staff"){
      oversight_part <- oversight_lab(input)
    } else if (input$oversight_method == "External Collaborator"){
      oversight_part <- oversight_collaborator(input)
    } else {
      oversight_part <- oversight_self(input)
    }

    # ------

    # Get the text of the datatype part of the plan
    datatype_part <- datatype_txt(input, metadata_part)

    # Get the text for the tool part of the plan
    tools_part <- tools_txt(tools_code_part)

    # Get the text for the standards part of the plan
    standards_part <- standards_txt(input)

    # Preservation
    preservation_part <- preservation_txt(
      repository_part,
      fair_description(input),
      duration_description(input)
    )

    access_part <- access_txt(reuse_part, control_part, hs_part)

    oversight_part <- oversight_txt(oversight_part)

    # -----

    # Small tweaks for specific core examples
    if(input$core_datatype == "antibody_tech"){
      datatype_part <- datatype_part[-8:-21]
    }

    # -----

    # Combine each section into one vector
    book <- c(datatype_part, tools_part, standards_part, preservation_part, access_part, oversight_part)

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
