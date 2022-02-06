UPDATE
    coaches as c
    JOIN players_coaches aAS pc ON pc.coach_id = c.id
SET
    c.coach_level = coach_level + 1
WHERE
    c.coach_level >= 1
    AND c.first_name LIKE 'A%';