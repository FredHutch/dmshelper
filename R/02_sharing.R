#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
sharing_chunk <- function(input) {
  if (determine_cores(input)$antibody_tech_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of antibody technology data:_  ",
          yaml.load_file("template/antibody_tech.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          "_Our proposal will preserve and share the following types of antibody technology data:_  ",
          yaml.load_file("template/antibody_tech.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c("")
  }
  if (determine_cores(input)$cell_img_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of cellular imaging data:_  ",
          yaml.load_file("template/cell_img.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of cellular imaging data:_  ",
          yaml.load_file("template/cell_img.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$genomics_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          yaml.load_file("template/genomics.yml")$sharing_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of genomic data:_  ",
          yaml.load_file("template/genomics.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }
  if (determine_cores(input)$proteomics_flag) {
    #####
    if (input$human_subjects) {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          yaml.load_file("template/proteomics.yml")$sharing_non_hs
        )
    } else {
      sharing_chunk_temp <-
        c(
          sharing_chunk_temp,
          "  ",
          "_Our proposal will preserve and share the following types of proteomic data:_  ",
          yaml.load_file("template/proteomics.yml")$sharing_non_hs
        )
    }
  } else {
    sharing_chunk_temp <- c(sharing_chunk_temp, "")
  }

  return(sharing_chunk_temp)
}
