CREATE FUNCTION udf_stadium_players_count(stadium_name VARCHAR(30)) RETURNS INT BEGIN DECLARE p_count INT;

SET
    p_count :=(
        SELECT
            count(p.id)
        FROM
            stadiums AS s
            LEFT JOIN teams AS t ON t.stadium_id = s.id
            LEFT JOIN players as p ON p.team_id = t.id
        WHERE
            s.name = stadium_name
        GROUP by
            s.name
    );

RETURN p_count;

END;