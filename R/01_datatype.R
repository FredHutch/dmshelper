#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_processed_data_chunk <- function(input) {
  # Pull out all templates
  all_templates <- yaml.load_file("template/all.yml")$all

  for (template in all_templates) {
    assign(paste0(template, "_file_types"),
           input$raw_file_description[input$raw_file_description %in% yaml.load_file(paste0("template/", template, ".yml"))$raw_file_types])
  }

  for (template in all_templates) {
    assign(paste0(template, "_tech_types"),
           input$technology_description[input$technology_description %in% yaml.load_file(paste0("template/", template, ".yml"))$tech_types])
  }

  if (determine_cores(input)$antibody_tech_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        "_Our proposal will generate antibody technology data of the following types and sizes:_  ",
        "We will generate <font color='OA799A'>",
        paste0(
          multi_or_blank(antibody_tech_file_types),
          " ",
          multi_or_blank(antibody_tech_tech_types),
          "</font>",
          ". The total amount of data describing antibody production is <10MB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate cellular imaging data of the following types and sizes:_  ",
        "We will collect raw <font color='OA799A'>",
        multi_or_blank(cell_img_file_types),
        "</font> image files using <font color='OA799A'>",
        paste0(multi_or_blank(cell_img_tech_types),
               "</font>.")
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag |
      determine_cores(input)$em_sem_flag |
      determine_cores(input)$em_cryo_flag) {
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate electron microscopy data of the following types and sizes:_  "
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$em_tem_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will generate TEM images in <font color='OA799A'>",
        multi_or_blank(em_tem_file_types),
        "</font> format using <font color='OA799A'>",
        paste0(
          multi_or_blank(em_tem_tech_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_em_tem_files),
        "</font>",
        yaml.load_file("template/em_tem.yml")$file_sizes,
        " for a total data volume of <font color='OA799A'>",
        check_numeric(input$num_em_tem_files, multiply = 0.05),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_em_tem_files, multiply = 1.6),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will generate SEM images in <font color='OA799A'>",
        multi_or_blank(em_sem_file_types),
        "</font> format using <font color='OA799A'>",
        paste0(
          multi_or_blank(em_sem_tech_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_em_sem_files),
        "</font>",
        yaml.load_file("template/em_sem.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_em_sem_files, multiply = 0.48),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will generate high-resolution cryoEM images in <font color='OA799A'>",
        multi_or_blank(em_cryo_file_types),
        "</font> format using <font color='OA799A'>",
        paste0(
          multi_or_blank(em_cryo_tech_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_em_cryo_files),
        "</font>",
        yaml.load_file("template/em_cryo.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_em_cryo_files, multiply = 0.9),
        "</font> GB. We will process the <font color='OA799A'>",
        multi_or_blank(em_cryo_file_types),
        "</font> files using ",
        yaml.load_file("template/em_cryo.yml")$processing_tech,
        " to produce ",
        yaml.load_file("template/em_cryo.yml")$processing_file_type,
        " files. Estimated processed data volume is <font color='OA799A'>",
        check_numeric(input$num_em_cryo_files, multiply = 0.1),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_em_cryo_files, multiply = 0.5),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$eh_aperio_flag |
      determine_cores(input)$eh_polaris_flag |
      determine_cores(input)$eh_vectra_flag) {
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate experimental histopathology data of the following types and sizes:_  "
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$eh_aperio_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect <font color='OA799A'>",
        multi_or_blank(eh_aperio_file_types),
        "</font> images using the <font color='OA799A'>",
        paste0(
          multi_or_blank(eh_aperio_tech_types),
          "</font>. Data for this study will generate "
        ),
        yaml.load_file("template/eh_aperio.yml")$processing_file_type,
        "files. We will collect data from <font color='OA799A'>",
        check_numeric(input$num_eh_aperio_files),
        "</font>",
        yaml.load_file("template/eh_aperio.yml")$file_sizes,
        "for a total data volume of <font color='OA799A'>",
        check_numeric(input$num_eh_aperio_files, multiply = 1),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_eh_aperio_files, multiply = 4),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect/produce MOTIF images (imaging and spectral unmixing) in <font color='OA799A'>",
        multi_or_blank(eh_polaris_file_types),
        "</font> format using <font color='OA799A'>",
        paste0(
          multi_or_blank(eh_polaris_tech_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_eh_polaris_files),
        "</font> ",
        yaml.load_file("template/eh_polaris.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_eh_polaris_files, multiply = 18),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect/produce <font color='OA799A'>",
        multi_or_blank(eh_vectra_file_types),
        "</font> Vectra images using <font color='OA799A'>",
        paste0(
          multi_or_blank(eh_vectra_tech_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_eh_vectra_files),
        "</font> ",
        yaml.load_file("template/eh_vectra.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_eh_vectra_files, multiply = 27.5),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate flow cytometry data of the following types and sizes:_  ",
        "We will collect raw data using <font color='OA799A'>",
        multi_or_blank(flow_cytometry_tech_types),
        "</font> flow cytometers in <font color='OA799A'>",
        multi_or_blank(flow_cytometry_file_types),
        "</font> format,widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC). We will collect data from <font color='OA799A'>",
        check_numeric(input$num_flow_cytometry_files),
        "</font>",
        yaml.load_file("template/flow_cytometry.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_flow_cytometry_files, multiply = 0.01),
        "</font>GB. We will process the <font color='OA799A'>",
        multi_or_blank(flow_cytometry_file_types),
        "</font> files using ",
        yaml.load_file("template/flow_cytometry.yml")$processing_tech,
        " to produce tabular cell groupings data in ",
        yaml.load_file("template/flow_cytometry.yml")$processing_file_type,
        " format."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate genomic data of the following types and sizes:_  ",
        "We will generate raw data in the form of <font color='OA799A'>",
        multi_or_blank(genomics_file_types),
        "</font> files using <font color='OA799A'>",
        multi_or_blank(genomics_tech_types),
        "</font> sequencing technology. We will collect data from <font color='OA799A'>",
        check_numeric(input$num_genomics_files),
        "</font>",
        yaml.load_file("template/genomics.yml")$file_sizes,
        "for a total data volume of <font color='OA799A'>",
        check_numeric(input$num_genomics_files, multiply = 0.5),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_genomics_files, multiply = 20),
        "</font>GB. We will process <font color='OA799A'>",
        multi_or_blank(genomics_file_types),
        paste0(
          "</font> files using ",
          yaml.load_file("template/genomics.yml")$processing,
          ", for a total processed data volume of <font color='OA799A'>"
        ),
        check_numeric(input$num_genomics_files, multiply = 0.1),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_genomics_files, multiply = 1),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$immune_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate immune monitoring data of the following types and sizes:_  ",
        "We will collect assay results for clinical trials using <font color='OA799A'>",
        paste0(
          multi_or_blank(immune_tech_types),
          "</font>. Data for this study will generate <font color='OA799A'>"
        ),
        paste0(
          multi_or_blank(immune_file_types),
          "</font>. We will collect data from <font color='OA799A'>"
        ),
        check_numeric(input$num_immune_files),
        "</font> ",
        yaml.load_file("template/immune.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_immune_files, multiply = 0),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$large_animal_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate large animal facility data of the following types and sizes:_  ",
        "We will collect medical recrods and clinical pathology data from <font color='OA799A'>",
        paste0(
          multi_or_blank(large_animal_tech_types),
          "</font>. Data for this study will generate <font color='OA799A'>"
        ),
        paste0(
          multi_or_blank(large_animal_file_types),
          "</font>. The amount of data generated is "
        ),
        paste0(
          yaml.load_file("template/large_animal.yml")$file_sizes,
          ", with the total volume of data collected not to exceed 10 MB in aggregate file size."
        )
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag |
      determine_cores(input)$pi_microct_flag |
      determine_cores(input)$pi_mri_flag) {
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate preclinical imaging data of the following types and sizes:_  "
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$pi_ivis_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect _in vivo_ imaging data using <font color='OA799A'>",
        paste0(
          multi_or_blank(pi_ivis_tech_types),
          "</font>, generating image data in <font color='OA799A'>"
        ),
        multi_or_blank(pi_ivis_file_types),
        "</font> file format. ",
        yaml.load_file("template/pi_ivis.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        check_numeric(input$num_pi_ivis_files),
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_pi_ivis_files, multiply = 6),
        "</font>MB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect raw data using <font color='OA799A'>",
        paste0(
          multi_or_blank(pi_microct_tech_types),
          "</font>, generating image data in <font color='OA799A'>"
        ),
        multi_or_blank(pi_microct_file_types),
        "</font> file format. ",
        yaml.load_file("template/pi_microct.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        check_numeric(input$num_pi_microct_files),
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_pi_microct_files, multiply = 0.140),
        "</font> to <font color='OA799A'>",
        check_numeric(input$num_pi_microct_files, multiply = 0.277),
        "GB</font>. We process the raw files using ",
        yaml.load_file("template/pi_microct.yml")$processing_tech,
        " to generate static images from slices of the data. The data processing will result in high resolution images in ",
        remove_last_comma(
          yaml.load_file("template/pi_microct.yml")$processing_file_type
        ),
        " format."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect data using the <font color='OA799A'>",
        paste0(
          multi_or_blank(pi_mri_tech_types),
          "</font>, generating files in <font color='OA799A'>"
        ),
        multi_or_blank(pi_mri_file_types),
        "</font> file format. ",
        yaml.load_file("template/pi_mri.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        check_numeric(input$num_pi_mri_files),
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_pi_mri_files, multiply = 15),
        "</font>MB."
      )
  } else {
    raw_processed_data_chunk_temp <- raw_processed_data_chunk_temp
  }
  if (determine_cores(input)$preclinical_model_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate preclinical modeling data of the following types and sizes:_  ",
        "We will collect assay results for clinical trials using <font color='OA799A'>",
        multi_or_blank(preclinical_model_tech_types),
        "</font>. Data for this study will generate <font color='OA799A'>",
        multi_or_blank(preclinical_model_file_types),
        "</font>. We will collect data from <font color='OA799A'>",
        check_numeric(input$num_preclinical_model_files),
        "</font> ",
        yaml.load_file("template/preclinical_model.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        check_numeric(input$num_preclinical_model_files, multiply = 0),
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        c(
          "_Our proposal will generate proteomic data of the following types and sizes:_  ",
          "We will collect raw data as <font color='OA799A'>",
          multi_or_blank(proteomics_file_types),
          "</font> files using <font color='OA799A'>",
          multi_or_blank(proteomics_tech_types),
          "</font> technology. We will collect data from <font color='OA799A'>",
          check_numeric(input$num_proteomics_files),
          "</font> ",
          yaml.load_file("template/proteomics.yml")$file_sizes,
          "for a total data volume of <font color='OA799A'>",
          check_numeric(input$num_proteomics_files, multiply = 0.5),
          "</font> to <font color='OA799A'>",
          check_numeric(input$num_proteomics_files, multiply = 2),
          "</font>GB. We will process <font color='OA799A'>",
          multi_or_blank(proteomics_file_types),
          paste0(
            "</font> files using ",
            yaml.load_file("template/proteomics.yml")$processing,
            ", for a total processed data volume of <font color='OA799A'>"
          ),
          check_numeric(input$num_proteomics_files, multiply = 1),
          "</font> to <font color='OA799A'>",
          check_numeric(input$num_proteomics_files, multiply = 30),
          "</font>GB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$small_animal_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate small animal facility data of the following types and sizes:_  ",
        "We will collect raw data via <font color='OA799A'>",
        paste0(
          multi_or_blank(small_animal_tech_types),
          "</font>. Data for this study will generate <font color='OA799A'>"
        ),
        paste0(
          multi_or_blank(small_animal_file_types),
          "</font>. The amount of data generated is "
        ),
        paste0(
          yaml.load_file("template/small_animal.yml")$file_sizes,
          ", with an estimated total data volume of 1.5 GB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$therapeutic_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate therapeutic products data of the following types and sizes:_  ",
        "We will collect raw data using <font color='OA799A'>",
        paste0(
          multi_or_blank(therapeutic_tech_types),
          "</font>. Data for this study will generate <font color='OA799A'>"
        ),
        multi_or_blank(therapeutic_file_types),
        "</font> quantifying the yield and purity of cellular products which have been generated. The amount of data generated is ",
        paste0(
          yaml.load_file("template/therapeutic.yml")$file_sizes,
          ", with an estimated total data volume no more than 10 MB."
        )
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }

  return(raw_processed_data_chunk_temp)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
get_options <- function(yaml_var) {
  all_templates <- yaml.load_file("template/all.yml")$all

  description_temp <- character(0)
  for (template in all_templates) {
    description_temp <-
      c(description_temp,
        yaml.load_file(paste0("template/", template, ".yml"))[[yaml_var]])
  }

  return(description_temp)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
datatype_raw_file_description_options <- function() {
  return(get_options(yaml_var = "raw_file_types"))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
datatype_technology_description_options <- function() {
  return(get_options(yaml_var = "tech_types"))
}


#' Helps reactively update "raw_file_description" in server.R
#' Populates example text but allows user changes as long as the selected core
#' (core_datatype) is not changed.
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_raw_by_core <- function(toggle_example_txt) {
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template)]] = paste0("template/", template, ".yml")
  }

  datatype_raw_ <- character(0)

  for (flag in names(flag_yaml_paths)) {
    if (flag %in% toggle_example_txt$core_datatype) {
      datatype_ <- yaml.load_file(flag_yaml_paths[[flag]])$raw_file_types
      datatype_raw_ <- c(datatype_raw_, datatype_)
    }
  }

  return(datatype_raw_)
}


#' Helps reactively update "technology_description" in server.R
#' Populates example text but allows user changes as long as the selected core
#' (core_datatype) is not changed.
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_tech_by_core <- function(toggle_example_txt) {
  all_templates <- yaml.load_file("template/all.yml")$all
  flag_yaml_paths <- list()
  for (template in all_templates) {
    flag_yaml_paths[[paste0(template)]] = paste0("template/", template, ".yml")
  }

  datatype_tech_ <- character(0)

  for (flag in names(flag_yaml_paths)) {
    if (flag %in% toggle_example_txt$core_datatype) {
      datatype_ <- yaml.load_file(flag_yaml_paths[[flag]])$tech_types
      datatype_tech_ <- c(datatype_tech_, datatype_)
    }
  }

  return(datatype_tech_)
}
