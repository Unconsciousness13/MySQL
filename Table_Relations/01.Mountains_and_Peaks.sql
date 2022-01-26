CREATE TABLE `mountains` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45)
);

CREATE TABLE `peaks` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45),
    `mountain_id` INT
);

ALTER TABLE `peaks`
ADD CONSTRAINT 
FOREIGN KEY (`mountain_id`)
REFERENCES `mountains`(`id`);