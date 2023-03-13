#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
em_tem_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "ThermoFisher Talos L120C TEM instrumentation with ThermoFisher TEM Imaging and Analysis software (TIA) (version 5.3 SP1) or Leginon (version 3.6)")
  # shiny::updateTextInput(session, "raw_file_description", value = "high-resolution TEM images in .ser, .emi,TIFF formats (TIA software), and .mrc (Leginon)")
  # shiny::updateTextInput(session, "avg_file_size", value = "is 1.6 GB (TIA), or 50 MB/image (Leginon)")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  #
  # # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # # shiny::updateTextInput(session, "metadata_collection", value = "")
  # # shiny::updateTextInput(session, "fair_standards", value = "")
  # # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "")
  # # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "TEM data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Public Image Archive (EMPIAR; https://www.ebi.ac.uk/empiar/)")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
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
  shiny::updateTextInput(session, "technology_description", value = "TEM images using ThermoFisher Talos L120C TEM instrumentation with ThermoFisher TEM Imaging and Analysis software (TIA) (version 5.3 SP1) or Leginon (version 3.6)")
  shiny::updateTextInput(session, "raw_file_description", value = "high-resolution TEM images in .ser, .emi,TIFF formats (TIA software), and .mrc (Leginon)")
  shiny::updateTextInput(session, "avg_file_size", value = "is 1.6 GB (TIA), or 50 MB/image (Leginon)")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
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
  shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
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
  shiny::updateTextInput(session, "repository_data_type", value = "TEM data")
  shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Public Image Archive (EMPIAR; https://www.ebi.ac.uk/empiar/)")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

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
#' @param session
#'
#' @return
#' @export
#'
#' @examples
em_sem_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "JEOL JSM 6610LV SEM instrumentation and JEOL SEM Control User Interface (version 3.11)")
  # shiny::updateTextInput(session, "raw_file_description", value = "high resolution SEM images in TIFF format")
  # shiny::updateTextInput(session, "avg_file_size", value = "480 MB")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")
  #
  # # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # # shiny::updateTextInput(session, "metadata_collection", value = "")
  # # shiny::updateTextInput(session, "fair_standards", value = "")
  # # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "")
  # # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "SEM data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Public Image Archive (EMPIAR; https://www.ebi.ac.uk/empiar/)")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
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
  shiny::updateTextInput(session, "technology_description", value = "SEM images using JEOL JSM 6610LV SEM instrumentation and JEOL SEM Control User Interface (version 3.11)")
  shiny::updateTextInput(session, "raw_file_description", value = "high resolution SEM images in TIFF format")
  shiny::updateTextInput(session, "avg_file_size", value = "480 MB")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
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
  shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
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
  shiny::updateTextInput(session, "repository_data_type", value = "SEM data")
  shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Public Image Archive (EMPIAR; https://www.ebi.ac.uk/empiar/)")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

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
#' @param session
#'
#' @return
#' @export
#'
#' @examples
em_cryoem_update <- function(session){
  # # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "ThermoFisher Glacios Cryo-TEM instrumentation with SerialEM (version 4.0)")
  # shiny::updateTextInput(session, "raw_file_description", value = "high-resolution cryoEM images in .tif format")
  # shiny::updateTextInput(session, "avg_file_size", value = "900 MB")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = ".tif files")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "WARP or cryoSPARC")
  # shiny::updateTextInput(session, "processsed_file_description", value = "mrc")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "100-500 MB")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
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
  # shiny::updateTextInput(session, "repository_data_type", value = "cryoEM data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Data Bank (EMDB; https://www.ebi.ac.uk/emdb/)")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
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
  shiny::updateTextInput(session, "technology_description", value = "cryoEM images using ThermoFisher Glacios Cryo-TEM instrumentation with SerialEM (version 4.0)")
  shiny::updateTextInput(session, "raw_file_description", value = "high-resolution images in .tif format")
  shiny::updateTextInput(session, "avg_file_size", value = "900 MB")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
  shiny::updateTextInput(session, "raw_file_type", value = ".tif files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "WARP or cryoSPARC")
  shiny::updateTextInput(session, "processsed_file_description", value = "mrc")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "100-500 MB")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Raw and processed EM images")
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
  shiny::updateTextInput(session, "repository_data_type", value = "cryoEM data")
  shiny::updateTextInput(session, "chosen_repositories", value = "the Electron Microscopy Data Bank (EMDB; https://www.ebi.ac.uk/emdb/)")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "EM datasets and derived molecular structures. Primary references would be to an EMD or EMPIAR dataset accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

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
