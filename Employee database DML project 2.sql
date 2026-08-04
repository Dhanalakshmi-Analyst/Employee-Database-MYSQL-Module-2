
Use employee;
/*DML INSERTION (Employee Data - as given by mentor)*/

Insert into Departments (Department_id, Department_name) Values
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

Insert into Location (Location_name) Values
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

Insert into Employees (Employee_id, Employee_name, Gender, Age, Hire_date, Designation, Department_id, Location_id, Salary) Values
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

Select * from Employees;
Select * from Departments;
Select * from Location;
Select * from Employees;


/* CLAUSE & OPERATORS */

-- 1. DISTINCT VALUES: retrieve distinct salaries from the Employees table
Select distinct Salary from Employees;

-- 2. ALIAS (AS): alias age and salary columns
Select Age as Employee_Age, 
Salary as Employee_Salary from Employees;

-- 3. WHERE CLAUSE & OPERATORS
-- Employees with salary greater than 50000 and hired before 2016-01-01
Select * from Employees
Where Salary > 50000 and Hire_date < '2016-01-01';

-- Find the employee whose designation is missing and fill it with "Data Scientist"
Update Employees
Set Designation = 'Data Scientist'
Where Designation is null;

Select * from Employees;


/* SORTING AND GROUPING DATA */

-- 1. ORDER BY: department ID ascending, salary descending
Select * from Employees
Order by Department_id asc, Salary desc;

-- 2. LIMIT: first 5 employees hired in the year 2018
Select * from Employees
Where Year(Hire_date) = 2018
Order by Hire_date asc
Limit 5;

-- 3. AGGREGATE FUNCTIONS
-- Sum of all salaries in the Finance department (department_id = 7)
Select sum(Salary) as Total_Finance_Salary
From Employees
Where Department_id = 7;

-- Minimum age among all employees
Select min(Age) as Min_age
From Employees;

-- 4. GROUP BY
-- Maximum salary for each location
Select Location_id, max(Salary) as Max_salary
From Employees
Group by Location_id;

-- Average salary for each designation containing the word 'Analyst'
Select Designation, avg(Salary) as Avg_salary
From Employees
Where Designation like '%Analyst%'
Group by Designation;

-- 5. HAVING
-- Departments with less than 3 employees
Select Department_id, count(*) as Total_employees
From Employees
Group by Department_id
Having count(*) < 3;

-- Locations with female employees whose average age is below 30
Select Location_id, avg(Age) as Avg_female_age
From Employees
Where Gender = 'F'
Group by Location_id
Having avg(Age) < 30;


/* JOINS */

-- 1. INNER JOIN: employee names, designations, and department names
Select e.Employee_name, e.Designation, d.Department_name
From Employees e
Inner join Departments d on e.Department_id = d.Department_id;

-- 2. LEFT JOIN: all departments with total employees in each
Select d.Department_id, d.Department_name, count(e.Employee_id) as Total_employees
From Departments d
Left join Employees e on d.Department_id = e.Department_id
Group by d.Department_id, d.Department_name;

-- 3. RIGHT JOIN: all locations with employee names, NULL where no employees
Select l.Location_id, l.Location_name, e.Employee_name
From Employees e
Right join Location l on l.Location_id = e.Location_id;

-- 4. CROSS JOIN: all combinations of departments and locations
Select d.Department_name, l.Location_name
From Departments d
Cross join Location l;

-- 5. SELF JOIN: pairs of employees in the same department, excluding self-pairs
Select e1.Employee_name as Employee_1, e2.Employee_name as Employee_2, e1.Department_id
From Employees e1
Join Employees e2
On e1.Department_id = e2.Department_id
And e1.Employee_id <> e2.Employee_id;


/* WINDOW FUNCTIONS */

-- Rank employees by salary overall using RANK()
Select Employee_name, Salary,
Rank() over (order by Salary desc) as Salary_rank
From Employees;

-- Rank employees by salary within each department using DENSE_RANK()
Select Employee_name, Department_id, Salary,
Dense_rank() over (partition by Department_id order by Salary desc) as Dept_salary_rank
From Employees;

-- Running total salary by department
Select Employee_name, Department_id, Salary,
Sum(Salary) over (partition by Department_id order by Employee_id) as Running_total_salary
From Employees;