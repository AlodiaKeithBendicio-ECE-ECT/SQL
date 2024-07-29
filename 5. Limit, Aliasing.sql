-- LIMIT --

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3;

# LIMIT specify how many rows you want in your output

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;

# this gives us the names of the 3 oldest employees

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 5, 2;

# this means that we will start at position 5 then we will get 2 rows below it 

-- ALIASING --

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40;

# ALIASING is a way to change the name of a column


