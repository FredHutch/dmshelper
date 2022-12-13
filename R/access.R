#' Title
#'
#' @return
#' @export
#'
reuse_no_restrictions <- function() {
  return(
    "<font color='OA799A'>We do not anticipate any factors affecting subsequent access, distribution, or reuse of the collected scientific data.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
reuse_ns_software <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      input$reuse_raw_file_type,
      " will not be shared because they are ",
      input$reuse_level,
      " data and can only be opened in a limited number of open-source software programs/proprietary, licensed viewing software.</font>"
    )
  )
}


reuse_choices <- function(){
  return(
    c(
      "No restrictions" = "no_restrictions",
      "Not shared - software restrictions" = "ns_software",
      "gene-level @ 3 months" = "gene_3",
      "dbGap @ publication" = "dbgap_pub",
      "dbGap @ publication - SRA" = "dbgap_pub_sra",
      "None (sensitive data)" = "none"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
control_no_restrictions <- function() {
  return(
    "<font color='OA799A'>We do not anticipate collection of any controlled data.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
control_restrictions <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>All requests for the ",
      input$repository_data_type,
      " that is stored in ",
      input$chosen_repositories,
      " will be ",
      input$control_comment,
      ".</font>"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
human_subjects_none <- function() {
  return(
    "<font color='OA799A'>Data will not be collected from human research participants.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
human_subjects <- function() {
  return(
    "<font color='OA799A'>In order to achieve our goal of data sharing with the research community while not violating assurances and rights of study participants, we will create a dataset for sharing that (1) excludes participants whose consent forms specifically state that their data will not be shared outside of the study team, and (2) incorporates standard blurring or masking techniques for demographic, phenotypic, and descriptive variables so as to reduce risks of identifiability and/or confidentiality violation.</font>"
  )
}
