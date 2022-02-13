CREATE FUNCTION udf_customer_products_count(`name` VARCHAR(30)) RETURNS INT DETERMINISTIC BEGIN RETURN(
    SELECT
        count(*)
    FROM
        customers AS c
        JOIN orders AS o ON o.customer_id = c.id
        JOIN orders_products as op ON op.order_id = o.id
        JOIN products as p ON p.id = op.product_id
    WHERE
        c.first_name = `name`
);

END