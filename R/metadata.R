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
