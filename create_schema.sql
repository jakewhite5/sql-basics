-- Schema
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS classes CASCADE;
DROP TABLE IF EXISTS enrollments CASCADE;
CREATE TABLE students (
  id   serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       varchar(255) NOT NULL,
  city         varchar(64),
  state        varchar(64),
  zipcode      integer
);

CREATE TABLE classes (
  id serial Primary Key,
  name varchar(64),
  credits integer
);

Create table enrollments (
  id serial primary key,
  student_id integer,
  class_id integer,
  grade varchar(6),
    FOREIGN KEY(student_id)
      REFERENCES students(id),
    FOREIGN KEY(class_id)
    REFERENCES classes(id)
);