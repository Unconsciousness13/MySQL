SELECT 
    c.id,
    c.make,
    c.mileage,
    COUNT(co.id) AS count_of_courses,
    ROUND(AVG(co.bill), 2) AS avg_bill
FROM
    cars AS c
        LEFT JOIN
    courses AS co ON co.car_id = c.id
GROUP BY c.id
HAVING count_of_courses NOT LIKE 2
ORDER BY COUNT(co.id) DESC , c.id;