check_files_tech <- function(input, core) {
  core_yaml <- yaml.load_file(paste0("template/", core, ".yml"))
  return(
    any(input$raw_file_description %in% core_yaml$raw_file_types) |
      any(input$technology_description %in% core_yaml$tech_types)
  )
}

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
    #"antibody_tech" %in% input$core_datatype
    check_files_tech(input, "antibody_tech")
  cell_img_flag <-
    #"cellular_imaging" %in% input$core_datatype
    check_files_tech(input, "cell_img")
  em_tem_flag <-
    #"em_tem" %in% input$core_datatype
    check_files_tech(input, "em_tem")
  em_sem_flag <-
    #"em_sem" %in% input$core_datatype
    check_files_tech(input, "em_sem")
  em_cryo_flag <-
    #"em_cryo" %in% input$core_datatype
    check_files_tech(input, "em_cryo")
  eh_aperio_flag <-
    #"eh_aperio" %in% input$core_datatype
    check_files_tech(input, "eh_aperio")
  eh_polaris_flag <-
    #"eh_polaris" %in% input$core_datatype
    check_files_tech(input, "eh_polaris")
  eh_vectra_flag <-
    #"eh_vectra" %in% input$core_datatype
    check_files_tech(input, "eh_vectra")
  flow_cytometry_flag <-
    #"flow_cytometry" %in% input$core_datatype
    check_files_tech(input, "flow_cytometry")
  genomics_flag <-
    #"genomics" %in% input$core_datatype
    check_files_tech(input, "genomics")
  immune_flag <-
    #"immune" %in% input$core_datatype
    check_files_tech(input, "immune")
  large_animal_flag <-
    #"large_animal" %in% input$core_datatype
    check_files_tech(input, "large_animal")
  pi_ivis_flag <-
    #"pi_ivis" %in% input$core_datatype
    check_files_tech(input, "pi_ivis")
  pi_microct_flag <-
    #"pi_microct" %in% input$core_datatype
    check_files_tech(input, "pi_microct")
  pi_mri_flag <-
    #"pi_mri" %in% input$core_datatype
    check_files_tech(input, "pi_mri")
  preclinical_model_flag <-
    #"preclinical_model" %in% input$core_datatype
    check_files_tech(input, "preclinical_model")
  proteomics_flag <-
    #"proteomics" %in% input$core_datatype
    check_files_tech(input, "proteomics")
  small_animal_flag <-
    #"small_animal" %in% input$core_datatype
    check_files_tech(input, "small_animal")
  therapeutic_flag <-
    #"therapeutic" %in% input$core_datatype
    check_files_tech(input, "therapeutic")
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


flags_to_cores <- function(input) {
  flags <- as.logical(determine_cores(input)[1,])
  all_templates <- yaml.load_file("template/all.yml")$all
  return(all_templates[flags])
}
