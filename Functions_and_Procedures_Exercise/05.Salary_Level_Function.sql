CREATE FUNCTION ufn_get_salary_level(salary DOUBLE(19, 4)) RETURNS VARCHAR(7) RETURN (
    CASE
        WHEN salary < 30000 THEN 'Low'
        WHEN salary <= 50000 THEN 'Average'
        ELSE 'High'
    END
);