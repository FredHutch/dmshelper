#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
metadata_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    metadata_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$metadata)
  } else {
    metadata_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/cell_img.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/cell_img.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/em_tem.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_tem.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/em_sem.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_sem.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/em_cryo.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_cryo.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/eh_aperio.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_aperio.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/eh_polaris.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_polaris.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/eh_vectra.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/eh_vectra.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/flow_cytometry.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/flow_cytometry.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/genomics.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/genomics.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    metadata_chunk_temp <-
      c(metadata_chunk_temp,
        if (yaml.load_file("template/proteomics.yml")$metadata %in% metadata_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/proteomics.yml")$metadata
        })
  } else {
    metadata_chunk_temp <- c(metadata_chunk_temp, "")
  }

  return(metadata_chunk_temp)
}
