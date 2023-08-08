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

  for (flag in names(flag_yaml_paths)) {
    if (determine_cores(input)[[flag]]) {
      access_reuse <- yaml.load_file(flag_yaml_paths[[flag]])$access_reuse
      if (any(stringr::str_detect(access_reuse, "%1%"))) {
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
      access_reuse_chunk_temp <- c(access_reuse_chunk_temp, access_reuse)
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
  if (determine_cores(input)$immune_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/immune.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/large_animal.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/pi_ivis.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/pi_microct.yml")$control_approvals
      )
  } else {
    control_chunk_temp <- c(control_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    control_chunk_temp <-
      c(
        control_chunk_temp,
        yaml.load_file("template/pi_mri.yml")$control_approvals
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
  if (determine_cores(input)$immune_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/immune.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/immune.yml")$privacy_hs
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
  if (determine_cores(input)$large_animal_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/large_animal.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/large_animal.yml")$privacy_hs
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
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/pi_ivis.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/pi_ivis.yml")$privacy_hs
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
  if (determine_cores(input)$pi_microct_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/pi_microct.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/pi_microct.yml")$privacy_hs
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
  if (determine_cores(input)$pi_mri_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/pi_mri.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/pi_mri.yml")$privacy_hs
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
  if (determine_cores(input)$preclinical_model_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/preclinical_model.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/preclinical_model.yml")$privacy_hs
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
  if (determine_cores(input)$small_animal_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/small_animal.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/small_animal.yml")$privacy_hs
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
  if (determine_cores(input)$therapeutic_flag) {
    #####
    privacy_hs_chunk_temp <-
      c(privacy_hs_chunk_temp,
        if (input$human_subjects) {
          privacy_hs_chunk_temp <-
            if (yaml.load_file("template/therapeutic.yml")$privacy_hs %in% privacy_hs_chunk_temp) {
              ""
            } else {
              yaml.load_file("template/therapeutic.yml")$privacy_hs
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
