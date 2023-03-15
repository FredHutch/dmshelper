#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
large_animal_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "medical records and clinical pathology data from veterinary research involving large animals")
  # shiny::updateTextInput(session, "raw_file_description", value = "text documentation as well as tabular data")
  # shiny::updateTextInput(session, "avg_file_size", value = "is less than 1MB")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  #
  # shiny::updateTextInput(session, "processed_data_present", value = FALSE)
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Medical records and clinical pathology data")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite applications for viewing and manipulating text files and tabular data (e.g. Microsoft Word and Excel)")
  # shiny::updateTextInput(session, "open_source_level", value = "na")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "medical record information")
  # shiny::updateTextInput(session, "metadata_collection", value = "report features in our core database")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the standards established by the Comparative Medicine Shared Resource and ARRIVE Guidelines (Animal Research: Reporting in Vivo Experiments)")
  # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "")
  # shiny::updateTextInput(session, "chosen_repositories", value = "")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "")
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  #
  # shiny::updateTextInput(session, "reuse", value = "ns_software")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "Raw data")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  #
  # shiny::updateTextInput(session, "oversight_method", value = "External Collaborator")
  # shiny::updateTextInput(session, "name_role", value = "Comparative Medicine veterinary staff, part of the Shared Resource group at Fred Hutch")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")


  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "medical records and clinical pathology data from veterinary research involving large animals")
  shiny::updateTextInput(session, "raw_file_description", value = "text documentation as well as tabular data")
  shiny::updateTextInput(session, "avg_file_size", value = "is less than 1MB")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

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
  shiny::updateTextInput(session, "datatype_comment_summary", value = "")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Medical records and clinical pathology data")
  shiny::updateTextInput(session, "shared_comment", value = "")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "medical record information")
  shiny::updateTextInput(session, "metadata_collection", value = "report features in our core database")
  shiny::updateTextInput(session, "fair_standards", value = "n/a")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "tools_code_desc", value = c("custom"))
  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite applications for viewing and manipulating text files and tabular data (e.g. Microsoft Word and Excel)")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the standards established by the Comparative Medicine Shared Resource and ARRIVE Guidelines (Animal Research: Reporting in Vivo Experiments)")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "repository", value = c("custom"))
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "medical records")
  shiny::updateTextInput(session, "chosen_repositories", value = "web-based software")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "internal server backups")
  shiny::updateTextInput(session, "sensitive_data_type", value = "raw data")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "Summaries of relevant data will be published. The medical record datasets submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_data_type", value = "Data")
  shiny::updateTextInput(session, "timeframe_to_pub", value = "at the time of publication")
  shiny::updateTextInput(session, "timeframe_longevity", value = "")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "ns_software")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "Raw data")
  shiny::updateTextInput(session, "reuse_level", value = "None")

  # Control
  shiny::updateTextInput(session, "controls", value = TRUE)
  shiny::updateTextInput(session, "controlled_data_type", value = "")
  shiny::updateTextInput(session, "access_repositories", value = "")
  shiny::updateTextInput(session, "control_comment", value = "")

  # VI
  # Oversight
  shiny::updateTextInput(session, "oversight_method", value = "External Collaborator")
  shiny::updateTextInput(session, "name_role", value = "Comparative Medicine veterinary staff, part of the Shared Resource group at Fred Hutch")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}
