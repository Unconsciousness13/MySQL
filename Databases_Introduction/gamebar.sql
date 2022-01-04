#create schema
CREATE schema gamebar1;

#creating table
CREATE TABLE `employees` (
	`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

#insert col value
INSERT INTO employees (`name`)
VALUES ('Ivan');


#view all data in table employees
SELECT * 
FROM employees;

#create table people

CREATE TABLE people
(
    id INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);