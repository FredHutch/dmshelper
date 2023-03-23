#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_processed_data_chunk <- function(input) {
  antibody_tech_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/antibody_tech.yml")$raw_file_types]
  cell_img_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/cell_img.yml")$raw_file_types]
  genomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/genomics.yml")$raw_file_types]
  proteomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/proteomics.yml")$raw_file_types]

  antibody_tech_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/antibody_tech.yml")$tech_types]
  cell_img_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/cell_img.yml")$tech_types]
  genomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/genomics.yml")$tech_types]
  proteomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/proteomics.yml")$tech_types]

  if (determine_cores(input)$antibody_tech_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        "_Our proposal will generate antibody technology data of the following types and sizes:_  ",
        "We will collect generate <font color='OA799A'>",
        paste0(
        if (length(antibody_tech_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(antibody_tech_file_types, collapse = ", "))
        },
        " ",
        if (length(antibody_tech_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(antibody_tech_tech_types, collapse = ", "))
        },
        "</font>",
        ". The total amount of data describing antibody production is <10MB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate cellular imaging data of the following types and sizes:_  ",
        "We will collect raw <font color='OA799A'>",
        if (length(cell_img_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(cell_img_file_types, collapse = ", "))
        },
        "</font> image files using <font color='OA799A'>",
        if (length(cell_img_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(cell_img_tech_types, collapse = ", "))
        },
        "</font>."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate genomic data of the following types and sizes:_  ",
        "We will generate raw data in the form of <font color='OA799A'>",
        if (length(genomics_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(genomics_file_types, collapse = ", "))
        },
        "</font> files using <font color='OA799A'>",
        if (length(genomics_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(paste(genomics_tech_types, collapse = ", "))
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
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
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
            remove_last_comma(paste(proteomics_file_types, collapse = ", "))
          },
          "</font> files using <font color='OA799A'>",
          if (length(proteomics_tech_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(paste(proteomics_tech_types, collapse = ", "))
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
    yaml.load_file("template/antibody_tech.yml")$raw_file_types,
    yaml.load_file("template/cell_img.yml")$raw_file_types,
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
    yaml.load_file("template/antibody_tech.yml")$tech_types,
    yaml.load_file("template/cell_img.yml")$tech_types,
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
  if ("antibody_tech" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/antibody_tech.yml")$raw_file_types)
  }
  if ("cellular_imaging" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/cell_img.yml")$raw_file_types)
  }
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
  if ("antibody_tech" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/antibody_tech.yml")$tech_types)
  }
  if ("cellular_imaging" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/cell_img.yml")$tech_types)
  }
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


#' Fix list grammar
#'
#' Goal of this function is to take a string like a, b, c and return a, b, and c.
#'
#' @param string_
#'
#' @return
#' @export
#'
#' @examples
remove_last_comma <- function(string_){
  return(
    sub(",([^,]*)$", ", and\\1", string_)
  )
}
