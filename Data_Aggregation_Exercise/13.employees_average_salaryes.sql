CREATE TABLE avg_salaries AS SELECT department_id, AVG(salary) AS avg_salary FROM
    employees
WHERE
    manager_id != 42 AND salary > 30000
GROUP BY department_id;

UPDATE avg_salaries 
SET 
    avg_salary = avg_salary + 5000
WHERE
    department_id = 1;

SELECT 
    department_id, avg_salary
FROM
    avg_salaries
ORDER BY department_id; 