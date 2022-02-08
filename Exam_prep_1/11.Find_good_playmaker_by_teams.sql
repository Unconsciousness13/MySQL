CREATE PROCEDURE udp_find_playmaker(min_dribble_points INT, team_name VARCHAR(45)) BEGIN
SELECT
    CONCAT(p.first_name, ' ', p.last_name) as full_name,
    p.age,
    p.salary,
    s.dribbling,
    s.speed,
    t.name
FROM
    players AS p
    JOIN skills_data as s on s.id = p.skills_data_id
    JOIN teams as t ON t.id = p.team_id
WHERE
    s.dribbling > min_dribble_points
    AND t.name = team_name
    AND s.speed >(
        SELECT
            avg(s.speed)
        FROM
            skills_data AS s
            join players AS p on s.id = p.skills_data_id
    )
ORDER BY
    s.speed DESC
LIMIT
    1;

END