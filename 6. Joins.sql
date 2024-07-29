-- JOINS --

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

# JOINS allow you to combine 2 tables or more together having common column

-- INNER JOIN --

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

# INNER JOIN is going to return rows that are the same in both columns from both tables
/* employee_id 2 from salary table is not included 
	since there is no employee_id 2 in the first table which is demographics table */

-- OUTER JOIN --

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

# for OUTER JOIN we have LEFT and RIGHT
/* LEFT OUTER JOIN is going to take everything from the left table 
	even if there's no match in the join and it will only return the matches 
    from the right table and the exact opposite is true for RIGHT OUTER JOIN */
# employee_id 2 now exists and corresponds to null in the left table which is demograohics table

-- SELF JOIN --

SELECT emp1.employee_id AS Santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS first_last_santa,
emp2.employee_id AS employee,
emp2.first_name AS first_name_employee,
emp2.last_name AS first_last_employee
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;

# this is an example of stratified allocation of secret santa

-- JOINING MULTIPLE TABLES --

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
	ON sal.dept_id = pd.department_id;

# parks_departments serves as a reference table which means there is no recurring values
