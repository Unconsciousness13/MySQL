SELECT 
    t.name AS team_name,
    a.name AS address_name,
    CHAR_LENGTH(a.name) AS count_of_characters
FROM
    addresses AS a
        JOIN
    offices AS o ON a.id = o.address_id
        JOIN
    teams AS t ON t.office_id = o.id
WHERE
    o.website IS NOT NULL
ORDER BY t.name , a.name;