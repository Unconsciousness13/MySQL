SELECT 
    first_name, last_name, hire_date, d.name AS dept_name
FROM
    employees AS e
        JOIN
    departments AS d ON d.department_id = e.department_id
WHERE
    d.name IN ('Sales' , 'Finance')
ORDER BY hire_date ASC;