SELECT 
    CONCAT(u.id, ' ', u.username) AS id_username, email
FROM
    users AS u
        JOIN
    users_photos AS up ON up.user_id = u.id
        JOIN
    photos AS p ON p.id = up.photo_id
WHERE
    u.id = p.id
ORDER BY u.id ASC;
