--- regex 
SELECT
    *
FROM
    towns
WHERE
    `name` REGEXP '^[^RrBbDd]'
ORDER BY
    `name` ASC;

--- other solution 
SELECT
    town_id,
    name
FROM
    towns
WHERE
    LEFT(name, 1) NOT IN ('R', 'B', 'D')
ORDER BY
    name

--- Other solution 
SELECT 
    *
FROM
    towns
WHERE
    UPPER(`name`) NOT LIKE 'R%' 
    AND LOWER(`name`) NOT LIKE 'b%' 
    AND LOWER(`name`) NOT LIKE  'd%'  
ORDER BY name ASC;
