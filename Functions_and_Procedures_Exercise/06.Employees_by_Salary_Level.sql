DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level(level_of_salary VARCHAR(7))
BEGIN 
		SELECT 
    e.first_name, e.last_name
FROM
    employees AS e
WHERE
    e.salary < 30000
        AND level_of_salary = 'low'
        OR e.salary >= 30000 AND e.salary <= 50000
        AND level_of_salary = 'average'
        OR e.salary > 50000
        AND level_of_salary = 'high'
ORDER BY e.first_name DESC , e.last_name DESC;
END $$
DELIMITER ;

CALL usp_get_employees_by_salary_level('high');