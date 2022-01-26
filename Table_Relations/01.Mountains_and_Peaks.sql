CREATE TABLE mountains (
    `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `name` VARCHAR(45)
);
CREATE TABLE peaks (
    `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `name` VARCHAR(45),
    `mountain_id` INT NOT NULL,
    CONSTRAINT `fk_peaks_mountains`
    FOREIGN KEY(`mountain_id`)
    REFERENCES `mountains`(`id`)
);
## If create withouth foreign key to add it
/* ALTER TABLE `peaks`
ADD CONSTRAINT `fk_peaks_mountains`
FOREIGN KEY (`mountain_id`)
REFERENCES `mountain_id`(`id`) */