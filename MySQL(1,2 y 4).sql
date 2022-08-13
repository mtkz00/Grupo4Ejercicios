--Creacion base de datos
--------------------------------------------------------
create database 'Peluqueria__Canina'
use 'Peluqueria__Canina'


-- Creacion tabla.`Dueno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria__Canina`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Telefono` INT NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE)
ENGINE = InnoDB;


-- Creacion tabla `Perro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria__Canina`.`Perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(45) NOT NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  UNIQUE INDEX `ID_Perro_UNIQUE` (`ID_Perro` ASC) INVISIBLE,
  INDEX `DNI_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `DNI`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `Peluqueria__Canina`.`Dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Creacion tabla `Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria__Canina`.`Historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` INT NOT NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Monto` INT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `ID_Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `ID_Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `Peluqueria__Canina`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-----------------------------------------------------
--PUNTO 2)
-----------------------------------------------------

--Dueño
-----------------------------------------------------
INSERT INTO 'Dueno' VALUES (42566994,'Daira', 'Salazar', 3329 12345678, 'Salta 9295')

--Perro
-----------------------------------------------------
INSERT INTO 'Perro' VALUES (DEFAULT, 'Luna', '01/10/2020', 'Hembra', 42566994)