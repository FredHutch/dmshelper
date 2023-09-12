#' Add markdown to text logic chunks for "Datatype" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' datatype_txt(input)
datatype_txt <- function(input) {
  return(
    c(
      # Don't love this huge title, but it prevents pandoc warnings.
      "---",
      "title: <h2>Data Management and Sharing Plan</h2>",
      "---",
      "",
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


#' Add markdown to text logic chunks for "Tools" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' tools_txt(input)
tools_txt <- function(input) {
  return(c(
    "",
    "### Related Tools, Software and/or Code",
    "",
    tools_chunk(input),
    ""
  ))
}


#' Add markdown to text logic chunks for "Standards" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' standards_txt(input)
standards_txt <- function(input) {
  return(c("",
           "### Standards",
           "",
           standards_chunk(input),
           ""))
}


#' Add markdown to text logic chunks for "Preservation" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' preservation_txt(input)
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


#' Add markdown to text logic chunks for "Access" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' access_txt(input)
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


#' Add markdown to text logic chunks for "Oversight" section
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' oversight_txt(input)
oversight_txt <- function(input) {
  return(c(
    "",
    "### Oversight of Data Management and Sharing",
    "",
    oversight_chunk(input),
    ""
  ))
}


#' Add markdown to text logic chunks for "Notes".
#'
#' This is not part of the DMS plan but is intended for user reference.
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for the footnote
#' @export
#'
#' @examples
#' # Not run
#' reference_txt(input)
reference_txt <- function(input) {
  return(c(
    "---",
    "title: <h4>NOTES:</h4>",
    "---",
    "",
    reference_chunk(input)
  ))
}
