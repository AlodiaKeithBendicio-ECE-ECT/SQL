-- SUBQUERIES --

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1);	

# EXAMPLE: comparing salary if it is above/below average

SELECT first_name, salary,
	(SELECT AVG(salary)
	FROM employee_salary)
FROM parks_and_recreation.employee_salary;

# EXAMPLE: identifiying the average old age

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT AVG(`MAX(age)`)
FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_Table;

# OR to not use backtick

SELECT AVG(max_age)
FROM 
(SELECT gender, 
AVG(age) AS ave_age, 
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_Table;

# ` (backtick) to indicate the actual column name and not an aggregation anymore