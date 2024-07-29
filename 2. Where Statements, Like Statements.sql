-- WHERE CLAUSE --

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'female';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01' AND gender = 'female';

# AND OR NOT are Logical Operators

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR gender = 'male';

# can use parenthesis which follows the rule PEMDAS

-- LIKE STATEMENT --

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer__';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A___%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1994%';

# 'LIKE STATEMENTS' provide the identification for specific patterns if the exact data is not present
# '%' means anything, '_' means number of characters before or after the like statement


