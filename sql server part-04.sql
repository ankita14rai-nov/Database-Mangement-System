create table employee(
id int primary key,
name varchar(50),
department varchar(50),
salary int
)

insert into employee VALUES 
    (1, 'Aarav Mehta', 'IT', 85000),
    (2, 'Priya Singh', 'HR', 62000),
    (3, 'Rohan Das', 'Finance', 71000),
    (4, 'Sanya Iyer', 'Marketing', 58000),
    (5, 'Vikram Seth', 'Engineering', 95000),
    (6, 'Ananya Rao', 'Sales', 54000);

select * from employee
select name from employee

--List all unique department names present in the table.
select distinct department from employee

--Select the name and salary of every employee.
select name, salary from employee

--Find the record for the employee with id equal to 3.
select * from employee where id= 3

--List all employees who work in the 'IT' department.
select * from employee where department= 'IT'

--Retrieve the names of employees whose salary is greater than 70,000.
select * from employee where salary >70000

--Find all employees who do NOT work in the 'HR' department.
select * from employee where department != 'HR'

--List employees with a salary between 50,000 and 80,000.
select * from employee where salary between 50000 and 80000

--Retrieve the details of the employee named 'Aarav Mehta'.
select * from employee where name= 'Aarav Mehta' 

--Find all employees whose names start with the letter 'A'.
select * from employee where name like 'A%'

--List employees whose names end with the letter 'a'.
select * from employee where name like '%A'

--Select employees whose names contain 'iy' (e.g., Priya, Sanya).
select * from employee where name like '%IY%'

--Retrieve employees in either the 'Engineering' or 'Finance' departments.
select * from employee where department in ('Engineering', 'Finance')

--Find employees whose department name is exactly 2 characters long (e.g., 'IT').
select * from employee where department like '__'

--Select employees whose salary is exactly 62,000.
select * from employee where salary= 62000

--Find employees whose id is an even number.
select * from employee where id%2=0

--List employees whose name has exactly 10 characters (including spaces).
select * from employee where len(name)=10

--Retrieve employees who have a salary that is a multiple of 10,000.
select * from employee where salary % 10000=0

--Find employees whose department starts with 'R'.
select * from employee where name like 'R%'

--List all employees sorted by salary in ascending order.
select * from employee order by salary asc

--List all employees sorted by name in alphabetical order (A-Z).
select * from employee order by name asc

--Select all records and sort them by department, then by salary (highest to lowest).
select * from employee order by department asc, salary desc

--Find the top 3 highest-paid employees.
SELECT TOP 3 * FROM employee ORDER BY salary desc

--Retrieve the 2 employees with the lowest IDs.
select top 2 * from employee order by id asc

--Get the details of the 5th highest-paid employee.
select top 5 * from employee order by salary desc

--List employees in 'IT' sorted by their names.
select *  from employee where department= 'IT' order by name ASC

--Retrieve the names of the first 5 employees added to the table.
select top 5 * from employee order by id asc

--Sort employees by the length of their names.
select id, name, department, salary, len(name) AS name_length FROM employee order by LEN(NAME) ASC

--List employees by salary descending, excluding the highest earner.
select * from employee order by salary desc OFFSET 1 rows

--Count the total number of employees in the table.
select COUNT(*) as updated_salary from employee

--Find the total sum of salaries paid to all employees.
select SUM(salary) as sum_of_salary from employee

--Calculate the average salary of all employees.
select avg(salary) as avg_salary from employee

--Find the maximum salary in the table.
select MAX(salary) as updated_salary from employee

--Find the minimum salary in the 'Marketing' department.
select Min(salary) as updated_salary from employee

--Count how many employees work in each department.
select department, COUNT(*) as count_employee from employee group by department

--Calculate the average salary for each department.
select department, AVG(salary) as avg_salary from employee group by department

--Find the total salary expenditure for the 'Engineering' department.
select SUM(salary) as total_expenditure from employee where department= 'engineering'

--List departments that have more than 1 employee.
select department, COUNT(*) as updated_employee from employee group by department having COUNT(*) >1

--Find the department with the highest average salary.
SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) = (SELECT MAX(avg_sal) FROM (SELECT AVG(salary) AS avg_sal FROM employee GROUP BY department) AS sub
)

--Increase the salary of all employees by 10%.
UPDATE employee
SET salary = salary * 1.10;
select * from employee

--Update the department of 'Rohan Das' to 'Operations'.
update employee set department= 'Operations' where name= 'Rohan Das'
select * from employee

--Set the salary to 100,000 for the employee with id 5.
update employee set salary= 100000 where id = 5

--Delete the record for the employee with id 6.
delete employee where id=6

--Delete all employees who earn less than 55,000.
delete employee where salary <55000

--Add a new employee: (7, 'Sneha Kapoor', 'IT', 72000).
INSERT INTO employee (id, name, department, salary)
VALUES (7, 'Sneha Kapoor', 'IT', 72000);
select * from employee

--Update the salaries of all 'HR' employees by adding a 5,000 bonus.
update employee set salary= salary+5000 where department='HR'

--Change the table name from employee to Employees.
EXEC sp_rename 'employee', 'Ankita_employee';  
select * from Ankita_employee

--Add a new column called email (VARCHAR) to the table.
ALTER TABLE Ankita_employee ADD email VARCHAR(255);
select * from Ankita_employee

--Write a query to remove all records from the table without deleting the table structure itself.
TRUNCATE TABLE Ankita_employee;


CREATE TABLE Employees_1(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO Employees_1 VALUES
(1, 'Aarav Mehta', 'IT', 85000, '2022-01-15'),
(2, 'Priya Singh', 'HR', 62000, '2021-03-22'),
(3, 'Rohan Das', 'Finance', 71000, '2023-05-10'),
(4, 'Sanya Iyer', 'Marketing', 58000, '2022-11-01'),
(5, 'Vikram Seth', 'Engineering', 95000, '2020-08-19'),
(6, 'Ananya Rao', 'Sales', 54000, '2023-01-12'),
(7, 'Sneha Kapoor', 'IT', 72000, '2021-12-05'),
(8, 'Ishaan Verma', 'Engineering', 88000, '2022-06-30'),
(9, 'Meera Reddy', 'Finance', 75000, '2020-11-25'),
(10, 'Arjun Gupta', 'Sales', 52000, '2023-04-04');

select * from Employees_1

--Retrieve all unique departments in the company.

--List the names of employees earning more than 70,000.

--Show the 3 highest-paid employees, starting from the top.

--Find the total number of employees in the 'Sales' department.

--Calculate the average salary for each department.

--Find all employees whose names start with the letter 'A'.

--List departments where the total salary expenditure is greater than 150,000.

--Find the details of the employee(s) who have the maximum salary (without using LIMIT).

--List all employees hired in the year 2022.

--Show the second-highest salary in the table.