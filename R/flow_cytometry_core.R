#' Title
#'
#' @return
#' @export
#'
#' @examples
flow_cytometry_core_datatype <- function(input, metadata_part){
  datatype_txt(
    "<font color='OA799A'>flow cytometers from BD Biosciences and/or Sony Biotechnology</font>",
    "<font color='OA799A'>Flow Cytometry Standard files in FCS format, widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC)</font>",
    "<font color='OA799A'>approximately 10MB</font>",
    input$total_samples_files,
    input$data_volume,
    "<font color='OA799A'>raw FCS files</font>",
    "<font color='OA799A'>software such as FloJo to yield summary tables of comparable cell groupings</font>",
    "<font color='OA799A'>tabular data in CSV/TSV format.</font>",
    input$avg_processed_file_size,
    input$total_processed_samples_files,
    input$data_processed_volume,
    input$datatype_comment,
    "<font color='OA799A'>Raw FCS and processed CSV/TSV data</font>",
    input$notshared,
    metadata_part
  )
}

