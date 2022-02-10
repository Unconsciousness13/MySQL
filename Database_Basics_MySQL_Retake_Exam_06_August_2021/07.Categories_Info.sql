SELECT 
    c.`name`,
    COUNT(g.id) AS games_count,
    ROUND(AVG(g.budget), 2) AS avg_budget,
    MAX(g.rating) AS max_rating
FROM
    categories AS c
        JOIN
    games_categories AS gc ON gc.category_id = c.id
        JOIN
    games AS g ON g.id = gc.game_id
GROUP BY c.id
HAVING max_rating >= 9.5
ORDER BY games_count DESC , c.`name` ASC;