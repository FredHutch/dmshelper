#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_processed_data_chunk <- function(input) {
  genomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/genomics.yml")$raw_file_types]
  proteomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/proteomics.yml")$raw_file_types]

  genomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/genomics.yml")$tech_types]
  proteomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/proteomics.yml")$tech_types]

  if (determine_cores(input)$genomics_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        "_Our proposal will generate genomic data of the following types and sizes:_  ",
        "We will generate raw data in the form of <font color='OA799A'>",
        if (length(genomics_file_types) == 0) {
          " ___ "
        } else {
          paste(genomics_file_types, collapse = ", ")
        },
        "</font> files using <font color='OA799A'>",
        if (length(genomics_tech_types) == 0) {
          " ___ "
        } else {
          paste(genomics_tech_types, collapse = ", ")
        },
        "</font> sequencing technology. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          input$num_genomics_files
        },
        "</font>",
        yaml.load_file("template/genomics.yml")$file_sizes,
        "for a total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 0.5)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 20)
        },
        "</font>GB. We will process <font color='OA799A'>",
        if (length(genomics_file_types) == 0) {
          " ___ "
        } else {
          paste(genomics_file_types, collapse = ", ")
        },
        paste0(
          "</font> files using ",
          yaml.load_file("template/genomics.yml")$processing,
          ", for a total processed data volume of <font color='OA799A'>"
        ),
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 0.1)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 1)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- c("")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        c(
          "_Our proposal will generate proteomic data of the following types and sizes:_  ",
          "We will collect raw data as <font color='OA799A'>",
          if (length(proteomics_file_types) == 0) {
            " ___ "
          } else {
            paste(proteomics_file_types, collapse = ", ")
          },
          "</font> files using <font color='OA799A'>",
          if (length(proteomics_tech_types) == 0) {
            " ___ "
          } else {
            paste(proteomics_tech_types, collapse = ", ")
          },
          "</font> technology. We will collect data from <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            input$num_proteomics_files
          },
          "</font> ",
          yaml.load_file("template/proteomics.yml")$file_sizes,
          "for a total data volume of <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 0.5)
          },
          "</font> to <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 2)
          },
          "</font>GB. We will process <font color='OA799A'>",
          if (length(proteomics_file_types) == 0) {
            " ___ "
          } else {
            paste(proteomics_file_types, collapse = ", ")
          },
          paste0(
            "</font> files using ",
            yaml.load_file("template/proteomics.yml")$processing,
            ", for a total processed data volume of <font color='OA799A'>"
          ),
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 1)
          },
          "</font> to <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 30)
          },
          "</font>GB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }

  return(raw_processed_data_chunk_temp)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
datatype_raw_file_description_options <- function() {
  return(c(
    yaml.load_file("template/genomics.yml")$raw_file_types,
    yaml.load_file("template/proteomics.yml")$raw_file_types
  ))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
datatype_technology_description_options <- function() {
  return(c(
    yaml.load_file("template/genomics.yml")$tech_types,
    yaml.load_file("template/proteomics.yml")$tech_types
  ))
}


#' Title
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_raw_by_core <- function(toggle_example_txt) {
  datatype_raw_ <- ""
  if ("genomics" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/genomics.yml")$raw_file_types)
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/proteomics.yml")$raw_file_types)
  }
  return(datatype_raw_)
}


#' Title
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_tech_by_core <- function(toggle_example_txt) {
  datatype_tech_ <- ""
  if ("genomics" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/genomics.yml")$tech_types)
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/proteomics.yml")$tech_types)
  }
  return(datatype_tech_)
}
