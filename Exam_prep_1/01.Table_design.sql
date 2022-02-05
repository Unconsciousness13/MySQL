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

CREATE TABLE `stadiums`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `capacity` INT NOT NULL,
    `town_id` INT NOT NULL,
    CONSTRAINT fk_stadiums_towns FOREIGN KEY (town_id) REFERENCES towns(id)
);

CREATE TABLE `teams`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `established` DATE NOT NULL,
    `fan_base` BIGINT NOT NULL DEFAULT 0,
    `stadium_id` INT NOT NULL,
    CONSTRAINT fk_teams_towns FOREIGN KEY (stadium_id) REFERENCES stadiums(id)
);

CREATE TABLE skills_data(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `dribling` INT NOT NULL DEFAULT 0,
    `pace` INT NOT NULL DEFAULT 0,
    `passing` INT NOT NULL DEFAULT 0,
    `shooting` INT NOT NULL DEFAULT 0,
    `speed` INT NOT NULL DEFAULT 0,
    `strength` INT NOT NULL DEFAULT 0
);

CREATE TABLE `players`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(10) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `age` INT NOT NULL DEFAULT 0,
    `position` CHAR(1) NOT NULL,
    `salary` DECIMAL(10, 2) NOT NULL DEFAULT 0,
    `hire_date` DATETIME,
    `skill_data_id` INT NOT NULL,
    -- skill datas
    `team_id` INT NOT NULL,
    -- teams
    CONSTRAINT fk_team_id_teams FOREIGN KEY (team_id) REFERENCES teams(id),
    CONSTRAINT fk_skill_data_id_skills_data FOREIGN KEY (skill_data_id) REFERENCES skills_data(id)
);

CREATE TABLE `coaches`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(10) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `salary` DECIMAL(10, 2) NOT NULL DEFAULT 0,
    `coach_level` INT NOT NULL DEFAULT 0
);

CREATE TABLE `players_coaches`(
    `player_id` INT NOT NULL,
    `coach_id` INT NOT NULL,
    CONSTRAINT fk_player_id_players FOREIGN KEY (player_id) REFERENCES players(id),
    CONSTRAINT fk_coach_id_coaches FOREIGN KEY (coach_id) REFERENCES coaches(id)
);