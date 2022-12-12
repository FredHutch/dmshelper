#' Title
#'
#' @param technology_description
#' @param raw_file_description
#' @param avg_file_size
#' @param total_samples_files
#' @param data_volume
#' @param raw_file_type
#' @param brief_pipeline_description
#' @param processsed_file_description
#' @param avg_processed_file_size
#' @param total_processed_samples_files
#' @param data_processed_volume
#'
#' @return
#' @export
#'
#' @examples
datatype_txt <- function(
    technology_description,
    raw_file_description,
    avg_file_size,
    total_samples_files,
    data_volume,
    raw_file_type,
    brief_pipeline_description,
    processsed_file_description,
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
    paste0("**Technology:** We will generate data using <font color='OA799A'>", technology_description, "</font>. "),
    paste0("**File Type:** Data for this study will generate <font color='OA799A'>", raw_file_description, "</font>. "),
    paste0("The amount of data generated per sample is <font color='OA799A'>", avg_file_size, "</font>. "),
    paste0("**Number of Files:** We anticipate collecting data from <font color='OA799A'>", total_samples_files, "</font> for a total data volume of <font color='OA799A'>", data_volume, "</font>. "),
    "",
    "_Our proposal will generate processed data of the following types and sizes:_",
    "",
    paste0("**Technology:** We process the <font color='OA799A'>", raw_file_type, "</font> using <font color='OA799A'>", brief_pipeline_description, "</font>. "),
    paste0("**File Type:** The data processing will result in <font color='OA799A'>", processsed_file_description, "</font>. "),
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
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F)
  ))
}


toolscode_txt <- function(
){
  return(c(
    "",
    "### Related Tools, Software and/or Code",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "### Standards",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "### Data Preservation, Access, and Associated Timelines",
    "",
    "#### Repository where scientific data and metadata will be archived",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "#### How scientific data will be findable and identifiable",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "#### When and how long the scientific data will be made available",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "#### Access, Distribution, or Reuse Considerations",
    "",
    "_Factors affecting subsequent access, distribution, or reuse of scientific data:_",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "_Whether access to scientific data will be controlled:_",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    "",
    "### Oversight of Data Management and Sharing",
    "",
    stringi::stri_rand_lipsum(1, start_lipsum = F),
    ""
  ))
}

