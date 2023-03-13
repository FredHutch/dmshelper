#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
genomics_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "sequencing instrumentation such as the Illumina NextSeq or PacBio Sequel IIe")
  # shiny::updateTextInput(session, "raw_file_description", value = "FASTQ or BAM format files")
  # shiny::updateTextInput(session, "avg_file_size", value = "ranges from 500MB to 20GB depending on the assay type and yield")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "raw FASTQ/BAM data")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "bioinformatics software to be described in all associated publications")
  # shiny::updateTextInput(session, "processsed_file_description", value = "structured data in tabular (CSV/TSV) or standardized genomic file formats (e.g. FASTA, BAM, VCF, HDF5)")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "ranges from 100MB to 1GB depending on the specific analysis")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Raw nucleotide sequence data in FASTQ format and key derived results, including alignments in BAM format or variant calls in VCF format for example, will be preserved and shared through appropriate public repositories such as GEO or dbGaP. De-identified metadata describing the specimens")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "raw sequence data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "Gene Expression Omnibus")
  # shiny::updateTextInput(session, "controlled_repositories", value = "dbGaP")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "repo_comment", value = "Both repositories are backed by the Sequence Read Archive (SRA) for storage of raw sequence data, typically in FASTQ format, although uBAM files may be submitted instead. In addition to raw data, both GEO and dbGaP may accept derived results (e.g., gene-barcode matrices, CRISPR sgRNA counts, etc.). Key derived results will accompany and be linked to corresponding raw data using standard SRA metadata spreadsheets. These data sharing repositories are managed and supported by the National Library of Medicine, and there is no current charge for submission or data hosting.")
  #
  # shiny::updateTextInput(session, "fair_comment", value = "")
  #
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")
  #
  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw data using sequencing instrumentation such as the Illumina NextSeq or PacBio Sequel IIe")
  shiny::updateTextInput(session, "raw_file_description", value = "FASTQ or BAM format files")
  shiny::updateTextInput(session, "avg_file_size", value = "ranges from 500MB to 20GB depending on the assay type and yield")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
  shiny::updateTextInput(session, "raw_file_type", value = "raw FASTQ/BAM data")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "bioinformatics software to be described in all associated publications")
  shiny::updateTextInput(session, "processsed_file_description", value = "structured data in tabular (CSV/TSV) or standardized genomic file formats (e.g. FASTA, BAM, VCF, HDF5)")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "ranges from 100MB to 1GB depending on the specific analysis")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Raw nucleotide sequence data in FASTQ format and key derived results, including alignments in BAM format or variant calls in VCF format for example, will be preserved and shared through appropriate public repositories such as GEO or dbGaP. De-identified metadata describing the specimens")
  shiny::updateTextInput(session, "shared_comment", value = "")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "")
  shiny::updateTextInput(session, "metadata_collection", value = "")
  shiny::updateTextInput(session, "fair_standards", value = "")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "manipulation", value = TRUE)
  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  shiny::updateTextInput(session, "open_source_level", value = "opensource")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "raw sequence data")
  shiny::updateTextInput(session, "chosen_repositories", value = "Gene Expression Omnibus")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "dbGaP")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "Both repositories are backed by the Sequence Read Archive (SRA) for storage of raw sequence data, typically in FASTQ format, although uBAM files may be submitted instead. In addition to raw data, both GEO and dbGaP may accept derived results (e.g., gene-barcode matrices, CRISPR sgRNA counts, etc.). Key derived results will accompany and be linked to corresponding raw data using standard SRA metadata spreadsheets. These data sharing repositories are managed and supported by the National Library of Medicine, and there is no current charge for submission or data hosting.")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "")

  # Timing
  shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  shiny::updateTextInput(session, "timeframe_longevity", value = "")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "")

  # Control
  shiny::updateTextInput(session, "controls", value = FALSE)
  shiny::updateTextInput(session, "controlled_data_type", value = "")
  shiny::updateTextInput(session, "access_repositories", value = "")
  shiny::updateTextInput(session, "control_comment", value = "")

  # VI
  # Oversight
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
genomics_findable_identifiable <- function() {
  return(
    "<font color='OA799A'>The SRA, GEO, and dbGaP repositories provide stable IDs to experiments (BioProject), sequencing data (SRR), and biological specimens (BioSample). Primary references would be to a GEO series accession or BioProject experiment accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.</font>"
  )
}
