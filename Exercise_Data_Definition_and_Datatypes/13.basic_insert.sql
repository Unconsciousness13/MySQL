CREATE DATABASE `soft_uni`;

CREATE TABLE `towns`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL
);

CREATE TABLE `addresses` (
		`id` INT PRIMARY KEY AUTO_INCREMENT,
        `address_text` VARCHAR(100) NOT NULL,
        `town_id` INT NOT NULL,
        CONSTRAINT fk_addresses_towns
        FOREIGN KEY (`town_id`) REFERENCES `towns`(`id`)
);

CREATE TABLE `departments`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL
);

CREATE TABLE `employees`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(30) NOT NULL,
    `middle_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `job_title` VARCHAR(20) ,
    `salary` DECIMAL(10,2),
    `department_id` INT ,
    `hire_date` DATE,
    `address_id` INT,
    CONSTRAINT fk_employees_departments
    FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`),
    CONSTRAINT fk_employees_addresses
    FOREIGN KEY (`address_id`) REFERENCES `addresses`(`id`)
);


INSERT INTO `towns`(`name`)
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO `departments`(`name`)
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');


INSERT INTO `employees` (`id`, `first_name`, `middle_name`, `last_name`,`job_title`, `salary`,`department_id`, `hire_date`, `address_id` )
VALUES
(1, 'Ivan', 'Ivanov', 'Ivanov' , '.NET Developer', 3500.00, 4, '2013-02-01', NULL),
(2, 'Petar', 'Petrov', 'Petrov' , 'Senior Engineer', 4000.00, 1, '2004-03-02' , NULL),
(3, 'Maria', 'Petrova', 'Ivanova' , 'Intern', 525.25, 5, '2016-08-28' , NULL),
(4, 'Georgi', 'Terziev', 'Ivanov' , 'CEO', 3000.00, 2, '2007-12-09' , NULL),
(5, 'Peter', 'Pan', 'Pan' , 'Intern', 599.88, 3, '2016-08-28' , NULL);