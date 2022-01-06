CREATE DATABASE `car_rental`;
USE `car_rental`;

CREATE TABLE `categories` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`category` VARCHAR(30) NOT NULL,
	`daily_rate` DOUBLE NOT NULL,
	`weekly_rate` DOUBLE NOT NULL,
	`monthly_rate` DOUBLE NOT NULL,
	`weekend_rate` DOUBLE NOT NULL
);

INSERT INTO `categories`
		(`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`)
	VALUES 
		('Category 1', 1.1, 2.1, 3.1, 4.1),
		('Category 2', 1.2, 2.2, 3.2, 4.2),
		('Category 3', 1.3, 2.3, 3.3, 4.3);

CREATE TABLE `cars` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`plate_number` VARCHAR(20) NOT NULL UNIQUE,
	`make` VARCHAR(20) NOT NULL,
	`model` VARCHAR(20) NOT NULL,
	`car_year` YEAR NOT NULL,
	`category_id` INT UNSIGNED NOT NULL,
	`doors` TINYINT UNSIGNED NOT NULL,
	`picture` BLOB,
	`car_condition` VARCHAR(20),
	`available` BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO `cars`
		(`plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`, `car_condition`)
	VALUES 
		('Plate Num 1', 'Maker 1', 'Model 1', '1970', 1, 2, ''),
		('Plate Num 2', 'Maker 2', 'Model 2', '1980', 2, 4, 'Scrap'),
		('Plate Num 3', 'Maker 3', 'Model 3', '1990', 3, 5, 'Good');

CREATE TABLE `employees` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`first_name` VARCHAR(30) NOT NULL,
	`last_name` VARCHAR(30) NOT NULL,
	`title` VARCHAR(30) NOT NULL,
	`notes` VARCHAR(128)
);

INSERT INTO `employees`
		(`first_name`, `last_name`, `title`, `notes`)
	VALUES 
		('Gosho', 'Goshev', 'Boss', ''),
		('Pesho', 'Peshev', 'Supervisor', ''),
		('Bai', 'Ivan', 'Worker', 'Can do any work');

CREATE TABLE `customers` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`driver_licence_number` VARCHAR(30) NOT NULL,
	`full_name` VARCHAR(60) NOT NULL,
	`address` VARCHAR(50) NOT NULL,
	`city` VARCHAR(20) NOT NULL,
	`zip_code` INT(4) NOT NULL,
	`notes` VARCHAR(128)
);

INSERT INTO `customers`
		(`driver_licence_number`, `full_name`, `address`, `city`, `zip_code`, `notes`)
	VALUES 
		('CC3333CK', 'Boko Mutrata', 'Bankya', 'Sofia', 1000, 'Debel pomiqr'),
		('BP1111CA', 'Kmeto Vratsa', 'Komplekso', 'Vratsa', 3000, 'Mashina'),
		('1010KHH', 'Emo Python', 'Home', 'Barcelona', 08000, 'AI');

CREATE TABLE `rental_orders` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`employee_id` INT UNSIGNED NOT NULL,
	`customer_id` INT UNSIGNED NOT NULL,
	`car_id` INT UNSIGNED NOT NULL,
	`car_condition` VARCHAR(20),
	`tank_level` DOUBLE,
	`kilometrage_start` DOUBLE,
	`kilometrage_end` DOUBLE,
	`total_kilometrage` DOUBLE,
	`start_date` DATE,
	`end_date` DATE,
	`total_days` INT UNSIGNED,
	`rate_applied` DOUBLE,
	`tax_rate` DOUBLE,
	`order_status` VARCHAR(30),
	`notes` VARCHAR(128)
);

INSERT INTO `rental_orders`
		(`employee_id`, `customer_id`, `car_id`, `car_condition`, `start_date`)
	VALUES 
		(1, 3, 2, 'Good', NOW()),
		(2, 1, 3, 'Bad', NOW()),
		(3, 2, 1, 'OK', NOW());
