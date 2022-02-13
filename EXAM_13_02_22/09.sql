SELECT
    COUNT(p.id) AS items_count,
    c.name AS `name`,
    SUM(p.quantity_in_stock) AS total_quantity
FROM
    categories AS c
    JOIN products AS p ON p.category_id = c.id
GROUP BY
    c.id
ORDER BY
    items_count DESC,
    total_quantity ASC
LIMIT
    5;