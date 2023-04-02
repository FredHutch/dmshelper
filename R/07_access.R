#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
access_reuse_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    access_reuse_chunk_temp <-
      yaml.load_file("template/antibody_tech.yml")$access_reuse
  } else {
    access_reuse_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/cell_img.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/em_tem.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/em_sem.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/em_cryo.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/eh_aperio.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/eh_polaris.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/eh_vectra.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    access_reuse_chunk_temp <- c(
      access_reuse_chunk_temp,
      yaml.load_file("template/flow_cytometry.yml")$access_reuse
    )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    access_reuse_chunk_temp <- c(
      access_reuse_chunk_temp,
      yaml.load_file("template/genomics.yml")$access_reuse
    )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    access_reuse_chunk_temp <-
      c(
        access_reuse_chunk_temp,
        yaml.load_file("template/proteomics.yml")$access_reuse
      )
  } else {
    access_reuse_chunk_temp <- c(access_reuse_chunk_temp, "")
  }

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
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    control_chunk_temp <-
      yaml.load_file("template/antibody_tech.yml")$control_approvals
  } else {
    control_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/cell_img.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/em_tem.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/em_sem.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/em_cryo.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    control_chunk_temp <- c(
      control_chunk_temp,
      yaml.load_file("template/eh_aperio.yml")$control_approvals
    )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    control_chunk_temp <- c(
      control_chunk_temp,
      yaml.load_file("template/eh_polaris.yml")$control_approvals
    )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    control_chunk_temp <- c(
      control_chunk_temp,
      yaml.load_file("template/eh_vectra.yml")$control_approvals
    )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    control_chunk_temp <- c(
      control_chunk_temp,
      yaml.load_file("template/flow_cytometry.yml")$control_approvals
    )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    control_chunk_temp <- c(
      control_chunk_temp,
      yaml.load_file("template/genomics.yml")$control_approvals
    )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/proteomics.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }

  return(control_chunk_temp)
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
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/antibody_tech.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/cell_img.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/cell_img.yml")$privacy_hs
            }
        } else {
          privacy_hs_chunk_temp <-
            if ("Data will not be collected from human research participants." %in%  privacy_hs_chunk_temp) {
              ""
            } else {
              "Data will not be collected from human research participants."
            }
        })
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/em_tem.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/em_sem.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/em_cryo.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/eh_aperio.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/eh_polaris.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/eh_vectra.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/flow_cytometry.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/genomics.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/genomics.yml")$privacy_hs
            }
        } else {
          privacy_hs_chunk_temp <-
            if ("Data will not be collected from human research participants." %in%  privacy_hs_chunk_temp) {
              ""
            } else {
              "Data will not be collected from human research participants."
            }
        })
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/proteomics.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/proteomics.yml")$privacy_hs
            }
        } else {
          privacy_hs_chunk_temp <-
            if ("Data will not be collected from human research participants." %in%  privacy_hs_chunk_temp) {
              ""
            } else {
              "Data will not be collected from human research participants."
            }
        })
  } else {
    privacy_hs_chunk_temp <- c(privacy_hs_chunk_temp, "")
  }

  return(privacy_hs_chunk_temp)
}
