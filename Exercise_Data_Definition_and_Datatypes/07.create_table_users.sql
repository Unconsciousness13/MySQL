CREATE TABLE `users`(	
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(30),
    `password` VARCHAR(26),
    `profile_picture` BLOB,
    `last_login_time` DATE,
    `is_deleted` BOOL
);

INSERT INTO `users`
VALUES
(1,'Pesho','123451','pic', '2012-07-07', false),
(2,'Pesho2','123415','pic', '2012-07-07', false),
(3,'Pesho4','123415','pic', '2012-07-07', false),
(4,'Pesho5','123345','pic', '2012-07-07', false),
(5,'Pesho6','122345','pic', '2012-07-07', false)