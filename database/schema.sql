


-- -----------------------------------------------------
-- Schema flights
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `flights` DEFAULT CHARACTER SET utf8 ;
USE `flights` ;

-- -----------------------------------------------------
-- Table `flights`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flights`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `password_UNIQUE` (`password` ASC) VISIBLE)
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
-- Table `flights`.`plane`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`plane` (
  `idplane` INT NOT NULL,
  `planename` VARCHAR(45) NULL,
  `idpilot` INT NULL,
  PRIMARY KEY (`idplane`),
  INDEX `idpilot_idx` (`idpilot` ASC) VISIBLE,
  CONSTRAINT `idpilot`
    FOREIGN KEY (`idpilot`)
    REFERENCES `flights`.`pilot` (`idpilot`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flights`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flights`.`flight` (
  `idflight` INT NOT NULL AUTO_INCREMENT,
  `idpilot` INT NOT NULL,
  `idplane` INT NOT NULL,
  `departuretime` DATETIME NULL,
  `ARRIVALTIME` DATETIME NULL,CHECK (departuretime<ARRIVALTIME),
  `id_user` VARCHAR(45) NULL,
  PRIMARY KEY (`idflight`, `idpilot`, `idplane`),
  INDEX `idplane_idx` (`idplane` ASC) VISIBLE,
  CONSTRAINT `idpilot`
    FOREIGN KEY ()
    REFERENCES `flights`.`pilot` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idplane`
    FOREIGN KEY (`idplane`)
    REFERENCES `flights`.`plane` (`idplane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_user`
    FOREIGN KEY ()
    REFERENCES `flights`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


