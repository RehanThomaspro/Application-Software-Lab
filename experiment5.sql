# Rehan Thomas, S5D, 50, CHN18CS099 
create database exp5;
USE exp5;

-- a)
CREATE TABLE class (
	name VARCHAR(15),
    id CHAR(5)
     );

-- b) 
INSERT INTO class VALUES ('aaaa' , 1),
('bbbb' , 2),
('cccc' , 3);

-- c) 
SELECT * FROM class;

-- d) 
START TRANSACTION;

INSERT INTO class VALUES 
('dddd', '4'),('eeee', '5');

SAVEPOINT A;

INSERT INTO class VALUES 
('ffff', '6'),('gggg', '7');
 
SAVEPOINT B;

ROLLBACK TO A;
COMMIT;

START TRANSACTION;
SAVEPOINT C;

INSERT INTO class VALUES('hhhh', '8');
ROLLBACK TO C;

SELECT * FROM class;