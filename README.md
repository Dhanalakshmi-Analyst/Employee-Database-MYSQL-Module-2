# Employee Database Management System

DDL Commands and Data Integrity Constraints — MySQL Assignment 1

## Project Objective
This project designs an Employee Database for an organization that needs to track its
employees, the departments they belong to, and the locations they work from. The
database is built using MySQL DDL commands, with constraints applied so the data
stays accurate, consistent, and free of duplicate or missing values.

## Files in This Submission
- `Employee_Database_Assignment.sql` — Full MySQL script (table creation, alterations,
  renaming, truncation, dropping, constraint-enforced rebuild, sample data, and
  verification queries)
- `README.md` — This file
- Execution screenshots (PDF/DOCX) — Query results captured from MySQL Workbench

## Database Structure
Three related tables:

| Table | Key Columns |
|---|---|
| **Departments** | `department_id` (PK), `department_name` |
| **Location** | `location_id` (PK), `location_name` |
| **Employees** | `employee_id` (PK), `employee_name`, `gender`, `age`, `hire_date`, `designation`, `salary`, `department_id` (FK), `location_id` (FK), `email` |

The Employees table connects to both Departments and Location through foreign keys,
so every employee record traces back to its department and work location.

## DDL Commands Covered
- **CREATE** – build the database and its tables
- **ALTER** – add, modify, drop, or rename columns
- **RENAME** – rename tables
- **TRUNCATE** – clear all records from a table
- **DROP** – remove tables and the database

## Constraints Applied
| Column | Constraint | Purpose |
|---|---|---|
| `department_id` | PRIMARY KEY | Uniquely identifies each department |
| `department_name` | NOT NULL, UNIQUE | Prevents blank or duplicate department names |
| `location_id` | PRIMARY KEY, AUTO_INCREMENT | Sequential unique location IDs |
| `location_name` | NOT NULL, UNIQUE | Prevents blank or duplicate locations |
| `employee_id` | PRIMARY KEY | Uniquely identifies each employee |
| `employee_name` | NOT NULL | A record cannot be saved without a name |
| `gender` | CHECK (M/F only) | Restricts value to 'M' or 'F' |
| `age` | CHECK (age >= 18) | Blocks any employee below 18 |
| `hire_date` | DEFAULT (current_date) | Auto-fills today's date if not provided |
| `email` | UNIQUE | Prevents duplicate email addresses |
| `department_id`, `location_id` | FOREIGN KEY | Links Employees to Departments and Location |

## How to Run
1. Open **MySQL Workbench** (or any MySQL client).
2. Open `Employee_Database_Assignment.sql` in a new query tab.
3. Select all (**Ctrl+A**) and execute the entire script in one go (lightning bolt icon,
   or `source Employee_Database_Assignment.sql;` on the command line).
   > Run the whole script top to bottom — it drops and recreates the database partway
   > through, so running it out of order will cause errors.
4. Once complete, refresh the **Schemas** panel and expand `employee` → `Tables` to
   confirm `Departments_Info`, `Locations`, and `Employees` exist.
5. Verify the data with:
   ```sql
   SELECT * FROM Employees;
   ```

## Testing the Constraints
Sample data was inserted into each table to confirm the constraints behave as expected:
- Departments: HR, Finance, IT, Sales
- Locations: Madurai, Chennai, Coimbatore, Trichy
- Employees: 3 sample records with valid ages, gender, and unique emails

The `hire_date` column was intentionally left out of the insert statement to confirm
the `DEFAULT (current_date)` constraint auto-fills it correctly.

## Conclusion
- The Employee database was built step by step using CREATE, ALTER, RENAME,
  TRUNCATE, and DROP.
- Departments, Location, and Employees were designed as three connected tables.
- PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, and DEFAULT constraints
  were applied to keep the data reliable.
- Invalid entries, such as an age under 18 or a gender outside M/F, are rejected
  automatically by the constraints.
- Sample records were inserted and checked to confirm every constraint works as
  intended.
