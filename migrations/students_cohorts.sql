-- The VAR in VARCHAR means that you can set the max size to anything between 1 and 65,535.
-- TEXT fields have a fixed max size of 65,535 characters. A VARCHAR can be part of an index
-- whereas a TEXT field requires you to specify a prefix length, which can be part of an index.

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);
