SELECT
    e.employee_id,
    e.first_name,
    IF(
        YEAR(p.start_date) >= 2005,
        NULL,
        p.name
    ) AS project_name
FROM
    employees AS e
    LEFT JOIN `employees_projects` AS ep ON ep.employee_id = e.employee_id
    LEFT JOIN `projects` AS p ON ep.project_id = p.project_id
WHERE
    e.employee_id = 24
ORDER BY
    p.name;