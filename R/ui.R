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

        h2("NIH DSMP Helper"),

        selectInput("core_datatype", "Choose a default Fred Hutch Core Discipline to get started with some suggested text!",
                    c("None Selected (Custom)" = "none",
                      "Flow Cytometry Core" = "flow_cytometry",
                      "Electron Microscopy Core" = "electron_microscopy")),

        # I
        # DATA TYPE
        h3("Data Type"),

        # Data types and amounts
        h4("Data Type & Amount"),
        textInput("technology_description", "Data generating technology", value = ""),
        textInput("raw_file_description", "Raw data file type and description", value = ""),
        textInput("avg_file_size", "Average file size (e.g., in MB or GB)", value = ""),
        textInput("total_samples_files", "Total number of samples/files to be collected", value = ""),
        textInput("data_volume", "Total data volume", value = ""),
        textInput("raw_file_type", "Raw data file type", value = ""),
        textInput("brief_pipeline_description", "Brief pipeline description", value = ""),
        textInput("processsed_file_description", "Processed file description", value = ""),
        textInput("avg_processed_file_size", "Average processed file size (e.g., in MB or GB)", value = ""),
        textInput("total_processed_samples_files", "Total number of processed samples/files to be collected", value = ""),
        textInput("data_processed_volume", "Total processed data volume", value = ""),
        textInput("datatype_comment", label = "Optional: add additional text about data types", value = ""),

        # Sharing
        h4("Sharing"),
        textInput("shared_technologies", "Technologies and processed data to be shared", value = ""),
        selectInput("notshared",
                    label = "Select: justifications if not sharing data",
                    choices = data_not_shared(),
                    selected = "\nWe anticipate all data will be able to be preserved and shared.",
                    multiple = TRUE),

        # Metadata
        h4("Metadata"),
        selectInput(
          "metadata_desc",
          label = "Select: short and/or long metadata description",
          choices =
            c("Short Description" = "short",
              "Long Description" = "long"),
          selected = "long",
          multiple = TRUE
        ),
        textInput("metadata_descriptors", "Metadata descriptor(s) (e.g., instrument output, medical records information", value = ""),
        textInput("metadata_collection", "Process/guidelines for collecting metadata", value = ""),
        textInput("fair_standards", "if it exists, FAIR standards for data type", value = ""),
        HTML('<a href="https://www.nature.com/articles/sdata201618">More about FAIR standards here</a><br><br>'),
        textInput("metadata_location", "Location where metadata will be deposited", value = ""),

        # II
        # TOOLS / SOFTWARE / CODE
        h3("Tools/Code"),
        selectInput(
          "open_source_level",
          label = "Select: level of development transparency",
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
          label = "Select: version control method",
          choices = c("GitHub", "GitLab", "BitBucket"),
          selected = "GitHub",
          multiple = FALSE
        ),
        selectInput(
          "tool",
          label = "Select: code type (all that apply)",
          choices = list_of_tools(),
          selected = "R scripts",
          multiple = TRUE
        ),
        selectInput(
          "platform",
          label = "Select: platform (all that apply)",
          choices = list_of_platforms(),
          selected = "CRAN",
          multiple = TRUE
        ),

        # III
        # STANDARDS
        h3("Standards"),
        textInput("standards_description", "Standard creator/organization and description", value = ""),
        textInput("standards_comment", "Optional: additional details as appropriate", value = ""),

        # IV
        # PRESERVATION
        h3("Preservation"),

        # Repository
        h4("Repositories"),
        selectInput(
          "repository",
          label = "Select: custom repository or established method",
          choices = repository_choices(),
          selected = "custom",
          multiple = FALSE
        ),
        textInput("repository_data_type", "Repository data type", value = ""),
        textInput("chosen_repositories", "Repository", value = ""),
        textInput("sensitive_data_type", "Sensitive data types (if applicable)", value = ""),

        # FAIR
        h4("Findability"),
        textInput("fair_comment", "Description of level of findability", value = ""),

        # Timeframe
        h4("Timeframe"),
        textInput("timeframe_to_pub", "Timeframe for depositing (e.g., within X months of data generation / at the time of publication)", value = ""),
        textInput("timeframe_longevity", "Timeframe for availability (e.g., duration of the grant funding)", value = ""),

        # V
        # ACCESS
        h3("Access"),

        # Reuse
        h4("Data Reuse"),
        selectInput(
          "reuse",
          label = "Select: plan for subsequent data access, distribution, or reuse",
          choices = reuse_choices(),
          selected = "no_restrictions",
          multiple = FALSE
        ),
        textInput("reuse_raw_file_type", "Raw data type(s)", value = ""),
        selectInput(
          "reuse_level",
          label = "Select: data level",
          choices = c("Level 0", "Level 1"),
          selected = "Level 0",
          multiple = FALSE
        ),

        # Controls
        h4("Data Controls"),
        selectInput(
          "controls",
          label = "Select: are access controls needed?",
          choices = c("No controls needed", "Controls needed"),
          selected = "No controls needed",
          multiple = FALSE
        ),
        textInput("control_comment", label = "Optional: add additional control details", value = "submitted to and processed by the NIH-designated data repository under their 'controlled access' process"),

        # Human subjects
        h4("Human Subjects"),
        selectInput(
          "human_subjects",
          label = "Select: are human subjects involved?",
          choices = c("No", "Yes"),
          selected = "No",
          multiple = FALSE
        ),

        # V
        # OVERSIGHT
        h3("Oversight"),
        selectInput(
          "oversight_method",
          label = "Select: who will conduct the oversight?",
          choices = c("Proposal Team", "Laboratory Staff", "External Collaborator"),
          selected = "Proposal Team",
          multiple = FALSE
        ),
        textInput("name_role", label = "Oversight lead (e.g., Name and role)", value = ""),
        textInput("review_frequency", label = "Review frequency (e.g., twice annually)", value = ""),
        textInput("review_addtnl", label = "Additional review points (e.g., when publications are accepted)", value = ""),

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
