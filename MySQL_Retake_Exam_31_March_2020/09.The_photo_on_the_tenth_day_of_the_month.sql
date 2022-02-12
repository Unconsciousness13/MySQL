SELECT 
    CONCAT(SUBSTRING(p.description, 1, 30), '...') AS summary,
    `date`
FROM
    photos AS p
WHERE
    DAY(p.`date`) = 10
ORDER BY p.`date` DESC;