SELECT
    c.country_name,
    r.river_name
FROM
    countries AS c
    LEFT JOIN countries_rivers AS cr ON cr.country_code = c.country_code
    LEFT JOIN rivers AS r ON r.id = cr.river_id
    JOIN continents AS cn ON c.continent_code = cn.continent_code
WHERE
    cn.continent_code = 'AF'
ORDER BY
    c.country_name
LIMIT
    5;