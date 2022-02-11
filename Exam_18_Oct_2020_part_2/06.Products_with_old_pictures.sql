SELECT 
    p.name AS product_name,
    p.price AS price,
    p.best_before AS best_before,
    CONCAT(SUBSTRING(p.description, 1, 10), '...') AS short_description,
    pic.url AS url
FROM
    products AS p
        JOIN
    pictures AS pic ON pic.id = p.picture_id
WHERE
    CHAR_LENGTH(p.description) > 100
        AND YEAR(pic.added_on) < 2019
        AND p.price > 20
ORDER BY p.price DESC;
    