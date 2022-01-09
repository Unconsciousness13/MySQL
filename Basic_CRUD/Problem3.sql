ALTER TABLE `employees` 
SET 
    `salary` = `salary` + 100
WHERE
    `job_title` = 'Manager';
 
SELECT 
    `salary`
FROM
    `employees`
ORDER BY `salary` ASC;