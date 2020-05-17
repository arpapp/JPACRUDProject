-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema barsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `barsdb` ;

-- -----------------------------------------------------
-- Schema barsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `barsdb` DEFAULT CHARACTER SET utf8 ;
USE `barsdb` ;

-- -----------------------------------------------------
-- Table `bar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bar` ;

CREATE TABLE IF NOT EXISTS `bar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NOT NULL,
  `rating` INT NOT NULL,
  `blacked_out_at` VARCHAR(45) NOT NULL,
  `created` DATETIME NOT NULL,
  `activities` VARCHAR(200) NULL,
  `other_comments` VARCHAR(200) NULL,
  `picture` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS barsuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'barsuser'@'localhost' IDENTIFIED BY 'barsuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'barsuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `bar`
-- -----------------------------------------------------
START TRANSACTION;
USE `barsdb`;
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (1, 'Outer', 'Kochi', 'Japan', 10, 'Yes', '2020-01-01 10:10:10', 'Dancing, DJing', 'Small dance floor, one room bar', 'https://i.imgur.com/Z3YRrRp.jpg');
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (2, 'Round1', 'Kochi', 'Japan', 8, 'No', '2020-01-01 10:10:10', 'Karaoke', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (3, 'Beach Bar MAO5', 'Kochi', 'Japan', 4, 'No', '2020-01-01 10:10:10', 'Lounging', 'Tables are in sand boxes to simulate a beach', NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (4, 'Hirome', 'Kochi', 'Japan', 10, 'Yes', '2020-01-01 10:10:10', 'Dining', 'Cafeteria hall but local hot spot for drinking', NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (5, 'NB2', 'Seoul', 'South Korea', 8, 'Yes', '2020-01-01 10:10:10', 'Dancing', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (6, 'Giraffe', 'Osaka', 'Japan', 7, 'Yes', '2020-01-01 10:10:10', 'Dancing', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (7, 'Sam & Dave', 'Osaka', 'Japan', 3, 'No', '2020-01-01 10:10:10', 'Dancing', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (8, 'Club Camelot', 'Tokyo', 'Japan', 5, 'No', '2020-01-01 10:10:10', 'Dancing', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (9, 'The Blarney Stone', 'Osaka', 'Japan', 2, 'No', '2020-01-01 10:10:10', 'Lounging', 'An Irish pub in the middle of Japan', NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (10, 'G3', 'Osaka', 'Japan', 3, 'Yes', '2020-01-01 10:10:10', NULL, NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (11, 'Thursday Party', 'Seoul', 'Korea', 6, 'No', '2020-01-01 10:10:10', 'Pool', NULL, NULL);
INSERT INTO `bar` (`id`, `name`, `city`, `country`, `rating`, `blacked_out_at`, `created`, `activities`, `other_comments`, `picture`) VALUES (12, 'Sounds Bar Braids Berry', 'Shimanto', 'Japan', 1, 'No', '2020-01-01 10:10:10', 'None', NULL, NULL);

COMMIT;

