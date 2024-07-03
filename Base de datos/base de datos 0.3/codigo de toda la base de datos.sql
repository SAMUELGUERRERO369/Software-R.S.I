-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema gaes_7
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gaes_7` ;

-- -----------------------------------------------------
-- Schema gaes_7
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gaes_7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
SHOW WARNINGS;
USE `gaes_7` ;

-- -----------------------------------------------------
-- Table `usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuarios` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(30) NULL DEFAULT NULL,
  `Apellido` VARCHAR(30) NULL DEFAULT NULL,
  `Correo` VARCHAR(255) NULL DEFAULT NULL,
  `Telefono` DOUBLE NULL DEFAULT NULL,
  `Rol` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `reportes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reportes` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `reportes` (
  `id_reportes` INT NOT NULL AUTO_INCREMENT,
  `Descripción` TEXT NULL DEFAULT NULL,
  `Torre` DOUBLE NULL DEFAULT NULL,
  `Apartamento` DOUBLE NULL DEFAULT NULL,
  `Fecha` DATE NULL DEFAULT NULL,
  `fk_usuarios` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_reportes`))
ENGINE = InnoDB
AUTO_INCREMENT = 105
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `inventario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventario` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  `responsable` VARCHAR(45) NULL DEFAULT NULL,
  `producto` VARCHAR(45) NULL DEFAULT NULL,
  `descripccion` VARCHAR(200) NULL DEFAULT NULL,
  `cantidad` DOUBLE NULL DEFAULT NULL,
  `fk_inventario` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `seguimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `seguimiento` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `seguimiento` (
  `id_seguimiento` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL DEFAULT NULL,
  `Prioridad` VARCHAR(45) NULL DEFAULT NULL,
  `Responsable` VARCHAR(45) NULL DEFAULT NULL,
  `Estado` VARCHAR(30) NULL DEFAULT NULL,
  `fk_reportes` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_seguimiento`))
ENGINE = InnoDB
AUTO_INCREMENT = 125
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
