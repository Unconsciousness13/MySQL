DELETE FROM
    employees
WHERE
    id NOT LIKE manager_id
    AND salary >= 6000;