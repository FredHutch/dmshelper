#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
preclinical_imaging_IVIS_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "in vivo imaging data using Perkin Elmer IVIS Spectrum instrument")
  # shiny::updateTextInput(session, "raw_file_description", value = "image data in TIFF, PNG, and text file formats")
  # shiny::updateTextInput(session, "avg_file_size", value = "is typically 6MB")
  # shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 12 files per session]")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  # shiny::updateTextInput(session, "shared_technologies", value = "Imaging data of IVIS bioluminescence/biofluorescence")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "the open-source Aura software (available at https://spectralinvivo.com/software/) or with Living Image (available with a license, more information available at https://www.perkinelmer.com/lab-products-and-services/resources/in-vivo-imaging-software-downloads.html)")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "IVIS imaging")
  # shiny::updateTextInput(session, "metadata_collection", value = "[insert process for collecting metadata – please note that it is important that whoever acquires the images on the IVIS machine input all important sample information into the Living Image software’s ACQUIRE window to ensure this data is preserved at the time of acquisition]")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "")
  # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "IVIS datasets and associated metadata")
  # shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "repo_comment", value = "")
  #
  # shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  #
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "in vivo imaging data using Perkin Elmer IVIS Spectrum instrument")
  shiny::updateTextInput(session, "raw_file_description", value = "image data in TIFF, PNG, and text file formats")
  shiny::updateTextInput(session, "avg_file_size", value = "is typically 6MB")
  shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 12 files per session]")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = FALSE)
  shiny::updateTextInput(session, "raw_file_type", value = "")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Imaging data of IVIS bioluminescence/biofluorescence")
  shiny::updateTextInput(session, "shared_comment", value = "")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "IVIS imaging")
  shiny::updateTextInput(session, "metadata_collection", value = "[insert process for collecting metadata – please note that it is important that whoever acquires the images on the IVIS machine input all important sample information into the Living Image software’s ACQUIRE window to ensure this data is preserved at the time of acquisition]")
  shiny::updateTextInput(session, "fair_standards", value = "n/a")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "manipulation", value = TRUE)
  shiny::updateTextInput(session, "data_manipulation_tool", value = "the open-source Aura software (available at https://spectralinvivo.com/software/) or with Living Image (available with a license, more information available at https://www.perkinelmer.com/lab-products-and-services/resources/in-vivo-imaging-software-downloads.html)")
  shiny::updateTextInput(session, "open_source_level", value = "opensource")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "IVIS datasets and associated metadata")
  shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  shiny::updateTextInput(session, "timeframe_longevity", value = "")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "")

  # Control
  shiny::updateTextInput(session, "controls", value = FALSE)
  shiny::updateTextInput(session, "controlled_data_type", value = "")
  shiny::updateTextInput(session, "access_repositories", value = "")
  shiny::updateTextInput(session, "control_comment", value = "")

  # VI
  # Oversight
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}


#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
preclinical_imaging_MicroCT_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "raw data using Micro-Computed Tomography (micro-CT) on the Quantum GX2 platform")
  # shiny::updateTextInput(session, "raw_file_description", value = "images in the Digital Imaging and Communications in Medicine (DICOM) format, and TIFF images")
  # shiny::updateTextInput(session, "avg_file_size", value = "is 277 or 140 MB for DICOM or TIFF files, respectively")
  # shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 30 files per session]")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "raw DICOM/VOX files")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "microCT viewing software to generate static images from slices of the data")
  # shiny::updateTextInput(session, "processsed_file_description", value = "high resolution images in JPEG/PNG/BMP format")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "is 277 MB (DICOM export) * [number of mice imaged per time point] or 140 MB (tiff export) * [number of mice imaged per time point]")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  #
  # shiny::updateTextInput(session, "shared_technologies", value = "Processed MicroCT images in DICOM or TIFF format")
  # shiny::updateTextInput(session, "shared_comment", value = "DICOM or TIFF (select one) files will be shared due to ease of access and the ability to open these files in many different, commonly available software applications.")
  # shiny::updateTextInput(session, "notshared", value = "na")
  # shiny::updateTextInput(session, "not_shared_comment", value = "The raw data (VOX files) are not shared as the data is very large and unusable in most commonly used software applications.")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "")
  # shiny::updateTextInput(session, "metadata_collection", value = "")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "the Quantum GX2 Viewer and Analysis software, as well as Slicer (available at https://www.slicer.org/ ), Analyze 14.0 (available at https://analyzedirect.com/analyze14/) or other custom software specific for research (e.g. ImageJ (https://imagej.nih.gov/ij/download.html ) or microDICOM (https://www.microdicom.com/)")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the consensus recommendations established by the Minimum Reporting Standards for in vivo Magnetic Resonance Spectroscopy (MRSinMRS) (see https://doi.org/10.1002%2Fnbm.4484)")
  # # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "MicroCT datasets and associated metadata")
  # shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "raw data using Micro-Computed Tomography (micro-CT) on the Quantum GX2 platform")
  shiny::updateTextInput(session, "raw_file_description", value = "images in the Digital Imaging and Communications in Medicine (DICOM) format, and TIFF images")
  shiny::updateTextInput(session, "avg_file_size", value = "is 277 or 140 MB for DICOM or TIFF files, respectively")
  shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 30 files per session]")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = TRUE)
  shiny::updateTextInput(session, "raw_file_type", value = "raw DICOM/VOX files")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "microCT viewing software to generate static images from slices of the data")
  shiny::updateTextInput(session, "processsed_file_description", value = "high resolution images in JPEG/PNG/BMP format")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "is 277 MB (DICOM export) * [number of mice imaged per time point] or 140 MB (tiff export) * [number of mice imaged per time point]")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Processed MicroCT images in DICOM or TIFF format")
  shiny::updateTextInput(session, "shared_comment", value = "DICOM or TIFF (select one) files will be shared due to ease of access and the ability to open these files in many different, commonly available software applications.")
  shiny::updateTextInput(session, "notshared", value = "na")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "The raw data (VOX files) are not shared as the data is very large and unusable in most commonly used software applications.")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "")
  shiny::updateTextInput(session, "metadata_collection", value = "")
  shiny::updateTextInput(session, "fair_standards", value = "n/a")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "manipulation", value = TRUE)
  shiny::updateTextInput(session, "data_manipulation_tool", value = "the Quantum GX2 Viewer and Analysis software, as well as Slicer (available at https://www.slicer.org/ ), Analyze 14.0 (available at https://analyzedirect.com/analyze14/) or other custom software specific for research (e.g. ImageJ (https://imagej.nih.gov/ij/download.html ) or microDICOM (https://www.microdicom.com/)")
  shiny::updateTextInput(session, "open_source_level", value = "opensource")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the consensus recommendations established by the Minimum Reporting Standards for in vivo Magnetic Resonance Spectroscopy (MRSinMRS) (see https://doi.org/10.1002%2Fnbm.4484)")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "MicroCT datasets and associated metadata")
  shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  shiny::updateTextInput(session, "timeframe_longevity", value = "")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "")

  # Control
  shiny::updateTextInput(session, "controls", value = FALSE)
  shiny::updateTextInput(session, "controlled_data_type", value = "")
  shiny::updateTextInput(session, "access_repositories", value = "")
  shiny::updateTextInput(session, "control_comment", value = "")

  # VI
  # Oversight
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}


#' Title
#'
#' @param session
#'
#' @return
#' @export
#'
#' @examples
preclinical_imaging_MRI_update <- function(session){
  # DATATYPE
  # shiny::updateTextInput(session, "technology_description", value = "data using a 7T Dry Magnet Magnetic Resonance Imaging (MRI) instrument")
  # shiny::updateTextInput(session, "raw_file_description", value = "files in the Digital Imaging and Communications in Medicine (DICOM) format")
  # shiny::updateTextInput(session, "avg_file_size", value = "is 15MB")
  # shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 20 files per session]")
  # # shiny::updateTextInput(session, "data_volume", value = "")
  # shiny::updateTextInput(session, "raw_file_type", value = "")
  # shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  # shiny::updateTextInput(session, "processsed_file_description", value = "")
  # shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  # # shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  # # shiny::updateTextInput(session, "data_processed_volume", value = "")
  # shiny::updateTextInput(session, "datatype_comment", value = "")
  # shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")
  #
  # shiny::updateTextInput(session, "shared_technologies", value = "Due to the accessibility of viewing DICOM images using many commonly available image viewing applications, DICOM files")
  #
  # shiny::updateTextInput(session, "metadata_descriptors", value = "MRI data collection")
  # shiny::updateTextInput(session, "metadata_collection", value = "multiple streams, including hardware (field strength, manufacturer, model, RF coils), acquisition (pulse sequence, volume of interest locations, repetition time, total number of acquisitions), data analysis methods (analysis software, processing steps, output measure, quantification references) and data quality (reported variables, data exclusion criteria, and quality measures of postprocessing model fitting)")
  # shiny::updateTextInput(session, "fair_standards", value = "")
  # shiny::updateTextInput(session, "metadata_location", value = "")
  #
  # shiny::updateTextInput(session, "data_manipulation_tool", value = "the microDICOM software (available at https://www.microdicom.com/) or ImageJ software (available at https://imagej.nih.gov/ij/download.html)")
  #
  # # STANDARDS
  # shiny::updateTextInput(session, "standards_description", value = "the consensus recommendations established by the Minimum Reporting Standards for in vivo Magnetic Resonance Spectroscopy (MRSinMRS) (see https://doi.org/10.1002%2Fnbm.4484)")
  # # shiny::updateTextInput(session, "standards_comment", value = "")
  #
  # # PRESERVATION
  # shiny::updateTextInput(session, "repository_data_type", value = "MRI datasets and associated metadata")
  # shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  # # shiny::updateTextInput(session, "controlled_repositories", value = "")
  # # shiny::updateTextInput(session, "sensitive_data_type", value = "")
  # shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")
  # # shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  # # shiny::updateTextInput(session, "timeframe_longevity", value = "")
  # # shiny::updateTextInput(session, "reuse_raw_file_type", value = "")
  # # shiny::updateTextInput(session, "control_comment", value = "")
  # # shiny::updateTextInput(session, "name_role", value = "")
  # # shiny::updateTextInput(session, "review_frequency", value = "")
  # # shiny::updateTextInput(session, "review_addtnl", value = "")

  # I
  # DATATYPE
  ## Raw
  shiny::updateTextInput(session, "raw_data_present", value = TRUE)
  shiny::updateTextInput(session, "technology_description", value = "data using a 7T Dry Magnet Magnetic Resonance Imaging (MRI) instrument")
  shiny::updateTextInput(session, "raw_file_description", value = "files in the Digital Imaging and Communications in Medicine (DICOM) format")
  shiny::updateTextInput(session, "avg_file_size", value = "is 15MB")
  shiny::updateTextInput(session, "total_samples_files", value = " [insert total number of samples/files to be collected – typically 20 files per session]")
  shiny::updateTextInput(session, "data_volume", value = "")

  ## Processed
  shiny::updateTextInput(session, "processed_data_present", value = FALSE)
  shiny::updateTextInput(session, "raw_file_type", value = "")
  shiny::updateTextInput(session, "brief_pipeline_description", value = "")
  shiny::updateTextInput(session, "processsed_file_description", value = "")
  shiny::updateTextInput(session, "avg_processed_file_size", value = "")
  shiny::updateTextInput(session, "total_processed_samples_files", value = "")
  shiny::updateTextInput(session, "data_processed_volume", value = "")

  ### ! Optional comments
  shiny::updateTextInput(session, "datatype_comment", value = "")
  shiny::updateTextInput(session, "datatype_comment_summary", value = "-OR- Summarize the types (for example, 256-channel EEG data and fMRI images) and amount (for example, from 50 research participants) of scientific data to be generated and/or used in the research. Descriptions may include the data modality (e.g., imaging, genomic, mobile, survey), level of aggregation (e.g., individual, aggregated, summarized), and/or the degree of data processing.")

  ## Sharing
  shiny::updateTextInput(session, "shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "shared_technologies", value = "Due to the accessibility of viewing DICOM images using many commonly available image viewing applications, DICOM files")
  shiny::updateTextInput(session, "shared_comment", value = "")
  shiny::updateTextInput(session, "not_shared_data_present", value = TRUE)
  shiny::updateTextInput(session, "not_shared_comment", value = "")

  ## Metadata
  shiny::updateTextInput(session, "metadata_descriptors", value = "MRI data collection")
  shiny::updateTextInput(session, "metadata_collection", value = "multiple streams, including hardware (field strength, manufacturer, model, RF coils), acquisition (pulse sequence, volume of interest locations, repetition time, total number of acquisitions), data analysis methods (analysis software, processing steps, output measure, quantification references) and data quality (reported variables, data exclusion criteria, and quality measures of postprocessing model fitting)")
  shiny::updateTextInput(session, "fair_standards", value = "n/a")
  shiny::updateTextInput(session, "metadata_location", value = "")

  # II
  # TOOLS / SOFTWARE / CODE
  shiny::updateTextInput(session, "manipulation", value = TRUE)
  shiny::updateTextInput(session, "data_manipulation_tool", value = "the microDICOM software (available at https://www.microdicom.com/) or ImageJ software (available at https://imagej.nih.gov/ij/download.html)")
  shiny::updateTextInput(session, "open_source_level", value = "opensource")

  # III
  # STANDARDS
  shiny::updateTextInput(session, "standards_description", value = "the consensus recommendations established by the Minimum Reporting Standards for in vivo Magnetic Resonance Spectroscopy (MRSinMRS) (see https://doi.org/10.1002%2Fnbm.4484)")
  shiny::updateTextInput(session, "standards_comment", value = "")

  # IV
  # PRESERVATION
  # Repository
  shiny::updateTextInput(session, "add_open_repo", value = TRUE)
  shiny::updateTextInput(session, "repository_data_type", value = "MRI datasets and associated metadata")
  shiny::updateTextInput(session, "chosen_repositories", value = "The Cancer Imaging Archive (TCIA; https://www.cancerimagingarchive.net/), as well as the Imaging Data Commons (IDC; https://datacommons.cancer.gov/repository/imaging-data-commons), both maintained by the NIH/NCI")
  shiny::updateTextInput(session, "add_controlled_repo", value = TRUE)
  shiny::updateTextInput(session, "controlled_repositories", value = "")
  shiny::updateTextInput(session, "sensitive_data_type", value = "")
  shiny::updateTextInput(session, "repo_comment", value = "")

  # FAIR
  shiny::updateTextInput(session, "fair_repositories", value = "")
  shiny::updateTextInput(session, "fair_comment", value = "dataset collections representing the complete data collected for a particular publication. Primary references would be to a TCIA/IDC collection accession. The dataset records submitted for this project will additionally be listed in the Data Availability sections of all manuscripts published as part of this project.")

  # Timing
  shiny::updateTextInput(session, "timeframe_to_pub", value = "")
  shiny::updateTextInput(session, "timeframe_longevity", value = "")

  # V
  # ACCESS
  #Reuse
  shiny::updateTextInput(session, "reuse", value = "no_restrictions")
  shiny::updateTextInput(session, "reuse_raw_file_type", value = "")

  # Control
  shiny::updateTextInput(session, "controls", value = FALSE)
  shiny::updateTextInput(session, "controlled_data_type", value = "")
  shiny::updateTextInput(session, "access_repositories", value = "")
  shiny::updateTextInput(session, "control_comment", value = "")

  # VI
  # Oversight
  shiny::updateTextInput(session, "name_role", value = "")
  shiny::updateTextInput(session, "review_frequency", value = "")
  shiny::updateTextInput(session, "review_addtnl", value = "")
}
