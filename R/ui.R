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
            "Electron Microscopy (TEM)" = "em_tem",
            "Electron Microscopy (SEM)" = "em_sem",
            "Electron Microscopy (CryoEM)" = "em_cryo",
            "Experimental Histopathology - Aperio Platform" = "eh_aperio",
            "Experimental Histopathology - Polaris Platform" = "eh_polaris",
            "Experimental Histopathology - Vectra images" = "eh_vectra",
            "Flow Cytometry" = "flow_cytometry",
            "Genomics & Bioinformatics" = "genomics",
            "Immune Monitoring" = "immune",
            "Large Animal Facilities" = "large_animal",
            "Preclinical Imaging (IVIS)" = "pi_ivis",
            "Preclinical Imaging (MicroCT)" = "pi_microct",
            "Preclinical Imaging (MRI)" = "pi_mri",
            "Preclinical Modeling" = "preclinical_model",
            "Proteomics" = "proteomics",
            "Small Animal Facilities" = "small_animal",
            "Therapeutic Products" = "therapeutic"
          ),
          multiple = TRUE
        ),
        checkboxInput(
          "anvil",
          label = HTML(
            'Use <a href="https://anvilproject.org/">AnVIL</a>!'
          ),
          value = FALSE,
          width = NULL
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

        #####
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
          numericInput(
            "num_not_used",
            label = "Test sample count",
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

        #HTML('<br>'),
        h4("How to Use"),
        HTML(
          'Populate text by selecting a discipline from the first dropdown above.
           Use the expandable fill-in-the blanks and dropdowns to further customize your text.
           <b>Download</b> your plan using the buttons at the top of the preview.
           <br>
             '
        ),
        h4("About this Tool"),
        HTML(
          '
             This tool was created by the <a href="https://hutchdatascience.org/">Fred Hutch Data Science Lab</a> to help you develop your NIH Data Management & Sharing (DMS) Plan.
             Many thanks to the groups at Fred Hutch, including Shared Resources, OSR, and others, for collecting language.
             Please see our <a href="https://hutchdatascience.org/NIH_Data_Sharing/">NIH Data Sharing Course</a> to learn more about new requirements from the NIH.<br><br>
             '
        ),
        actionButton(inputId='ab1', label="NIH Data Sharing Course", icon = icon("graduation-cap"), onclick ="window.open('https://hutchdatascience.org/NIH_Data_Sharing/', '_blank')"),
        HTML('<br><br>'),
        actionButton(inputId='ab1', label="Give Us Feedback", icon = icon("comments"), onclick ="window.open('https://forms.gle/g28hBcNXJBn6tyzz8/', '_blank')"),
        HTML('<br>'),
        # Hutch logo
        HTML(
          '
          <br>
          <div style="text-align: center;">
            <a href="https://anvilproject.org/">
              <img src="https://anvilproject.org/static/logo-anvil-7dbfbc420748c4a0917f57f515f60816.png" margin-left = "auto" margin-right = "auto" width = "65%">
            </a>
          </div>
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
        '),

        # Download buttons
        # Box to provide email
        HTML(
          "
          Please provide your email to download. This helps us understand who is using the tool. We don't collect any other information.
          <br>
          "
        ),
        fluidRow(
          column(3, textInput("user_email", value = "", label = "")),
          column(3, HTML('<br>'), actionButton("submit_button", "submit")),
          column(3, HTML('<br>'), uiOutput("downloaddocx_button")),
          column(3, HTML('<br>'), uiOutput("downloadmd_button"))
        ),
        uiOutput("thanks"),

        # HTML preview
        box(htmlOutput("html_preview"), width = NULL),

      )
    )
  )
}
