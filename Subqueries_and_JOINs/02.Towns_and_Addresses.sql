SELECT 
    t.town_id, `name` AS town_name, a.address_text
FROM
    towns AS t
        JOIN
    addresses AS a ON a.town_id = t.town_id
WHERE
    t.`name` = 'San Francisco'
        OR t.`name` = 'Sofia'
        OR t.`name` = 'Carnation'
ORDER BY t.town_id , a.address_text;