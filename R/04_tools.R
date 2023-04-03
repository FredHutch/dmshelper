#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
tools_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    tools_chunk_temp <- c(yaml.load_file("template/antibody_tech.yml")$tools)
  } else {
    tools_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/cell_img.yml")$tools[!(yaml.load_file("template/cell_img.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/em_tem.yml")$tools[!(yaml.load_file("template/em_tem.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/em_tem.yml")$tools[!(yaml.load_file("template/em_tem.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/em_cryo.yml")$tools[!(yaml.load_file("template/em_cryo.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/eh_aperio.yml")$tools[!(yaml.load_file("template/eh_aperio.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/eh_polaris.yml")$tools[!(yaml.load_file("template/eh_polaris.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/eh_vectra.yml")$tools[!(yaml.load_file("template/eh_vectra.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/flow_cytometry.yml")$tools[!(yaml.load_file("template/flow_cytometry.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/genomics.yml")$tools[!(yaml.load_file("template/genomics.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/immune.yml")$tools[!(yaml.load_file("template/immune.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/large_animal.yml")$tools[!(yaml.load_file("template/large_animal.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/pi_ivis.yml")$tools[!(yaml.load_file("template/pi_ivis.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/pi_microct.yml")$tools[!(yaml.load_file("template/pi_microct.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/pi_mri.yml")$tools[!(yaml.load_file("template/pi_mri.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    tools_chunk_temp <-
      c(tools_chunk_temp,
        yaml.load_file("template/proteomics.yml")$tools[!(yaml.load_file("template/proteomics.yml")$tools %in% tools_chunk_temp)])
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }

  return(tools_chunk_temp)

}
