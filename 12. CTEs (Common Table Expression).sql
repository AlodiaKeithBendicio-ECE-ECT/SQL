-- COMMON TABLE EXPRESSION -- 

WITH CTE_Example AS 
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;

# quering can only be used right after creating the temp table
# cannot be called once again since it didn't store in the memory or database (temporary)
/* SELECT *
FROM CTE_Example; */ 

# More complex CTE

WITH 
CTE_Example AS 
	(
	SELECT employee_id, gender, birth_date
	FROM parks_and_recreation.employee_demographics 
	WHERE birth_date > '1985-01-01'
	),
CTE_Example2 AS
	(SELECT employee_id, salary
    FROM employee_salary
    WHERE salary > 50000
	)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id;

# overwriting column names

WITH CTE_Example (GENDER, AVG_sal, MAX_sal, MIN_sal, COUNT_sal) AS 
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;