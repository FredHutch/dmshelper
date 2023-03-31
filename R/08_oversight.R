#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
oversight_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    oversight_chunk_temp <-
      c(
        yaml.load_file("template/proteomics.yml")$oversight,
        "Execution of this Plan will be performed by <font color='OA799A'>",
        yaml.load_file("template/proteomics.yml")$oversight_execution,
        ".</font>"
      )
  } else {
    oversight_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/cell_img.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/cell_img.yml")$oversight
        },
        paste0(if (yaml.load_file("template/cell_img.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/cell_img.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/em_tem.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_tem.yml")$oversight
        },
        paste0(if (yaml.load_file("template/em_tem.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/em_tem.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/em_sem.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_sem.yml")$oversight
        },
        paste0(if (yaml.load_file("template/em_sem.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/em_sem.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/em_cryo.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/em_cryo.yml")$oversight
        },
        paste0(if (yaml.load_file("template/em_cryo.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/em_cryo.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/genomics.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/genomics.yml")$oversight
        },
        paste0(if (yaml.load_file("template/genomics.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/genomics.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    oversight_chunk_temp <-
      c(oversight_chunk_temp,
        if (yaml.load_file("template/proteomics.yml")$oversight %in% oversight_chunk_temp) {
          ""
        } else {
          yaml.load_file("template/proteomics.yml")$oversight
        },
        paste0(if (yaml.load_file("template/proteomics.yml")$oversight_execution %in% oversight_chunk_temp) {
          ""
        } else {
          c(
            "Execution of this Plan will be performed by <font color='OA799A'>",
            yaml.load_file("template/proteomics.yml")$oversight_execution,
            ".</font>"
          )
        }))
  } else {
    oversight_chunk_temp <- c(oversight_chunk_temp, "")
  }

  return(oversight_chunk_temp)

}
