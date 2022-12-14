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
  shiny::updateTextInput(session, "technology_description", value = "flow cytometers from BD Biosciences and/or Sony Biotechnology")
  shiny::updateTextInput(session, "raw_file_description", value = "Flow Cytometry Standard files in FCS format, widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC)")
  shiny::updateTextInput(session, "avg_file_size", value = "approximately 10MB")
  # shiny::updateTextInput(session, "total_samples_files", value = "")
  # shiny::updateTextInput(session, "data_volume", value = "")
  shiny::updateTextInput(session, "raw_file_type", value = "raw FCS files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "software such as FloJo to yield summary tables of comparable cell groupings")
  shiny::updateTextInput(session, "processsed_file_description", value = "tabular data in CSV/TSV format")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # shiny::updateTextInput(session, "data_processed_volume", value = "")
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "shared_technologies", value = "Raw FCS and processed CSV/TSV data")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the Minimum Information about a Flow Cytometry Experiment (MIFlowCyt) standard established by the International Society for Analytical Cytology Data Standards Task Force (ref: https://doi.org/10.1002%2Fcyto.a.20623)")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "FCS data")
  shiny::updateTextInput(session, "chosen_repositories", value = "the FlowRepository (https://flowrepository.org/)")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "data collections associated with individual experiments or publications. Primary references would be to a Repository ID. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # shiny::updateTextInput(session, "control_comment", value = "")
  # shiny::updateTextInput(session, "name_role", value = "")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}
