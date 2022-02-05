CREATE TABLE `countries`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL
);

CREATE TABLE `towns`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `country_id` INT NOT NULL,
    CONSTRAINT fk_towns_countries FOREIGN KEY (country_id) REFERENCES countries(id)
);