SELECT 
    e.first_name, e.last_name, e.department_id
FROM
    employees AS e
WHERE
    e.salary > (SELECT 
            AVG(es.salary)
        FROM
            employees AS es
        WHERE
            e.department_id = es.department_id
GROUP BY es.department_id)
ORDER BY e.department_id ASC, e.employee_id ASC
LIMIT 10;