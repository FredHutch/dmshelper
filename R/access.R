#' Title
#'
#' @return
#' @export
#'
reuse_no_restrictions <- function(input) {
  return(
    if (input$core_datatype %in% c("small_animal")) {
      "<font color='OA799A'>We do not anticipate any significant factors limiting the access, distribution, or reuse of IVIS scientific data generated for this project. Breeding and hematology records will be retained in internal databases. Relevant information will be published.</font>"
    } else {
      "<font color='OA799A'>We do not anticipate any factors affecting subsequent access, distribution, or reuse of the collected scientific data.</font>"
  })
}

#' Title
#'
#' @param input
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


#' Title
#'
#' @return
#' @export
#'
#' @examples
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
control_no_restrictions <- function(input) {
  return(
    if (input$core_datatype %in% c("proteomics")) {
      paste0(
        "<font color='OA799A'>All proteomics datasets stored in MassIVE or PRIDE will be available to requesting researchers without the need for approval.</font>"
      )
    } else if (input$core_datatype %in% c("small_animal")) {
      paste0(
        "<font color='OA799A'>Scientific data will be made openly accessibly upon submission to a public data repository, without any subsequent requirement for access approval by requesting researchers.</font>"
      )
    } else if (input$core_datatype %in% c("therapeutic")) {
      paste0(
        "<font color='OA799A'>Repositories provide stable IDs to [project accession, SRA read accession, sequencing platform, etc.]. Primary references would be to a GEO series accession or SRA run accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.</font>"
      )
    } else {
      paste0("<font color='OA799A'>We do not anticipate collection of any controlled data.</font>")
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
