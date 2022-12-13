#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
metadata_short <- function(input) {
  return(
    paste0(
      "Metadata on <font color='OA799A'>",
      input$metadata_descriptors,
      "</font> will be collected via <font color='OA799A'>",
      input$metadata_collection,
      "</font> and will be submitted in accordance with FAIR data principles according to <font color='OA799A'>",
      input$fair_standard,
      "</font>"
    )
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
metadata_long <- function(input) {
  return(
    paste0(
      "Metadata on <font color='OA799A'>",
      input$metadata_descriptors,
      "</font> will be collected via <font color='OA799A'>",
      input$metadata_collection,
      "</font> and will be submitted in accordance with FAIR data principles in the form of a spreadsheet with consistent sample labels, dates in ISO 8601 format (YYYY-MM-DD), without empty cells, with one data item per cell, organized as a single rectangle (with subjects as rows and variables as columns, and with a single header row), with a corresponding data dictionary. Metadata will be released in raw form without calculations on the raw data files, font color or highlighting as data, with human and machine readable variable names, links to raw data urls for <font color='OA799A'>",
      input$raw_file_type,
      "</font>, saved as a plain text file and uploaded to <font color='OA799A'>",
      input$metadata_location,
      "</font>. For more information on data formatting see https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989. Information for human data about de-identification can be found here https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html#standard."
    )
  )
}
