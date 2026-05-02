WITH agency_name_columns AS
(
    SELECT DISTINCT 
    agency_name
  FROM {{ ref('raw_311_complaints') }}
  WHERE problem_type IS NOT NULL
)
SELECT 
    ROW_NUMBER() OVER() AS agency_name_dimension_id,
    agency_name, 
    CURRENT_TIMESTAMP() as loaded_at
FROM agency_name_columns
ORDER BY agency_name
