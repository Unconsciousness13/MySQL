SELECT 
    REVERSE(s.name) AS reversed_name,
    CONCAT(UPPER(t.name), '-', a.name) AS full_address,
    COUNT(e.id) AS employees_count
FROM
    employees AS e
        JOIN
    stores AS s ON s.id = e.store_id
        JOIN
    addresses AS a ON a.id = s.address_id
        JOIN
    towns AS t ON t.id = a.town_id
GROUP BY s.id
ORDER BY full_address ASC;
