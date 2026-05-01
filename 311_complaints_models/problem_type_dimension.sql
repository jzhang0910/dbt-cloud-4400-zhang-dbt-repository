WITH problem_type_columns AS
(
    SELECT DISTINCT problem_type, problem_detail
)
SELECT 
    row_number() OVER() AS agency_dim_id,
    problem_type, problem_detail, current_timestamp() as loaded_at
FROM problem_type_columns
ORDER BY problem_type, problem_detail
