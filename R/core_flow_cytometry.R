#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
flow_cytometry_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "flow cytometers from BD Biosciences and/or Sony Biotechnology")
  # shiny::updateTextInput(session, "raw_file_description", value = "Flow Cytometry Standard files in FCS format, widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC)")
  # shiny::updateTextInput(session, "avg_file_size", value = "is approximately 10MB")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "raw FCS files")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "software such as FloJo to yield summary tables of comparable cell groupings")
  # shiny::updateTextInput(session, "processsed_file_description", value = "tabular data in CSV/TSV format")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  # shiny::updateTextInput(session, "shared_technologies", value = "Raw FCS and processed CSV/TSV data")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the Minimum Information about a Flow Cytometry Experiment (MIFlowCyt) standard established by the International Society for Analytical Cytology Data Standards Task Force (ref: https://doi.org/10.1002%2Fcyto.a.20623)")
  # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "FCS data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "the FlowRepository (https://flowrepository.org/)")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "data collections associated with individual experiments or publications. Primary references would be to a Repository ID. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw data using flow cytometers from BD Biosciences and/or Sony Biotechnology")
  shiny::updateTextInput(session, "raw_file_description", value = "Flow Cytometry Standard files in FCS format, widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC)")
  shiny::updateTextInput(session, "avg_file_size", value = "is approximately 10MB")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
  shiny::updateTextInput(session, "raw_file_type", value = "raw FCS files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "software such as FloJo to yield summary tables of comparable cell groupings")
  shiny::updateTextInput(session, "processsed_file_description", value = "tabular data in CSV/TSV format")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Raw FCS and processed CSV/TSV data")
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
  shiny::updateTextInput(session, "tools_code_desc", value = c("custom", "opensource"))
  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the Minimum Information about a Flow Cytometry Experiment (MIFlowCyt) standard established by the International Society for Analytical Cytology Data Standards Task Force (ref: https://doi.org/10.1002%2Fcyto.a.20623)")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "repository", value = c("custom"))
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "FCS data")
  shiny::updateTextInput(session, "chosen_repositories", value = "the FlowRepository (https://flowrepository.org/)")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "The FlowRepository")
  shiny::updateTextInput(session, "fair_comment", value = "data collections associated with individual experiments or publications. Primary references would be to a Repository ID. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_data_type", value = "FCS data")
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
