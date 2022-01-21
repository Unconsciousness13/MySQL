---- regex

SELECT 
    user_name,
    REGEXP_REPLACE(email, '.*@', '') AS 'email provider'
FROM
    users
ORDER BY `Email Provider` , user_name;


---- other

SELECT
    user_name,
    SUBSTRING(email, LOCATE('@', email) + 1) AS `Email Provider`
FROM
    users
ORDER BY
    `Email Provider`,
    user_name;