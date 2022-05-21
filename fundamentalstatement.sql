-- 1. Create DB and Table 
CREATE DATABASE classroom;
CREATE TABLE science(
enroll_id int,
name varchar,
marks int);

-- 2. Inserting and Importing
INSERT INTO science VALUES
(1, 'Arifa', 80),
(2, 'Popeye', 33),
(3, 'Olive', 56),
(4, 'Brutus', 98);

COPY science FROM 'path folder' delimiter ',' csv header;

-- 3. SELECT and WHERE
--1. Retrieve all data from the table science
SELECT * FROM science;

--2. Retrieve the name of students who have scored more than 60 marks
SELECT name FROM science
WHERE marks > 60;

--3. Retrieve all data of students who have scored more than 35 marks but less than 60 marks
SELECT * FROM science
WHERE marks > 35 AND marks < 60;

--4.  Retrieve all other students i.e who have scored less than or equal to 35 or more than or equal to 60
SELECT * FROM science
WHERE marks >= 35 OR marks <= 60;

-- 4. Updating table
--1. Update the mark Popeye to 45
UPDATE science SET marks = 45 WHERE name = 'Popeye';

--2. Delete row containing details of student named 'Robb'
DELETE FROM science WHERE name = 'Robb';

--3. Rename coloumn 'Name' to 'Student_name'
ALTER TABLE science RENAME COLUMN name TO student_name; 
