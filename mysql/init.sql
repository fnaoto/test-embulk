CREATE DATABASE IF not exists `from_db`;
CREATE DATABASE IF not exists `to_db`;

CREATE TABLE IF not exists `from_db`.`from_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT `from_db`.`from_table` (`name`) VALUES ('test');
