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
  #       Example of what an alternative would be commented below..
  antibody_tech_flag <-
    "antibody_tech" %in% input$core_datatype
  # any(
  #   input$raw_file_description %in% yaml.load_file("template/antibody_tech.yml")$raw_file_types
  # ) |
  # any(
  #   input$technology_description %in% yaml.load_file("template/antibody_tech.yml")$tech_types
  # )
  cell_img_flag <-
    "cellular_imaging" %in% input$core_datatype

  em_tem_flag <-
    "em_tem" %in% input$core_datatype

  em_sem_flag <-
    "em_sem" %in% input$core_datatype

  em_cryo_flag <-
    "em_cryo" %in% input$core_datatype

  eh_aperio_flag <-
    "eh_aperio" %in% input$core_datatype

  eh_polaris_flag <-
    "eh_polaris" %in% input$core_datatype

  eh_vectra_flag <-
    "eh_vectra" %in% input$core_datatype

  flow_cytometry_flag <-
    "flow_cytometry" %in% input$core_datatype

  genomics_flag <-
    "genomics" %in% input$core_datatype

  immune_flag <-
    "immune" %in% input$core_datatype

  large_animal_flag <-
    "large_animal" %in% input$core_datatype

  pi_ivis_flag <-
    "pi_ivis" %in% input$core_datatype

  pi_microct_flag <-
    "pi_microct" %in% input$core_datatype

  pi_mri_flag <-
    "pi_mri" %in% input$core_datatype

  preclinical_model_flag <-
    "preclinical_model" %in% input$core_datatype

  proteomics_flag <-
    "proteomics" %in% input$core_datatype

  small_animal_flag <-
    "small_animal" %in% input$core_datatype

  therapeutic_flag <-
    "therapeutic" %in% input$core_datatype

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
    "large_animal_flag" = large_animal_flag,
    "pi_ivis_flag" = pi_ivis_flag,
    "pi_microct_flag" = pi_microct_flag,
    "pi_mri_flag" = pi_mri_flag,
    "preclinical_model_flag" = preclinical_model_flag,
    "proteomics_flag" = proteomics_flag,
    "small_animal_flag" = small_animal_flag,
    "therapeutic_flag" = therapeutic_flag
  )

  return(flags)
}
