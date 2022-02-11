UPDATE employees AS e
        JOIN
    stores AS s 
SET 
    e.salary = e.salary - 500,
    e.manager_id = 3
WHERE
    YEAR(e.hire_date) >= 2003
        AND e.store_id NOT IN (5 , 14);