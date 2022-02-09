DELIMITER $ $ CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR (20)) RETURNS INTEGER DETERMINISTIC BEGIN RETURN(
    SELECT
        COUNT(cl.phone_number) AS `count`
    from
        clients AS cl
        JOIN courses as co ON co.client_id = cl.id
    WHERE
        cl.phone_number = phone_num
);

END;

$ $
SELECT
    udf_courses_by_client ('(803) 6386812') as `count`;