


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
      paste0(if (input$core_datatype %in% c(
        "antibody_tech",
        "cellular_imaging",
        "em_tem",
        "em_sem",
        "em_cryoem",
        "eh_aperio",
        "eh_polaris",
        "eh_vectra",
        "flow_cytometry",
        "genomics",
        "immune",
        "large_animal",
        "preclinical_img_ivis",
        "preclinical_img_microct",
        "preclinical_img_mri",
        "proteomics",
        "small_animal",
        "therapeutic"
      )) {
        "**Technology:** We will collect <font color='OA799A'>"
      } else {
        "**Technology:** We will generate data using <font color='OA799A'>"
      },
      if (input$technology_description == "") {
        " ___ "
      } else {
        input$technology_description
      },
      "</font>. "),
      paste0(
        "**File Type:** Data for this study will generate <font color='OA799A'>",
        if (input$raw_file_description == "") {
          " ___ "
        } else {
          input$raw_file_description
        },
        "</font>. "
      ),

      if (input$core_datatype == "proteomics") {
        paste0(
          "The amount of data generated per file will be <font color='OA799A'>",
          if (input$avg_file_size == "") {
            " ___ "
          } else {
            input$avg_file_size
          },
          "</font>. "
        )
      } else if (input$core_datatype == "antibody_tech") {
        paste0("")
      } else if (input$core_datatype == "em_cryoem") {
        paste0(
          "The amount of data generated per movie <font color='OA799A'>",
          if (input$avg_file_size == "") {
            " ___ "
          } else {
            input$avg_file_size
          },
          "</font>. "
        )
      } else {
        paste0(
          "The amount of data generated per sample <font color='OA799A'>",
          if (input$avg_file_size == "") {
            " ___ "
          } else {
            input$avg_file_size
          },
          "</font>. "
        )
      },
      if (input$core_datatype == "large_animal") {
        paste0(
          "<font color='OA799A'>The total volume of data collected is not expected to exceed 10MB in aggregate file size.</font>"
        )
      } else if (input$core_datatype == "antibody_tech") {
        paste0(
          "<font color='OA799A'>The total amount of data describing antibody production is <10MB.</font>"
        )
      } else {
        paste0(
          "**Number of Files:** We anticipate collecting data from <font color='OA799A'>",
          if (input$total_samples_files == "") {
            " ___ "
          } else {
            input$total_samples_files
          },
          "</font> for a total data volume of <font color='OA799A'>",
          if (input$data_volume == "") {
            " ___ "
          } else {
            input$data_volume
          },
          "</font>. "
        )
      }
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
          if (input$raw_file_type == "") {
            " ___ "
          } else {
            input$raw_file_type
          },
          "</font> using <font color='OA799A'>",
          if (input$brief_pipeline_description == "") {
            " ___ "
          } else {
            input$brief_pipeline_description
          },
          "</font>. "
        ),
        paste0(
          "**File Type:** The data processing will result in <font color='OA799A'>",
          if (input$processsed_file_description == "") {
            " ___ "
          } else {
            input$processsed_file_description
          },
          "</font>. "
        ),
        if (input$core_datatype %in% c("preclinical_img_microct")) {
          paste0(
            "The amount of data generated per timepoint <font color='OA799A'>",
            if (input$avg_processed_file_size == "") {
              " ___ "
            } else {
              input$avg_processed_file_size
            },
            "</font>. "
          )
        } else if (input$core_datatype == "proteomics") {
          paste0(
            "The amount of data generated will be <font color='OA799A'>",
            if (input$avg_processed_file_size == "") {
              " ___ "
            } else {
              input$avg_processed_file_size
            },
            "</font>. "
          )
        } else {
          paste0(
            "The amount of data generated per sample <font color='OA799A'>",
            if (input$avg_processed_file_size == "") {
              " ___ "
            } else {
              input$avg_processed_file_size
            },
            "</font>. "
          )
        },
        paste0(
          "**Number of Files:** We anticipate generating <font color='OA799A'>",
          if (input$total_processed_samples_files == "") {
            " ___ "
          } else {
            input$total_processed_samples_files
          },
          "</font> for a total data volume of <font color='OA799A'>",
          if (input$data_processed_volume == "") {
            " ___ "
          } else
            (input$data_processed_volume)
          ,
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
