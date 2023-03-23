#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
repository_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    repository_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$repository)
  } else {
    repository_chunk_temp <- c("")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      repository_chunk_temp <-
        c(
          repository_chunk_temp,
          yaml.load_file("template/genomics.yml")$repository_hs
        )
    } else {
      repository_chunk_temp <-
        c(
          repository_chunk_temp,
          yaml.load_file("template/genomics.yml")$repository_non_hs
        )
    }
  } else {
    repository_chunk_temp <- c(repository_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    repository_chunk_temp <-
      c(repository_chunk_temp,
        yaml.load_file("template/proteomics.yml")$repository)
  } else {
    repository_chunk_temp <- c(repository_chunk_temp, "")
  }

  return(repository_chunk_temp)

}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
findable_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    findable_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$findable)
  } else {
    findable_chunk_temp <- c("")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      findable_chunk_temp <- c(findable_chunk_temp,
                               yaml.load_file("template/genomics.yml")$findable)
    } else {
      findable_chunk_temp <-
        c(findable_chunk_temp,
          yaml.load_file("template/genomics.yml")$findable)
    }
  } else {
    findable_chunk_temp <- c(findable_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    findable_chunk_temp <-
      c(findable_chunk_temp,
        yaml.load_file("template/proteomics.yml")$findable)
  } else {
    findable_chunk_temp <- c(findable_chunk_temp, "")
  }

  return(findable_chunk_temp)
}


#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
duration_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    duration_chunk_temp <-
      c(yaml.load_file("template/antibody_tech.yml")$duration)
  } else {
    duration_chunk_temp <- c("")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      duration_chunk_temp <-
        c(duration_chunk_temp,
          yaml.load_file("template/genomics.yml")$duration_hs)
    } else {
      duration_chunk_temp <-
        c(
          duration_chunk_temp,
          yaml.load_file("template/genomics.yml")$duration_non_hs
        )
    }
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    duration_chunk_temp <-
      c(duration_chunk_temp,
        yaml.load_file("template/proteomics.yml")$duration)
  } else {
    duration_chunk_temp <- c(duration_chunk_temp, "")
  }

  return(duration_chunk_temp)
}
