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
-- Table `car`.`car_accident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_accident` (
  `accident_id` INT NOT NULL,
  `car_id` INT NULL,
  `accident_date` INT NULL,
  `location` VARCHAR(45) NULL,
  `discription` VARCHAR(45) NULL,
  PRIMARY KEY (`accident_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`electric_car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`electric_car` (
  `car_id` INT NOT NULL,
  `car_brand` VARCHAR(45) NOT NULL,
  `car_model` VARCHAR(45) NOT NULL,
  `battery_capacity` INT NOT NULL,
  `year` INT NOT NULL,
  `price` INT NOT NULL,
  `electric_carcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`service_center`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`service_center` (
  `center_id` INT NOT NULL,
  `center_name` VARCHAR(45) NOT NULL,
  `center_location` VARCHAR(45) NOT NULL,
  `center_contact_info` VARCHAR(45) NOT NULL,
  `center_id` INT NOT NULL,
  PRIMARY KEY (`center_id`, `center_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_model` (
  `model_id` BIGINT(15) NOT NULL,
  `model_name` VARCHAR(45) NOT NULL,
  `manufacture_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`model_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_owner` (
  `owner_id` INT NOT NULL,
  `owner_name` VARCHAR(45) NOT NULL,
  `owner_address` VARCHAR(45) NOT NULL,
  `owner_contact_number` INT NOT NULL,
  `owner_email` VARCHAR(45) NOT NULL,
  `owner_credit_history` VARCHAR(45) NULL,
  PRIMARY KEY (`owner_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`service_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`service_record` (
  `record_id` INT NOT NULL,
  `service_id` INT NOT NULL,
  `center_id` INT NOT NULL,
  `service_date` INT NOT NULL,
  `service_details` VARCHAR(45) NOT NULL,
  `car_id` INT NULL,
  PRIMARY KEY (`record_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_type` (
  `type_id` INT NOT NULL,
  `type_name` VARCHAR(45) NULL,
  `car_id` INT NULL,
  PRIMARY KEY (`type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car` (
  `id_cars` BIGINT(15) NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` BIGINT(15) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `manufacturer_id` VARCHAR(45) NOT NULL,
  `car_accident_accident_id` INT NOT NULL,
  `electric_car_car_id` INT NOT NULL,
  `service_center_center_id` INT NOT NULL,
  `car_model_model_id` BIGINT(15) NOT NULL,
  `car_owner_owner_id` INT NOT NULL,
  `service_record_record_id` INT NOT NULL,
  `car_type_type_id` INT NOT NULL,
  PRIMARY KEY (`id_cars`, `car_accident_accident_id`, `electric_car_car_id`, `car_model_model_id`),
  INDEX `fk_car_car_accident1_idx` (`car_accident_accident_id` ASC) VISIBLE,
  INDEX `fk_car_electric_car1_idx` (`electric_car_car_id` ASC) VISIBLE,
  INDEX `fk_car_service_center1_idx` (`service_center_center_id` ASC) VISIBLE,
  INDEX `fk_car_car_model1_idx` (`car_model_model_id` ASC) VISIBLE,
  INDEX `fk_car_car_owner1_idx` (`car_owner_owner_id` ASC) VISIBLE,
  INDEX `fk_car_service_record1_idx` (`service_record_record_id` ASC) VISIBLE,
  INDEX `fk_car_car_type1_idx` (`car_type_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_car_car_accident1`
    FOREIGN KEY (`car_accident_accident_id`)
    REFERENCES `car`.`car_accident` (`accident_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_electric_car1`
    FOREIGN KEY (`electric_car_car_id`)
    REFERENCES `car`.`electric_car` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_service_center1`
    FOREIGN KEY (`service_center_center_id`)
    REFERENCES `car`.`service_center` (`center_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_model1`
    FOREIGN KEY (`car_model_model_id`)
    REFERENCES `car`.`car_model` (`model_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_owner1`
    FOREIGN KEY (`car_owner_owner_id`)
    REFERENCES `car`.`car_owner` (`owner_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_service_record1`
    FOREIGN KEY (`service_record_record_id`)
    REFERENCES `car`.`service_record` (`record_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_car_type1`
    FOREIGN KEY (`car_type_type_id`)
    REFERENCES `car`.`car_type` (`type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`insurance_company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`insurance_company` (
  `insurance_id` INT(15) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `contact_number` INT(15) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `car_id_cars` BIGINT(15) NOT NULL,
  PRIMARY KEY (`insurance_id`, `car_id_cars`),
  INDEX `fk_insurance_company_car1_idx` (`car_id_cars` ASC) VISIBLE,
  CONSTRAINT `fk_insurance_company_car1`
    FOREIGN KEY (`car_id_cars`)
    REFERENCES `car`.`car` (`id_cars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car`.`car_specification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car`.`car_specification` (
  `specification_id` INT NOT NULL,
  `car_id` INT NOT NULL,
  `model_id` INT NOT NULL,
  `type_id` INT NOT NULL,
  `engine_capacity` INT NOT NULL,
  `fuel_type` VARCHAR(45) NOT NULL,
  `transmission` VARCHAR(45) NOT NULL,
  `car_specificationcol` VARCHAR(45) NOT NULL,
  `car_id_cars` BIGINT(15) NOT NULL,
  `car_car_accident_accident_id` INT NOT NULL,
  PRIMARY KEY (`specification_id`),
  INDEX `fk_car_specification_car1_idx` (`car_id_cars` ASC, `car_car_accident_accident_id` ASC) VISIBLE,
  CONSTRAINT `fk_car_specification_car1`
    FOREIGN KEY (`car_id_cars` , `car_car_accident_accident_id`)
    REFERENCES `car`.`car` (`id_cars` , `car_accident_accident_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  `car_id_cars` BIGINT(15) NOT NULL,
  `car_car_accident_accident_id` INT NOT NULL,
  `car_electric_car_car_id` INT NOT NULL,
  `car_car_model_model_id` BIGINT(15) NOT NULL,
  PRIMARY KEY (`car_id`, `car_id_cars`, `car_car_accident_accident_id`, `car_electric_car_car_id`, `car_car_model_model_id`),
  INDEX `fk_cars_price_list_car1_idx` (`car_id_cars` ASC, `car_car_accident_accident_id` ASC, `car_electric_car_car_id` ASC, `car_car_model_model_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_price_list_car1`
    FOREIGN KEY (`car_id_cars` , `car_car_accident_accident_id` , `car_electric_car_car_id` , `car_car_model_model_id`)
    REFERENCES `car`.`car` (`id_cars` , `car_accident_accident_id` , `electric_car_car_id` , `car_model_model_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
