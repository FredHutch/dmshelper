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
