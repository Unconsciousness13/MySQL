SELECT 
    p.id,
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    p.age,
    position,
    p.hire_date
FROM
    players AS p
        JOIN
    skills_data AS sd ON sd.id = p.skills_data_id
WHERE
    sd.strength > 50 AND position LIKE 'A'
        AND DATE(hire_date) IS NULL
        AND age < 23
ORDER BY salary , age;