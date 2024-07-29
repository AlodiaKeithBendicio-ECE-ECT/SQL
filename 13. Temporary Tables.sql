-- TEMPORARY TABLES --
# tables that are only visible to the session that they're created in
# will be lost if exited MySQL
/* restoring intermediate results for complex queries like CTE but also for manipulating 
data before inserting into a more permanent table */

-- first way --

CREATE TEMPORARY TABLE temp_table
(
	first_name varchar(50),
    last_name varchar(50),
    favorite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES ('Alodia','Bendicio','PK 2014');

SELECT *
FROM temp_table;

-- second way --

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;

# creating temporary table based on existing table



# CREATE TABLE (if 'TEMPORARY' is removed) it will create a table in parks and recreation database



