-- GROUP BY --
# group together rows that have the same values in the specified column/s

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

# this means that gender is rolled up into 'female' and 'male'
# the average 'AVG' age of 'female' and 'male'

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

# MAX and MIN age for 2 genders
# COUNT gives how many values are grouped based on gender

-- ORDER BY --

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;

# 'ORDER BY' sorts the result set in either ascending or descending order
# ASC by default 
# DESC

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC;

# the table will be ordered by gender first then descending age

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4 DESC;

# gender is the 5th column and age is the 4th column in the table









