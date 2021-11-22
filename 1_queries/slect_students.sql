--psql
-- \c bootcampx;
--/i 1_queries/slectstudents.sql

SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;