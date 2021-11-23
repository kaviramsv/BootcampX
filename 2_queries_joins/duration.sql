
--Get the total number of assignments for each day of bootcamp.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
-- The same query as before, but only return rows where total assignments 
-- is greater than or equal to 10.
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

