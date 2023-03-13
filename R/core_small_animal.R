#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
small_animal_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "in vivo imaging technology, hematology analyzers, and spreadsheets (Excel)")
  # shiny::updateTextInput(session, "raw_file_description", value = "both bioluminescence images (in TIFF format) as well as tabular summaries of hematology results and breeding records (in DOC and XLS format)")
  # shiny::updateTextInput(session, "avg_file_size", value = "~10MB for a typical image")
  # shiny::updateTextInput(session, "total_samples_files", value = "~150 sessions annually")
  # shiny::updateTextInput(session, "data_volume", value = "1.5 GB")
  #
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "")
  # shiny::updateTextInput(session, "shared_technologies", value = "Bioluminescence images as well as hematology results and breeding records")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "standard esktop software for viewing images and spreadsheets (e.g., Microsoft Excel)")
  # shiny::updateTextInput(session, "open_source_level", value = "na")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "animal breeding and health")
  # shiny::updateTextInput(session, "metadata_collection", value = "the ARRIVE guidelines (Animal Research: Reporting In Vivo Experiments) for describing in vivo experiments")
  # shiny::updateTextInput(session, "fair_standards", value = "detailed in (https://doi.org/10.1371%2Fjournal.pbio.3000411)")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the standards established by the ARRIVE guidelines (Animal Research: Reporting In Vivo Experiments) for describing in vivo experiments")
  # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "breeding records and hematology results")
  # shiny::updateTextInput(session, "chosen_repositories", value = "internal shared databases")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "repo_comment", value = "IVIS data can be accessed using the open-source Aura software (available at https://spectralinvivo.com/software/ ) or with Living Image (available with a license, more information available at https://www.perkinelmer.com/lab-products-and-services/resources/in-vivo-imaging-software-downloads.html.")
  #
  # shiny::updateTextInput(session, "fair_comment", value = "Summaries of relevant data will be published. The breeding and hematology datasets submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project. Both The Cancer Imaging Archive (TCIA) and the Imaging Data Commons (IDC) provide stable IDs to dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "at the time of publication")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "the duration of the grant funding")
  #
  # shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  #
  # shiny::updateTextInput(session, "oversight_method", value = "Laboratory Staff")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw data using _in vivo_ imaging technology, hematology analyzers, and spreadsheets (Excel)")
  shiny::updateTextInput(session, "raw_file_description", value = "both bioluminescence images (in TIFF format) as well as tabular summaries of hematology results and breeding records (in DOC and XLS format)")
  shiny::updateTextInput(session, "avg_file_size", value = "~10MB for a typical image")
  shiny::updateTextInput(session, "total_samples_files", value = "~150 sessions annually")
  shiny::updateTextInput(session, "data_volume", value = "1.5 GB")

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
  shiny::updateTextInput(session, "shared_technologies", value = "Bioluminescence images as well as hematology results and breeding records")
  shiny::updateTextInput(session, "shared_comment", value = "")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "animal breeding and health")
  shiny::updateTextInput(session, "metadata_collection", value = "the ARRIVE guidelines (Animal Research: Reporting In Vivo Experiments) for describing in vivo experiments")
  shiny::updateTextInput(session, "fair_standards", value = "detailed in (https://doi.org/10.1371%2Fjournal.pbio.3000411)")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "manipulation", value = TRUE)
  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard desktop software for viewing images and spreadsheets (e.g., Microsoft Excel)")
  shiny::updateTextInput(session, "open_source_level", value = "na")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the standards established by the ARRIVE guidelines (Animal Research: Reporting In Vivo Experiments) for describing in vivo experiments")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "breeding records and hematology results")
  shiny::updateTextInput(session, "chosen_repositories", value = "internal shared databases")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "IVIS data can be accessed using the open-source Aura software (available at https://spectralinvivo.com/software/ ) or with Living Image (available with a license, more information available at https://www.perkinelmer.com/lab-products-and-services/resources/in-vivo-imaging-software-downloads.html.")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "Summaries of relevant data will be published. The breeding and hematology datasets submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project. Both The Cancer Imaging Archive (TCIA) and the Imaging Data Commons (IDC) provide stable IDs to dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_to_pub", value = "at the time of publication")
  shiny::updateTextInput(session, "timeframe_longevity", value = "the duration of the grant funding")

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
  shiny::updateTextInput(session, "oversight_method", value = "Laboratory Staff")
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}
