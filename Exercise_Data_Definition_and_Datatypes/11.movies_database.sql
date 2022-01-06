CREATE DATABASE `movies`;
USE `movies`;

CREATE TABLE `directors` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`director_name` VARCHAR(30) NOT NULL,
	`notes` TEXT
);

CREATE TABLE `genres` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`genre_name` VARCHAR(30) NOT NULL,
	`notes` TEXT
);

CREATE TABLE `categories` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`category_name` VARCHAR(30) NOT NULL,
	`notes` TEXT
);

CREATE TABLE `movies` (
	`id` INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`title` VARCHAR(30) NOT NULL,
	`director_id` INT UNSIGNED NOT NULL,
	`copyright_year` YEAR NOT NULL,
	`length` TIME NOT NULL,
	`genre_id` INT UNSIGNED NOT NULL,
	`category_id` INT UNSIGNED NOT NULL,
	`rating` DOUBLE NOT NULL DEFAULT 0,
	`notes` TEXT
);

INSERT INTO `movies`
	(`id`, `title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`)
VALUES
	(11,"Pako",2,'2016',22,1,2),
	(10,"Pako",2,'2015',21,1,2),
	(13,"Pako",2,'2011',20,1,2),
	(14,"Pako",2,'2013',23,1,2),
	(15,"Pako",1,'2018',21,1,2);

INSERT INTO `directors`
	(`id`, `director_name`, `notes`)
VALUES
	(1,'Spas','TIgara'),
	(2,'Spas','TIgara'),
	(3,'Spas','TIgara'),
	(4,'Spas','TIgara'),
	(5,'Spas','TIgara');

INSERT INTO `categories`
	(`id`, `category_name`)
VALUES
	(1,'Erotic'),
	(2,'Others'),
	(3,'Random'),
	(4,'Slave'),
	(5,'Hard');

INSERT INTO `genres`
	( `id`, `genre_name`, `notes`)
VALUES
	(2,'Horror','Scary'),
	(1,'Comedy','Funny'),
	(3,'Romance','Strong'),
	(4,'HI-FI','Crazy'),
	(5,'Action','Fight');

