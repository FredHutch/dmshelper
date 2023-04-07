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

    tags$head(
      tags$link(rel = "shortcut icon",
                href = "https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/style-sets/fhdasl/copy_to_assets/favicon.ico")
    ),

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
          label = "Choose your discipline(s) to get started with some suggested text!",
          choices = c(
            # "None Selected (Custom)" = "none",
            "Antibody Technology" = "antibody_tech",
            "Cellular Imaging" = "cellular_imaging",
            "Electron Microscopy - TEM" = "em_tem",
            "Electron Microscopy - SEM" = "em_sem",
            "Electron Microscopy - CryoEM" = "em_cryo",
            "Experimental Histopathology - Aperio Platform" = "eh_aperio",
            "Experimental Histopathology - Polaris Platform" = "eh_polaris",
            "Experimental Histopathology - Vectra images" = "eh_vectra",
            "Flow Cytometry" = "flow_cytometry",
            "Genomics & Bioinformatics" = "genomics",
            "Immune Monitoring" = "immune",
            "Large Animal Facility" = "large_animal",
            "Preclinical Imaging (IVIS)" = "pi_ivis",
            "Preclinical Imaging (MicroCT)" = "pi_microct",
            "Preclinical Imaging (MRI)" = "pi_mri",
            "Preclinical Modeling Core" = "preclinical_model",
            "Proteomics Core" = "proteomics",
            "Small Animal Facility Core" = "small_animal",
            "Therapeutic Products Core" = "therapeutic"
          ),
          multiple = TRUE
        ),

        #####
        # I
        # DATA TYPE
        # Data types and amounts
        box(
          title = "Data Type",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          checkboxInput(
            "human_subjects",
            label = "Human subjects data?",
            value = FALSE,
            width = NULL
          ),
          selectInput(
            "raw_file_description",
            label = "Raw data file type",
            choices = datatype_raw_file_description_options(),
            multiple = TRUE
          ),
          selectInput(
            "technology_description",
            label = "Data generating technology",
            choices = datatype_technology_description_options(),
            multiple = TRUE
          )),

        # Num samples
        box(
          title = "Number of Samples",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

          numericInput(
            "num_em_tem_files",
            label = "Electron microscopy (TEM) sample count",
            value = NA
          ),
          numericInput(
            "num_em_sem_files",
            label = "Electron microscopy (SEM) sample count",
            value = NA
          ),
          numericInput(
            "num_em_cryo_files",
            label = "Electron microscopy (cryoEM) sample count",
            value = NA
          ),
          numericInput(
            "num_eh_aperio_files",
            label = "Experimental histopathology (Aperio) sample count",
            value = NA
          ),
          numericInput(
            "num_eh_polaris_files",
            label = "Experimental histopathology (Polaris) sample count",
            value = NA
          ),
          numericInput(
            "num_eh_vectra_files",
            label = "Experimental histopathology (Vectra) sample count",
            value = NA
          ),
          numericInput(
            "num_flow_cytometry_files",
            label = "Flow cytometry sample count",
            value = NA
          ),
          numericInput(
            "num_genomics_files",
            label = "Genomic sample count",
            value = NA
          ),
          numericInput(
            "num_immune_files",
            label = "Immune monitoring sample count",
            value = NA
          ),
          numericInput(
            "num_pi_ivis_files",
            label = "Preclinical imaging (IVIS) sample count",
            value = NA
          ),
          numericInput(
            "num_pi_microct_files",
            label = "Preclinical imaging (MicroCT) sample count",
            value = NA
          ),
          numericInput(
            "num_pi_mri_files",
            label = "Preclinical imaging (MRI) sample count",
            value = NA
          ),
          numericInput(
            "num_preclinical_model_files",
            label = "Preclinical modeling sample count",
            value = NA
          ),
          # selectInput(
          #   "num_genomics_files",
          #   label = "Genomic sample count",
          #   choices =
          #     c(
          #       "1 - 10",
          #       "11 - 50",
          #       "51 - 200",
          #       "200 - 500"
          #     ),
          #   multiple = FALSE
          # ),
          numericInput(
            "num_proteomics_files",
            label = "Proteomic sample count",
            value = NA
          )
        ),

        # Sharing
        box(
          title = "Data Sharing",
          collapsible = TRUE,
          collapsed = TRUE,
          width = NULL,

        ),


        # # Sharing
        # box(
        #   title = "Sharing",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   checkboxInput(
        #     "shared_data_present",
        #     label = "Add Shared Data section?",
        #     value = TRUE,
        #     width = NULL
        #   ),
        #   textInput(
        #     "shared_technologies",
        #     "Technologies and processed data to be shared",
        #     value = ""
        #   ),
        #   textInput("shared_comment", label = "Optional: add additional text about data sharing", value = ""),
        #
        #   checkboxInput(
        #     "not_shared_data_present",
        #     label = "Add Data Not Shared section?",
        #     value = TRUE,
        #     width = NULL
        #   ),
        #   selectInput(
        #     "notshared",
        #     label = "Select: justifications if not sharing data",
        #     choices = data_not_shared(),
        #     selected = "\nWe anticipate all data will be able to be preserved and shared.",
        #     multiple = TRUE
        #   ),
        #   textInput("not_shared_comment", label = "Optional: add additional text about data not shared", value = ""),
        # ),
        #
        #
        # # Metadata
        # box(
        #   title = "Metadata",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   selectInput(
        #     "metadata_desc",
        #     label = "Select: short and/or long metadata description",
        #     choices =
        #       c(
        #         "Short Description" = "short",
        #         "Long Description" = "long"
        #       ),
        #     selected = "short",
        #     multiple = TRUE
        #   ),
        #   textInput(
        #     "metadata_descriptors",
        #     "Metadata descriptor(s) (e.g., instrument output, medical records information",
        #     value = ""
        #   ),
        #   textInput(
        #     "metadata_collection",
        #     "Process/guidelines for collecting metadata",
        #     value = ""
        #   ),
        #   textInput(
        #     "fair_standards",
        #     "if it exists, FAIR standards for data type",
        #     value = ""
        #   ),
        #   HTML(
        #     '<a href="https://www.nature.com/articles/sdata201618">More about FAIR standards here</a><br><br>'
        #   ),
        #   textInput(
        #     "metadata_location",
        #     "Location where metadata will be deposited",
        #     value = ""
        #   )
        # ),
        #
        # # II
        # # TOOLS / SOFTWARE / CODE
        # box(
        #   title = "Tools/Code",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   selectInput(
        #     "tools_code_desc",
        #     label = "Tools/Code description (select any)",
        #     choices =
        #       c(
        #         "Custom" = "custom",
        #         "Open Source" = "opensource",
        #         "Open post-publication" = "semiopen",
        #         "Proprietary" = "proprietary"
        #       ),
        #     selected = c("custom", "opensource"),
        #     multiple = TRUE
        #   ),
        #   textInput(
        #     "data_manipulation_tool",
        #     "Tool used for data manipulation",
        #     value = "standard office suite spreadsheet software"
        #   ),
        #   selectInput(
        #     "version_control",
        #     label = "Select: version control method",
        #     choices = c("GitHub", "GitLab", "BitBucket"),
        #     selected = "GitHub",
        #     multiple = FALSE
        #   ),
        #   selectInput(
        #     "tool",
        #     label = "Select: code type (all that apply)",
        #     choices = list_of_tools(),
        #     selected = "R scripts",
        #     multiple = TRUE
        #   ),
        #   selectInput(
        #     "platform",
        #     label = "Select: platform (all that apply)",
        #     choices = list_of_platforms(),
        #     selected = "CRAN",
        #     multiple = TRUE
        #   )
        # ),
        #
        # # III
        # # STANDARDS
        # box(
        #   title = "Standards",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   textInput(
        #     "standards_description",
        #     "Standard creator/organization and description",
        #     value = ""
        #   ),
        #   textInput(
        #     "standards_comment",
        #     "Optional: additional details as appropriate",
        #     value = ""
        #   )
        # ),
        #
        # # IV
        # # PRESERVATION
        # box(
        #   title = "Repositories",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   # Repository
        #   selectInput(
        #     "repository",
        #     label = "Repository description (select any)",
        #     choices = repository_choices(),
        #     selected = c("custom"),
        #     multiple = TRUE
        #   ),
        #   checkboxInput(
        #     "add_open_repo",
        #     label = "Custom: Open data repository?",
        #     value = TRUE,
        #     width = NULL
        #   ),
        #   textInput("repository_data_type", "Custom: Data type", value = ""),
        #   textInput("chosen_repositories", "Custom: Open repository name", value = ""),
        #   checkboxInput(
        #     "add_controlled_repo",
        #     label = "Custom: Controlled data repository?",
        #     value = TRUE,
        #     width = NULL
        #   ),
        #   textInput(
        #     "controlled_repositories",
        #     "Custom: Controlled repository name",
        #     value = ""
        #   ),
        #   textInput("sensitive_data_type",
        #             "None: Sensitive data types",
        #             value = ""),
        #   textInput("repo_comment", label = "Optional: add additional text about the repository", value = "")
        # ),
        #
        # # FAIR
        # box(
        #   title = "Findability",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   textInput("fair_repositories",
        #             "FAIR repositories",
        #             value = ""),
        #   textInput("fair_comment", "Description of level of findability", value = "")
        # ),
        #
        # # Timeframe
        # box(
        #   title = "Timeframe",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   textInput(
        #     "timeframe_data_type",
        #     "Data type",
        #     value = ""
        #   ),
        #   textInput(
        #     "timeframe_to_pub",
        #     "Timeframe for depositing (e.g., within X months of data generation / at the time of publication)",
        #     value = ""
        #   ),
        #   textInput(
        #     "timeframe_longevity",
        #     "Timeframe for availability (e.g., duration of the grant funding)",
        #     value = ""
        #   )
        # ),
        #
        # # V
        # # ACCESS
        # box(
        #   title = "Access",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   # Reuse
        #   h4("Data Reuse"),
        #   selectInput(
        #     "reuse",
        #     label = "Select: plan for subsequent data access, distribution, or reuse",
        #     choices = reuse_choices(),
        #     selected = c("no_restrictions"),
        #     multiple = TRUE
        #   ),
        #   textInput("reuse_raw_file_type", "Data type(s)", value = ""),
        #   selectInput(
        #     "reuse_level",
        #     label = "Select: data level",
        #     choices = c("None", "Level 0", "Level 1"),
        #     selected = "Level 0",
        #     multiple = FALSE
        #   ),
        #
        #   # Controls
        #   h4("Data Controls"),
        #   checkboxInput(
        #     "controls",
        #     label = "Are access controls needed?",
        #     value = TRUE,
        #     width = NULL
        #   ),
        #
        #   textInput("controlled_data_type", "Controlled data type(s)", value = ""),
        #   textInput("access_repositories",
        #             "Controlled repositories",
        #             value = ""),
        #   textInput("control_comment",
        #             label = "Optional: add additional control details",
        #             value = "submitted to and processed by the NIH-designated data repository under their 'controlled access' process"),
        #
        #   # Human subjects
        #   h4("Human Subjects"),
        #   checkboxInput(
        #     "human_subjects",
        #     label = "Are human subjects involved?",
        #     value = FALSE,
        #     width = NULL
        #   )
        # ),
        #
        # # VI
        # # OVERSIGHT
        # box(
        #   title = "Oversight",
        #   collapsible = TRUE,
        #   collapsed = TRUE,
        #   width = NULL,
        #
        #   selectInput(
        #     "oversight_method",
        #     label = "Select: who will conduct the oversight?",
        #     choices = c("Proposal Team", "Laboratory Staff", "External Collaborator"),
        #     selected = "Proposal Team",
        #     multiple = FALSE
        #   ),
        #   textInput("name_role", label = "Oversight lead (e.g., Name and role)", value = ""),
        #   textInput("review_frequency", label = "Review frequency (e.g., twice annually)", value = ""),
        #   textInput("review_addtnl", label = "Additional review points (e.g., when publications are accepted)", value = "")
        # ),
        #####

        HTML('<br>'),
        h4("About this Tool"),
        HTML(
          '
             This tool was created by the <a href="https://hutchdatascience.org/">Fred Hutch Data Science Lab</a> to be an evolving warehouse of template text that can help you develop your NIH Data Sharing and Management Plan (DMS).
             Choose from existing examples by selecting a core discipline from the first dropdown above.
             Use the expandable fill-in-the blanks and dropdowns to further customize your text.
             A preview of your plan will to the right with customized text appearing in <font color="OA799A"><b>blue text</b></font>.
             You can also <b>download</b> your plan using the buttons at the top of the preview. <br><br>

             Please see our <a href="https://hutchdatascience.org/NIH_Data_Sharing/">NIH Data Sharing Course</a> to learn more about new requirements from the NIH.<br><br>

             Comments? We welcome feedback <a href="https://forms.gle/g28hBcNXJBn6tyzz8/">here</a>.<br><br>

             This material has been collected and consolidated from many groups at Fred Hutch including Shared Resources, OSR, and other partners.<br><br>
             '
        ),
        # Hutch logo
        HTML(
          '
          <br>
          <div style="text-align: center;">
            <a href="https://hutchdatascience.org/">
              <img src="https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/style-sets/fhdasl/copy_to_assets/big-dasl-stacked.png" margin-left = "auto" margin-right = "auto" width = "65%">
            </a>
          </div>
          <br>
          '
        )
      ),


      # ------- Preview
      mainPanel(
        #####

        HTML('
          <style>
            div.container {
            background-color: #ffffff;
            }
            div.container p {
            font-family: Arial;
            font-size: 22px;
            color: #b8331e;
            }
          </style>

          <div class="container">
            <p>This tool is under construction - thanks for your patience!</p>
          </div>
        '),

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
