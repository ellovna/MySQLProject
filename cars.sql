-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car` ;
-- -----------------------------------------------------
-- Schema cars_test
-- -----------------------------------------------------
USE `car` ;

-- -----------------------------------------------------
-- Table `car`.`service_center`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`service_center` (
  `car_id` INT NOT NULL,
  `center_name` VARCHAR(45) NOT NULL,
  `center_location` VARCHAR(45) NULL,
  `contact_phone` INT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`electric_car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`electric_car` (
  `car_id` INT NOT NULL,
  `car_brand` VARCHAR(45) NULL,
  `car_model` VARCHAR(45) NULL,
  `battery_capacity` INT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_specification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_specification` (
  `car_id` INT NOT NULL,
  `engine_capacity` INT NULL,
  `fuel_type` VARCHAR(45) NULL,
  `transmission` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`insurance_company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`insurance_company` (
  `car_id` INT(15) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `contact_number` INT(15) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`cars_price_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`cars_price_list` (
  `car_id` INT NOT NULL,
  `car_brand` VARCHAR(45) NULL,
  `car_model` VARCHAR(45) NULL,
  `year` INT NULL,
  `price` INT NULL,
  `condition` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_model` (
  `car_id` BIGINT(15) NOT NULL,
  `model_name` VARCHAR(45) NOT NULL,
  `manufacture_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`service_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`service_record` (
  `record_id` INT NOT NULL,
  `service_date` INT NOT NULL,
  `service_details` VARCHAR(45) NOT NULL,
  `car_id` INT NULL,
  PRIMARY KEY (`record_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_type` (
  `car_id` INT NOT NULL,
  `type_name` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_accident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_accident` (
  `car_id` INT NOT NULL,
  `accident_date` INT NULL,
  `location` VARCHAR(45) NULL,
  `discription` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_owner` (
  `car_id` INT NOT NULL,
  `owner_name` VARCHAR(45) NOT NULL,
  `owner_address` VARCHAR(45) NULL,
  `owner_contact_number` INT NULL,
  `owner_email` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`, `owner_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car` (
  `id_cars` BIGINT(15) NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `service_center_car_id` INT NOT NULL,
  `electric_car_car_id` INT NOT NULL,
  `car_specification_car_id` INT NOT NULL,
  `insurance_company_car_id` INT(15) NOT NULL,
  `cars_price_list_car_id` INT NOT NULL,
  `car_model_car_id` BIGINT(15) NOT NULL,
  `service_record_record_id` INT NOT NULL,
  `car_type_car_id` INT NOT NULL,
  `car_accident_car_id` INT NOT NULL,
  `car_owner_car_id` INT NOT NULL,
  `car_owner_owner_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cars`),
  INDEX `fk_car_service_center1_idx` (`service_center_car_id` ASC) VISIBLE,
  INDEX `fk_car_electric_car1_idx` (`electric_car_car_id` ASC) VISIBLE,
  INDEX `fk_car_car_specification1_idx` (`car_specification_car_id` ASC) VISIBLE,
  INDEX `fk_car_insurance_company1_idx` (`insurance_company_car_id` ASC) VISIBLE,
  INDEX `fk_car_cars_price_list1_idx` (`cars_price_list_car_id` ASC) VISIBLE,
  INDEX `fk_car_car_model1_idx` (`car_model_car_id` ASC) VISIBLE,
  INDEX `fk_car_service_record1_idx` (`service_record_record_id` ASC) VISIBLE,
  INDEX `fk_car_car_type1_idx` (`car_type_car_id` ASC) VISIBLE,
  INDEX `fk_car_car_accident1_idx` (`car_accident_car_id` ASC) VISIBLE,
  INDEX `fk_car_car_owner1_idx` (`car_owner_car_id` ASC, `car_owner_owner_name` ASC) VISIBLE,
  CONSTRAINT `fk_car_service_center1`
    FOREIGN KEY (`service_center_car_id`)
    REFERENCES `car`.`service_center` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_electric_car1`
    FOREIGN KEY (`electric_car_car_id`)
    REFERENCES `car`.`electric_car` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_specification1`
    FOREIGN KEY (`car_specification_car_id`)
    REFERENCES `car`.`car_specification` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_insurance_company1`
    FOREIGN KEY (`insurance_company_car_id`)
    REFERENCES `car`.`insurance_company` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_cars_price_list1`
    FOREIGN KEY (`cars_price_list_car_id`)
    REFERENCES `car`.`cars_price_list` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_model1`
    FOREIGN KEY (`car_model_car_id`)
    REFERENCES `car`.`car_model` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_service_record1`
    FOREIGN KEY (`service_record_record_id`)
    REFERENCES `car`.`service_record` (`record_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_type1`
    FOREIGN KEY (`car_type_car_id`)
    REFERENCES `car`.`car_type` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_accident1`
    FOREIGN KEY (`car_accident_car_id`)
    REFERENCES `car`.`car_accident` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_owner1`
    FOREIGN KEY (`car_owner_car_id` , `car_owner_owner_name`)
    REFERENCES `car`.`car_owner` (`car_id` , `owner_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
