#' Title
#'
#' @return
#' @export
#'
#' @examples
shiny_ui <- function(){
  fluidPage(
    titlePanel(""),

    # ------- User Inputs
    sidebarLayout(
      sidebarPanel(

        # DATA TYPE
        h2("Data Type"),
        selectInput("core_datatype", "Choose a default Fred Hutch Core:",
                    c("None Selected" = "none",
                      "Flow Cytometry Core" = "flow_cytometry",
                      "Electron Microscopy Core" = "electron_microscopy")),
        textInput("technology_description", "Data generating technology", value = ""),
        textInput("raw_file_description", "Raw data file description", value = ""),
        textInput("avg_file_size", "Average file size", value = ""),
        textInput("total_samples_files", "Total number of samples/files to be collected", value = ""),
        textInput("data_volume", "Total data volume", value = ""),
        textInput("raw_file_type", "Raw data file type", value = ""),
        textInput("brief_pipeline_description", "Brief pipeline description", value = ""),
        textInput("processsed_file_description", "Processed file description", value = ""),
        textInput("avg_processed_file_size", "Average processed file size", value = ""),
        textInput("total_processed_samples_files", "Total number of processed samples/files to be collected", value = ""),
        textInput("data_processed_volume", "Total processed data volume", value = ""),
        textInput("datatype_comment", label = "Add additional text", value = ""),

        # Sharing subection
        h4("Sharing"),
        textInput("shared_technologies", "Technologies and processed data to be shared", value = ""),
        selectInput("notshared",
                    label = "Reasons for not sharing",
                    choices = data_not_shared(),
                    selected = "\nWe anticipate all data will be able to be preserved and shared.",
                    multiple = TRUE),

        # Metadata subsection
        h4("Metadata"),
        selectInput(
          "metadata_desc",
          label = "Metadata (short and/or long)",
          choices =
            c("Short Description" = "short",
              "Long Description" = "long"),
          selected = "short",
          multiple = TRUE
        ),
        textInput("metadata_descriptors", "Metadata descriptors", value = ""),
        textInput("metadata_collection", "Process for collecting metadata", value = ""),
        textInput("fair_standards", "if it exists, insert FAIR standards for data type from here (see https://www.nature.com/articles/sdata201618)", value = ""),
        textInput("metadata_location", "Location where metadata will be deposited", value = ""),

        # TOOLS / SOFTWARE / CODE
        selectInput(
          "version_control",
          label = "Select a version control method",
          choices =
            c("GitHub" = "GitHub",
              "GitLab" = "GitLab"),
          selected = "short",
          multiple = TRUE
        ),
      ),

      # ------- Preview
      mainPanel(
        # Download buttons
        downloadButton("downloaddocx", label = "Download .docx"),
        downloadButton("downloadmd", label = "Download .md"),

        # HTML preview
        htmlOutput("html_preview")
      )
    )
  )
}
