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


