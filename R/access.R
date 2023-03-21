#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
access_reuse_chunk <- function(input) {
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      access_reuse_chunk_temp <-
        yaml.load_file("template/genomics.yml")$access_reuse
    } else {
      access_reuse_chunk_temp <-
        yaml.load_file("template/genomics.yml")$access_reuse
    }
  } else {
    access_reuse_chunk_temp <- c("")
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
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      control_chunk_temp <-
        yaml.load_file("template/genomics.yml")$control_approvals
    } else {
      control_chunk_temp <-
        yaml.load_file("template/genomics.yml")$control_approvals
    }
  } else {
    control_chunk_temp <- c("")
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
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      privacy_hs_chunk_temp <-
        yaml.load_file("template/genomics.yml")$privacy_hs
    } else {
      privacy_hs_chunk_temp <-
        "Data will not be collected from human research participants."
    }
  } else {
    privacy_hs_chunk_temp <- c("")
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







#' Title
#'
#' @return
#' @export
#'
#' @examples
reuse_choices <- function() {
  return(
    c(
      "No restrictions" = "no_restrictions",
      "Not shared (software restrictions)" = "ns_software",
      "Not shared (large data)" = "ns_big_data",
      "Not shared (no IRB consent)" = "ns_irb_total",
      "Not shared (IRB deidentified)" = "ns_irb_deidentified",
      "Not shared (sovereignty)" = "ns_sovereignty"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
reuse_no_restrictions <- function(input) {
  return(if (input$core_datatype %in% c("small_animal")) {
    "<font color='OA799A'>We do not anticipate any significant factors limiting the access, distribution, or reuse of IVIS scientific data generated for this project. Breeding and hematology records will be retained in internal databases. Relevant information will be published.</font>"
  } else {
    "<font color='OA799A'>We do not anticipate any factors affecting subsequent access, distribution, or reuse of the collected scientific data.</font>"
  })
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
reuse_ns_software <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      if (input$reuse_raw_file_type == "") {
        " ___ "
      } else {
        input$reuse_raw_file_type
      },
      " will not be shared because they ",
      if (input$reuse_level == "None") {
        ""
      } else {
        paste0("are ",
               input$reuse_level,
               " data and ")
      },
      "can only be opened in a limited number of open-source software programs/proprietary, licensed viewing software.</font>"
    )
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
reuse_ns_big_data <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      if (input$reuse_raw_file_type == "") {
        " ___ "
      } else {
        input$reuse_raw_file_type
      },
      " will not be shared because they ",
      if (input$reuse_level == "None") {
        ""
      } else {
        paste0("are ",
               input$reuse_level,
               " data, ")
      },
      "are very large, and are only needed for advanced data processing or to reconstruct the scientifically accepted raw data type.</font>"
    )
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
reuse_ns_irb_total <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      if (input$reuse_raw_file_type == "") {
        " ___ "
      } else {
        input$reuse_raw_file_type
      },
      " will not be shared because the IRB for this protocol does not include consent for public data sharing.</font>"
    )
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
reuse_ns_irb_deidentified <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      if (input$reuse_raw_file_type == "") {
        " ___ "
      } else {
        input$reuse_raw_file_type
      },
      " are not suitable to be shared in identified form due to IRB restrictions. However, de-identified data with randomly generated participant or sample IDs will be shared.</font>"
    )
  )
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
reuse_ns_sovereignty <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>",
      if (input$reuse_raw_file_type == "") {
        " ___ "
      } else {
        input$reuse_raw_file_type
      },
      " are not suitable to be shared due to sovereignty restrictions related to individuals from the population sampled.</font>"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
control_no_restrictions <- function(input) {
  return(if (input$core_datatype %in% c("proteomics")) {
    paste0(
      "<font color='OA799A'>",
      if (input$controlled_data_type == "") {
        " ___ "
      } else {
        input$controlled_data_type
      },
      " stored in ",
      if (input$access_repositories == "") {
        " ___ "
      } else {
        input$access_repositories
      },
      " will be available to requesting researchers without the need for approval.</font>"
    )
  } else if (input$core_datatype %in% c("small_animal")) {
    paste0(
      "<font color='OA799A'>",
      if (input$controlled_data_type == "") {
        " ___ "
      } else {
        input$controlled_data_type
      },
      " will be made openly accessibly upon submission to a public data repository, without any subsequent requirement for access approval by requesting researchers.</font>"
    )
  } else {
    paste0(
      "<font color='OA799A'>We do not anticipate collection of any controlled data.</font>"
    )
  })
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
control_restrictions <- function(input) {
  return(
    paste0(
      "<font color='OA799A'>All requests for the ",
      if (input$controlled_data_type == "") {
        " ___ "
      } else {
        input$controlled_data_type
      },
      " that is stored in ",
      if (input$access_repositories == "") {
        " ___ "
      } else {
        input$access_repositories
      },
      " will be ",
      if (input$control_comment == "") {
        " ___ "
      } else {
        input$control_comment
      },
      ".</font>"
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
human_subjects_none <- function() {
  return(
    "<font color='OA799A'>Data will not be collected from human research participants.</font>"
  )
}


#' Title
#'
#' @return
#' @export
#'
human_subjects <- function() {
  return(
    "<font color='OA799A'>In order to achieve our goal of data sharing with the research community while not violating assurances and rights of study participants, we will create a dataset for sharing that (1) excludes participants whose consent forms specifically state that their data will not be shared outside of the study team, and (2) incorporates standard blurring or masking techniques for demographic, phenotypic, and descriptive variables so as to reduce risks of identifiability and/or confidentiality violation.</font>"
  )
}
