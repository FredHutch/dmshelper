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
  eh_aperio_flag <-
    "eh_aperio" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/eh_aperio.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/eh_aperio.yml")$tech_types
    )
  eh_polaris_flag <-
    "eh_polaris" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/eh_polaris.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/eh_polaris.yml")$tech_types
    )
  eh_vectra_flag <-
    "eh_vectra" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/eh_vectra.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/eh_vectra.yml")$tech_types
    )
  flow_cytometry_flag <-
    "flow_cytometry" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/flow_cytometry.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/flow_cytometry.yml")$tech_types
    )
  genomics_flag <-
    "genomics" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/genomics.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/genomics.yml")$tech_types
    )
  immune_flag <-
    "immune" %in% input$core_datatype |
    any(
      input$raw_file_description %in% yaml.load_file("template/immune.yml")$raw_file_types
    ) |
    any(
      input$technology_description %in% yaml.load_file("template/immune.yml")$tech_types
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
    "eh_aperio_flag" = eh_aperio_flag,
    "eh_polaris_flag" = eh_polaris_flag,
    "eh_vectra_flag" = eh_vectra_flag,
    "flow_cytometry_flag" = flow_cytometry_flag,
    "genomics_flag" = genomics_flag,
    "immune_flag" = immune_flag,
    "proteomics_flag" = proteomics_flag
  )

  return(flags)
}
