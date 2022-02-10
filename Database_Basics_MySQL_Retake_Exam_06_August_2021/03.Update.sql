UPDATE
    employees
SET
    salary = salary + 1000
WHERE
    age < 40
    AND salary <= 5000;