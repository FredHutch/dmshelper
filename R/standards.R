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
  if (determine_cores(input)$genomics_flag) {
    #####
    standards_chunk_temp <-
      c(standards_chunk_temp,
        yaml.load_file("template/genomics.yml")$standards)
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

  return(standards_chunk_temp)

}
