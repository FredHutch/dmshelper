#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_processed_data_chunk <- function(input) {
  # Determine which raw data types belong to genomics..
  # TODO : do we want cores to appear with datatypes or vice versa?
  genomics_flag <-
    "genomics" %in% input$core_datatype |
    any(input$raw_file_description %in% core_genomics_raw_file_types()) |
    any(input$technology_description %in% core_genomics_technologies())
  proteomics_flag <-
    "proteomics" %in% input$core_datatype |
    any(input$raw_file_description %in% core_proteomics_raw_file_types()) |
    any(input$technology_description %in% core_proteomics_technologies())
  # genomics_flag <- "genomics" %in% input$core_datatype
  # proteomics_flag <- "proteomics" %in% input$core_datatype

  genomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% core_genomics_raw_file_types()]
  proteomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% core_proteomics_raw_file_types()]

  genomics_tech_types <-
    input$technology_description[input$technology_description %in% core_genomics_technologies()]
  proteomics_tech_types <-
    input$technology_description[input$technology_description %in% core_proteomics_technologies()]

  if (genomics_flag) {
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
        "</font> samples ranging from 500MB to 20GB each depending on the assay type and yield for a total data volume of <font color='OA799A'>",
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
        "</font> files using bioinformatics software to be described in all associated publications, resulting in structured data in tabular (CSV/TSV) or standardized genomic file formats (e.g. FASTA, BAM, VCF, HDF5). Processed files will range in size from from 100MB to 1GB depending on the specific analysis, for a total processed data volume of <font color='OA799A'>",
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
  if (proteomics_flag) {
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
          "</font> samples ranging from 0.5 to 2 GB for a total data volume of <font color='OA799A'>",
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
          "</font> files using Thermo Scientific Proteome Discoverer v2.5 and provide analyzed results using the Proteome Discoverer viewer, resulting in pdResult, Excel, and image files. Processed files will range in size from from 1GB to 30GB, for a total processed data volume of <font color='OA799A'>",
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
    core_genomics_raw_file_types(),
    core_proteomics_raw_file_types()
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
    core_genomics_technologies(),
    core_proteomics_technologies()
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
    datatype_raw_ <- c(datatype_raw_, core_genomics_raw_file_types())
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <- c(datatype_raw_, core_proteomics_raw_file_types())
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
    datatype_tech_ <- c(datatype_tech_, core_genomics_technologies())
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <- c(datatype_tech_, core_proteomics_technologies())
  }
  return(datatype_tech_)
}
