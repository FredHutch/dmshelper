#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
determine_cores <- function(input) {
  # Determine which raw data types belong to genomics..
  # TODO : do we want cores to appear with datatypes or vice versa?
  antibody_tech_flag <-
    "antibody_tech" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/antibody_tech.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/antibody_tech.yml")$tech_types
    )
  cell_img_flag <-
    "cellular_imaging" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/cell_img.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/cell_img.yml")$tech_types
    )
  em_tem_flag <-
    "em_tem" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/em_tem.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/em_tem.yml")$tech_types
    )
  em_sem_flag <-
    "em_sem" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/em_sem.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/em_sem.yml")$tech_types
    )
  em_cryo_flag <-
    "em_cryo" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/em_cryo.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/em_cryo.yml")$tech_types
    )
  genomics_flag <-
    "genomics" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/genomics.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/genomics.yml")$tech_types
    )
  proteomics_flag <-
    "proteomics" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/proteomics.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/proteomics.yml")$tech_types
    )

  flags <- data.frame(
    "antibody_tech_flag" = antibody_tech_flag,
    "cell_img_flag" = cell_img_flag,
    "em_tem_flag" = em_tem_flag,
    "em_sem_flag" = em_sem_flag,
    "em_cryo_flag" = em_cryo_flag,
    "genomics_flag" = genomics_flag,
    "proteomics_flag" = proteomics_flag
  )

  return(flags)
}
