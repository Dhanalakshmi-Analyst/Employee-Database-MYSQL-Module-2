DROP DATABASE IF EXISTS Employee;
Create database Employee;
Use employee;

--- Create Department Table

Create table Departments (
    Department_id int primary key,
    Department_name varchar(100)
);

select * from departments;

--- Create Location Table
Create table Location (
    Location_id int primary key,
    Location_name varchar(30)
);

select * from location;

--- Create Employee Table
Create table Employees (
    Employee_id int primary key,
    Employee_name varchar(50),
    Gender enum('M','F'),
    Age int,
    Hire_date date,
    Designation varchar(50),
    Salary decimal(10,2),
    Department_id int,
    Location_id int,
    Foreign key (Department_id) references Departments(department_id),
    Foreign key (Location_id) references Location(location_id)
);

select * from employees;

-- Alter the Employees Table

--- Add new column "email"
Alter table Employees
Add column Email varchar(100);

---  Modify "designation" to hold a wider range of values
Alter table Employees
Modify column Designation varchar(150);

---  Drop the "age" column
Alter table Employees
Drop column Age;

-- Rename "hire_date" to "date_of_joining"
Alter table Employees
Rename column Hire_date to Date_of_joining;

-- Table Renaming (RENAME)

Rename table Departments to Departments_Info;
Rename table Location to Locations;

-- Table Truncation (TRUNCATE)

Truncate table Employees;

-- Database & Table Dropping (DROP)

Drop table Employees;
DROP DATABASE IF EXISTS Employee;

-- Recreate Database WITH Constraints

CREATE DATABASE IF NOT EXISTS Employee;
USE employee;

--- Departments Table
Create table Departments (
    Department_id int primary key,
    Department_name varchar(100) not null unique
);

-- Location Table
Create table Location (
    Location_id int auto_increment primary key,
    Location_name varchar(30) not null unique
);

--- Employee Table (with all constraints + Email column)

Create table Employees (
    Employee_id int primary key,
    Employee_name varchar(50) not null,
    Gender char(1) check (Gender in ('M','F')),
    Age int check (Age >= 18),
    Hire_date date default (current_date),
    Designation varchar(100),
    Salary decimal(10,2),
    Department_id int,
    Location_id int,
    Email varchar(100) unique,
    Foreign key (Department_id) references Departments(department_id),
    Foreign key (Location_id) references Location(location_id)
);


-- Testing the Constraints with Sample Data


Insert into Departments(Department_id, Department_name)
Values (1,'HR'), (2,'Finance'), (3,'IT'), (4,'Sales');

Insert into Location(Location_name)
Values ('Madurai'), ('Chennai'), ('Coimbatore'), ('Trichy');

Insert into Employees(Employee_id, Employee_name, Gender, Age, Designation, Salary, Department_id, Location_id, Email)
Values
(1, 'Dhanalakshmi', 'F', 26, 'Data Analyst', 42000, 3, 1, 'dhanalakshmi@example.com'),
(2, 'Athidheeran', 'M', 31, 'HR Executive', 38000, 1, 2, 'athidheeran@example.com'),
(3, 'Ilamukin', 'M', 19, 'Intern', 15000, 4, 3, 'ilamukin@example.com');

-- Verify hire_date auto-filled since it wasn't provided

Select Employee_id, Employee_name, Hire_date from Employees;


-- See all tables in the database

SHOW TABLES;

-- See full structure of Employees table

DESCRIBE Employees;

-- See all employee records

SELECT * FROM Employees;

-- Confirm foreign key relationships work by joining tables

SELECT e.Employee_name, d.Department_name, l.Location_name
FROM Employees e
JOIN Departments d ON e.Department_id = d.Department_id
JOIN Location l ON e.Location_id = l.Location_id;