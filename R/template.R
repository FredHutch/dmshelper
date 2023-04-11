#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
datatype_txt <- function(input) {
  return(
    c(
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
    )
  )
}


#' Title
#'
#' @param tools_code_part
#'
#' @return
#' @export
#'
#' @examples
tools_txt <- function(input) {
  return(c(
    "",
    "### Related Tools, Software and/or Code",
    "",
    tools_chunk(input),
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
  return(c("",
           "### Standards",
           "",
           standards_chunk(input),
           ""))
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
preservation_txt <- function(input) {
  return(
    c(
      "",
      "### Data Preservation, Access, and Associated Timelines",
      "",
      "#### Repository where scientific data and metadata will be archived",
      "",
      repository_chunk(input),
      "",
      "#### How scientific data will be findable and identifiable",
      "",
      findable_chunk(input),
      "",
      "#### When and how long the scientific data will be made available",
      "",
      duration_chunk(input),
      ""
    )
  )
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
access_txt <- function(input) {
  return(
    c(
      "",
      "### Access, Distribution, or Reuse Considerations",
      "",
      "#### Factors affecting subsequent access, distribution, or reuse of scientific data",
      "",
      access_reuse_chunk(input),
      "",
      "#### Whether access to scientific data will be controlled",
      "",
      control_chunk(input),
      "",
      "#### Protections for privacy, rights, and confidentiality of human research participants",
      "",
      privacy_hs_chunk(input),
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
oversight_txt <- function(input) {
  return(c(
    "",
    "### Oversight of Data Management and Sharing",
    "",
    oversight_chunk(input),
    ""
  ))
}
