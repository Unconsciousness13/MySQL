ALTER TABLE `users` 
	MODIFY COLUMN `last_login_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `users`
	CHANGE COLUMN `last_login_time` `last_login_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;