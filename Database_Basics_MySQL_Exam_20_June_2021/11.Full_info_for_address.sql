DELIMITER $ $ CREATE PROCEDURE udp_courses_by_address(address_name VARCHAR(100)) BEGIN
SELECT
    ad.name,
    cl.full_name AS full_names,
    (
        CASE
            WHEN co.bill <= 20 THEN 'Low'
            WHEN co.bill <= 30 THEN 'Medium'
            ELSE 'High'
        END
    ) AS level_of_bill,
    ca.make,
    ca.condition,
    cat.name AS cat_name
FROM
    addresses AS ad
    JOIN courses as co ON co.from_address_id = ad.id
    JOIN cars as ca ON co.car_id = ca.id
    JOIN clients as cl ON cl.id = co.client_id
    JOIN categories as cat ON cat.id = ca.category_id
WHERE
    ad.name = address_name
ORDER BY
    ca.make,
    cl.full_name;

END $ $ CALL udp_courses_by_address('700 Monterey Avenue');