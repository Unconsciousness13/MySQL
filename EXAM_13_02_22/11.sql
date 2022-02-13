CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50)) BEGIN
UPDATE
    products
SET
    price = price * 0.7
WHERE
    id IN (
        SELECT
            *
        FROM
            (
                SELECT
                    p.`id`
                FROM
                    products AS p
                    JOIN categories AS ca ON p.category_id = ca.id
                    JOIN reviews AS re ON p.review_id = re.id
                WHERE
                    re.rating < 4
                    AND ca.name = category_name
            ) as v
    );

END