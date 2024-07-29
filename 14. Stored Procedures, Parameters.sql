-- STORED PROCEDURES --

# To save your SQL code that you can reuse over and over again

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

# when schemas refreshed, large_salaries is now on the database

CALL large_salaries();

-- the best practice since multiple queries will be in stored procedure --

DELIMITER //
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
END //
DELIMITER ;

# DELIMITER can be slash (//) or dollar sign ($$)
# line 26: delimiter is changed back to semicolon (;)

-- PARAMETER -- 

/* parameters are variables that are passed as an input into a stored procedure
	and allow the store procedure to accept an input value and place it into the code */

DELIMITER //
CREATE PROCEDURE large_salaries3(employee_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id_param;
END //
DELIMITER ;

CALL large_salaries3(1)

# this indicates that you want to retrieve the salary of the person whose employee_id is 1



