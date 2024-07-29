-- WINDOW FUNCTIONS --

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

# change GROUP BY to WINDOW FUNCTION

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

# OVER(PARTITION BY) does not roll up the rows

SELECT dem.first_name, dem.last_name, gender, SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
# rolling total

SELECT dem.first_name, dem.last_name, gender, salary, 
		SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- ROW NUMBER --
-- RANK -- 
-- DENSE RANK --

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
	ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
    RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
    DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

# in rank, duplicates repeat the number assigned and skips the next number/s (positionally)
# in dense rank, duplicates repeat the number assigned and use the next number (numerically)
