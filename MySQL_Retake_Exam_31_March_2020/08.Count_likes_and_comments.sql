SELECT 
    p.id AS photo_id,
    (SELECT 
            COUNT(l.photo_id)
        FROM
            likes AS l
                JOIN
            photos AS phot2 ON phot2.id = l.photo_id
        WHERE
            phot2.id = p.id) AS likes_count,
    (SELECT 
            COUNT(photo_id)
        FROM
            comments AS c
                JOIN
            photos AS phot3 ON phot3.id = c.photo_id
        WHERE
            phot3.id = p.id) AS comments_count
FROM
    photos AS p
GROUP BY p.id
ORDER BY likes_count DESC , comments_count DESC , p.id ASC;
