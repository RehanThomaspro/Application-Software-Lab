#Rehan Thomas , S5D,50
create database exp3;
use exp3;
#Q1
create table employeedetails
(
empid int primary key,
dname varchar(20),
place char(20)

);
create table employee
(
empid int,
name char(40),
age int,
sex char(10),
foreign key(empid) references employeedetails(empid),
);
insert into employee
values
(1,"aaa",20,"M"),
(2,"bbb",19,"M"),
(3,"ccc",20,"M"),
(4,"ddd",20,"F"),
(5,"eee",20,"F");

insert into employeedetails(empid,dname,place)
values
(1,"ABC","London"),
(2,"DEF","peru"),
(3,"XYZ","Queens");

select * from employeedetails;
select * from employee;
'
#Q2 
SELECT * FROM employee as e1
WHERE EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);
#Q3
SELECT * FROM employee as e1
WHERE not EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);


