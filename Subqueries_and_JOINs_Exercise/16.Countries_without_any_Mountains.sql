SELECT
    COUNT(*) as 'country_count'
FROM
    (
        SELECT
            mc.country_code AS 'mc_country_code'
        FROM
            `mountains_countries` AS mc
        GROUP BY
            mc.country_code
    ) AS d
    RIGHT JOIN `countries` AS c ON c.country_code = d.mc_country_code
WHERE
    d.mc_country_code IS NULL;