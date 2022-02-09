SELECT 
    ad.name,
    (IF(HOUR(co.`start`) BETWEEN 6 AND 20,
        'Day',
        'Night')) AS day_time,
    co.bill,
    cl.full_name,
    ca.make,
    ca.model,
    cat.name AS category_name
FROM
    addresses AS ad
        JOIN
    courses AS co ON ad.id = co.from_address_id
        JOIN
    clients AS cl ON cl.id = co.client_id
        JOIN
    cars AS ca ON ca.id = co.car_id
		JOIN 
	categories as cat ON ca.category_id = cat.id
ORDER BY co.id;
