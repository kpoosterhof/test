-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`klant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`klant` (
  `klant_id` INT NOT NULL AUTO_INCREMENT,
  `voornaam` VARCHAR(50) NOT NULL,
  `achternaam` VARCHAR(51) NOT NULL,
  `tussenvoegsel` VARCHAR(11) NULL,
  `email` VARCHAR(320) NOT NULL,
  `straatnaam` VARCHAR(26) NULL,
  `postcode` CHAR(6) NOT NULL,
  `toevoeging` VARCHAR(6) NULL,
  `huisnummer` INT NOT NULL,
  `woonplaats` VARCHAR(26) NULL,
  PRIMARY KEY (`klant_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bestelling`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bestelling` (
  `bestelling_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `klant_id` INT UNSIGNED NOT NULL,
  `artikel1_id` INT NOT NULL,
  `artikel1_naam` VARCHAR(100) NOT NULL,
  `artikel1_aantal` INT NOT NULL,
  `artikel1_prijs` DOUBLE NOT NULL,
  `artikel2_id` INT NULL,
  `artikel2_naam` VARCHAR(100) NULL,
  `artikel2_aantal` INT NULL,
  `artikel2_prijs` DOUBLE NULL,
  `artikel3_id` INT NULL,
  `artikel3_naam` VARCHAR(100) NULL,
  `artikel3_aantal` INT NULL,
  `artikel3_prijs` DOUBLE NULL,
  PRIMARY KEY (`bestelling_id`),
  CONSTRAINT `klant_id`
    FOREIGN KEY ()
    REFERENCES `mydb`.`klant` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
