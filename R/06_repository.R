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
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    duration_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$duration)
  } else {
    duration_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/cell_img.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/em_tem.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/em_sem.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/em_cryo.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/eh_aperio.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/eh_polaris.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/eh_vectra.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/flow_cytometry.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      duration_chunk_temp <-
        c(duration_chunk_temp,
          yaml.load_file("template/genomics.yml")$duration_hs)
    } else {
      duration_chunk_temp <-
        c(
          duration_chunk_temp,
          yaml.load_file("template/genomics.yml")$duration_non_hs
        )
    }
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/immune.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/large_animal.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/pi_ivis.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/pi_microct.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/pi_mri.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$preclinical_model_flag) {
    #####
    duration_chunk_temp <-
      c(
        duration_chunk_temp,
        yaml.load_file("template/preclinical_model.yml")$duration
      )
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/proteomics.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$small_animal_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/small_animal.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$therapeutic_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/therapeutic.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }

  ##### Remove any duplicates
  duration_chunk_temp <- unique(duration_chunk_temp)


  return(duration_chunk_temp)
}
