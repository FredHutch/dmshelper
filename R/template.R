#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
datatype_txt <- function(input){
  return(c(
    "## Data Management and Sharing Plan",
    "### Data Type",
    "#### Types and amount of scientific data expected to be generated in the project",
    raw_processed_data_chunk(input),
    "",
    "#### Scientific data that will be preserved and shared, and the rationale for doing so",
    sharing_chunk(input),
    "",
    "#### Metadata, other relevant data, and associated documentation",
    metadata_chunk(input)
  ))
}


#' Title
#'
#' @param tools_code_part
#'
#' @return
#' @export
#'
#' @examples
tools_txt <- function(
    tools_code_part
){
  return(c(
    "",
    "### Related Tools, Software and/or Code",
    "",
    tools_code_part,
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
standards_txt <- function(input) {
  return(c(
    "",
    "### Standards",
    "",
    paste0(
      "The data produced in this project will be collected using <font color='OA799A'>",
      if (input$standards_description == "") {" ___ "} else {input$standards_description},
      ". ",
      input$standards_comment,
      "</font> "
    ),
    ""
  ))
}


#' Title
#'
#' @param repository_part
#' @param fair_description
#' @param duration_description
#'
#' @return
#' @export
#'
#' @examples
preservation_txt <- function(
  repository_part,
  fair_description,
  duration_description
){
  return(c(
    "",
    "### Data Preservation, Access, and Associated Timelines",
    "",
    "#### Repository where scientific data and metadata will be archived",
    "",
    repository_part,
    "",
    "#### How scientific data will be findable and identifiable",
    "",
    fair_description,
    "",
    "#### When and how long the scientific data will be made available",
    "",
    duration_description,
    ""
  ))
}


#' Title
#'
#' @param reuse_part
#' @param control_part
#' @param hs_part
#'
#' @return
#' @export
#'
#' @examples
access_txt <- function(reuse_part, control_part, hs_part) {
  return(
    c(
      "",
      "### Access, Distribution, or Reuse Considerations",
      "",
      "#### Factors affecting subsequent access, distribution, or reuse of scientific data",
      "",
      reuse_part,
      "",
      "#### Whether access to scientific data will be controlled",
      "",
      control_part,
      "",
      "#### Protections for privacy, rights, and confidentiality of human research participants",
      "",
      hs_part,
      ""
    )
  )
}


#' Title
#'
#' @param oversight_part
#'
#' @return
#' @export
#'
#' @examples
oversight_txt <- function(oversight_part){
  return(c(
    "",
    "### Oversight of Data Management and Sharing",
    "",
    oversight_part,
    ""
  ))
}
