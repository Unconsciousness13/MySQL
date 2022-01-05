CREATE TABLE `people`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `picture` BLOB,
    `height` FLOAT(5, 2),
    `weight` FLOAT(5, 2),
    `gender` CHAR(1) NOT NULL,
    `birthdate` DATE NOT NULL,
    `biography` TEXT
);

INSERT INTO `people`
VALUES
(1,'Gosho', 'pic', 1.77, 55.21,'m', '1981-04-25', 'Blabla' ),
(2,'Gosho1', 'pic', 1.77, 55.21,'m', '1981-04-26', 'Blabla' ),
(3,'Gosho2', 'pic', 1.77, 55.21,'m', '1981-05-24', 'Blabla' ),
(4,'Gosho3', 'pic', 1.77, 55.21,'m', '1981-07-24', 'Blabla' ),
(5,'GoshoSparenia', 'pic', 1.77, 55.21,'m', '1981-04-29', 'Blabla' )