#Rehan Thomas, S5D , 50, CHN18CS099
#1
CREATE TABLE employee (
   code VARCHAR(4) NOT NULL  PRIMARY KEY ,
   name VARCHAR(10) NOT NULL,
   designation VARCHAR(30) NOT NULL,
   dob DATE NOT NULL,
   salary INT NOT NULL);
  
#2
INSERT INTO employee (code, name, designation, dob, salary)
VALUES ('e1', 'Tom', 'Engineer', '1995-05-29', '8000'),
       ('e2', 'Alex', 'Administrator', '1991-06-15', '4000');

#3
SELECT * FROM employee;

#4
UPDATE employee SET salary= 10000 WHERE code = 'e1';

#5
DELETE FROM employee
WHERE code = 'e2';