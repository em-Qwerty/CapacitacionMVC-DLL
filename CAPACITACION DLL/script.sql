SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `bdcapacitacion` DEFAULT CHARACTER SET utf8 ;
USE `eventosdb`;

CREATE TABLE IF NOT EXISTS `bdcapacitacion`.`tblClientes` (
  `codigo` INT(11) NOT NULL COMMENT '',
  `nombres` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `apellidos` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `edad` INT(11) NOT NULL COMMENT '',
  `telefono` INT(20) NOT NULL COMMENT '',
  `correo` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `bdcapacitacion`.`tblproducto` (
  `codigo` INT(11) NOT NULL COMMENT '',
  `nombreProducto` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `peso` DOUBLE NULL DEFAULT NULL COMMENT '',
  `marca` VARCHAR(100) NOT NULL COMMENT '',
  `descripcion` VARCHAR(400) NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `bdcapacitacion`.`tblrestaurante` (
  `codigo` INT(11) NOT NULL COMMENT '',
  `nombreRestaurante` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `direccion` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `departamento` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `telefono` INT(20) NOT NULL COMMENT '',
  `correo` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

INSERT INTO `bdcapacitacion`.`tblclientes` (`codigo`, `nombres`, `apellidos`, `edad`, `telefono`, `correo`) VALUES ('1', 'Maria Juana', 'Perez Fernandez', '29', '65789456', 'maria@gmail.com');
INSERT INTO `bdcapacitacion`.`tblclientes` (`codigo`, `nombres`, `apellidos`, `edad`, `telefono`, `correo`) VALUES ('2', 'Pedro Ricardo', 'Gutierrez Alvarez', '25', '55783980', 'pedro@gmail.com');
INSERT INTO `bdcapacitacion`.`tblclientes` (`codigo`, `nombres`, `apellidos`, `edad`, `telefono`, `correo`) VALUES ('3', 'Fernanda', 'Garcia Martinez', '22', '56435677', 'fernanda@gmail.com');
INSERT INTO `bdcapacitacion`.`tblclientes` (`codigo`, `nombres`, `apellidos`, `edad`, `telefono`, `correo`) VALUES ('4', 'Julio', 'Sicaja Lutin', '23', '55773348', 'julio@gmail.com');
INSERT INTO `bdcapacitacion`.`tblclientes` (`codigo`, `nombres`, `apellidos`, `edad`, `telefono`, `correo`) VALUES ('5', 'Karla', 'Cruz Quiñonez', '23', '34782822', 'karla@gmail.com');

INSERT INTO `bdcapacitacion`.`tblproducto` (`codigo`, `nombreProducto`, `peso`, `marca`, `descripcion`) VALUES ('11', 'tortrix Limon', '0.500', 'tortrix', 'golosina salada');
INSERT INTO `bdcapacitacion`.`tblproducto` (`codigo`, `nombreProducto`, `peso`, `marca`, `descripcion`) VALUES ('22', 'coca cola zero', '1.5', 'coca cola', 'bebida carbonatada');
INSERT INTO `bdcapacitacion`.`tblproducto` (`codigo`, `nombreProducto`, `peso`, `marca`, `descripcion`) VALUES ('33', 'tortrix taco', '0.500', 'tortrix', 'golosina salada');
INSERT INTO `bdcapacitacion`.`tblproducto` (`codigo`, `nombreProducto`, `peso`, `marca`, `descripcion`) VALUES ('44', 'galleta can can', '1.00', 'gama', 'galleta');
INSERT INTO `bdcapacitacion`.`tblproducto` (`codigo`, `nombreProducto`, `peso`, `marca`, `descripcion`) VALUES ('55', 'cocoa flakes', '3.5', 'gran dia', 'cereal ');

INSERT INTO `bdcapacitacion`.`tblrestaurante` (`codigo`, `nombreRestaurante`, `direccion`, `departamento`, `telefono`, `correo`) VALUES ('101', 'Los antojitos', 'zona 11', 'Guatemala', '67546789', 'antojitos@gmail.com');
INSERT INTO `bdcapacitacion`.`tblrestaurante` (`codigo`, `nombreRestaurante`, `direccion`, `departamento`, `telefono`, `correo`) VALUES ('102', 'Los cebollines', 'zona 11', 'Guatemala', '76876567', 'cebollines@gmail.com');
INSERT INTO `bdcapacitacion`.`tblrestaurante` (`codigo`, `nombreRestaurante`, `direccion`, `departamento`, `telefono`, `correo`) VALUES ('103', 'Pollo Campero', 'zona 9 ', 'Xela', '87676546', 'pollocampero@gmail.com');
INSERT INTO `bdcapacitacion`.`tblrestaurante` (`codigo`, `nombreRestaurante`, `direccion`, `departamento`, `telefono`, `correo`) VALUES ('104', 'Macdonalds', 'zona 3', 'Antigua Guatemala', '76578765', 'macdonalds@gmail.com');
INSERT INTO `bdcapacitacion`.`tblrestaurante` (`codigo`, `nombreRestaurante`, `direccion`, `departamento`, `telefono`, `correo`) VALUES ('105', 'Pizza Hut', 'zona 10', 'Guatemala', '76569809', 'pizzahut@gmail.com');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;