DELIMITER $ $ CREATE FUNCTION udf_users_photos_count(username VARCHAR(30)) RETURNS INT DETERMINISTIC BEGIN RETURN(
    SELECT
        count(p.id)
    FROM
        photos AS p
        JOIN users_photos AS up ON up.photo_id = p.id
        JOIN users AS u ON u.id = up.user_id
    WHERE
        u.username = username
);

END $ $
SELECT
    udf_users_photos_count('eblagden21') AS photosCount;