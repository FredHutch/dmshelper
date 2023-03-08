#' Title
#'
#' @return
#' @export
#'
#' @examples
shiny_ui <- function() {
  fluidPage(
    # Styling stuff
    includeCSS(path = system.file("AdminLTE.css", package="dsmphelper")),
    includeCSS(path = system.file("shinydashboard.css", package="dsmphelper")),
    includeScript(path = system.file("app.js", package="dsmphelper")),
    # includeCSS(path = "inst/AdminLTE.css"),
    # includeCSS(path = "inst/shinydashboard.css"),
    # includeScript(path = "inst/app.js"),

    titlePanel("NIH DSMP Helper"),

    #------- User Inputs
    sidebarLayout(
      sidebarPanel(
        # Select from template/example text
        selectInput(
          "core_datatype",
          "Choose a default Fred Hutch Core Discipline to get started with some suggested text!",
          c(
            "None Selected (Custom)" = "none",
            "Antibody Technology Core" = "antibody_tech",
            "Cellular Imaging Core" = "cellular_imaging",
            "Electron Microscopy - TEM" = "em_tem",
            "Electron Microscopy - SEM" = "em_sem",
            "Electron Microscopy - CryoEM" = "em_cryoem",
            "Experimental Histopathology - Aperio Platform" = "eh_aperio",
            "Experimental Histopathology - Polaris Platform" = "eh_polaris",
            "Experimental Histopathology - Vectra images" = "eh_vectra",
            "Flow Cytometry Core" = "flow_cytometry",
            "Genomics & Bioinformatics Core" = "genomics",
            "Immune Monitoring Core" = "immune",
            "Large Animal Facility Core" = "large_animal",
            "Preclinical Imaging Core (IVIS)" = "preclinical_img_ivis",
            "Preclinical Imaging Core (MicroCT)" = "preclinical_img_microct",
            "Preclinical Imaging Core (MRI)" = "preclinical_img_mri",
            "Preclinical Modeling Core" = "preclinical_model",
            "Proteomics Core" = "proteomics",
            "Small Animal Facility Core" = "small_animal",
            "Therapeutic Products Core" = "therapeutic"
          )
        ),

        # I
        # DATA TYPE
        box(
          title = "Data Type",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          # Data types and amounts
          h4("Data Type & Amount"),
          textInput(
            "technology_description",
            "Data generating technology",
            value = ""
          ),
          textInput(
            "raw_file_description",
            "Raw data file type and description",
            value = ""
          ),
          textInput("avg_file_size", "Average file size (e.g., in MB or GB)", value = ""),
          textInput(
            "total_samples_files",
            "Total number of samples/files to be collected",
            value = ""
          ),
          textInput("data_volume", "Total data volume", value = ""),
          textInput("raw_file_type", "Raw data file type", value = ""),
          textInput(
            "brief_pipeline_description",
            "Brief pipeline description",
            value = ""
          ),
          textInput(
            "processsed_file_description",
            "Processed file description",
            value = ""
          ),
          textInput(
            "avg_processed_file_size",
            "Average processed file size (e.g., in MB or GB)",
            value = ""
          ),
          textInput(
            "total_processed_samples_files",
            "Total number of processed samples/files to be collected",
            value = ""
          ),
          textInput(
            "data_processed_volume",
            "Total processed data volume",
            value = ""
          ),
          textInput("datatype_comment", label = "Optional: add additional text about data types", value = ""),
          textInput("datatype_comment_summary", label = "Optional: add additional text about techniques", value = "")
        ),

        # Sharing
        box(
          title = "Sharing",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          textInput(
            "shared_technologies",
            "Technologies and processed data to be shared",
            value = ""
          ),
          textInput("shared_comment", label = "Optional: add additional text about data sharing", value = ""),
          selectInput(
            "notshared",
            label = "Select: justifications if not sharing data",
            choices = data_not_shared(),
            selected = "\nWe anticipate all data will be able to be preserved and shared.",
            multiple = TRUE
          ),
          textInput("not_shared_comment", label = "Optional: add additional text about data not shared", value = ""),
        ),


        # Metadata
        box(
          title = "Metadata",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          selectInput(
            "metadata_desc",
            label = "Select: short and/or long metadata description",
            choices =
              c(
                "Short Description" = "short",
                "Long Description" = "long"
              ),
            selected = "short",
            multiple = TRUE
          ),
          textInput(
            "metadata_descriptors",
            "Metadata descriptor(s) (e.g., instrument output, medical records information",
            value = ""
          ),
          textInput(
            "metadata_collection",
            "Process/guidelines for collecting metadata",
            value = ""
          ),
          textInput(
            "fair_standards",
            "if it exists, FAIR standards for data type",
            value = ""
          ),
          HTML(
            '<a href="https://www.nature.com/articles/sdata201618">More about FAIR standards here</a><br><br>'
          ),
          textInput(
            "metadata_location",
            "Location where metadata will be deposited",
            value = ""
          )
        ),

        # II
        # TOOLS / SOFTWARE / CODE
        box(
          title = "Tools/Code",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          selectInput(
            "manipulation",
            label = "Select: add a custom data manipulation statement?",
            choices = c("No", "Yes"),
            selected = "Yes",
            multiple = FALSE
          ),
          textInput(
            "data_manipulation_tool",
            "Tool used for data manipulation",
            value = "standard office suite spreadsheet software"
          ),
          selectInput(
            "open_source_level",
            label = "Select: level of development transparency",
            choices =
              c(
                "Not Applicable" = "na",
                "Open Source" = "opensource",
                "Semi-Open Source" = "semiopen",
                "Proprietary" = "proprietary"
              ),
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
          )
        ),

        # III
        # STANDARDS
        box(
          title = "Standards",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          textInput(
            "standards_description",
            "Standard creator/organization and description",
            value = ""
          ),
          textInput(
            "standards_comment",
            "Optional: additional details as appropriate",
            value = ""
          )
        ),

        # IV
        # PRESERVATION
        box(
          title = "Preservation",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

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
          textInput(
            "controlled_repositories",
            "Repository (controlled data)",
            value = ""
          ),
          textInput(
            "sensitive_data_type",
            "Sensitive data types (if applicable)",
            value = ""
          ),
          textInput("repo_comment", label = "Optional: add additional text about the repository", value = ""),

          # FAIR
          h4("Findability"),
          textInput("fair_comment", "Description of level of findability", value = ""),

          # Timeframe
          h4("Timeframe"),
          textInput(
            "timeframe_to_pub",
            "Timeframe for depositing (e.g., within X months of data generation / at the time of publication)",
            value = ""
          ),
          textInput(
            "timeframe_longevity",
            "Timeframe for availability (e.g., duration of the grant funding)",
            value = ""
          )
        ),

        # V
        # ACCESS
        box(
          title = "Access",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

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
          textInput("control_comment",
                    label = "Optional: add additional control details",
                    value = "submitted to and processed by the NIH-designated data repository under their 'controlled access' process"),

          # Human subjects
          h4("Human Subjects"),
          selectInput(
            "human_subjects",
            label = "Select: are human subjects involved?",
            choices = c("No", "Yes"),
            selected = "No",
            multiple = FALSE
          )
        ),

        # V
        # OVERSIGHT
        box(
          title = "Oversight",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          selectInput(
            "oversight_method",
            label = "Select: who will conduct the oversight?",
            choices = c("Proposal Team", "Laboratory Staff", "External Collaborator"),
            selected = "Proposal Team",
            multiple = FALSE
          ),
          textInput("name_role", label = "Oversight lead (e.g., Name and role)", value = ""),
          textInput("review_frequency", label = "Review frequency (e.g., twice annually)", value = ""),
          textInput("review_addtnl", label = "Additional review points (e.g., when publications are accepted)", value = "")
        )
      ),

      # ------- Preview
      mainPanel(
        #####

        h4("About this Tool"),
        HTML('
             This tool was created by the <a href="https://hutchdatascience.org/">Fred Hutch Data Science Lab</a> to be an evolving warehouse of template text that can help you develop your NIH Data Management and Sharing Plan (DSMP). Choose from existing examples by selecting a core discipline from the first dropdown on the left. Use the expandable fill-in-the blanks and dropdowns to further customize your text. A preview of your plan will appear below with customized text appearing in <font color="OA799A"><b>blue text</b></font>. You can also <b>download</b> your plan using the buttons below. <br><br>

             Please see our <a href="https://hutchdatascience.org/NIH_Data_Sharing/">NIH Data Sharing Course</a> to learn more about new requirements from the NIH.<br><br>

             This material has been collected and consolidated from many groups at Fred Hutch including Shared Resources, OSR, and other partners.<br><br>
             '
        ),

        # Download buttons
        downloadButton("downloaddocx", label = "Download .docx"),
        downloadButton("downloadmd", label = "Download .md"),

        # Hutch logo
        HTML(
          '
          <br><br>
          <a href="https://hutchdatascience.org/">
            <img src="https://hutchdatascience.org/images/big-dasl-narrower-web.png" width = "50%">
          </a>
          <br><br>
          '
        ),

        # HTML preview
        box(htmlOutput("html_preview"), width = NULL),

      )
    )
  )
}
