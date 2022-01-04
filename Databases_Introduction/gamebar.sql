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


