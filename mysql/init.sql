-- FROM

CREATE DATABASE IF not exists `from_db`;

CREATE TABLE IF not exists `from_db`.`from_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 `deleted_at`       DATETIME(0) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test1', '0000-01-01 00:00:00'); -- duplicate
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test2', '0000-01-01 00:00:00');
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test3', '0000-01-01 00:00:00');
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test4', '0000-01-01 00:00:00');
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test5', '0000-01-01 00:00:00');
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test6', '0000-01-01 00:00:00');
INSERT `from_db`.`from_table` (`name`, `deleted_at`) VALUES ('test7', '0000-01-01 00:00:00');
CREATE UNIQUE INDEX `index_name` on `from_db`.`from_table`(`name`);

-- TO

CREATE DATABASE IF not exists `to_db`;

CREATE TABLE IF not exists `to_db`.`to_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 `deleted_at`       DATETIME(0) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT `to_db`.`to_table` (`name`, `deleted_at`) VALUES ('test4', '0000-01-01 00:00:00'); -- duplicate
INSERT `to_db`.`to_table` (`name`, `deleted_at`) VALUES ('test5', '0000-01-01 00:00:00'); -- duplicate
CREATE UNIQUE INDEX `index_name` on `to_db`.`to_table`(`name`);
