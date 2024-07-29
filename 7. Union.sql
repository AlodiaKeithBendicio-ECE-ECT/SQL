-- UNION --

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

# UNION allows you to combine rows together unlike JOIN that combines columns
# UNION is UNION DISTINCT by default which provides unique output values
# UNION ALL is used to see the duplicate values

-- 

SELECT first_name, last_name, 'OLD' AS Label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM employee_salary
WHERE salary > 70000; 

/* this is an example of case/conditional statements if the company wanted to 
trim down employees who were highly paid and old */

-- ADDITIONAL CASE/CONDITION --

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name; 


