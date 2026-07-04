-- Add tables to the hr_database (DDL &  DML)
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
emp_dept VARCHAR(50) NOT NULL,
emp_role VARCHAR(50) NOT NULL,
emp_salary DECIMAL(10, 2) NOT NULL,
emp_dob INT NOT NULL
);

-- Modifying the table 

ALTER TABLE Employees 
MODIFY emp_dob VARCHAR(50) NOT NULL;

-- Dropping a column
ALTER TABLE employees
DROP column emp_role;

-- Adding a column 
ALTER TABLE employees
ADD COLUMN emp_role VARCHAR(50) NOT NULL;

-- Renaming of column
ALTER TABLE employees
RENAME COLUMN emp_dob to emp_date_of_birth;

-- truncate (deleting) all rows
truncate table employees;

CREATE TABLE department (
dept_id int primary key,
category varchar(50) not null,
segment varchar(50) not null,
location varchar(50) not null,
employee_id int not null,
foreign key (employee_id) references employees(emp_id)
);

CREATE TABLE payroll (
emp_id int primary key,
dept varchar(50) not null,
salary decimal (10, 2) not null,
bonus decimal (10, 2) not null,
paycheck_id int not null,
foreign key (paycheck_id) references employees(emp_id)
); 

ALTER TABLE emp_location
add constraint fk_constraint_name
foreign key (employee_id)
references employees(emp_id)
 ;

ALTER TABLE department
add column department varchar(50) not null;

-- inserting records into the table fields
INSERT INTO employees ( emp_id,emp_name,emp_dept,emp_salary,emp_date_of_birth,emp_role) 
VALUES 
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1002, 'Franklin Kings' , 'Media' , 650000, '1995-07-20', 'Media Manager'),
( 1003, 'Wisdom Chase' , 'Marketing' , 650000, '1998-08-04', 'Marketing Manager'),
( 1004, 'Stella Davis' , ' Human Resources' , 450000, '1999-03-28', 'HR Manager'),
( 1005, 'Oge Declan', 'Administrative', 700000, '1992-07-21', 'Lead Admin'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
( 1001, 'John Doe' , 'Sales' , 500000 , '1993-08-12' , 'Sales Manager'),
;

insert into department (dept_id,category,segment,location,employee_id,department)
values
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(002, 'Marketing', 'Top Level', 'Lagos', 1002, 'Media'),
(003, 'Marketing', 'Top Level', 'Owerri', 1003, 'Marketing'),
(004, 'HR/Admin', 'Top Level', 'Ondo', 1004, 'Human Resources'),
(005, 'Management', 'Top Level', 'Lagos', 1005, 'Administrative'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
(001, 'Marketing', 'Top Level', 'Abuja', 1001, 'Sales'),
;

alter table employees
drop column emp_dept;

insert into emp_location ( location_id, location_point,employee_id)
values
( 10001, 'Wuse Zone 1', 1001),
( 10002, 'Victoria Island', 1002),
( 10003, 'Worldbank', 1003),
( 10004, 'Akure South', 1004),
( 10005, 'Lekki', 1005)
;

alter table emp_location
drop foreign key fk_constraint_name
;
alter table emp_location
modify employee_id int  not null
;
insert into payroll (emp_id,dept,salary,bonus,paycheck_id)
values
( 1001 , 'sales', 500000, 100000, 2001),
( 1002 ,  'emp_locationpayrollpayroll' , 'Media', 650000, 99000, 2002),
( 1003 , 'Marketing', 650000, 120000, 2003),
( 1004 , 'Human Resources', 450000, 120000, 2004),
( 10015 , 'Administrative', 700000, 55000, 2005)
;
alter table payroll
drop foreign key fk_constraint_name
