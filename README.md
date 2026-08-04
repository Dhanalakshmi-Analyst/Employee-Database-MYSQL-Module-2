# Employee Database - Querying Data (MySQL DML Assignment)

## 📌 Project Overview
This repository contains the second assignment for the Data Analytics module, focusing on MySQL Data Manipulation Language (DML). Building upon the existing database structure established in Assignment 1, this project shifts the focus to working directly with data—inserting records and applying advanced querying techniques, clauses, aggregate functions, grouping, joins, and window functions to extract meaningful business insights.

---

## 🛠️ Project Structure & Technologies
* **Database Management System:** MySQL
* **Key Components Covered:**
  * Data Insertion & Referential Integrity (Foreign Keys)
  * DML Clauses & Operators (`DISTINCT`, `ALIAS`, `WHERE`, `ORDER BY`, `LIMIT`)
  * Data Updates (`UPDATE` with `NULL` checks)
  * Aggregate Functions (`SUM`, `MIN`, `MAX`, `AVG`)
  * Grouping & Filtering (`GROUP BY`, `HAVING`)
  * Table Joins (`INNER`, `LEFT`, `RIGHT`, `CROSS`, and `SELF` Joins)
  * Window Functions (`RANK()`, `DENSE_RANK()`, and cumulative calculations)

---

## 📂 Assignment Breakdown & Implementation

### Part A: Data Insertion & Consistency
* Populated the parent tables (`Departments` and `Location`) prior to the `Employees` table to ensure complete foreign key validity.
* Inserted a robust dataset consisting of **13 departments, 4 locations, and 30 employee records**.
* Handled data cleaning by identifying missing designations via `IS NULL` filters and rectifying them using the `UPDATE` statement.

### Part B: Clauses & Operators
* **`DISTINCT`**: Extracted unique salary figures from the employee base.
* **Aliases (`AS`)**: Enhanced output readability by renaming column views (`Age` to `Employee_Age`, `Salary` to `Employee_Salary`) without altering schema definitions.
* **`WHERE` Clause**: Filtered records using logical operators (e.g., retrieving high-earning personnel hired before specific threshold dates).

### Part C: Sorting, Limiting, & Grouping
* **`ORDER BY` & `LIMIT`**: Sorted entries across multiple parameters (e.g., Department ID ascending paired with Salary descending) and restricted output rows to target specific hiring cohorts (e.g., top hires of 2018).
* **Aggregate & Grouping**: Utilized `SUM`, `MIN`, `MAX`, and `AVG` grouped by location and department IDs.
* **`HAVING` Clause**: Filtered grouped datasets (such as isolating departments with fewer than 3 employees or tracking specific demographic averages per location) where standard `WHERE` clauses cannot apply.

### Part D: Joins
* **Inner Join**: Matched active employees to their respective department names.
* **Left & Right Joins**: Ensured comprehensive mapping by preserving unmatched parent or child records (displaying departments or locations with zero headcounts smoothly utilizing `NULL` placements).
* **Cross & Self Joins**: Generated cartesian combinations and mapped intra-departmental colleague pairings while successfully eliminating self-referencing loops.

### Part E: Window Functions
* **`RANK()` & `DENSE_RANK()`**: Evaluated overall and department-partitioned salary standings cleanly without collapsing underlying row elements.
* **Cumulative Aggregates**: Computed running salary totals partitioned across respective departments.

---

## 🚀 Key Takeaways
This assignment successfully bridges raw transactional data manipulation with analytical retrieval. By implementing complex structural queries, multi-table joins, and analytic window functions, the database efficiently transforms raw inputs into actionable intelligence suitable for modern data analytics workflows.
