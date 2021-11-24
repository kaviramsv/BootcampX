--  average_total_duration 
-- ------------------------
--  555:22:25.909091
-- (1 row)



SELECT avg(total_duration) AS "highest_avg"
FROM (
SELECT cohorts.name, sum(completed_at - started_at) as total_duration
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration DESC)
 
 as avg_table
 ;