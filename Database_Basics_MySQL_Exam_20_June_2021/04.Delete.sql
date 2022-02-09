DELETE c FROM clients AS c
        LEFT JOIN
    courses AS co ON co.client_id = c.id 
WHERE
    CHAR_LENGTH(full_name) > 3
    AND co.client_id IS NULL; 
