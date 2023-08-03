#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
tools_chunk <- function(input) {

  # Pull out all templates and make a named list with file path
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths  <- list()
  for(template in all_templates){
    flag_yaml_paths [[paste0(template, "_flag")]] = paste0("template/", template, ".yml")
  }

  tools_chunk_temp <- character(0)
  tools_cat <- character(0)

  for (flag in names(flag_yaml_paths)) {
    if (determine_cores(input)[[flag]]) {
      tools <- yaml.load_file(flag_yaml_paths[[flag]])$tools
      if (any(stringr::str_detect(tools, "%1%"))) {
        tools_cat <- c(tools_cat, switch(flag,
                                         large_animal_flag = "large animal facility data",
                                         small_animal_flag = "small animal facility data",
                                         therapeutic_flag = "therapeutic products data",
                                         antibody_tech_flag = "antibody technology data"
        ))
      }
      tools_chunk_temp <- c(tools_chunk_temp, tools)
    }
  }

  tools_chunk_temp <- unique(tools_chunk_temp)
  tools_cat <- remove_last_comma(tools_cat)
  tools_chunk_temp <- stringr::str_replace(tools_chunk_temp, "%1%", tools_cat)

  return(tools_chunk_temp)
}
