SELECT 
    g.name,
    g.release_date,
    CONCAT(SUBSTRING(g.description, 1, 10), '...') AS summary,
    CASE
        WHEN MONTH(g.release_date) < 4 THEN 'Q1'
        WHEN MONTH(g.release_date) < 7 THEN 'Q2'
        WHEN MONTH(g.release_date) < 10 THEN 'Q3'
        ELSE  'Q4'
    END AS `quarter`,
    t.name AS team_name
FROM
    games AS g
        JOIN
    teams AS t ON g.team_id = t.id
WHERE
    RIGHT(g.name, 1) = '2'
        AND MONTH(g.release_date) % 2 = 0
        AND YEAR(g.release_date) LIKE '2022'
ORDER BY `quarter`;