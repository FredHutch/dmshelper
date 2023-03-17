#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
sharing_chunk <- function(input) {
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
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          "To facilitate re-analysis and re-use of the data by other investigators, raw nucleotide sequence data in FASTQ format will be deposited in dbGaP. We will ensure that data submission is consistent, as appropriate, with all applicable national, tribal, and state laws and regulations. Key derived results, including alignments in BAM format or variant calls in VCF format, will be preserved and shared through appropriate public repositories such as dbGaP."
        )
    } else {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          "To facilitate re-analysis and re-use of the data by other investigators, raw nucleotide sequence data in FASTQ format will be deposited in GenBank or GEO. Key derived results, including alignments in BAM format or variant calls in VCF format, will be preserved and shared through appropriate public repositories GenBank or GEO."
        )
    }
  } else {
    sharing_chunk_temp <- c("")
  }
  if (proteomics_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          "Both raw results in the form of spectra collected by the mass spectrometer as well as analyzed results in the form of detected peptides and proteins will be preserved and shared to facilitate re-analysis and re-use of the data by other investigators. By sharing raw data, we provide other researchers with the ability to re-search spectra as new peptide matches become available in protein database repositories. By sharing the peptides and proteins detected in our analysis of those spectra, we provide other researchers with the processed data which was used to motivate the conclusions drawn from our study."
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          "Both raw results in the form of spectra collected by the mass spectrometer as well as analyzed results in the form of detected peptides and proteins will be preserved and shared to facilitate re-analysis and re-use of the data by other investigators. By sharing raw data, we provide other researchers with the ability to re-search spectra as new peptide matches become available in protein database repositories. By sharing the peptides and proteins detected in our analysis of those spectra, we provide other researchers with the processed data which was used to motivate the conclusions drawn from our study."
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }

  return(sharing_chunk_temp)
}
