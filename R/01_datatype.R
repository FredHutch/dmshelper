#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
raw_processed_data_chunk <- function(input) {
  antibody_tech_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/antibody_tech.yml")$raw_file_types]
  cell_img_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/cell_img.yml")$raw_file_types]
  em_tem_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/em_tem.yml")$raw_file_types]
  em_sem_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/em_sem.yml")$raw_file_types]
  em_cryo_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/em_cryo.yml")$raw_file_types]
  eh_aperio_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/eh_aperio.yml")$raw_file_types]
  eh_polaris_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/eh_polaris.yml")$raw_file_types]
  eh_vectra_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/eh_vectra.yml")$raw_file_types]
  flow_cytometry_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/flow_cytometry.yml")$raw_file_types]
  genomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/genomics.yml")$raw_file_types]
  immune_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/immune.yml")$raw_file_types]
  large_animal_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/large_animal.yml")$raw_file_types]
  pi_ivis_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/pi_ivis.yml")$raw_file_types]
  pi_microct_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/pi_microct.yml")$raw_file_types]
  pi_mri_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/pi_mri.yml")$raw_file_types]
  proteomics_file_types <-
    input$raw_file_description[input$raw_file_description %in% yaml.load_file("template/proteomics.yml")$raw_file_types]

  antibody_tech_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/antibody_tech.yml")$tech_types]
  cell_img_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/cell_img.yml")$tech_types]
  em_tem_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/em_tem.yml")$tech_types]
  em_sem_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/em_sem.yml")$tech_types]
  em_cryo_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/em_cryo.yml")$tech_types]
  eh_aperio_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/eh_aperio.yml")$tech_types]
  eh_polaris_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/eh_polaris.yml")$tech_types]
  eh_vectra_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/eh_vectra.yml")$tech_types]
  flow_cytometry_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/flow_cytometry.yml")$tech_types]
  genomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/genomics.yml")$tech_types]
  immune_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/immune.yml")$tech_types]
  large_animal_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/large_animal.yml")$tech_types]
  pi_ivis_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/pi_ivis.yml")$tech_types]
  pi_microct_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/pi_microct.yml")$tech_types]
  pi_mri_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/pi_mri.yml")$tech_types]
  proteomics_tech_types <-
    input$technology_description[input$technology_description %in% yaml.load_file("template/proteomics.yml")$tech_types]

  if (determine_cores(input)$antibody_tech_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        "_Our proposal will generate antibody technology data of the following types and sizes:_  ",
        "We will generate <font color='OA799A'>",
        paste0(
          if (length(antibody_tech_file_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(antibody_tech_file_types)
          },
          " ",
          if (length(antibody_tech_tech_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(antibody_tech_tech_types)
          },
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
        if (length(cell_img_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(cell_img_file_types)
        },
        "</font> image files using <font color='OA799A'>",
        if (length(cell_img_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(cell_img_tech_types)
        },
        "</font>."
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
        if (length(em_tem_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_tem_file_types)
        },
        "</font> format using <font color='OA799A'>",
        if (length(em_tem_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_tem_tech_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_tem_files))) {
          " ___ "
        } else {
          input$num_em_tem_files
        },
        "</font>",
        yaml.load_file("template/em_tem.yml")$file_sizes,
        " for a total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_tem_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_tem_files) * 0.05)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_tem_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_tem_files) * 1.6)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$em_sem_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will generate SEM images in <font color='OA799A'>",
        if (length(em_sem_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_sem_file_types)
        },
        "</font> format using <font color='OA799A'>",
        if (length(em_sem_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_sem_tech_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_sem_files))) {
          " ___ "
        } else {
          input$num_em_sem_files
        },
        "</font>",
        yaml.load_file("template/em_sem.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_sem_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_sem_files) * 0.48)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$em_cryo_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will generate high-resolution cryoEM images in <font color='OA799A'>",
        if (length(em_cryo_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_cryo_file_types)
        },
        "</font> format using <font color='OA799A'>",
        if (length(em_cryo_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_cryo_tech_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_cryo_files))) {
          " ___ "
        } else {
          input$num_em_cryo_files
        },
        "</font>",
        yaml.load_file("template/em_cryo.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_cryo_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_cryo_files) * 0.9)
        },
        "</font>GB. We will process the <font color='OA799A'>",
        if (length(em_cryo_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(em_cryo_file_types)
        },
        "</font> files using ",
        yaml.load_file("template/em_cryo.yml")$processing_tech,
        " to produce ",
        yaml.load_file("template/em_cryo.yml")$processing_file_type,
        " files. Estimated processed data volume is <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_cryo_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_cryo_files) * 0.1)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_em_cryo_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_em_cryo_files) * 0.5)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
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
        if (length(eh_aperio_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_aperio_file_types)
        },
        "</font> images using the <font color='OA799A'>",
        if (length(eh_aperio_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_aperio_tech_types)
        },
        "</font>. Data for this study will generate ",
        yaml.load_file("template/eh_aperio.yml")$processing_file_type,
        "files. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_aperio_files))) {
          " ___ "
        } else {
          input$num_eh_aperio_files
        },
        "</font>",
        yaml.load_file("template/eh_aperio.yml")$file_sizes,
        "for a total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_aperio_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_eh_aperio_files) * 1)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_aperio_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_eh_aperio_files) * 4)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$eh_polaris_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect/produce MOTIF images (imaging and spectral unmixing) in <font color='OA799A'>",
        if (length(eh_polaris_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_polaris_file_types)
        },
        "</font> format using <font color='OA799A'>",
        if (length(eh_polaris_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_polaris_tech_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_polaris_files))) {
          " ___ "
        } else {
          input$num_eh_polaris_files
        },
        "</font> ",
        yaml.load_file("template/eh_polaris.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_polaris_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_eh_polaris_files) * 18)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$eh_vectra_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect/produce <font color='OA799A'>",
        if (length(eh_vectra_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_vectra_file_types)
        },
        "</font> Vectra images using <font color='OA799A'>",
        if (length(eh_vectra_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(eh_vectra_tech_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_vectra_files))) {
          " ___ "
        } else {
          input$num_eh_vectra_files
        },
        "</font> ",
        yaml.load_file("template/eh_vectra.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_eh_vectra_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_eh_vectra_files) * 27.5)
        },
        "</font>GB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$flow_cytometry_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "  ",
        "_Our proposal will generate flow cytometry data of the following types and sizes:_  ",
        "We will collect raw data using <font color='OA799A'>",
        if (length(flow_cytometry_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(flow_cytometry_tech_types)
        },
        "</font> flow cytometers in <font color='OA799A'>",
        if (length(flow_cytometry_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(flow_cytometry_file_types)
        },
        "</font> format,widely adopted and maintained by the International Society for Advancement of Cytometry (ISAC). We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_flow_cytometry_files))) {
          " ___ "
        } else {
          input$num_flow_cytometry_files
        },
        "</font>",
        yaml.load_file("template/flow_cytometry.yml")$file_sizes,
        "samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_flow_cytometry_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_flow_cytometry_files) * 0.01)
        },
        "</font>GB. We will process the <font color='OA799A'>",
        if (length(flow_cytometry_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(flow_cytometry_file_types)
        },
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
        if (length(genomics_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(genomics_file_types)
        },
        "</font> files using <font color='OA799A'>",
        if (length(genomics_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(genomics_tech_types)
        },
        "</font> sequencing technology. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          input$num_genomics_files
        },
        "</font>",
        yaml.load_file("template/genomics.yml")$file_sizes,
        "for a total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 0.5)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 20)
        },
        "</font>GB. We will process <font color='OA799A'>",
        if (length(genomics_file_types) == 0) {
          " ___ "
        } else {
          paste(genomics_file_types, collapse = ", ")
        },
        paste0(
          "</font> files using ",
          yaml.load_file("template/genomics.yml")$processing,
          ", for a total processed data volume of <font color='OA799A'>"
        ),
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 0.1)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_genomics_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_genomics_files) * 1)
        },
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
        if (length(immune_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(immune_tech_types)
        },
        "</font>. Data for this study will generate <font color='OA799A'>",
        if (length(immune_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(immune_file_types)
        },
        "</font>. We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_immune_files))) {
          " ___ "
        } else {
          input$num_immune_files
        },
        "</font> ",
        yaml.load_file("template/immune.yml")$file_sizes,
        "for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_immune_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_immune_files) * 0)
        },
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
        if (length(large_animal_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(large_animal_tech_types)
        },
        "</font>. Data for this study will generate <font color='OA799A'>",
        if (length(large_animal_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(large_animal_file_types)
        },
        "</font>. The amount of data generated is ",
        yaml.load_file("template/large_animal.yml")$file_sizes,
        ", with the total volume of data collected not to exceed 10MB in aggregate file size."
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
          if (length(pi_ivis_tech_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(pi_ivis_tech_types)
          },
          "</font>, generating image data in <font color='OA799A'>"
        ),
        if (length(pi_ivis_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(pi_ivis_file_types)
        },
        "</font> file format. ",
        yaml.load_file("template/pi_ivis.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_ivis_files))) {
          " ___ "
        } else {
          input$num_pi_ivis_files
        },
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_ivis_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_pi_ivis_files) * 6)
        },
        "</font>MB."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$pi_microct_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect raw data using <font color='OA799A'>",
        paste0(
          if (length(pi_microct_tech_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(pi_microct_tech_types)
          },
          "</font>, generating image data in <font color='OA799A'>"
        ),
        if (length(pi_microct_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(pi_microct_file_types)
        },
        "</font> file format. ",
        yaml.load_file("template/pi_microct.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_microct_files))) {
          " ___ "
        } else {
          input$num_pi_microct_files
        },
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_microct_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_pi_microct_files) * 0.140)
        },
        "</font> to <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_microct_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_pi_microct_files) * 0.277)
        },
        "GB</font>. We process the raw files using ",
        yaml.load_file("template/pi_microct.yml")$processing_tech,
        " to generate static images from slices of the data. The data processing will result in high resolution images in ",
        remove_last_comma(
          yaml.load_file("template/pi_microct.yml")$processing_file_type
        ),
        " format."
      )
  } else {
    raw_processed_data_chunk_temp <-
      c(raw_processed_data_chunk_temp, "")
  }
  if (determine_cores(input)$pi_mri_flag) {
    #####
    raw_processed_data_chunk_temp <-
      c(
        raw_processed_data_chunk_temp,
        "We will collect data using the <font color='OA799A'>",
        paste0(if (length(pi_mri_tech_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(pi_mri_tech_types)
        },
        "</font>, generating files in <font color='OA799A'>"),
        if (length(pi_mri_file_types) == 0) {
          " ___ "
        } else {
          remove_last_comma(pi_mri_file_types)
        },
        "</font> file format. ",
        yaml.load_file("template/pi_mri.yml")$file_sizes,
        " We will collect data from <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_mri_files))) {
          " ___ "
        } else {
          input$num_pi_mri_files
        },
        "</font> samples for an estimated total data volume of <font color='OA799A'>",
        if (is.na(as.numeric(input$num_pi_mri_files))) {
          " ___ "
        } else {
          paste(as.numeric(input$num_pi_mri_files) * 15)
        },
        "</font>MB."
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
          if (length(proteomics_file_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(proteomics_file_types)
          },
          "</font> files using <font color='OA799A'>",
          if (length(proteomics_tech_types) == 0) {
            " ___ "
          } else {
            remove_last_comma(proteomics_tech_types)
          },
          "</font> technology. We will collect data from <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            input$num_proteomics_files
          },
          "</font> ",
          yaml.load_file("template/proteomics.yml")$file_sizes,
          "for a total data volume of <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 0.5)
          },
          "</font> to <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 2)
          },
          "</font>GB. We will process <font color='OA799A'>",
          if (length(proteomics_file_types) == 0) {
            " ___ "
          } else {
            paste(proteomics_file_types, collapse = ", ")
          },
          paste0(
            "</font> files using ",
            yaml.load_file("template/proteomics.yml")$processing,
            ", for a total processed data volume of <font color='OA799A'>"
          ),
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 1)
          },
          "</font> to <font color='OA799A'>",
          if (is.na(as.numeric(input$num_proteomics_files))) {
            " ___ "
          } else {
            paste(as.numeric(input$num_proteomics_files) * 30)
          },
          "</font>GB."
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
datatype_raw_file_description_options <- function() {
  return(
    c(
      yaml.load_file("template/antibody_tech.yml")$raw_file_types,
      yaml.load_file("template/cell_img.yml")$raw_file_types,
      yaml.load_file("template/em_tem.yml")$raw_file_types,
      yaml.load_file("template/em_sem.yml")$raw_file_types,
      yaml.load_file("template/em_cryo.yml")$raw_file_types,
      yaml.load_file("template/eh_aperio.yml")$raw_file_types,
      yaml.load_file("template/eh_polaris.yml")$raw_file_types,
      yaml.load_file("template/eh_vectra.yml")$raw_file_types,
      yaml.load_file("template/flow_cytometry.yml")$raw_file_types,
      yaml.load_file("template/genomics.yml")$raw_file_types,
      yaml.load_file("template/immune.yml")$raw_file_types,
      yaml.load_file("template/large_animal.yml")$raw_file_types,
      yaml.load_file("template/pi_ivis.yml")$raw_file_types,
      yaml.load_file("template/pi_microct.yml")$raw_file_types,
      yaml.load_file("template/pi_mri.yml")$raw_file_types,
      yaml.load_file("template/proteomics.yml")$raw_file_types
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
datatype_technology_description_options <- function() {
  return(
    c(
      yaml.load_file("template/antibody_tech.yml")$tech_types,
      yaml.load_file("template/cell_img.yml")$tech_types,
      yaml.load_file("template/em_tem.yml")$tech_types,
      yaml.load_file("template/em_sem.yml")$tech_types,
      yaml.load_file("template/em_cryo.yml")$tech_types,
      yaml.load_file("template/eh_aperio.yml")$tech_types,
      yaml.load_file("template/eh_polaris.yml")$tech_types,
      yaml.load_file("template/eh_vectra.yml")$tech_types,
      yaml.load_file("template/flow_cytometry.yml")$tech_types,
      yaml.load_file("template/genomics.yml")$tech_types,
      yaml.load_file("template/immune.yml")$tech_types,
      yaml.load_file("template/large_animal.yml")$tech_types,
      yaml.load_file("template/pi_ivis.yml")$tech_types,
      yaml.load_file("template/pi_microct.yml")$tech_types,
      yaml.load_file("template/pi_mri.yml")$tech_types,
      yaml.load_file("template/proteomics.yml")$tech_types
    )
  )
}


#' Title
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_raw_by_core <- function(toggle_example_txt) {
  datatype_raw_ <- ""
  if ("antibody_tech" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/antibody_tech.yml")$raw_file_types)
  }
  if ("cellular_imaging" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/cell_img.yml")$raw_file_types)
  }
  if ("em_tem" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/em_tem.yml")$raw_file_types)
  }
  if ("em_sem" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/em_sem.yml")$raw_file_types)
  }
  if ("em_cryo" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/em_cryo.yml")$raw_file_types)
  }
  if ("eh_aperio" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/eh_aperio.yml")$raw_file_types)
  }
  if ("eh_polaris" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/eh_polaris.yml")$raw_file_types)
  }
  if ("eh_vectra" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/eh_vectra.yml")$raw_file_types)
  }
  if ("flow_cytometry" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/flow_cytometry.yml")$raw_file_types)
  }
  if ("genomics" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/genomics.yml")$raw_file_types)
  }
  if ("immune" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/immune.yml")$raw_file_types)
  }
  if ("large_animal" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/large_animal.yml")$raw_file_types)
  }
  if ("pi_ivis" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/pi_ivis.yml")$raw_file_types)
  }
  if ("pi_microct" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/pi_microct.yml")$raw_file_types)
  }
  if ("pi_mri" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/pi_mri.yml")$raw_file_types)
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_raw_ <-
      c(datatype_raw_,
        yaml.load_file("template/proteomics.yml")$raw_file_types)
  }
  return(datatype_raw_)
}


#' Title
#'
#' @param toggle_example_txt
#'
#' @return
#' @export
#'
#' @examples
datatype_tech_by_core <- function(toggle_example_txt) {
  datatype_tech_ <- ""
  if ("antibody_tech" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/antibody_tech.yml")$tech_types)
  }
  if ("cellular_imaging" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/cell_img.yml")$tech_types)
  }
  if ("em_tem" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/em_tem.yml")$tech_types)
  }
  if ("em_sem" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/em_sem.yml")$tech_types)
  }
  if ("em_cryo" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/em_cryo.yml")$tech_types)
  }
  if ("eh_aperio" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/eh_aperio.yml")$tech_types)
  }
  if ("eh_polaris" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/eh_polaris.yml")$tech_types)
  }
  if ("eh_vectra" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/eh_vectra.yml")$tech_types)
  }
  if ("flow_cytometry" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/flow_cytometry.yml")$tech_types)
  }
  if ("genomics" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/genomics.yml")$tech_types)
  }
  if ("immune" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/immune.yml")$tech_types)
  }
  if ("large_animal" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/large_animal.yml")$tech_types)
  }
  if ("pi_ivis" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/pi_ivis.yml")$tech_types)
  }
  if ("pi_microct" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/pi_microct.yml")$tech_types)
  }
  if ("pi_mri" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/pi_mri.yml")$tech_types)
  }
  if ("proteomics" %in% toggle_example_txt$core_datatype) {
    datatype_tech_ <-
      c(datatype_tech_,
        yaml.load_file("template/proteomics.yml")$tech_types)
  }
  return(datatype_tech_)
}


#' Fix list grammar
#'
#' Goal of this function is to take a string like a, b, c and return a, b, and c.
#'
#' @param string_vect
#'
#' @return
#' @export
#'
#' @examples
remove_last_comma <- function(string_vect) {
  if (length(string_vect) == 2) {
    string_ <- paste(string_vect, collapse = ", ")
    out <- sub(",([^,]*)$", " and\\1", string_)
  } else {
    string_ <- paste(string_vect, collapse = ", ")
    out <- sub(",([^,]*)$", ", and\\1", string_)
  }

  return(out)
}
