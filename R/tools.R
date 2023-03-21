#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
tools_chunk <- function(input){
  if (determine_cores(input)$genomics_flag) {
    #####
    tools_chunk_temp <- c(
      yaml.load_file("template/genomics.yml")$tools
    )
  } else {
    tools_chunk_temp <- c("")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    tools_chunk_temp <-
      c(
        tools_chunk_temp,
        yaml.load_file("template/proteomics.yml")$tools
      )
  } else {
    tools_chunk_temp <- c(tools_chunk_temp, "")
  }

  return(tools_chunk_temp)

}
