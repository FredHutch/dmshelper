
#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_data_chunk <- function(input) {
  return(c(
    "_Our proposal will generate raw data of the following types and sizes:_  ",
    paste0(
      if (input$core_datatype == "immune") {
        paste0(
          "**Technology:** We will collect <font color='OA799A'>assay results for clinical trials using ",
          input$technology_description,
          "</font>. "
        )
      } else if (input$core_datatype %in% c("preclinical_img_ivis",
                                            "preclinical_img_microct",
                                            "preclinical_img_mri")) {
        paste0(
          "**Technology:** We will collect <font color='OA799A'>",
          input$technology_description,
          "</font>. "
        )
      } else {
        paste0(
          "**Technology:** We will generate data using <font color='OA799A'>",
          input$technology_description,
          "</font>. "
        )
      },
      paste0(
        "**File Type:** Data for this study will generate <font color='OA799A'>",
        input$raw_file_description,
        "</font>. "
      ),
      if (input$core_datatype == "proteomics") {
        paste0(
          "The amount of data generated per file will be <font color='OA799A'>",
          input$avg_file_size,
          "</font>. "
        )
      } else {
        paste0(
          "The amount of data generated per sample <font color='OA799A'>",
          input$avg_file_size,
          "</font>. "
        )
      },
      paste0(
        "**Number of Files:** We anticipate collecting data from <font color='OA799A'>",
        input$total_samples_files,
        "</font> for a total data volume of <font color='OA799A'>",
        input$data_volume,
        "</font>. "
      )
    ),
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
processed_data_chunk <- function(input) {
  return(
    c(
      "_Our proposal will generate processed data of the following types and sizes:_  ",
      paste0(
        paste0(
          "**Technology:** We will process the <font color='OA799A'>",
          input$raw_file_type,
          "</font> using <font color='OA799A'>",
          input$brief_pipeline_description,
          "</font>. "
        ),
        paste0(
          "**File Type:** The data processing will result in <font color='OA799A'>",
          input$processsed_file_description,
          "</font>. "
        ),
        if (input$core_datatype %in% c("preclinical_img_microct")) {
          paste0(
            "The amount of data generated per timepoint <font color='OA799A'>",
            input$avg_processed_file_size,
            "</font>. "
          )
        } else if (input$core_datatype == "proteomics") {
          paste0(
            "The amount of data generated per file will be <font color='OA799A'>",
            input$avg_processed_file_size,
            "</font>. "
          )
        } else {
          paste0(
            "The amount of data generated per sample <font color='OA799A'>",
            input$avg_processed_file_size,
            "</font>. "
          )
        },
        paste0(
          "**Number of Files:** We anticipate generating <font color='OA799A'>",
          input$total_processed_samples_files,
          "</font> for a total data volume of <font color='OA799A'>",
          input$data_processed_volume,
          "</font>. "
        )
      )
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
datatype_comment <- function(input) {
  if (input$datatype_comment != "")
    dt_comment <-
      paste0("<font color='OA799A'>",
             input$datatype_comment,
             "</font>")
  else {
    dt_comment <- ""
  }
  return(dt_comment)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
datatype_comment_summary <- function(input) {
  if (input$datatype_comment_summary != "")
    dt_comment_summary <-
      paste0("<font color='OA799A'>",
             input$datatype_comment_summary,
             "</font>")
  else {
    dt_comment_summary <- ""
  }
  return(dt_comment_summary)
}
