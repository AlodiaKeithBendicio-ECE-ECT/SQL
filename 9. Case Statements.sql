-- CASE STATEMENTS --

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'MID-AGE'
    WHEN age >= 51 THEN 'OLD'
END AS classification
FROM parks_and_recreation.employee_demographics;

# EXAMPLE: Year-End Bonus Salary
# < 50000 = 5% 
# > 50000 = 7% 
# Finance = 10%

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 5000 THEN salary * 1.05
    WHEN salary > 5000 THEN salary * 1.07
END AS 'year_end_salary',
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS 'bonus'
FROM employee_salary;

SELECT *
FROM parks_and_recreation.parks_departments;

# parks_departments.department_id: Finance Department is 6
# employee_salary.dept_id = parks_departments.department_id
