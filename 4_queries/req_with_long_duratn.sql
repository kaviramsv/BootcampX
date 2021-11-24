--    name  | average_assistance_time 
-- -------+-------------------------
--  MAR12 | 00:15:44.556041
-- (1 row)

  -- Get the cohort with the longest average duration of assistance requests
  
  
-- SELECT MAX(avg_asst_durtn) AS "highest_avg"
-- FROM (
--   SELECT cohorts.name as coho,avg(assistance_requests.completed_at - assistance_requests.started_at) as avg_asst_durtn 
--   FROM students
--   JOIN assistance_requests ON students.id = assistance_requests.student_id
--   JOIN cohorts ON cohorts.id = students.cohort_id   
--   GROUP BY cohorts.name)
 
--  as avg_table
--  ;

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;