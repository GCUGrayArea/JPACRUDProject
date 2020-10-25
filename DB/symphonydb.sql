-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema symphonydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `symphonydb` ;

-- -----------------------------------------------------
-- Schema symphonydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `symphonydb` ;
USE `symphonydb` ;

-- -----------------------------------------------------
-- Table `symphony`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `symphony` ;

CREATE TABLE IF NOT EXISTS `symphony` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `composer` VARCHAR(45) NOT NULL,
  `musical_key` VARCHAR(45) NULL,
  `movements` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS symphonydbuser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'symphonydbuser' IDENTIFIED BY 'symphonydbuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'symphonydbuser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `symphony`
-- -----------------------------------------------------
START TRANSACTION;
USE `symphonydb`;
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (1, 'Symphony No. 2 \"Resurrection\"', 'Gustav Mahler', 'C minor', 5);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (12, 'Symphony No. 3 \"Le Divin Poème\"', 'Alexander Scriabin', 'C minor', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (3, 'A Faust Symphony in three character pictures', 'Franz Liszt', 'C major', 3);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (11, 'Symphony in C', 'Igor Stravinsky', 'C major', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (6, 'Symphony No. 96 \"Miracle\"', 'Joseph Haydn', 'D major', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (7, 'Symphony No. 38 \"Prague\"', 'Wolfgang Amadeus Mozart', 'D major', 3);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (5, 'Symphony No. 5 \"Reformation\"', 'Felix Mendelssohn', 'D minor', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (2, 'Symphony No. 26 \"Lamentatione\"', 'Joseph Haydn', 'D minor', 3);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (4, 'Symphony No. 8 \"Symphony of a Thousand\"', 'Gustav Mahler', 'E flat major', 2);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (10, 'Symphony No. 3 \"The First of May\"', 'Dmitri Shostakovich', 'E flat major', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (8, 'Symphony No. 6', 'Nikolai Myaskovsky', 'E flat minor', 4);
INSERT INTO `symphony` (`id`, `name`, `composer`, `musical_key`, `movements`) VALUES (9, 'Symphony No. 6', 'Sergei Prokofiev', 'E flat minor', 3);

COMMIT;

