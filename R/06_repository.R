#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
repository_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  repository_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Check for human subjects repository, must also have the repository_hs yml entry
      if (input$human_subjects &
          !(is.null(yaml.load_file(flag_yaml_paths[[flag]])$repository_hs))) {
        repos_ <- yaml.load_file(flag_yaml_paths[[flag]])$repository_hs
      } else {
        repos_ <- yaml.load_file(flag_yaml_paths[[flag]])$repository
      }
      repository_chunk_temp <- c(repository_chunk_temp, repos_)
    }
  }

  # Overwrite previous if AnVIL selected
  if (input$anvil) {
    repository_chunk_temp <-
      yaml.load_file("template/anvil.yml")$repository_if_anvil
  } else {
    repository_chunk_temp <- c(repository_chunk_temp, "")
  }

  repository_chunk_temp <- unique(repository_chunk_temp)

  return(repository_chunk_temp)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
findable_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  findable_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Load the yaml and append it
      findable_ <- yaml.load_file(flag_yaml_paths[[flag]])$findable
      findable_chunk_temp <- c(findable_chunk_temp, findable_)
    }
  }

  # Overwrite previous if AnVIL selected
  if (input$anvil) {
    findable_chunk_temp <-
      yaml.load_file("template/anvil.yml")$findable_if_anvil
  } else {
    findable_chunk_temp <- c(findable_chunk_temp, "")
  }

  # Remove any duplicated text
  findable_chunk_temp <- unique(findable_chunk_temp)

  # Place the "Identifiers.." sentence last in the section.
  findable_chunk_temp <-
    findable_chunk_temp[order(stringr::str_detect(findable_chunk_temp, "Identifiers"))]

  return(findable_chunk_temp)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
duration_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  duration_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Check for human subjects duration, must also have the duration_hs yml entry
      if (input$human_subjects &
          !(is.null(yaml.load_file(flag_yaml_paths[[flag]])$duration_hs))) {
        repos_ <- yaml.load_file(flag_yaml_paths[[flag]])$duration_hs
      } else {
        repos_ <- yaml.load_file(flag_yaml_paths[[flag]])$duration
      }
      duration_chunk_temp <- c(duration_chunk_temp, repos_)
    }
  }

  # Overwrite previous if AnVIL selected
  # Special accommodations for genomics..
  if (input$anvil) {
    if (determine_cores(input)$genomics_flag) {
      if (input$human_subjects) {
        duration_chunk_temp <- yaml.load_file("template/anvil.yml")$duration_if_anvil_genomics_hs
      } else {
        duration_chunk_temp <- yaml.load_file("template/anvil.yml")$duration_if_anvil_genomics
      }
    } else {
      duration_chunk_temp <- yaml.load_file("template/anvil.yml")$duration_if_anvil
    }
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }

  duration_chunk_temp <- unique(duration_chunk_temp)

  return(duration_chunk_temp)
}
