#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
eh_aperio_update <- function(session){
  # DATATYPE
  shiny::updateTextInput(session, "technology_description", value = "the Aperio platform")
  shiny::updateTextInput(session, "raw_file_description", value = "[select: 20X, 40X] [select: brightfield, fluorescent] images in .svc or .svn file format")
  shiny::updateTextInput(session, "avg_file_size", value = "1-4GB per image")
  # shiny::updateTextInput(session, "total_samples_files", value = "")
  # shiny::updateTextInput(session, "data_volume", value = "")
  shiny::updateTextInput(session, "raw_file_type", value = ".svc or .svn files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # shiny::updateTextInput(session, "data_processed_volume", value = "")
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "shared_technologies", value = "[Aperio brightfield images/Aperio fluorescent images]")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "Aperio brightfield and/or Aperio fluorescent images")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # shiny::updateTextInput(session, "control_comment", value = "")
  # shiny::updateTextInput(session, "name_role", value = "")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}


#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
eh_polaris_update <- function(session){
  # DATATYPE
  shiny::updateTextInput(session, "technology_description", value = "the Polaris automated quantitative pathology imaging system")
  shiny::updateTextInput(session, "raw_file_description", value = "MOTIF images (imaging and spectral unmixing) in .qptiff or .tiff file format")
  shiny::updateTextInput(session, "avg_file_size", value = "approximately 18GB per image")
  # shiny::updateTextInput(session, "total_samples_files", value = "")
  # shiny::updateTextInput(session, "data_volume", value = "")
  shiny::updateTextInput(session, "raw_file_type", value = ".qptiff or .tiff files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # shiny::updateTextInput(session, "data_processed_volume", value = "")
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "shared_technologies", value = "MOTIF images")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "MOTIF images")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # shiny::updateTextInput(session, "control_comment", value = "")
  # shiny::updateTextInput(session, "name_role", value = "")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}


#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
eh_vectra_update <- function(session){
  # DATATYPE
  shiny::updateTextInput(session, "technology_description", value = "")
  shiny::updateTextInput(session, "raw_file_description", value = "[20X 5x10 mm area/40X 3x5 mm area] Vectra images .qptiff, .tiff, or .im3 file format")
  shiny::updateTextInput(session, "avg_file_size", value = "approximately 27.5GB per image")
  # shiny::updateTextInput(session, "total_samples_files", value = "")
  # shiny::updateTextInput(session, "data_volume", value = "")
  shiny::updateTextInput(session, "raw_file_type", value = ".qptiff, .tiff, or .im3 files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # shiny::updateTextInput(session, "data_processed_volume", value = "")
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "shared_technologies", value = "Vectra images")

  shiny::updateTextInput(session, "data_manipulation_tool", value = "standard office suite spreadsheet software")

  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")

  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")

  # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "Vectra images")
  shiny::updateTextInput(session, "chosen_repositories", value = "")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # shiny::updateTextInput(session, "control_comment", value = "")
  # shiny::updateTextInput(session, "name_role", value = "")
  # shiny::updateTextInput(session, "review_frequency", value = "")
  # shiny::updateTextInput(session, "review_addtnl", value = "")

}
