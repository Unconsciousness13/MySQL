CREATE TABLE deleted_employees(
    `employee_id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(20),
    `last_name` VARCHAR(20),
    `middle_name` VARCHAR(20),
    `job_title` VARCHAR(50),
    `department_id` INT,
    `salary` DOUBLE
);

DELIMITER $ $ CREATE TRIGGER tr_deleted_employees
AFTER
    DELETE ON `employees` FOR EACH ROW BEGIN
INSERT INTO
    `deleted_employees` (
        `first_name`,
        `last_name`,
        `middle_name`,
        `job_title`,
        `department_id`,
        `salary`
    )
VALUES
    (
        OLD.first_name,
        OLD.last_name,
        OLD.middle_name,
        OLD.job_title,
        OLD.department_id,
        OLD.salary
    );

END $ $ DELIMITER;

DELIMITER $ $ CREATE PROCEDURE usp_select_employees_by_seniority() BEGIN
SELECT
    *
FROM
    `employees` AS e
WHERE
    ROUND(DATEDIFF(NOW(), e.hire_date) / 365.25) < 15;

END $ $ DELIMITER;

CALL usp_select_employees_by_seniority();

DROP PROCEDURE usp_select_employees_by_seniority;

--
DELIMITER $ $ CREATE PROCEDURE usp_select_employees_by_seniority(min_years_at_work INT) BEGIN
SELECT
    e.first_name,
    e.last_name,
    e.hire_date,
    ROUND(DATEDIFF(NOW(), e.hire_date) / 365.25) AS 'years'
FROM
    `employees` AS e
WHERE
    ROUND(DATEDIFF(NOW(), e.hire_date) / 365.25) > min_years_at_work
ORDER BY
    e.hire_date;

END $ $ DELIMITER;

CALL usp_select_employees_by_seniority(15);

DROP PROCEDURE usp_select_employees_by_seniority;

--
DELIMITER $ $ CREATE PROCEDURE usp_add_numbers(
    first_number INT,
    second_number INT,
    OUT result INT
) BEGIN
SET
    result := first_number + second_number;

END $ $ DELIMITER;

SET
    @result = 0;

CALL usp_add_numbers(5, 6, @result);

SELECT
    @result as 'result';

DROP PROCEDURE usp_add_numbers;