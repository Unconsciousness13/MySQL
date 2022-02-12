SELECT 
    ph.id,
    ph.`date` AS date_and_time,
    ph.description,
    COUNT(co.comment) AS commentsCount
FROM
    photos AS ph
        JOIN
    comments AS co ON co.photo_id = ph.id
GROUP BY ph.id
ORDER BY commentsCount DESC , ph.id ASC
LIMIT 5;