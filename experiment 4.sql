CREATE DATABASE expi4;
USE expi4;
CREATE TABLE department (
	code VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50),
    dept_name VARCHAR(50) UNIQUE,
    dept_id CHAR(15),
    salary FLOAT CHECK(Salary>2000)
);

CREATE TABLE instructor (
	name VARCHAR(50) NOT NULL,
	code CHAR(15),
	id CHAR(30) DEFAULT "instructor"
);

INSERT INTO department (code,title,dept_name,dept_id,salary)
VALUES('csc', 'engineering', 'Computer', 'cs', 9000),
	  ('ele', 'BTECH', 'Electronics', 'ec', 6000),
	  ('ece', 'BTECH', 'mechanical', 'me', 3000);
                             
INSERT INTO instructor (name,code)
VALUES ('Rahul', 'we');
INSERT INTO instructor VALUES('Samuel', 'om','e1'),
       ('Ram', 'me', 'e2');