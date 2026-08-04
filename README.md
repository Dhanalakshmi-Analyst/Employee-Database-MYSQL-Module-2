# MySQL Assignment 2 - Querying Data
**Module:** Data Analytics (DA) 
**Database:** Employee Database 

## Project Overview
This assignment builds on the Employee Database created in Assignment 1. It covers
data insertion, filtering, sorting, aggregation, grouping, joins, and window functions
using MySQL.

## Files Included
- `MySQL_Assignment_2_Complete.sql` — full script containing data insertion and all
  required queries, ready to run top to bottom in MySQL.
- `README.md` — this file.

## Database Structure
| Table | Columns |
|---|---|
| `departments` | department_id (PK), department_name |
| `location` | location_id (PK), location_name |
| `employees` | employee_id (PK), employee_name, gender, age, hire_date, designation, salary, department_id (FK), location_id (FK), email |

## How to Run
1. Open MySQL Workbench (or your MySQL client of choice).
2. Make sure the `employee` database and its tables (`departments`, `location`,
   `employees`) already exist, as created in Assignment 1.
3. Open `MySQL_Assignment_2_Complete.sql`.
4. Run the script from top to bottom.
   - If `employees` already has 30 rows, skip the `INSERT INTO` statements at the
     top and start execution from Section 1, to avoid duplicate primary key errors.
5. Take a screenshot of each query's result grid to include in your submission PDF.

## Sections Covered

### Section 1: Clause & Operators
- `DISTINCT` — retrieves unique salary values.
- `AS` (alias) — renames `age` and `salary` columns in output only.
- `WHERE` — filters by salary and hire date; identifies and fills a missing
  `designation` value using `IS NULL` and `UPDATE`.

### Section 2: Sorting and Grouping Data
- `ORDER BY` — sorts by department ascending, salary descending.
- `LIMIT` — returns the first 5 employees hired in 2018.
- Aggregate functions — `SUM`, `MIN`, `MAX`, `AVG` for salary and age analysis.
- `GROUP BY` — max salary per location; average salary per Analyst-type designation.
- `HAVING` — filters grouped results (departments with <3 employees; locations
  where average female age is below 30).

### Section 3: Joins
- `INNER JOIN` — employees matched to their departments.
- `LEFT JOIN` — all departments, including those with zero employees.
- `RIGHT JOIN` — all locations, including those with no employees assigned.
- `CROSS JOIN` — every department-location combination.
- `SELF JOIN` — pairs of employees within the same department.

### Section 4: Window Functions
- `RANK()` — overall salary ranking (skips ranks after ties).
- `DENSE_RANK()` — salary ranking within each department (no skipped ranks).
- `SUM() OVER (PARTITION BY ... ORDER BY ...)` — running total of salary per
  department.

Key Skills Demonstrated

Data retrieval and filtering using SQL clauses and operators
Aggregation and grouped data analysis
Relational data handling through multiple join strategies
Analytical querying using window functions
Translating business requirements into structured SQL logic

Conclusion

This assignment demonstrates a comprehensive, hands-on application of SQL querying techniques essential to data analysis — from basic data retrieval to advanced window functions. By working with a realistic, multi-table employee dataset, the project highlights the ability to filter, sort, aggregate, and join relational data effectively, as well as to translate practical business questions into precise, efficient SQL queries. These skills form a strong foundation for real-world data analytics tasks, including reporting, performance tracking, and organizational decision-making support.
