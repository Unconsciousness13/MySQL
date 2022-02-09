SELECT 
    cl.full_name,
    COUNT(co.client_id) AS count_of_cars,
    SUM(co.bill) AS total_sum
FROM
    clients AS cl
        RIGHT JOIN
    courses AS co ON co.client_id = cl.id
GROUP BY co.client_id
HAVING count_of_cars > 1
    AND SUBSTR(cl.full_name, 2, 1) = 'a'
ORDER BY full_name;
