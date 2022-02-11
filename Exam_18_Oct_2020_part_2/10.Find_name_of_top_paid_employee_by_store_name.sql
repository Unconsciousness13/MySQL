DELIMITER $$
CREATE FUNCTION udf_top_paid_employee_by_store(store_name VARCHAR(50))
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
		RETURN(SELECT 
		CONCAT(first_name,
				' ',
				middle_name,
				'. ',
				last_name,
				' works in store for ',
				YEAR('2020-10-18') - YEAR(hire_date),
				' years') AS full_info
	FROM
		employees AS e
			JOIN
		stores AS s ON s.id = e.store_id
	WHERE
		s.name = store_name
	ORDER BY salary DESC
	LIMIT 1);
END