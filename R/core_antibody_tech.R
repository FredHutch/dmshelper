#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
antibody_tech_update <- function(session){
  # DATATYPE
  shiny::updateTextInput(session, "datatype_comment", value = "We will collect raw data describing the production and characterization of custom antibodies in tabular format using Excel files. The total amount of data total amount of data describing antibody production is <10MB. \n [Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.]")
  shiny::updateTextInput(session, "shared_technologies", value = "Excel files describing antibody production")

  # # PRESERVATION
  shiny::updateTextInput(session, "repository_data_type", value = "Excel files")
  shiny::updateTextInput(session, "fair_comment", value = "[project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

}
