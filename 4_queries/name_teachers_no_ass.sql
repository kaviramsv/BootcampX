--       teacher       | cohort | total_assistances 
-- --------------------+--------+-------------------
--  Cheyanne Powlowski | JUL02  |               336
--  Georgiana Fahey    | JUL02  |               158
--  Helmer Rodriguez   | JUL02  |               157
--  Jadyn Bosco        | JUL02  |               177
-- ...
-- (8 rows)

SELECT DISTINCT teachers.name as teacher,cohorts.name as cohort,count(assistance_requests) as total_assistances  
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher,cohort
ORDER BY teacher;