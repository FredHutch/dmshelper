#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
therapeutic_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "automated cell counters and [insert additional technologies]")
  # shiny::updateTextInput(session, "raw_file_description", value = "tabular data in Excel format quantifying the yield and purity of cellular products which have been generated")
  # shiny::updateTextInput(session, "avg_file_size", value = "will be no more than 1MB")
  # shiny::updateTextInput(session, "total_samples_files", value = "all samples")
  # shiny::updateTextInput(session, "data_volume", value = "no more than 10MB")
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  #
  # shiny::updateTextInput(session, "shared_technologies", value = "")
  # shiny::updateTextInput(session, "shared_comment", value = "")
  #
  # shiny::updateTextInput(session, "open_source_level", value = "opensource")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the ProteomeXchange (http://www.proteomexchange.org/), a global consortium supporting open access to proteomics datasets since 2012")
  # shiny::updateTextInput(session, "standards_comment", value = "Each dataset defined by the ProteomeXchange is comprised of the data described by a single manuscript using the same data workflow (e.g. DDA). All such datasets are assigned a ProteomeXchange PXD identifier (PXD + a six figure integer, for additional details see: http://www.ebi.ac.uk/miriam/main/collections/MIR:00000513). Each datasets consists of (1) mass spectrometry output files (raw spectra as well as peak lists), (2) experimental and technical metadata (in the established PX XML format), (3) processed results (peptide/protein identification results at a minimum), and (4) any other associated files")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "")
  # shiny::updateTextInput(session, "chosen_repositories", value = "")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  #
  # shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  #
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw data using automated cell counters and [insert additional technologies]")
  shiny::updateTextInput(session, "raw_file_description", value = "tabular data in Excel format quantifying the yield and purity of cellular products which have been generated")
  shiny::updateTextInput(session, "avg_file_size", value = "will be no more than 1MB")
  shiny::updateTextInput(session, "total_samples_files", value = "all samples")
  shiny::updateTextInput(session, "data_volume", value = "no more than 10MB")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = FALSE)
  shiny::updateTextInput(session, "raw_file_type", value = "")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "")
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
  shiny::updateTextInput(session, "standards_description", value = "the ProteomeXchange (http://www.proteomexchange.org/), a global consortium supporting open access to proteomics datasets since 2012")
  shiny::updateTextInput(session, "standards_comment", value = "Each dataset defined by the ProteomeXchange is comprised of the data described by a single manuscript using the same data workflow (e.g. DDA). All such datasets are assigned a ProteomeXchange PXD identifier (PXD + a six figure integer, for additional details see: http://www.ebi.ac.uk/miriam/main/collections/MIR:00000513). Each datasets consists of (1) mass spectrometry output files (raw spectra as well as peak lists), (2) experimental and technical metadata (in the established PX XML format), (3) processed results (peptide/protein identification results at a minimum), and (4) any other associated files")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

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
