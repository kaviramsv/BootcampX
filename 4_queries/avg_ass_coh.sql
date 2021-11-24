--  name  | average_assistance_time 
-- -------+-------------------------
--  SEP24 | 00:13:23.071576
--  JUL30 | 00:13:23.956547
--  FEB12 | 00:13:42.66022
--  JUN04 | 00:13:45.974562
--  MAY07 | 00:13:58.745754
-- ...
-- (11 rows)

  SELECT cohorts.name ,avg(assistance_requests.completed_at - assistance_requests.created_at) as avg_asst_durtn 
  FROM students
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id   
  GROUP BY cohorts.name;
  