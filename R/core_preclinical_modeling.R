#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
preclinical_modeling_update <- function(session){
  # DATATYPE
  shiny::updateTextInput(session, "technology_description", value = "")
  shiny::updateTextInput(session, "raw_file_description", value = "")
  shiny::updateTextInput(session, "avg_file_size", value = "")
  # shiny::updateTextInput(session, "total_samples_files", value = "")
  # shiny::updateTextInput(session, "data_volume", value = "")
  shiny::updateTextInput(session, "raw_file_type", value = "")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # shiny::updateTextInput(session, "data_processed_volume", value = "")
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  shiny::updateTextInput(session, "shared_technologies", value = "")

  shiny::updateTextInput(session, "open_source_level", value = "opensource")

  shiny::updateTextInput(session, "metadata_descriptors", value = "")
  shiny::updateTextInput(session, "metadata_collection", value = "")
  shiny::updateTextInput(session, "fair_standards", value = "")
  shiny::updateTextInput(session, "metadata_location", value = "")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "[insert levels such as project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # shiny::updateTextInput(session, "control_comment", value = "")
  # shiny::updateTextInput(session, "name_role", value = "")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}
