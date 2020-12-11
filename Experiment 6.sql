#Rehan Thomas, S5D, 50, CHN18CS099
CREATE DATABASE EXP6;
USE EXP6;
#a
CREATE TABLE store (
	orderno INT,
    code VARCHAR(5) PRIMARY KEY,
    item VARCHAR(20),
    quatity INT,
    price FLOAT,
    discount FLOAT,
    mrp FLOAT		
);

#b
INSERT INTO store VALUES(1,'B1','Biscuit', 2, 30, 5, 35),
(2,'V3','Potato', 1, 45, 5, 50),
(3,'S3','Salt', 2, 12.5, 7.5, 20),
(4,'S4','Sugar', 1, 80, 0, 80);

#c
SELECT * FROM store;

#d
CREATE VIEW storeview
AS 
SELECT item, quatity
FROM store;


#e
INSERT INTO Store VALUES (5,'P5','Paste', 1, 25.5, 4.5, 30);
SELECT * FROM storeview;

#f
DROP VIEW storeview;