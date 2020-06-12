-- FROM

CREATE DATABASE IF not exists `from_db`;

CREATE TABLE IF not exists `from_db`.`from_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT `from_db`.`from_table` (`name`) VALUES ('test1'); -- duplicate
INSERT `from_db`.`from_table` (`name`) VALUES ('test2');
INSERT `from_db`.`from_table` (`name`) VALUES ('test3');
CREATE UNIQUE INDEX `index_name` on `from_db`.`from_table`(`name`);

-- TO

CREATE DATABASE IF not exists `to_db`;

CREATE TABLE IF not exists `to_db`.`to_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT `to_db`.`to_table` (`name`) VALUES ('test4');
INSERT `to_db`.`to_table` (`name`) VALUES ('test5');
INSERT `to_db`.`to_table` (`name`) VALUES ('test1'); -- duplicate
CREATE UNIQUE INDEX `index_name` on `to_db`.`to_table`(`name`);
