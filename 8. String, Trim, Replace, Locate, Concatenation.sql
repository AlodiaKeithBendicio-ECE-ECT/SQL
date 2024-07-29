-- STRING FUNCTIONS --

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name) AS letters
FROM parks_and_recreation.employee_demographics
ORDER BY letters;

# length can be used to identify the number of characters present especially for data cleaning
# example: correct number of phone number digits

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics;

-- TRIM --

SELECT TRIM('     sky      ');
SELECT LTRIM('     sky      ');
SELECT RTRIM('     sky      ');

# LEFT TRIM (LTRIM) removes spaces before sky
# RIGHT TRIM (RTRIM) removes spaces after sky
# TRIM removes both

-- SUBSTRING --

SELECT first_name, 
LEFT(first_name, 4) AS first_4,
RIGHT(first_name, 4) AS last_4,
SUBSTRING(first_name, 3, 2) as middle
FROM parks_and_recreation.employee_demographics;

# LEFT and RIGHT
# '4' indicates how many characters from the left or right will remain and the rest will be trimmed
# SUBSTRING : the first number indicates the position, the second indicates the number of characters displayed

SELECT first_name,
SUBSTRING(birth_date, 6, 5) AS birth_day
FROM parks_and_recreation.employee_demographics
ORDER BY birth_day;

# EXAMPLE OF SUBSTRING
# you want to specify the arrangement of birthday

-- REPLACE --

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM parks_and_recreation.employee_demographics;

-- LOCATE --

SELECT LOCATE('A', 'Alodia');

SELECT first_name, LOCATE('An', first_name)
FROM parks_and_recreation.employee_demographics;

-- CONCATENATION --

SELECT first_name, last_name,
CONCAT(first_name, last_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM parks_and_recreation.employee_demographics;

# CONCAT combines columns



