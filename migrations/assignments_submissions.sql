CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);

-- from the root wget http://bit.ly/2N1uWQy -O seeds/assignments_seeds.sql
--               wget http://bit.ly/33vpmMb -O seeds/assignment_submissions_seeds.sql

-- Inside your psql session, run the following commands:
--        \i seeds/assignments_seeds.sql
--        \i seeds/assignment_submissions_seeds.sql