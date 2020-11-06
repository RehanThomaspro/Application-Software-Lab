# Application-Software-Lab
# Rehan Thomas , S5D , 50 , CHN18CS099
#a
CREATE TABLE student (
	sno INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(70) NOT NULL,
    marks INT NOT NULL,
    dept VARCHAR(20) NOT NULL
   );

#b
ALTER TABLE student ADD COLUMN age INT NOT NULL;

#c
ALTER TABLE student MODIFY COLUMN dept VARCHAR(10); 

#d
ALTER TABLE student DROP COLUMN marks;

#e
RENAME TABLE student TO students;

#f
TRUNCATE TABLE students;

#g
DROP TABLE students;
