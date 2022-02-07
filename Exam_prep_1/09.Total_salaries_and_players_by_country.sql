SELECT 
    c.name,
    COUNT(p.id) AS total_count_of_players,
    SUM(p.salary) AS total_sum_of_salaries
FROM
    players AS p
        RIGHT JOIN
    teams AS te ON p.team_id = te.id
        RIGHT JOIN
    stadiums AS s ON te.stadium_id = s.id
        RIGHT JOIN
    towns AS t ON t.id = s.town_id
        RIGHT JOIN
    countries AS c ON c.id = t.country_id
GROUP BY c.name
ORDER BY COUNT(p.id) DESC , c.name ASC;