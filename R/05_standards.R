#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
standards_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    standards_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$standards)
  } else {
    standards_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/cell_img.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/em_tem.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_tem.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/em_sem.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_sem.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/em_cryo.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_cryo.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/eh_aperio.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_aperio.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/eh_polaris.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_polaris.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/eh_vectra.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_vectra.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/flow_cytometry.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/genomics.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/immune.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/large_animal.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/pi_ivis.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/pi_ivis.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/pi_microct.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/pi_microct.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        if (yaml.load_file("template/pi_mri.yml")$standards %in% standards_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/pi_mri.yml")$standards
        })
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$preclinical_model_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/preclinical_model.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/proteomics.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$small_animal_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/small_animal.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }
  if (determine_cores(input)$therapeutic_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/therapeutic.yml")$standards)
  } else {
    standards_chunk_temp <- c(standards_chunk_temp, "")
  }

  # Get rid of empty space so this is all one paragraph
  standards_chunk_temp <- standards_chunk_temp[standards_chunk_temp != ""]

  return(standards_chunk_temp)

}
