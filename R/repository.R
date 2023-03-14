#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
repository_custom <- function(input) {
  return(c(if (input$add_open_repo) {
    paste0(
      "Primary repositories for <font color='OA799A'>",
      if (input$repository_data_type == "") {" ___ "} else {input$repository_data_type},
      "</font> will be <font color='OA799A'>",
      if (input$chosen_repositories == "") {" ___ "} else {input$chosen_repositories},
      if (input$core_datatype %in% c("proteomics")) {
        paste0(". </font>")
      } else {
        paste0("</font> for data that can be made publicly available.")
      }
    )
  } else {
    ""
  },
  if (input$add_controlled_repo) {
    paste0(
      "Primary repositories will be <font color='OA799A'>",
      if (input$controlled_repositories == "") {
        " ___ "
      } else {
        input$controlled_repositories
      },
      "</font> for data that require access controls."
    )
  },
  "<font color='OA799A'>",
  input$repo_comment,
  " </font> " ))

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
      if (input$sensitive_data_type == "") {" ___ "} else {input$sensitive_data_type},
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
    if (input$core_datatype %in% c("large_animal", "small_animal")) {
      paste0(
        "<font color='OA799A'>",
        input$fair_comment,
        "</font>"
      )
    } else {
      paste0(
        "<font color='OA799A'>",
        if (input$fair_repositories == "") {" ___ "} else {input$fair_repositories},
        "</font> provide stable IDs to <font color='OA799A'>",
        if (input$fair_comment == "") {" ___ "} else {input$fair_comment},
        ". </font>"
      )
    }
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
    if (input$core_datatype %in% c("small_animal")) {
      paste0(
        "<font color='OA799A'>",
        if (input$timeframe_data_type == "") {" ___ "} else {input$timeframe_data_type},
        "</font> results will be made available <font color='OA799A'>",
        if (input$timeframe_to_pub == "") {" ___ "} else {input$timeframe_to_pub},
        "</font> and preserved for <font color='OA799A'>",
        if (input$timeframe_longevity == "") {" ___ "} else {input$timeframe_longevity},
        ". IVIS will be deposited in TCIA/IDC and preserved indefinitely.</font>"
      )
    } else {
      paste0(
      "<font color='OA799A'>",
      if (input$timeframe_data_type == "") {" ___ "} else {input$timeframe_data_type},
      "</font> will be deposited in <font color='OA799A'>",
      if (input$fair_repositories == "") {" ___ "} else {input$fair_repositories},
      " ",
      if (input$timeframe_to_pub == "") {" ___ "} else {input$timeframe_to_pub},
      "</font> and preserved for <font color='OA799A'>",
      if (input$timeframe_longevity == "") {" ___ "} else {input$timeframe_longevity},
      "</font>. "
      )
    }
  )
}
