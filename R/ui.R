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

        # I
        # DATA TYPE
        h2("Data Type"),

        # Data types and amounts
        h4("Data Type & Amount"),
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

        # Sharing
        h4("Sharing"),
        textInput("shared_technologies", "Technologies and processed data to be shared", value = ""),
        selectInput("notshared",
                    label = "Reasons for not sharing",
                    choices = data_not_shared(),
                    selected = "\nWe anticipate all data will be able to be preserved and shared.",
                    multiple = TRUE),

        # Metadata
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

        # II
        # TOOLS / SOFTWARE / CODE
        h2("Tools/Code"),
        selectInput(
          "open_source_level",
          label = "Select a level of development transparency",
          choices =
            c("Microsoft Office" = "office",
              "Open Source" = "opensource",
              "Semi-Open Source" = "semiopen",
              "Proprietary" = "proprietary"),
          selected = "opensource",
          multiple = FALSE
        ),
        selectInput(
          "version_control",
          label = "Select a version control method",
          choices = c("GitHub", "GitLab", "BitBucket"),
          selected = "GitHub",
          multiple = FALSE
        ),
        selectInput(
          "tool",
          label = "Select all that apply",
          choices = list_of_tools(),
          selected = "R scripts",
          multiple = TRUE
        ),
        selectInput(
          "platform",
          label = "Select all that apply",
          choices = list_of_platforms(),
          selected = "CRAN",
          multiple = TRUE
        ),

        # III
        # STANDARDS
        h2("Standards"),
        textInput("standards_description", "Standard creation organization and description", value = ""),
        textInput("standards_comment", "Insert additional details as appropriate", value = ""),

        # IV
        # PRESERVATION
        h2("Preservation"),

        # Repository
        h4("Repositories"),
        selectInput(
          "repository",
          label = "Select a repository where scientific data and metadata",
          choices = repository_choices(),
          selected = "custom",
          multiple = FALSE
        ),
        textInput("repository_data_type", "Custom: repository data type", value = ""),
        textInput("chosen_repositories", "Custom: list repository", value = ""),
        textInput("sensitive_data_type", "None (sensitive data): list sensitive data types", value = ""),

        # FAIR
        h4("Findability"),
        textInput("fair_id_level", "Findable: list the level of ID", value = ""),

        # Timeframe
        h4("Timeframe"),
        textInput("timeframe_to_pub", "Timeframe for depositing (e.g., within X months of data generation / at the time of publication)", value = ""),
        textInput("timeframe_longevity", "Timeframe for availability (e.g., duration of the grant funding)", value = ""),

        # V
        # ACCESS
        h2("Access"),

        # Reuse
        h4("Data Reuse"),
        selectInput(
          "reuse",
          label = "Select a plan for subsequent data access, distribution, or reuse",
          choices = reuse_choices(),
          selected = "no_restrictions",
          multiple = FALSE
        ),
        textInput("reuse_raw_file_type", "Raw data type", value = ""),
        selectInput(
          "reuse_level",
          label = "Data level",
          choices = c("Level 0", "Level 1"),
          selected = "Level 0",
          multiple = FALSE
        ),

        # Controls
        h4("Data Controls"),
        selectInput(
          "controls",
          label = "Are access controls needed?",
          choices = c("No controls needed", "Controls needed"),
          selected = "No controls needed",
          multiple = FALSE
        ),
        textInput("control_comment", label = "Add additional text", value = "submitted to and processed by the NIH-designated data repository under their 'controlled access' process"),

        # Human subjects
        h4("Human Subjects"),
        selectInput(
          "human_subjects",
          label = "Are human subjects involved?",
          choices = c("No", "Yes"),
          selected = "No",
          multiple = FALSE
        ),

        # V
        # OVERSIGHT
        h2("Oversight"),

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
