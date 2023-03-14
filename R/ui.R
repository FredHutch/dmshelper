#' Title
#'
#' @return
#' @export
#'
#' @examples
shiny_ui <- function() {
  fluidPage(
    # Styling stuff
    includeCSS(path = system.file("AdminLTE.css", package = "dmshelper")),
    includeCSS(path = system.file("shinydashboard.css", package = "dmshelper")),
    includeScript(path = system.file("app.js", package = "dmshelper")),
    # includeCSS(path = "inst/AdminLTE.css"),
    # includeCSS(path = "inst/shinydashboard.css"),
    # includeScript(path = "inst/app.js"),

    tags$head(tags$link(rel="shortcut icon", href="https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/style-sets/fhdasl/copy_to_assets/favicon.ico")),

    # Google Analytics
    tags$head(HTML(
      "
      <!-- Google tag (gtag.js) -->
      <script async src='https://www.googletagmanager.com/gtag/js?id=G-5LZT89N4CE'></script>
      <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-5LZT89N4CE');
      </script>
      "
    )),

    titlePanel(title = div(
      img(
        src = "https://raw.githubusercontent.com/FredHutch/dmshelper/main/img/logo3.png",
        alt = "DMS Helper",
        height = 25,
        style = "margin-left: 10px;"
      )
    ),
    windowTitle = "DMS 📁 Helper"),

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

        #####
        # I
        # DATA TYPE
        box(
          title = "Data Type",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          # Data types and amounts
          h4("Raw Data Type"),
          checkboxInput(
            "raw_data_present",
            label = "Add Raw Data section?",
            value = TRUE,
            width = NULL
          ),
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

          h4("Processed Data Type"),
          checkboxInput(
            "processed_data_present",
            label = "Add Processed Data section?",
            value = TRUE,
            width = NULL
          ),
          textInput("raw_file_type", "Raw file(s) to be processed", value = ""),
          textInput(
            "brief_pipeline_description",
            "Brief processing pipeline description",
            value = ""
          ),
          textInput(
            "processsed_file_description",
            "Processed file type and description",
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

          h4("Other Data Type Information"),
          textInput("datatype_comment", label = "Optional: add additional text about data types", value = ""),
          textInput(
            "datatype_comment_summary",
            label = "Optional: add additional text about techniques",
            value = ""
          )
        ),

        # Sharing
        box(
          title = "Sharing",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          checkboxInput(
            "shared_data_present",
            label = "Add Shared Data section?",
            value = TRUE,
            width = NULL
          ),
          textInput(
            "shared_technologies",
            "Technologies and processed data to be shared",
            value = ""
          ),
          textInput("shared_comment", label = "Optional: add additional text about data sharing", value = ""),

          checkboxInput(
            "not_shared_data_present",
            label = "Add Data Not Shared section?",
            value = TRUE,
            width = NULL
          ),
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
            "tools_code_desc",
            label = "Tools/Code description (select any)",
            choices =
              c(
                "Custom" = "custom",
                "Open Source" = "opensource",
                "Open post-publication" = "semiopen",
                "Proprietary" = "proprietary"
              ),
            selected = c("custom", "opensource"),
            multiple = TRUE
          ),
          textInput(
            "data_manipulation_tool",
            "Tool used for data manipulation",
            value = "standard office suite spreadsheet software"
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
          title = "Repositories",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          # Repository
          selectInput(
            "repository",
            label = "Repository description (select any)",
            choices = repository_choices(),
            selected = c("custom"),
            multiple = TRUE
          ),
          checkboxInput(
            "add_open_repo",
            label = "Custom: Open data repository?",
            value = TRUE,
            width = NULL
          ),
          textInput("repository_data_type", "Custom: Data type", value = ""),
          textInput("chosen_repositories", "Custom: Open repository name", value = ""),
          checkboxInput(
            "add_controlled_repo",
            label = "Custom: Controlled data repository?",
            value = TRUE,
            width = NULL
          ),
          textInput(
            "controlled_repositories",
            "Custom: Controlled repository name",
            value = ""
          ),
          textInput("sensitive_data_type",
                    "None: Sensitive data types",
                    value = ""),
          textInput("repo_comment", label = "Optional: add additional text about the repository", value = "")
        ),

        # FAIR
        box(
          title = "Findability",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          textInput("fair_repositories",
                    "FAIR repositories",
                    value = ""),
          textInput("fair_comment", "Description of level of findability", value = "")
        ),

        # Timeframe
        box(
          title = "Timeframe",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          textInput(
            "timeframe_data_type",
            "Data type",
            value = ""
          ),
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
          textInput("reuse_raw_file_type", "Data type(s)", value = ""),
          selectInput(
            "reuse_level",
            label = "Select: data level",
            choices = c("Level 0", "Level 1"),
            selected = "Level 0",
            multiple = FALSE
          ),

          # Controls
          h4("Data Controls"),
          checkboxInput(
            "controls",
            label = "Are access controls needed?",
            value = FALSE,
            width = NULL
          ),

          textInput("control_data_type", "Controlled data type(s)", value = ""),
          textInput("access_repositories",
                    "Controlled repositories",
                    value = ""),
          textInput("control_comment",
                    label = "Optional: add additional control details",
                    value = "submitted to and processed by the NIH-designated data repository under their 'controlled access' process"),

          # Human subjects
          h4("Human Subjects"),
          checkboxInput(
            "human_subjects",
            label = "Are human subjects involved?",
            value = FALSE,
            width = NULL
          )
        ),

        # VI
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
        ),
        #####

        HTML('<br>'),
        h4("About this Tool"),
        HTML(
          '
             This tool was created by the <a href="https://hutchdatascience.org/">Fred Hutch Data Science Lab</a> to be an evolving warehouse of template text that can help you develop your NIH Data Sharing and Management Plan (DMS).
             Choose from existing examples by selecting a core discipline from the first dropdown above.
             Use the expandable fill-in-the blanks and dropdowns to further customize your text.
             A preview of your plan will appear below with customized text appearing in <font color="OA799A"><b>blue text</b></font>.
             You can also <b>download</b> your plan using the buttons below. <br><br>

             Please see our <a href="https://hutchdatascience.org/NIH_Data_Sharing/">NIH Data Sharing Course</a> to learn more about new requirements from the NIH.<br><br>

             This material has been collected and consolidated from many groups at Fred Hutch including Shared Resources, OSR, and other partners.<br><br>
             '
        ),
        # Hutch logo
        HTML(
          '
          <br>
          <div style="text-align: center;">
            <a href="https://hutchdatascience.org/">
              <img src="https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/style-sets/fhdasl/copy_to_assets/big-dasl-stacked.png" margin-left = "auto" margin-right = "auto" width = "75%">
            </a>
          </div>
          <br>
          '
        )
      ),


      # ------- Preview
      mainPanel(
        #####

        # Download buttons
        downloadButton("downloaddocx", label = "Download .docx"),
        downloadButton("downloadmd", label = "Download .md"),
        HTML('<br><br>'),

        # HTML preview
        box(htmlOutput("html_preview"), width = NULL),

      )
    )
  )
}
