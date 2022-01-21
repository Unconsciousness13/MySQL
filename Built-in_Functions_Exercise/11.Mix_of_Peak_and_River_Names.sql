SELECT
    pea.peak_name,
    riv.river_name,
    LOWER(
        CONCAT(
            pea.peak_name,
            SUBSTRING(riv.river_name, 2, CHAR_LENGTH(riv.river_name))
        )
    ) AS mix
FROM
    rivers AS riv,
    peaks AS pea
WHERE
    RIGHT(pea.peak_name, 1) = LEFT(riv.river_name, 1)
ORDER BY
    mix;