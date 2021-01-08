#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('ar69','AAA','2000-02-02','CTO',190000.78),
('ku12','BBB','2000-01-12','CEO',185000.78),
('sv13','CCC','1998-08-02','Clerk',59000.78),
('ask1','DDD','1969-04-20','Auditor',59000.18);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'pal',290000.25),
(1990002,'pal',291233.22),
(1990003,'kar',123570.1),
(1990004,'pal',2239083.78),
(1990005,'ala',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;