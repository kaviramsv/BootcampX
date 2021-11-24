-- id  |       name       | day | chapter |total_requests 
-- -----+------------------+-----+---------+------------------
--  424 | Ullam cumque     |  51 |      12 |           143
--  423 | Culpa esse sint  |  51 |      11 |           113
--   45 | Quia quasi       |   5 |       7 |            86
--   50 | A rerum          |   6 |       5 |            83
--  141 | Illo error dolor |  17 |       9 |            82
--  ...
-- (424 rows)


SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;
