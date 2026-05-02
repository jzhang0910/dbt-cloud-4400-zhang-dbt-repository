{{ config(materialized='table') }}

SELECT
  `Unique Key` AS unique_key,
  `Created Date` AS created_date,
  `Closed Date` AS closed_date,
  `Agency Name` AS agency_name,
  `Problem (formerly Complaint Type)` AS problem_type,
  `Problem Detail (formerly Descriptor)` AS problem_detail,
  `Location Type` AS location_type,
  `Incident Zip` AS incident_zip,
  `Incident Address` AS incident_address,
  City AS city,
  Borough AS borough,
  CURRENT_TIMESTAMP() AS loaded_at
FROM `complaint-data-495016.311_Noise_Complaint.311_Noise_Complaint`