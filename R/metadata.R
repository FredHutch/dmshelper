#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
metadata_chunk <- function(input) {
  # Determine which raw data types belong to genomics..
  # TODO : do we want cores to appear with datatypes or vice versa?
  genomics_flag <-
    "genomics" %in% input$core_datatype |
    any(input$raw_file_description %in% core_genomics_raw_file_types()) |
    any(input$technology_description %in% core_genomics_technologies())
  proteomics_flag <-
    "proteomics" %in% input$core_datatype |
    any(input$raw_file_description %in% core_proteomics_raw_file_types()) |
    any(input$technology_description %in% core_proteomics_technologies())
  # genomics_flag <- "genomics" %in% input$core_datatype
  # proteomics_flag <- "proteomics" %in% input$core_datatype

  if (genomics_flag) {
    #####
    metadata_chunk_temp <- c(
      "Genomic metadata on will be collected and submitted in accordance with FAIR data principles in the form of a spreadsheet with consistent sample labels, dates in ISO 8601 format, without empty cells, with one data item per cell, organized as a single rectangle (with subjects as rows and variables as columns, and with a single header row), with a corresponding data dictionary. Metadata will be released in raw form without calculations on the raw data files, font color or highlighting as data, with human- and machine-readable variable names, links to raw data URLs, saved as a plain text file and uploaded with sequence data."
    )
  } else {
    metadata_chunk_temp <- c("")
  }
  if (proteomics_flag) {
    #####
    metadata_chunk_temp <-
      c(
        metadata_chunk_temp,
        "Proteomics metadata on biological samples, processing, technical replicates, fractionation, instrumentation, and configuration will be collected using the MAGE-TAB-Proteomics standard (https://psidev.info/magetab) and will be submitted in accordance with FAIR data principles."
      )
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }

  return(metadata_chunk_temp)
}
