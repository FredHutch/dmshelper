#' Primary logic for the "Notes" section.
#'
#' These urls are generated for the user's reference and should not be
#' included in the final plan, as links to websites are not allowed in the
#' submitted plan.
#'
#' This text appears below the rendered HTML of the plan itself and is not
#' downloaded with the plan.
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' reference_chunk(input)
reference_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  reference_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Load the yaml and append it
      reference_ <- yaml.load_file(flag_yaml_paths[[flag]])$reference
      reference_chunk_temp <- c(reference_chunk_temp, reference_)
    }
  }

  # Overwrite previous if AnVIL selected
  if (input$anvil) {
    reference_chunk_temp <- c(reference_chunk_temp, yaml.load_file("template/anvil.yml")$reference_if_anvil)
  }

  # Remove any duplicated text
  reference_chunk_temp <- unique(reference_chunk_temp)

  # Want to break line between each unique url entry
  reference_chunk_temp <- paste(reference_chunk_temp, collapse = "<br>")

  return(reference_chunk_temp)
}
