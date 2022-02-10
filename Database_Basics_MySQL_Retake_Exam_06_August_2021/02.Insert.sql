INSERT INTO
    `games`(name, rating, budget, team_id)
SELECT
    lower(reverse(substring(name, 2))) AS name,
    id AS rating,
    leader_id * 1000 AS budget,
    id AS team_id
FROM
    teams
WHERE
    id BETWEEN 1
    AND 9;