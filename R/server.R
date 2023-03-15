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

      # Update according to the core selected
      if(toggle_example_txt$core_datatype == "none"){
        # This is the default
        custom_update(session)
      }
      if(toggle_example_txt$core_datatype == "antibody_tech"){
        antibody_tech_update(session)
      }
      if(toggle_example_txt$core_datatype == "cellular_imaging"){
        cellular_imaging_update(session)
      }
      if(toggle_example_txt$core_datatype == "em_tem"){
        em_tem_update(session)
      }
      if(toggle_example_txt$core_datatype == "em_sem"){
        em_sem_update(session)
      }
      if(toggle_example_txt$core_datatype == "em_cryoem"){
        em_cryoem_update(session)
      }
      if(toggle_example_txt$core_datatype == "eh_aperio"){
        eh_aperio_update(session)
      }
      if(toggle_example_txt$core_datatype == "eh_polaris"){
        eh_polaris_update(session)
      }
      if(toggle_example_txt$core_datatype == "eh_vectra"){
        eh_vectra_update(session)
      }
      if(toggle_example_txt$core_datatype == "flow_cytometry"){
        flow_cytometry_update(session)
      }
      if(toggle_example_txt$core_datatype == "genomics"){
        genomics_update(session)
      }
      if(toggle_example_txt$core_datatype == "immune"){
        immune_update(session)
      }
      if(toggle_example_txt$core_datatype == "large_animal"){
        large_animal_update(session)
      }
      if(toggle_example_txt$core_datatype == "preclinical_img_ivis"){
        preclinical_imaging_IVIS_update(session)
      }
      if(toggle_example_txt$core_datatype == "preclinical_img_microct"){
        preclinical_imaging_MicroCT_update(session)
      }
      if(toggle_example_txt$core_datatype == "preclinical_img_mri"){
        preclinical_imaging_MRI_update(session)
      }
      if(toggle_example_txt$core_datatype == "preclinical_model"){
        preclinical_modeling_update(session)
      }
      if(toggle_example_txt$core_datatype == "proteomics"){
        proteomics_update(session)
      }
      if(toggle_example_txt$core_datatype == "small_animal"){
        small_animal_update(session)
      }
      if(toggle_example_txt$core_datatype == "therapeutic"){
        therapeutic_update(session)
      }

    },ignoreInit = TRUE)

    # ------

    # Decision logic for different sections

    # Datatype
    # Raw data
    if(input$raw_data_present){
      raw_data_part <- raw_data_chunk(input)
    } else {
      raw_data_part <- ""
    }
    # Processed data
    if(input$processed_data_present){
      processed_data_part <- processed_data_chunk(input)
    } else {
      processed_data_part <- ""
    }

    # Shared data
    if(input$shared_data_present){
      shared_data_part <- shared_datatype_chunk(input)
    } else {
      shared_data_part <- ""
    }
    if(input$not_shared_data_present){
      not_shared_data_part <- not_shared_datatype_chunk(input)
    } else {
      not_shared_data_part <- ""
    }

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

    # Choose type of tool description(s)
    if("custom" %in% input$tools_code_desc) {
      tools_code_part <- manipulation_custom(input)
    } else {
      tools_code_part <- ""
    }
    if("opensource" %in% input$tools_code_desc){
      tools_code_part <- c(tools_code_part, "  ", tools_open(input))
    } else {
      tools_code_part <- c(tools_code_part, "")
    }
    if("semiopen" %in% input$tools_code_desc){
      tools_code_part <- c(tools_code_part, "  ", tools_semiopen(input))
    } else {
      tools_code_part <- c(tools_code_part, "")
    }
    if("proprietary" %in% input$tools_code_desc){
      tools_code_part <- c(tools_code_part, "  ", tools_proprietary())
    } else {
      tools_code_part <- c(tools_code_part, "")
    }

    # Choose among some example options for repository
    if("custom" %in% input$repository) {
      repository_part <- repository_custom(input)
    } else {
      repository_part <- ""
    }
    if("dbgap_3" %in% input$repository){
      repository_part <- c(repository_part, "  ", repository_dbgap_3())
    } else {
      repository_part <- c(repository_part, "")
    }
    if("gene_3" %in% input$repository){
      repository_part <- c(repository_part, "  ", repository_gene_3())
    } else {
      repository_part <- c(repository_part, "")
    }
    if("dbgap_pub" %in% input$repository){
      repository_part <- c(repository_part, "  ", repository_dbgap_pub())
    } else {
      repository_part <- c(repository_part, "")
    }
    if("dbgap_pub_sra" %in% input$repository){
      repository_part <- c(repository_part, "  ", repository_dbgap_pub_sra())
    } else {
      repository_part <- c(repository_part, "")
    }
    if("none" %in% input$repository){
      repository_part <- c(repository_part, "  ", repository_none(input))
    } else {
      repository_part <- c(repository_part, "")
    }


    # Choose among options for reuse
    if("no_restrictions" %in% input$reuse){
      reuse_part <- reuse_no_restrictions(input)
    } else {
      reuse_part <- ""
    }
    if("ns_software" %in% input$reuse){
      reuse_part <- c(reuse_part, "  ", reuse_ns_software(input))
    } else {
      reuse_part <- c(reuse_part, "")
    }
    if("ns_big_data" %in% input$reuse){
      reuse_part <- c(reuse_part, "  ", reuse_ns_big_data(input))
    } else {
      reuse_part <- c(reuse_part, "")
    }
    if("ns_irb_total" %in% input$reuse){
      reuse_part <- c(reuse_part, "  ", reuse_ns_irb_total(input))
    } else {
      reuse_part <- c(reuse_part, "")
    }
    if("ns_irb_deidentified" %in% input$reuse){
      reuse_part <- c(reuse_part, "  ", reuse_ns_irb_deidentified(input))
    } else {
      reuse_part <- c(reuse_part, "")
    }
    if("ns_sovereignty" %in% input$reuse){
      reuse_part <- c(reuse_part, "  ", reuse_ns_sovereignty(input))
    } else {
      reuse_part <- c(reuse_part, "")
    }


    # Choose among options for controls
    if(input$controls){
      control_part <- control_restrictions(input)
    } else {
      control_part <- control_no_restrictions(input)
    }

    # Choose among options for human subjects
    if(input$human_subjects){
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
    datatype_part <- datatype_txt(
      input,
      raw_data_part,
      processed_data_part,
      shared_data_part,
      not_shared_data_part,
      metadata_part
    )

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
