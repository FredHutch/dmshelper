#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
sharing_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of antibody technology data:_  ",
          yaml.load_file("template/antibody_tech.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of antibody technology data:_  ",
          yaml.load_file("template/antibody_tech.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of cellular imaging data:_  ",
          yaml.load_file("template/cell_img.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of cellular imaging data:_  ",
          yaml.load_file("template/cell_img.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag |
      determine_cores(input)$em_sem_flag |
      determine_cores(input)$em_cryo_flag) {
    sharing_chunk_temp <-
      c(
        sharing_chunk_temp,
        "  ",
        "_Our proposal will preserve and share the following types of electron microscopy data:_  "
      )
  } else {
    sharing_chunk_temp <-
      c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/em_tem.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(sharing_chunk_temp,
          yaml.load_file("template/em_tem.yml")$sharing_non_hs)
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/em_sem.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(sharing_chunk_temp,
          yaml.load_file("template/em_sem.yml")$sharing_non_hs)
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/em_cryo.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(sharing_chunk_temp,
          yaml.load_file("template/em_cryo.yml")$sharing_non_hs)
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$eh_aperio_flag |
      determine_cores(input)$eh_polaris_flag |
      determine_cores(input)$eh_vectra_flag) {
    sharing_chunk_temp <-
      c(
        sharing_chunk_temp,
        "  ",
        "_Our proposal will preserve and share the following types of experimental histopathology data:_  "
      )
  } else {
    sharing_chunk_temp <-
      c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/eh_aperio.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(
          sharing_chunk_temp,
          yaml.load_file("template/eh_aperio.yml")$sharing_non_hs
        )
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/eh_polaris.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(
          sharing_chunk_temp,
          yaml.load_file("template/eh_polaris.yml")$sharing_non_hs
        )
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/eh_vectra.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(
          sharing_chunk_temp,
          yaml.load_file("template/eh_vectra.yml")$sharing_non_hs
        )
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of flow cytometry data:_  ",
          yaml.load_file("template/flow_cytometry.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of flow cytometry data:_  ",
          yaml.load_file("template/flow_cytometry.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          yaml.load_file("template/genomics.yml")$sharing_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          yaml.load_file("template/genomics.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of immune monitoring data:_  ",
          yaml.load_file("template/immune.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of immune monitoring data:_  ",
          yaml.load_file("template/immune.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of large animal data:_  ",
          yaml.load_file("template/large_animal.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of large animal data:_  ",
          yaml.load_file("template/large_animal.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag |
      determine_cores(input)$pi_microct_flag |
      determine_cores(input)$pi_mri_flag) {
    sharing_chunk_temp <-
      c(
        sharing_chunk_temp,
        "  ",
        "_Our proposal will preserve and share the following types of preclinical imaging data:_  "
      )
  } else {
    sharing_chunk_temp <-
      c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/pi_ivis.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(sharing_chunk_temp,
          yaml.load_file("template/pi_ivis.yml")$sharing_non_hs)
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/pi_microct.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(
          sharing_chunk_temp,
          yaml.load_file("template/pi_microct.yml")$sharing_non_hs
        )
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    sharing_chunk_temp <-
      if (yaml.load_file("template/pi_mri.yml")$sharing_non_hs %in% sharing_chunk_temp) {
        sharing_chunk_temp
      } else {
        c(sharing_chunk_temp,
          yaml.load_file("template/pi_mri.yml")$sharing_non_hs)
      }
  } else {
    sharing_chunk_temp <- sharing_chunk_temp
  }
  if (determine_cores(input)$preclinical_model_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of preclinical modeling data:_  ",
          yaml.load_file("template/preclinical_model.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of preclinical modeling data:_  ",
          yaml.load_file("template/preclinical_model.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          yaml.load_file("template/proteomics.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          yaml.load_file("template/proteomics.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$small_animal_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of small animal data:_  ",
          yaml.load_file("template/small_animal.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of small animal data:_  ",
          yaml.load_file("template/small_animal.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$therapeutic_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of therapeutic products data:_  ",
          yaml.load_file("template/therapeutic.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of therapeutic products data:_  ",
          yaml.load_file("template/therapeutic.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }

  return(sharing_chunk_temp)
}
