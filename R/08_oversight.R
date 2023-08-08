#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
oversight_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  oversight_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Load the yaml and append it
      oversight_ <- paste0(
        yaml.load_file("template/proteomics.yml")$oversight,
        " Execution of this Plan will be performed by <font color='035c94'>",
        yaml.load_file("template/proteomics.yml")$oversight_execution,
        "</font>."
      )
      oversight_chunk_temp <- c(oversight_chunk_temp, oversight_)
    }
  }

  # Overwrite previous if AnVIL selected
  if (input$anvil) {
    oversight_chunk_temp <-
      yaml.load_file("template/anvil.yml")$oversight_if_anvil
  }

  # Remove any duplicated text
  oversight_chunk_temp <- unique(oversight_chunk_temp)

  return(oversight_chunk_temp)
}
