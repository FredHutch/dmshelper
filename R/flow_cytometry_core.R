#' Title
#'
#' @param input
#' @param metadata_part
#'
#' @return
#' @export
#'
#' @examples
flow_cytometry_core_datatype <- function(input, metadata_part) {
  datatype_txt(
    datatype_raw_scaffold(
      "<font color='OA799A'>flow cytometers from BD Biosciences and/or Sony Biotechnology</font>",
      "<font color='OA799A'>Flow Cytometry Standard files in FCS format, widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC)</font>",
      "<font color='OA799A'>approximately 10MB</font>"
    ),
    input$total_samples_files,
    input$data_volume,
    datatype_processed_scaffold(
      "<font color='OA799A'>raw FCS files</font>",
      "<font color='OA799A'>software such as FloJo to yield summary tables of comparable cell groupings</font>",
      "<font color='OA799A'>tabular data in CSV/TSV format.</font>"
    ),
    input$avg_processed_file_size,
    input$total_processed_samples_files,
    input$data_processed_volume,
    input$datatype_comment,
    "<font color='OA799A'>Raw FCS and processed CSV/TSV data</font>",
    input$notshared,
    metadata_part
  )
}


#' Title
#'
#' @param tools_part
#'
#' @return
#' @export
#'
#' @examples
flow_cytometry_core_tools <- function(tools_part) {
  tools_txt(tools_part)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
flow_cytometry_core_standards <- function() {
  return(c(
    "",
    "### Standards",
    "",
    paste0(
      "<font color='OA799A'>The data produced in this project will be collected using the Minimum Information about a Flow Cytometry Experiment (MIFlowCyt) standard established by the International Society for Analytical Cytology Data Standards Task Force (ref: https://doi.org/10.1002%2Fcyto.a.20623).</font>"
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
flow_cytometry_core_preservation <- function(input) {
  return(
    preservation_txt(
      "<font color='OA799A'>The primary repository for FCS data will be the FlowRepository (https://flowrepository.org/).</font>",
      "<font color='OA799A'>The FlowRepository provides stable IDs to data collections associated with individual experiments or publications. Primary references would be to a Repository ID. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.</font>",
      paste0(
        "<font color='OA799A'> FCS data will be deposited in the FlowRepository ",
        input$timeframe_to_pub,
        "</font> and preserved for <font color='OA799A'>",
        input$timeframe_longevity,
        "</font>. "
      )
    )
  )
}

