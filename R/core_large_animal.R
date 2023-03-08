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
  shiny::updateTextInput(session, "datatype_comment", value = "We will collect medical records and clinical pathology data from veterinary research involving large animals. Data for this study will generate text documentation as well as tabular data. The amount of data generated per sample is less than 1MB, with the total volume of data collected not to exceed 10MB in aggregate file size.")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  shiny::updateTextInput(session, "shared_technologies", value = "Medical records and clinical pathology data")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite applications for viewing and manipulating text files and tabular data (e.g. Microsoft Word and Excel)")
  shiny::updateTextInput(session, "open_source_level", value = "na")

  shiny::updateTextInput(session, "metadata_descriptors", value = "medical record information")
  shiny::updateTextInput(session, "metadata_collection", value = "report features in our core database")
  shiny::updateTextInput(session, "fair_standards", value = "")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the standards established by the Comparative Medicine Shared Resource and ARRIVE Guidelines (Animal Research: Reporting in Vivo Experiments)")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")

  shiny::updateTextInput(session, "reuse", value = "ns_software")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "Raw data")
  # shiny::updateTextInput(session, "control_comment", value = "")

  shiny::updateTextInput(session, "oversight_method", value = "External Collaborator")
  shiny::updateTextInput(session, "name_role", value = "Comparative Medicine veterinary staff, part of the Shared Resource group at Fred Hutch")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}
