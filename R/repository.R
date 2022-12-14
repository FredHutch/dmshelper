#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
repository_custom <- function(input) {
  return(
    paste0(
      "Primary repositories for <font color='OA799A'>",
      input$repository_data_type,
      "</font> will be <font color='OA799A'>",
      input$chosen_repositories,
      "</font> for data that can be made publicly available and <font color='OA799A'>",
      input$controlled_repositories,
      "</font> for data that require access controls."
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
repository_dbgap_3 <- function() {
  return(
    "<font color='OA799A'>Sequence level data will be deposited in dbGap within 3 months of data generation and preserved for the duration of the grant funding.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
repository_gene_3 <- function() {
  return(
    "<font color='OA799A'>Processed gene-level summaries will be deposited within 3 months of data generation and preserved for the duration of the grant funding.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
repository_dbgap_pub <- function() {
  return(
    "<font color='OA799A'>Sequence level data will be deposited in dbGap at the time of publication and preserved for the duration of the grant funding.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
repository_dbgap_pub_sra <- function() {
  return(
    "<font color='OA799A'>Sequence level data will be deposited in dbGap at the time of publication and preserved according to SRA preservation standards.</font>"
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
repository_none <- function(input) {
  return(
    paste0(
      "<font color='OA799A'> There is not an existing public repository that complies with FAIR data principles that is suitable for ",
      input$sensitive_data_type,
      " that will be generated in this project. Thus, due to restrictions on budgeting for funding data sharing after the termination of our grant, we will leverage our institution’s standard data retention policies and storage resources to store our raw and processed datasets generated and/or used during the course of this project. We intend to share data with other investigators via direct contact with the PI due to the lack of publicly available repositories or tools to support FAIR data principles for our datasets.</font>"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
repository_choices <- function(){
  return(
    c(
      "Custom" = "custom",
      "dbGap @ 3 months" = "dbgap_3",
      "gene-level @ 3 months" = "gene_3",
      "dbGap @ publication" = "dbgap_pub",
      "dbGap @ publication - SRA" = "dbgap_pub_sra",
      "None (sensitive data)" = "none"
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
fair_description <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      input$chosen_repositories,
      "</font> provide stable IDs to <font color='OA799A'>",
      input$fair_comment,
      "</font>")
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
duration_description <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      input$repository_data_type,
      "</font> will be deposited in <font color='OA799A'>",
      input$chosen_repositories,
      " ",
      input$timeframe_to_pub,
      "</font> and preserved for <font color='OA799A'>",
      input$timeframe_longevity,
      "</font>. ")
  )
}
