SELECT 
    starting_point AS route_starting_point,
    end_point AS route_ending_point,
    r.leader_id,
    CONCAT(first_name, ' ', last_name) AS leader_name
FROM
    routes AS r
        JOIN
    campers AS c ON c.id = r.leader_id;