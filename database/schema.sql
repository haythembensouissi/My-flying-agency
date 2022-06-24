CREATE SCHEMA IF NOT EXISTS `flights` DEFAULT CHARACTER SET utf8 ;
USE `flights` ;

-- -----------------------------------------------------
-- Table `flights`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flights`.`pilot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`pilot` (
  `idpilot` INT NOT NULL,
  `pilotname` VARCHAR(45) NULL,
  `pilotcol` VARCHAR(45) NULL,
  PRIMARY KEY (`idpilot`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flights`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`` (
  `idplane` INT NOT NULL,
  `planename` VARCHAR(45) NULL,
  `departtime` DATETIME NULL,
  `arrivaltime` DATETIME NULL,
  `idpilot` INT NULL,
  PRIMARY KEY (`idplane`),
  INDEX `idpilot_idx` (`idpilot` ASC) VISIBLE,
  CONSTRAINT `idpilot`
    FOREIGN KEY (`idpilot`)
    REFERENCES `flights`.`pilot` (`idpilot`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;