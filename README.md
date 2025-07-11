# employee-database-setup
SQL scripts for setting up and managing an employee database. Includes schema design, data insertion, and validation queries for HR operations.



Context:
You’ve just joined the company as a database engineer. Your first task is to help set up a table for storing employee information. This table will be queried frequently for HR operations.

🔹 Part 1: Table Design
You need to create a table called employees that satisfies the following requirements:
Each employee has a unique ID that auto-increments.


Every employee must have a first name and last name.


Some employees have a middle name, but not all.


Every employee has an age.


By default, all new employees are considered 'employed', unless their status is explicitly defined as 'on leave', 'terminated', or anything else.

Task:
 Write the SQL statement to create this table.


🔹 Part 2: Data Insertion
Insert the following employees into the employees table:
Linda Smith, age 35. No middle name. Status: default.


Bob Johnson, middle name "V.", age 41. Status: default.


Sarah Williams, age 29. Status: 'on leave'. No middle name.


Tommy Miller, middle name "Q.", age 51. Status: default.


Mary Phillips, middle name "N.", age 22. Status: 'terminated'.


Also insert:
Peter Taylor, age 30. No middle name. No status provided.


Task:
 Write a single or multiple INSERT INTO statements to insert all records above with correct handling of missing values and defaults.


🔹 Part 3: Verification
Write an SQL query to return all columns from the employees table and check that:
Each employee has an id that auto-increments.


The current_status field shows 'employed' when not specified.


middle_name is NULL where it wasn't provided.
