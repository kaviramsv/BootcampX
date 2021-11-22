-- Make sure you're in a psql session.
-- Execute psql from, the BootcampX directory.
-- Make sure you're using the bootcampx database \c bootcampx
-- Execute the query with the following command:

--psql
-- \c bootcampx;
--/i 1_queries/slectstudents.sql

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id
