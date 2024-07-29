-- 1. SELECT STATEMENTS --
SELECT *
FROM employee_demographics;

# '*' means select everything
# it is a best practice to include the database base before the table name 
# example: FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
age, age + 10 AS 'after decade'
FROM parks_and_recreation.employee_demographics;

# select the specified column/s from the table by putting the column name in SELECT line
# PEMDAS
# 'AS' renames the column name

-- DISTINCT --

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

# 'DISTINCT' provides summary of the unique values in the column
# if you select many columns, unique values of those columns will be given by 'DISTINCT'5
