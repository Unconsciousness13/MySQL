SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.address,
    o.order_datetime AS order_date
FROM
    orders AS o
    JOIN customers AS c on c.id = o.customer_id
WHERE
    YEAR(o.order_datetime) LIKE '2018'
ORDER BY
    full_name DESC