#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
access_reuse_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  access_reuse_chunk_temp <- character(0)
  access_reuse_cat <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Check for human subjects access_reuse, must also have the standards_hs yml entry
      if (input$human_subjects &
          !(is.null(yaml.load_file(flag_yaml_paths[[flag]])$access_reuse_hs))) {
        access_ <- yaml.load_file(flag_yaml_paths[[flag]])$access_reuse_hs
      } else {
        access_ <- yaml.load_file(flag_yaml_paths[[flag]])$access_reuse
      }
      if (any(stringr::str_detect(access_, "%1%"))) {
        access_reuse_cat <- c(access_reuse_cat, switch(
          flag,
          antibody_tech_flag = "antibody technology",
          cell_img_flag = "cellular imaging",
          eh_aperio_flag = "experimental hisopathology",
          eh_polaris_flag = "experimental hisopathology",
          eh_vectra_flag = "experimental hisopathology",
          em_cryo_flag = "cellular imaging",
          em_sem_flag = "cellular imaging",
          em_tem_flag = "cellular imaging",
          flow_cytometry_flag = "flow cytometry",
          pi_ivs_flag = "preclinical imaging",
          pi_mri_flag = "preclinical imaging",
          pi_microct_flag = "preclinical imaging",
          proteomics_flag = "proteomic",
          small_animal_flag = "small animal facility"
        ))
      }
      access_reuse_chunk_temp <- c(access_reuse_chunk_temp, access_)
    }
  }

  access_reuse_chunk_temp <- unique(access_reuse_chunk_temp)
  access_reuse_cat <- remove_last_comma(unique(access_reuse_cat), conj = "or")
  access_reuse_chunk_temp <-
    stringr::str_replace(access_reuse_chunk_temp, "%1%", access_reuse_cat)

  return(access_reuse_chunk_temp)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
control_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  control_approvals_chunk_temp <- character(0)
  control_approvals_cat <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Check for human subjects control_approvals, must also have the standards_hs yml entry
      if (input$human_subjects &
          !(is.null(yaml.load_file(flag_yaml_paths[[flag]])$control_approvals_hs))) {
        control_ <- yaml.load_file(flag_yaml_paths[[flag]])$control_approvals_hs
      } else {
        control_ <- yaml.load_file(flag_yaml_paths[[flag]])$control_approvals
      }
      if (any(stringr::str_detect(control_, "%1%"))) {
        control_approvals_cat <- c(control_approvals_cat, switch(
          flag,
          antibody_tech_flag = "antibody technology",
          cell_img_flag = "cellular imaging",
          eh_aperio_flag = "experimental hisopathology",
          eh_polaris_flag = "experimental hisopathology",
          eh_vectra_flag = "experimental hisopathology",
          em_cryo_flag = "cellular imaging",
          em_sem_flag = "cellular imaging",
          em_tem_flag = "cellular imaging",
          flow_cytometry_flag = "flow cytometry",
          pi_ivs_flag = "preclinical imaging",
          pi_mri_flag = "preclinical imaging",
          pi_microct_flag = "preclinical imaging",
          small_animal_flag = "small animal facility"
        ))
      }
      control_approvals_chunk_temp <- c(control_approvals_chunk_temp, control_)
    }
  }

  control_approvals_chunk_temp <- unique(control_approvals_chunk_temp)
  control_approvals_cat <- remove_last_comma(unique(control_approvals_cat))
  control_approvals_chunk_temp <-
    stringr::str_replace(control_approvals_chunk_temp, "%1%", control_approvals_cat)

  # Overwrite previous if AnVIL selected
  # Special accommodations for genomics..
  if (input$anvil) {
    if (determine_cores(input)$genomics_flag) {
      if (input$human_subjects) {
        control_approvals_chunk_temp <- yaml.load_file("template/anvil.yml")$controls_approvals_if_anvil_genomics_hs
      } else {
        control_approvals_chunk_temp <- yaml.load_file("template/anvil.yml")$controls_approvals_if_anvil
      }
    } else {
      if (input$human_subjects) {
        control_approvals_chunk_temp <- yaml.load_file("template/anvil.yml")$controls_approvals_if_anvil_hs
      } else {
        control_approvals_chunk_temp <- yaml.load_file("template/anvil.yml")$controls_approvals_if_anvil
      }
    }
  } else {
    control_approvals_chunk_temp <- c(control_approvals_chunk_temp, "")
  }

  return(control_approvals_chunk_temp)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
privacy_hs_chunk <- function(input) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  privacy_hs_chunk_temp <- character(0)

  # Go through flags, which reflect cores
  for (flag in names(flag_yaml_paths)) {
    # Determine if the specific core has been selected
    if (determine_cores(input)[[flag]]) {
      # Check for human subjects privacy_hs, must also have the privacy_hs_hs yml entry
      if (input$human_subjects &
          !(is.null(yaml.load_file(flag_yaml_paths[[flag]])$privacy_hs))) {
        hs_ <- yaml.load_file(flag_yaml_paths[[flag]])$privacy_hs
      } else {
        hs_ <- "Data will not be collected from human research participants."
      }
      privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, hs_)
    }
  }

  privacy_hs_chunk_temp <- unique(privacy_hs_chunk_temp)

  return(privacy_hs_chunk_temp)
}
