DELETE FROM `employees`
	WHERE `department_id` IN (2, 1);

SELECT *
	FROM `employees`
	ORDER BY `id` ASC;