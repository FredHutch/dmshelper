#' Title
#'
#' @param total_samples_files
#' @param data_volume
#' @param avg_processed_file_size
#' @param total_processed_samples_files
#' @param data_processed_volume
#' @param raw_part
#' @param processed_part
#' @param datatype_comment
#' @param shared_technologies
#' @param notshared
#' @param metadata_part
#'
#' @return
#' @export
#'
#' @examples
datatype_txt <- function(
    raw_part,
    total_samples_files,
    data_volume,
    processed_part,
    avg_processed_file_size,
    total_processed_samples_files,
    data_processed_volume,
    datatype_comment,
    shared_technologies,
    notshared,
    metadata_part
){
  return(c(
    "",
    "## Data Sharing and Management Plan",
    "",
    "### Data Type",
    "",
    "#### Types and amount of scientific data expected to be generated in the project",
    "",
    "_Our proposal will generate raw data of the following types and sizes:_",
    "",
    raw_part,
    paste0("**Number of Files:** We anticipate collecting data from <font color='OA799A'>", total_samples_files, "</font> for a total data volume of <font color='OA799A'>", data_volume, "</font>. "),
    "",
    "_Our proposal will generate processed data of the following types and sizes:_",
    "",
    processed_part,
    paste0("The amount of data generated per sample is <font color='OA799A'>", avg_processed_file_size, "</font>. "),
    paste0("**Number of Files:** We anticipate generating <font color='OA799A'>", total_processed_samples_files, "</font> for a total data volume of <font color='OA799A'>", data_processed_volume, "</font>. "),
    "",
    paste0("<font color='OA799A'>", datatype_comment, "</font>"),
    "",
    "#### Scientific data that will be preserved and shared, and the rationale for doing so",
    "",
    "_Our proposal will preserve and share the following types of data:_",
    "",
    paste0("<font color='OA799A'>", shared_technologies, "</font> will be preserved and shared to facilitate re-analysis and re-use of the data by other investigators."),
    "",
    "_Our proposal will not preserve and share the following data types:_",
    notshared,
    "",
    "#### Metadata, other relevant data, and associated documentation",
    "",
    metadata_part,
    ""
  ))
}


#' Title
#'
#' @param tools_code_part
#'
#' @return
#' @export
#'
#' @examples
tools_txt <- function(
    tools_code_part
){
  return(c(
    "",
    "### Related Tools, Software and/or Code",
    "",
    tools_code_part,
    ""
  ))
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
standards_txt <- function(input){
  return(c(
    "",
    "### Standards",
    "",
    paste0("The data produced in this project will be collected using the standards established by <font color='OA799A'>", input$standards_description, ". ", input$standards_comment, "</font>. "),
    ""
  ))
}


#' Title
#'
#' @param repository_part
#' @param fair_description
#' @param duration_description
#'
#' @return
#' @export
#'
#' @examples
preservation_txt <- function(
  repository_part,
  fair_description,
  duration_description
){
  return(c(
    "",
    "### Data Preservation, Access, and Associated Timelines",
    "",
    "#### Repository where scientific data and metadata will be archived",
    "",
    repository_part,
    "",
    "#### How scientific data will be findable and identifiable",
    "",
    fair_description,
    "",
    "#### When and how long the scientific data will be made available",
    "",
    duration_description,
    ""
  ))
}


#' Title
#'
#' @param reuse_part
#' @param control_part
#' @param hs_part
#'
#' @return
#' @export
#'
#' @examples
access_txt <- function(reuse_part, control_part, hs_part){
  return(c(
    "",
    "### Access, Distribution, or Reuse Considerations",
    "",
    "#### Factors affecting subsequent access, distribution, or reuse of scientific data",
    "",
    reuse_part,
    "",
    "#### Whether access to scientific data will be controlled",
    "",
    control_part,
    "",
    "#### Protections for privacy, rights, and confidentiality of human research participants",
    "",
    hs_part,
    ""
  ))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
oversight_txt <- function(){
  return(c(
    "",
    "### Oversight of Data Management and Sharing",
    "",
    "oversight",
    ""
  ))
}
