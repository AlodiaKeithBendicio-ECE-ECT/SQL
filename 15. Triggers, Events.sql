-- TRIGGERS AND EVENTS -- 

/* a trigger is a block of code that executes automatically when an 
	event takes place on a specific table */
    
# EXAMPLE: if new employee is inserted in demographics table, salary table will also be updated vice versa

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER //
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END //
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Alodia Keith', 'Bendicio', 'Electronics Engineer', 100000, NULL);

# AFTER INSERT ON if something is inserted
# BEFORE INSERT ON if something is deleted
# FOR EACH ROW means that it is activated for each row inserted
# NEW means only the new inserted rows will be taken
# OLD means only the deleted or updated rows will be taken

-- EVENTS --

# event takes place when it is scheduled

SELECT *
FROM employee_demographics;

DELIMITER //
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60;
END //
DELIMITER ;

# employee 5 Jerry Gergich 	aged 61 is now deleted




