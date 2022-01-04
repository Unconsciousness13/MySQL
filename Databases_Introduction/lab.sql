# from lab
CREATE DATABASE
gamebar;

#for delete database
DROP DATABASE `gamebar`

# again
CREATE TABLE `gamebar`.`employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NULL,
  `last_name` VARCHAR(50) NULL,
  PRIMARY KEY (`id`));

#next table 
CREATE TABLE `gamebar`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

  #last table with foreign key
  CREATE TABLE `gamebar`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `category_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `category_id_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `gamebar`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
#Inserting employees
INSERT INTO `gamebar`.`employees` (`first_name`, `last_name`) VALUES ('Ivan', 'Ivanov')('Pesho', 'Peshov');
#update name
UPDATE `gamebar`.`employees` SET `first_name` = 'Ivancho' WHERE (`id` = '1');
#delete name
DELETE FROM `gamebar`.`employees` WHERE (`id` = '2');




## CREATE TABLES LAB 
#1
/* 
CREATE DATABASE `gamebar`;
USE `gamebar`; */

CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL
);

CREATE TABLE `categories`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(40) NOT NULL
);

CREATE TABLE `products` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(40) NOT NULL,
    `category_id` INT NOT NULL
);

#2
INSERT INTO `employees`
VALUES
(1,'Pesho', 'Peshov'),
(2,'Pesho1', 'Peshov'),
(3,'Pesho2', 'Peshov');

#3 
ALTER TABLE `employees`
ADD COLUMN `middle_name` VARCHAR(20);

#4
ALTER TABLE `products`
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`);

#5
ALTER TABLE `employees`
	MODIFY middle_name varchar(100) NULL;

