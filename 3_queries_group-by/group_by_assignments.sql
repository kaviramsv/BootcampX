SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;


SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;


select cohorts.name as name, count(assignment_submissions.*) as total_submissions
FROM students
join assignment_submissions
on assignment_submissions.student_id = students.id
join cohorts ON students.cohort_id = cohorts.id
group by cohorts.name;


select students.name as student, avg(assignment_submissions.duration) as total_submissions
FROM students
join assignment_submissions
on assignment_submissions.student_id = students.id
where students.end_date is NULL
group by students.name
order by total_submissions;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

-- where students.end_date is NULL
-- group by students.name
-- order by total_submissions;