#' Primary logic for the "Metadata" section of the plan
#'
#' @param input Shiny input
#'
#' @return a character vector containing the text for this section
#' @export
#'
#' @examples
#' # Not run
#' metadata_chunk(input)
metadata_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    metadata_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$metadata)
  } else {
    metadata_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/cell_img.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/em_tem.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/em_sem.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/em_cryo.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/eh_aperio.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/eh_polaris.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/eh_vectra.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/flow_cytometry.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/genomics.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/immune.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/large_animal.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/pi_ivis.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/pi_microct.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/pi_mri.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$preclinical_model_flag) {
    metadata_chunk_temp <-
      update_if_absent(
        metadata_chunk_temp,
        yaml.load_file("template/preclinical_model.yml")$metadata
      )
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/proteomics.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$small_animal_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/small_animal.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$therapeutic_flag) {
    metadata_chunk_temp <-
      update_if_absent(metadata_chunk_temp,
                       yaml.load_file("template/therapeutic.yml")$metadata)
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }

  return(metadata_chunk_temp)
}
