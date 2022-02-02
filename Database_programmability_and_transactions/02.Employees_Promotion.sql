DELIMITER $ $ CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50)) BEGIN
UPDATE
    `employees` AS e
    JOIN `departments` AS d ON e.department_id = d.department_id
SET
    e.salary = e.salary * 1.05
WHERE
    d.name = department_name;

END $ $ DELIMITER;

DELIMITER $ $ CREATE PROCEDURE usp_get_salary_by_department(department_name VARCHAR(50)) BEGIN
SELECT
    e.employee_id,
    e.salary
FROM
    `employees` AS e
    JOIN `departments` AS d ON e.department_id = d.department_id
WHERE
    d.name = department_name;

END $ $ DELIMITER;

CALL usp_get_salary_by_department('Sales');

SET
    SQL_SAFE_UPDATES = 0;

CALL usp_raise_salaries('Sales');

SET
    SQL_SAFE_UPDATES = 1;

CALL usp_get_salary_by_department('Sales');

DROP PROCEDURE IF EXISTS usp_raise_salaries;

DROP PROCEDURE IF EXISTS ufn_get_salary_by_department;