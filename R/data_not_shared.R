data_not_shared <- function() {
  return(
    c(
      "No restrictions" = "\nWe anticipate all data will be able to be preserved and shared.",
      "Level 0 data - limited programs" = "\n**Raw data:** Data will not be shared because they are Level 0 data (https://sharing.nih.gov/genomic-data-sharing-policy/submitting-genomic-data/data-submission-and-release-expectations) and can only be opened in a limited number of non-open source software programs.",
      "Level 0 data - proprietary programs" = "\n**Raw data:** Data will not be shared because they are Level 0 data (https://sharing.nih.gov/genomic-data-sharing-policy/submitting-genomic-data/data-submission-and-release-expectations) and can only be easily opened in proprietary, licensed viewing software programs.",
      "Level 0 data - large files" = "\n**Raw data:** Data will not be shared because they are Level 0 data (https://sharing.nih.gov/genomic-data-sharing-policy/submitting-genomic-data/data-submission-and-release-expectations), are very large, and are only needed for advanced data processing or to reconstruct the scientifically accepted raw data types.",
      "Level 1 data - large files" = "\n**Raw data:** Data will not be shared because they are Level 1 data (https://sharing.nih.gov/genomic-data-sharing-policy/submitting-genomic-data/data-submission-and-release-expectations), are very large, and are only needed for advanced data processing or to reconstruct the scientifically accepted raw data types.",
      "IRB - no consent" = "\n**Raw data / processed data:** Data will not be shared because the IRB for this protocol does not include consent for public data sharing.",
      "IRB - deidentified consent" = "\n**Raw data / processed data:** Data are not suitable to be shared in identified form due to IRB restrictions. However, de-identified data with randomly generated participant or sample IDs will be applied to the de-identified data.",
      "Sovereignty" = "\n**Raw data / processed data:** Data are not suitable to be shared due to sovereignty restrictions related to individuals from the population sampled."
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
shared_datatype_chunk <- function(input) {
  if (input$shared_data_present) {
    return(
      c(
        "",
        "_Our proposal will preserve and share the following types of data:_  ",
        paste0(
          "<font color='OA799A'>",
          if (input$shared_technologies == "") {
            " ___ "
          } else {
            input$shared_technologies
          },
          "</font> will be preserved and shared to facilitate re-analysis and re-use of the data by other investigators. "
        ),
        if (input$shared_comment != "")
          paste0("<font color='OA799A'>",
                 input$shared_comment,
                 "  </font>")
        else {
          ""
        }
      )
    )
  } else {
    return("")
  }
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
not_shared_datatype_chunk <- function(input) {
  if (input$not_shared_data_present) {
    return(
      c(
        "",
        "_Our proposal will not preserve and share the following data types:_  ",
        paste0("<font color='OA799A'>", input$notshared, "</font>"),
        if (input$not_shared_comment != "")
          paste0(
            "<font color='OA799A'>",
            input$not_shared_comment,
            "  </font>"
          )
        else {
          ""
        }
      )
    )
  } else {
    return("")
  }
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
not_shared_comment <- function(input) {
  if (input$not_shared_comment != "")
    nsh_comment <-
      paste0("<font color='OA799A'>",
             input$not_shared_comment,
             "</font>")
  else {
    nsh_comment <- ""
  }
  return(nsh_comment)
}
