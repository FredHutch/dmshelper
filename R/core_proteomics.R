#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
proteomics_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "tandem (MS/MS) mass spectrometry")
  # shiny::updateTextInput(session, "raw_file_description", value = ".raw files")
  # shiny::updateTextInput(session, "avg_file_size", value = "0.5 to 2 GB")
  # # shiny::updateTextInput(session, "total_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "raw mass spectrometry files")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "Thermo Scientific Proteome Discoverer v2.5 and provide analyzed results using the Proteome Discoverer viewer")
  # shiny::updateTextInput(session, "processsed_file_description", value = "pdResult, Excel, and image files")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "1 to 30 GB")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  #
  # shiny::updateTextInput(session, "shared_technologies", value = "Both raw results in the form of spectra collected by the mass spectrometer as well as analyzed results in the form of detected peptides and proteins")
  # shiny::updateTextInput(session, "shared_comment", value = "By sharing raw data, we provide other researchers with the ability to re-search spectra as new peptide matches become available in protein database repositories. By sharing the peptides and proteins detected in our analysis of those spectra, we provide other researchers with the processed data which was used to motivate the conclusions drawn from our study.")
  # shiny::updateTextInput(session, "notshared", value = "na")
  #
  # shiny::updateTextInput(session, "open_source_level", value = "opensource")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "biological samples, processing, technical replicates, fractionation, instrumentation, and configuration")
  # shiny::updateTextInput(session, "metadata_collection", value = "the MAGE-TAB-Proteomics standard (https://psidev.info/magetab)")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "the latest software version of ThermoScientific Freestyle and the desktop software ThermoScientific Proteome Discoverer v2.5 (available at https://thermo.flexnetoperations.com/control/thmo/login), respectively, as well as the web-based proteomics analysis functionality provided by MassIVE (https://massive.ucsd.edu/ProteoSAFe/static/massive.jsp)")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the ProteomeXchange (http://www.proteomexchange.org/), a global consortium supporting open access to proteomics datasets since 2012")
  # shiny::updateTextInput(session, "standards_comment", value = "Each dataset defined by the ProteomeXchange is comprised of the data described by a single manuscript using the same data workflow (e.g. DDA). All such datasets are assigned a ProteomeXchange PXD identifier (PXD + a six figure integer, for additional details see: http://www.ebi.ac.uk/miriam/main/collections/MIR:00000513). Each datasets consists of (1) mass spectrometry output files (raw spectra as well as peak lists), (2) experimental and technical metadata (in the established PX XML format), (3) processed results (peptide/protein identification results at a minimum), and (4) any other associated files. ")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "raw spectra as well as processed peptide and protein data")
  # shiny::updateTextInput(session, "chosen_repositories", value = "MassIVE (https://massive.ucsd.edu/ProteoSAFe/static/massive.jsp) and/or PRIDE (https://www.ebi.ac.uk/pride/archive/)")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "repo_comment", value = "MassIVE is a community resource developed by the NIH-funded Center for Computational Mass Spectrometry to promote the global, free exchange of mass spectrometry data. MassIVE datasets can be assigned ProteomeXchange accessions to satisfy publication requirements. The PRoteomics IDEntifications (PRIDE) Archive database is a centralized, standards compliant, public data repository for mass spectrometry proteomics data, including protein and peptide identifications and the corresponding expression values, post-translational modifications and supporting mass spectra evidence (both as raw data and peak list files). PRIDE is a core member in the ProteomeXchange (PX) consortium, which provides a standardized way for submitting mass spectrometry-based proteomics data to public-domain repositories. Datasets are submitted to ProteomeXchange via PRIDE and are handled by expert bio-curators. All PRIDE public datasets can also be searched in ProteomeCentral, the portal for all ProteomeXchange datasets.")
  #
  # shiny::updateTextInput(session, "fair_comment", value = "experiment collections, which are associated in turn with metadata describing the experiment as well as the raw and processed data which was submitted. Any publications associated with an experiment can be listed directly, making the scientific data discoverable by searching for the associated publication. Primary references would be to a dataset record available in MassIVE (https://massive.ucsd.edu/ProteoSAFe/datasets.jsp) or PRIDE (https://www.ebi.ac.uk/pride/archive). The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  #
  # shiny::updateTextInput(session, "timeframe_to_pub", value = "at the time of publication")
  # shiny::updateTextInput(session, "timeframe_longevity", value = "the duration of the grant funding")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")



  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw proteomics data using tandem (MS/MS) mass spectrometry")
  shiny::updateTextInput(session, "raw_file_description", value = ".raw files")
  shiny::updateTextInput(session, "avg_file_size", value = "0.5 to 2 GB")
  shiny::updateTextInput(session, "total_samples_files", value = "")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
  shiny::updateTextInput(session, "raw_file_type", value = "raw mass spectrometry files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "Thermo Scientific Proteome Discoverer v2.5 and provide analyzed results using the Proteome Discoverer viewer")
  shiny::updateTextInput(session, "processsed_file_description", value = "pdResult, Excel, and image files")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "1 to 30 GB")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Both raw results in the form of spectra collected by the mass spectrometer as well as analyzed results in the form of detected peptides and proteins")
  shiny::updateTextInput(session, "shared_comment", value = "By sharing raw data, we provide other researchers with the ability to re-search spectra as new peptide matches become available in protein database repositories. By sharing the peptides and proteins detected in our analysis of those spectra, we provide other researchers with the processed data which was used to motivate the conclusions drawn from our study.")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "biological samples, processing, technical replicates, fractionation, instrumentation, and configuration")
  shiny::updateTextInput(session, "metadata_collection", value = "the MAGE-TAB-Proteomics standard (https://psidev.info/magetab)")
  shiny::updateTextInput(session, "fair_standards", value = "n/a")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "tools_code_desc", value = c("custom", "opensource", "proprietary"))
  shiny::updateTextInput(session, "data_manipulation_tool", value = "the latest software version of ThermoScientific Freestyle and the desktop software ThermoScientific Proteome Discoverer v2.5 (available at https://thermo.flexnetoperations.com/control/thmo/login), respectively, as well as the web-based proteomics analysis functionality provided by MassIVE (https://massive.ucsd.edu/ProteoSAFe/static/massive.jsp)")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the ProteomeXchange (http://www.proteomexchange.org/), a global consortium supporting open access to proteomics datasets since 2012")
  shiny::updateTextInput(session, "standards_comment", value = "Each dataset defined by the ProteomeXchange is comprised of the data described by a single manuscript using the same data workflow (e.g. DDA). All such datasets are assigned a ProteomeXchange PXD identifier (PXD + a six figure integer, for additional details see: http://www.ebi.ac.uk/miriam/main/collections/MIR:00000513). Each datasets consists of (1) mass spectrometry output files (raw spectra as well as peak lists), (2) experimental and technical metadata (in the established PX XML format), (3) processed results (peptide/protein identification results at a minimum), and (4) any other associated files. ")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "repository", value = c("custom"))
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "raw spectra as well as processed peptide and protein data")
  shiny::updateTextInput(session, "chosen_repositories", value = "MassIVE (https://massive.ucsd.edu/ProteoSAFe/static/massive.jsp) and/or PRIDE (https://www.ebi.ac.uk/pride/archive/)")
  shiny::updateTextInput(session, "add_controlled_repo", value = FALSE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "MassIVE is a community resource developed by the NIH-funded Center for Computational Mass Spectrometry to promote the global, free exchange of mass spectrometry data. MassIVE datasets can be assigned ProteomeXchange accessions to satisfy publication requirements. The PRoteomics IDEntifications (PRIDE) Archive database is a centralized, standards compliant, public data repository for mass spectrometry proteomics data, including protein and peptide identifications and the corresponding expression values, post-translational modifications and supporting mass spectra evidence (both as raw data and peak list files). PRIDE is a core member in the ProteomeXchange (PX) consortium, which provides a standardized way for submitting mass spectrometry-based proteomics data to public-domain repositories. Datasets are submitted to ProteomeXchange via PRIDE and are handled by expert bio-curators. All PRIDE public datasets can also be searched in ProteomeCentral, the portal for all ProteomeXchange datasets.")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "MassIVE and PRIDE")
  shiny::updateTextInput(session, "fair_comment", value = "experiment collections, which are associated in turn with metadata describing the experiment as well as the raw and processed data which was submitted. Any publications associated with an experiment can be listed directly, making the scientific data discoverable by searching for the associated publication. Primary references would be to a dataset record available in MassIVE (https://massive.ucsd.edu/ProteoSAFe/datasets.jsp) or PRIDE (https://www.ebi.ac.uk/pride/archive). The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_data_type", value = "Raw spectra as well as processed peptide and protein data")
  shiny::updateTextInput(session, "timeframe_to_pub", value = "at the time of publication")
  shiny::updateTextInput(session, "timeframe_longevity", value = "the duration of the grant funding")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  shiny::updateTextInput(session, "reuse_level", value = "None")

  # Control
  shiny::updateTextInput(session, "controls", value = FALSE)
  shiny::updateTextInput(session, "controlled_data_type", value = "All proteomics datasets")
  shiny::updateTextInput(session, "access_repositories", value = "MassIVE or PRIDE")
  shiny::updateTextInput(session, "control_comment", value = "n/a")

  # VI
  # Oversight
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}
