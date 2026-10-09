create table student(
rollno int primary key,
name varchar(50),
marks int,
grade varchar(30),
city varchar(50)
)
insert into student values(101, 'Anil', 78, 'C', 'pune'),
						  (102, 'Aman', 93, 'A', 'Goa'),
						  (103, 'Bhumi', 85, 'B', 'Goa'),
						  (104, 'Chetan', 96, 'A', 'Delhi'),
						  (105, 'Rohit', 12, 'F', 'Delhi'),
						  (106, 'Raman', 82, 'B', 'Delhi'),
						  (107, 'Sid', 72, 'B', 'Pune')

select * from student

--where clause
select name from student where city= 'Delhi'

select COUNT(*) from student where city= 'Delhi'

select name, rollno from student order by(marks)
--SELECT NAME, MARKS FROM STUDENT ORDER BY MARKS

SELECT NAME FROM student WHERE name LIKE 'A%'

select name, marks from student where marks between 70 and 90

select top 3 name from student order by marks Desc

select name, rollno from student where city= 'Delhi' or city= 'Pune'

select name, rollno from student where city= 'Pune' or grade= 'C'

select name from student where city= 'Pune' and grade= 'C'

select AVG(marks) from student where city= 'Delhi'

select name from student where name like '%n' and marks >= 80

select city, COUNT(name) from student group by city

update student
set name= 'Rahul' where rollno= 103

select * from student

delete from student where city= 'Delhi'and name= 'Chetan'

alter table student 
add age int 

--alter table student 
--drop column age

update student set age= 21 where rollno= 101
update student set age= 21 where rollno= 102
update student set age= 21 where rollno= 103
update student set age= 21 where rollno= 104
update student set age= 21 where rollno= 105
update student set age= 21 where rollno= 106
update student set age= 21 where rollno= 107

select * from student

--foreign key
create table student1(
rollno int primary key,
name varchar(50),
age int not null,
cityid int,
city varchar(50)
)

insert into student1 values (1, 'Abhay', 21, 1, 'Delhi'),
							(2, 'Bhanu', 23, 2, 'Goa'),
							(3, 'Raman', 24, 1, 'Delhi'),
							(4, 'Sid', 22, 3, 'Pune')
select * from student1

create table city(
id int primary key,
city varchar(50)
)

insert into city values(1, 'Delhi'),
						(2, 'Goa'),
						(3, 'Pune')

select * from city

