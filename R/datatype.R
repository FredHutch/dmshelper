#' Title
#'
#' @param tech
#' @param file
#' @param avg
#'
#' @return
#' @export
#'
datatype_raw_scaffold <- function(tech, file, avg) {
  return(
    paste0(
      paste0("**Technology:** We will generate data using <font color='OA799A'>", tech, "</font>. "),
      paste0("**File Type:** Data for this study will generate <font color='OA799A'>", file, "</font>. "),
      paste0("The amount of data generated per sample is <font color='OA799A'>", avg, "</font>. ")
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
datatype_raw_custom <- function(input) {
  return(
    datatype_raw_scaffold(
      input$technology_description,
      input$raw_file_description,
      input$avg_file_size
    )
  )
}


#' Title
#'
#' @param file
#' @param pipeline
#' @param desc
#'
#' @return
#' @export
#'
datatype_processed_scaffold <- function(file, pipeline, desc) {
  return(
    paste0(
      paste0("**Technology:** We process the <font color='OA799A'>", file, "</font> using <font color='OA799A'>", pipeline, "</font>. "),
      paste0("**File Type:** The data processing will result in <font color='OA799A'>", desc, "</font>. ")
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
datatype_processed_custom <- function(input) {
  return(
    datatype_processed_scaffold(
      input$raw_file_type,
      input$brief_pipeline_description,
      input$processsed_file_description
    )
  )
}
