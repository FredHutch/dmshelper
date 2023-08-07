#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
standards_chunk <- function(input, genomics = FALSE) {
  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  if (!(genomics)) {
    standards_chunk_temp <- character(0)
    standards_cat <- character(0)

    # Go through all flags but genomics
    for (flag in names(flag_yaml_paths)[(names(flag_yaml_paths) != "genomics_flag")]) {
      if (determine_cores(input)[[flag]]) {
        stands_ <- yaml.load_file(flag_yaml_paths[[flag]])$standards
        if (any(stringr::str_detect(stands_, "%1%"))) {
          standards_cat <- c(standards_cat, switch(
            flag,
            antibody_tech_flag = "antibody technology",
            cell_img_flag = "cellular imaging",
            eh_aperio_flag = "experimental hisopathology",
            eh_polaris_flag = "experimental hisopathology",
            eh_vectra_flag = "experimental hisopathology",
            em_cryo_flag = "electron microscopy",
            em_sem_flag = "electron microscopy",
            em_tem_flag = "electron microscopy",
            immune_flag = "immune monitoring",
            pi_ivis_flag = "preclinical imaging",
            preclinical_model_flag = "preclinical modeling",
            therapeutic_flag = "therapeutic products"
          ))
        }
        standards_chunk_temp <- c(standards_chunk_temp, stands_)
      }
    }

    standards_chunk_temp <- unique(standards_chunk_temp)
    standards_cat <-
      remove_last_comma(unique(standards_cat), conj = "or")
    standards_chunk_temp <-
      stringr::str_replace(standards_chunk_temp, "%1%", standards_cat)

    return(standards_chunk_temp)
  }

  if (genomics) {
    standards_chunk_temp <- character(0)
    if (determine_cores(input)[["genomics_flag"]]) {
      stands_ <- yaml.load_file(flag_yaml_paths[["genomics_flag"]])$standards
      standards_chunk_temp <- c(standards_chunk_temp, stands_)
    }

    return(standards_chunk_temp)
  }
}
