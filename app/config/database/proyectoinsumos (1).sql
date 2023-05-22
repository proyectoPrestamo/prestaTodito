-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2023 a las 02:40:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoinsumos`
--
CREATE DATABASE IF NOT EXISTS `proyectoinsumos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyectoinsumos`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `spDeleteAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteAmbientes` (IN `_ID_AMBIENTES ` INT(11))   BEGIN
 DELETE FROM AMBIENTES WHERE ID_AMBIENTES  = _ID_AMBIENTES;
END$$

DROP PROCEDURE IF EXISTS `spDeleteFuncionesRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteFuncionesRol` (IN `_ID_FUNCIONES` INT(11))   BEGIN
 DELETE FROM FUNCIONESROL WHERE ID_FUNCIONES = _ID_FUNCIONES;
END$$

DROP PROCEDURE IF EXISTS `spDeleteHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteHerramienta` (IN `_ID_HERRAMIENTA` INT(11))   BEGIN
 DELETE FROM HERRAMIENTAS WHERE ID_HERRAMIENTA =_ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spDeleteHorario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteHorario` (IN `_ID_HORARIO` INT(5))   BEGIN
 DELETE FROM HORARIO WHERE ID_HORARIO  = _ID_HORARIO;
END$$

DROP PROCEDURE IF EXISTS `spDeleteInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteInventario` (IN `_ID_INVENTARIO` INT)   BEGIN
 DELETE FROM INVENTARIO WHERE ID_INVENTARIO  = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `spDeleteMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteMaterial` (IN `_ID_MATERIAL` INT(11))   BEGIN
 DELETE FROM MATERIAL WHERE ID_MATERIAL  = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `spDeletePc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeletePc` (IN `_ID_PC` INT(11))   BEGIN
 DELETE FROM COMPURTADORES WHERE ID_PC= _ID_PC;
END$$

DROP PROCEDURE IF EXISTS `spDeleteRegistro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteRegistro` (IN `_ID_REGISTRO` INT(100))   BEGIN
 DELETE FROM REGISTRO WHERE ID_REGISTRO = _ID_REGISTRO;
END$$

DROP PROCEDURE IF EXISTS `spDeleteRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteRol` (IN `_ID_ROL` INT(11))   BEGIN
 DELETE FROM ROL WHERE ID_ROL  = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `spFindAllAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllAmbientes` ()   BEGIN
 SELECT ID_AMBIENTES,CANT_SILLAS,CANT_MESAS,NUM_APRENDICES,	NUM_EQUIPOS,ID_HERRAMIENTA,ID_HORARIO,ID_MATERIA FROM AMBIENTES;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllFuncionesRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllFuncionesRol` ()   BEGIN
 SELECT ID_FUNCIONES,ESTADO_PRESTAMO,OBSERVACION_PRESTAMO FROM FUNCIONESROL;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllHerramientas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllHerramientas` ()   BEGIN

 SELECT ID_HERRAMIENTA,NOMBRE,ESTADO,TIPO,CANTIDAD,ID_HORARIO FROM HERRAMIENTAS WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;

END$$

DROP PROCEDURE IF EXISTS `spFindAllHorario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllHorario` ()   BEGIN
 SELECT ID_HORARIO,FECHA_HORA,TIEMPO_REQUERIDO,NUM_APRENDICES,		FECHA_REGISTRO FROM HORARIO;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllInventario` ()   BEGIN
 SELECT ID_INVENTARIO,ID_PC,ID_HERRAMIENTA,ID_HORARIO,ID_MATERIAL FROM INVENTARIO;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllMaterial` ()   BEGIN
 SELECT ID_MATERIAL,NOMBRE,TIPO,ESTADO,CANTIDAD,COLOR,MEDIDA,ID_HORARIO FROM MATERIAL;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllPc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllPc` ()   BEGIN
 SELECT ID_PC,ESTADO,MARCA,ID_HORARIO FROM COMPUTADORES;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllRegistro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllRegistro` ()   BEGIN
 SELECT ID_REGISTRO,NOMBRE FROM REGISTRO;
 END$$

DROP PROCEDURE IF EXISTS `spFindAllRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllRol` ()   BEGIN
 SELECT ID_ROL,NOMBRE_ROL,ESTADO FROM ROL;
 END$$

DROP PROCEDURE IF EXISTS `spFindAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAmbientes` (IN `_ID_AMBIENTES` INT(11))   BEGIN

 SELECT ID_AMBIENTES,CANT_SILLAS,CANT_MESAS,NUM_APRENDICES,	NUM_EQUIPOS,ID_HORARIO FROM AMBIENTES WHERE ID_AMBIENTES = _ID_AMBIENTES;

END$$

DROP PROCEDURE IF EXISTS `spFindFuncionesRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindFuncionesRol` (IN `_ID_FUNCIONES` INT(11))   BEGIN 
SELECT ID_FUNCIONES,ESTADO_PRESTAMO,OBSERVACION_PRESTAMO,ID_ROL FROM FUNCIONESROL WHERE ID_FUNCIONES = _ID_FUNCIONES; 
END$$

DROP PROCEDURE IF EXISTS `spFindHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindHerramienta` (IN `_ID_HERRAMIENTA` INT(11))   BEGIN

 SELECT ID_HERRAMIENTA,NOMBRE,ESTADO,TIPO,CANTIDAD,ID_HORARIO FROM HERRAMIENTAS WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spFindHorario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindHorario` (IN `_ID_HORARIO` INT)   BEGIN

 SELECT ID_HORARIO,FECHA_HORA,TIEMPO_REQUERIDO,FECHA_REGISTRO FROM HORARIO WHERE ID_HORARIO = _ID_HORARIO;

END$$

DROP PROCEDURE IF EXISTS `spFindInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindInventario` ()   BEGIN
 SELECT ID_INVENTARIO,ID_PC,ID_HERRAMIENTA,ID_HORARIO,ID_MATERIAL FROM INVENTARIO WHERE ID_INVENTARIO = _ID_INVENTARIO;
 END$$

DROP PROCEDURE IF EXISTS `spFindMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindMaterial` (IN `_ID_MATERIAL` INT(11))   BEGIN

 SELECT ID_MATERIAL,NOMBRE,TIPO,CANTIDAD,ESTADO,COLOR,MEDIDA,ID_HORARIO FROM MATERIAL WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `spFindPc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindPc` (IN `_ID_PC` INT(11))   BEGIN

 SELECT ID_PC,ESTADO,MARCA,ID_HORARIO FROM COMPUTADORES WHERE ID_PC = _ID_PC;

END$$

DROP PROCEDURE IF EXISTS `spFindRegistro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindRegistro` (IN `_ID_REGISTRO` INT(100))   BEGIN

 SELECT ID_REGISTRO FROM REGISTRO WHERE ID_REGISTRO = _ID_REGISTRO;

END$$

DROP PROCEDURE IF EXISTS `spFindRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindRol` (IN `_ID_ROL` INT(11))   BEGIN
 SELECT ID_ROL,NOMBRE_ROL,ESTADO FROM ROL WHERE ID_ROL = _ID_ROL;
 END$$

DROP PROCEDURE IF EXISTS `spInsertAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertAmbientes` (IN `_ID_AMBIENTES ` INT(11), IN `_CANT_SILLAS` INT(3), IN `_CANT_MESAS` INT(3), IN `_NUM_APRENDICES` INT(3), IN `_NUM_EQUIPOS` INT(3), IN `_ID_HERRAMIENTA` INT(11), IN `_ID_HORARIO` INT(11), IN `_ID_MATERIAL` INT(11))   BEGIN
INSERT INTO AMBIENTES (ID_AMBIENTES ) VALUES (_ID_AMBIENTES );
INSERT INTO AMBIENTES(CANT_SILLAS) VALUES (_CANT_SILLAS);
INSERT INTO AMBIENTES (CANT_MESAS) VALUES (_CANT_MESAS);
INSERT INTO AMBIENTES(NUM_APRENDICES) VALUES (_NUM_APRENDICES);
INSERT INTO AMBIENTES (NUM_EQUIPOS) VALUES (_NUM_EQUIPOS);
INSERT INTO AMBIENTES (ID_HERRAMIENTA) VALUES (_ID_HERRAMIENTA);
INSERT INTO AMBIENTES (ID_HORARIO) VALUES (_ID_HORARIO);
INSERT INTO AMBIENTES (ID_MATERIAL) VALUES (_ID_MATERIAL);
END$$

DROP PROCEDURE IF EXISTS `spInsertFuncionesRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertFuncionesRol` (IN `_ID_FUNCIONES` INT(11), IN `_ESTADO_PRESTAMO` VARCHAR(10), IN `_OBSERVACION_PRESTAMO` VARCHAR(100), IN `_ID_ROL` INT(11))   BEGIN
INSERT INTO FUNCIONESROL (ID_FUNCIONES) VALUES (_ID_FUNCIONES);
INSERT INTO FUNCIONESROL(ESTADO_PRESTAMO) VALUES (_ESTADO_PRESTAMO);
INSERT INTO FUNCIONESROL(OBSERVACION_PRESTAMO) VALUES (_OBSERVACION_PRESTAMO);
INSERT INTO FUNCIONESROL (ID_ROL) VALUES (_ID_ROL);

 END$$

DROP PROCEDURE IF EXISTS `spInsertHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertHerramienta` (IN `_ID_HERRAMIENTA` INT(11), IN `_NOMBRE` INT(30), IN `_ESTADO` INT(10), IN `_TIPO` INT(10), IN `_CANTIDAD` INT(10), IN `_ID_HORARIO` INT(11))   BEGIN
INSERT INTO HERRAMIENTAS(ID_HERRAMIENTA) VALUES (_ID_HERRAMIENTA);
INSERT INTO HERRAMIENTAS(NOMBRE) VALUES (_NOMBRE);
INSERT INTO HERRAMIENTAS(ESTADO) VALUES (_ESTADO);
INSERT INTO HERRAMIENTAS(TIPO) VALUES (_TIPO);
INSERT INTO HERRAMIENTAS(CANTIDAD) VALUES (_CANTIDAD);
INSERT INTO HERRAMIENTAS(ID_HORARIO) VALUES (_ID_HORARIO);
 END$$

DROP PROCEDURE IF EXISTS `spInsertHorario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertHorario` (IN `_ID_HORARIO` INT(5), IN `_FECHA_HORA` DATETIME, IN `_TIEMPO_REQUERIDO` VARCHAR(10), IN `_FECHA_REGISTRO` DATE)   BEGIN
INSERT INTO ROL (ID_HORARIO) VALUES (_ID_HORARIO);
INSERT INTO ROL (FECHA_HORA) VALUES (_FECHA_HORA);
INSERT INTO ROL  (TIEMPO_REQUERIDO) VALUES (_TIEMPO_REQUERIDO);
INSERT INTO ROL  (FECHA_REGISTRO) VALUES (_FECHA_REGISTRO);

END$$

DROP PROCEDURE IF EXISTS `spInsertInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertInventario` (IN `_ID_INVENTARIO` INT(11), IN `_ID_PC` INT(11), IN `_ID_HERRAMIENTA` INT(11), IN `_ID_HORARIO` INT(11), IN `_ID_MATERIAL` INT(11))   BEGIN
INSERT INTO INVENTARIO (ID_INVENTARIO) VALUES (_ID_INVENTARIO);
INSERT INTO INVENTARIO (ID_PC) VALUES (_ID_PC);
INSERT INTO INVENTARIO (ID_HERRAMIENTA) VALUES (_ID_HERRAMIENTA);
INSERT INTO INVENTARIO (ID_HORARIO) VALUES (_ID_HORARIO);
INSERT INTO INVENTARIO (ID_MATERIAL) VALUES (_ID_MATERIAL);

END$$

DROP PROCEDURE IF EXISTS `spInsertMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertMaterial` (IN `_ID_MATERIAL` INT(11), IN `_NOMBRE` VARCHAR(30), IN `_TIPO` VARCHAR(30), IN `_ESTADO` VARCHAR(10), IN `_CANTIDAD` VARCHAR(10), IN `_COLOR` VARCHAR(10), IN `_MEDIDA` VARCHAR(10), IN `_ID_HORARIO` INT(11))   BEGIN
INSERT INTO MATERIAL (ID_MATERIAL) VALUES (_ID_MATERIAL );
INSERT INTO MATERIAL (NOMBRE) VALUES (_NOMBRE);
INSERT INTO MATERIAL  (TIPO) VALUES (_TIPO);
INSERT INTO MATERIAL  (ESTADO) VALUES (_ESTADO);
INSERT INTO MATERIAL  (CANTIDAD) VALUES (_CANTIDAD);
INSERT INTO MATERIAL  (COLOR) VALUES (_COLOR);
INSERT INTO MATERIAL  (MEDIDA) VALUES (_MEDIDA);
INSERT INTO MATERIAL  (ID_HORARIO) VALUES (_ID_HORARIO);

 END$$

DROP PROCEDURE IF EXISTS `spInsertPc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPc` (IN `_ID_PC` INT(11), IN `_ESTADO` VARCHAR(10), IN `_MARCA` VARCHAR(30), IN `_ID_HORARIO` INT(11))   BEGIN
INSERT INTO COMPUTADORES(ID_PC) VALUES (_ID_PC);
INSERT INTO COMPUTADORES(ESTADO) VALUES (_ESTADO);
INSERT INTO COMPUTADORES(MARCA) VALUES (_MARCA);
INSERT INTO COMPUTADORES(ID_HORARIO) VALUES (_ID_HORARIO);


 END$$

DROP PROCEDURE IF EXISTS `spInsertRegistro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertRegistro` (IN `_ID_REGISTRO` INT(100), IN `_NOMBRE` VARCHAR(30), IN `_APELLIDO` VARCHAR(30), IN `_TIPO_DOCUMENTO` VARCHAR(2), IN `_NUMERO_DOCUMENTO` INT(20), IN `_CORREO` VARCHAR(30), IN `_TELEFONO` INT(12), IN `_DIRECCION` VARCHAR(30), IN `_JORNADA` VARCHAR(30), IN `_PROGRAMA_FORMACION` VARCHAR(100), IN `_NUMERO_FICHA` INT(15), IN `_GENERO` VARCHAR(10), IN `_CONTRASENA` VARCHAR(100), IN `_ID_ROL` INT(11))   BEGIN
INSERT INTO REGISTRO (ID_REGISTRO) VALUES (_ID_REGISTRO);
INSERT INTO REGISTRO (NOMBRE) VALUES (_NOMBRE);
INSERT INTO REGISTRO (APELLIDO) VALUES (_APELLIDO);
INSERT INTO REGISTRO (TIPO_DOCUMENTO) VALUES (_TIPO_DOCUMENTO);
INSERT INTO REGISTRO (NUMERO_DOCUMENTO) VALUES (_NUMERO_DOCUMENTO);
INSERT INTO REGISTRO (CORREO) VALUES (_CORREO);
INSERT INTO REGISTRO (TELEFONO) VALUES (_TELEFONO);
INSERT INTO REGISTRO (DIRECCION) VALUES (_DIRECCION);
INSERT INTO REGISTRO (JORNADA) VALUES (_JORNADA);
INSERT INTO REGISTRO (PROGRAMA_FORMACION) VALUES (_PROGRAMA_FORMACION);
INSERT INTO REGISTRO (NUMERO_FICHA) VALUES (_NUMERO_FICHA);
INSERT INTO REGISTRO (GENERO) VALUES (_GENERO);
INSERT INTO REGISTRO (CONTRASENA) VALUES (_CONTRASENA);
INSERT INTO REGISTRO (ID_ROL) VALUES (_ID_ROL);

END$$

DROP PROCEDURE IF EXISTS `spInsertRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertRol` (IN `_NOMBRE_ROL` VARCHAR(100), IN `_ESTADO` VARCHAR(11))   BEGIN
INSERT INTO ROL (NOMBRE_ROL, ESTADO) VALUES (_NOMBRE_ROL,_ESTADO); 


END$$

DROP PROCEDURE IF EXISTS `spUpdateAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateAmbientes` (IN `_ID_AMBIENTES` INT(11), IN `_CANT_SILLAS` INT(3), IN `_CANT_MESAS` INT(3), IN `_NUM_APRENDICES` INT(3), IN `_NUM_EQUIPOS` INT(3), IN `_ID_HERRAMIENTA` INT(11), IN `ID_HORARIO` INT(11), IN `_ID_MATERIA` INT(11))   BEGIN
 UPDATE AMBIENTES SET CANT_SILLAS = _CANT_SILLAS,CANT_MESAS = _CANT_MESAS,NUM_APRENDICES = _NUM_APRENDICES,NUM_EQUIPOS = _NUM_EQUIPOS,ID_HERRAMIENTA =_ID_HERRAMIENTA,ID_HORARIO = ID_HORARIO,ID_MATERIA = ID_MATERIA WHERE ID_AMBIENTES =_ID_AMBIENTES;
 

END$$

DROP PROCEDURE IF EXISTS `spUpdateFuncionesRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateFuncionesRol` (IN `_ID_FUNCIONES` INT(11), IN `_ESTADO_PRESTAMO` VARCHAR(100), IN `_OBSERVACION_PRESTAMO` VARCHAR(100), IN `_ID_ROL` INT(11))   BEGIN
 UPDATE FUNCIONESROL SET ESTADO_PRESTAMO = _ESTADO_PRESTAMO,OBSERVACION_PRESTAMO = _OBSERVACION_PRESTAMO,ID_ROL =_ID_ROL WHERE ID_FUNCIONES =_ID_FUNCIONES;
 

END$$

DROP PROCEDURE IF EXISTS `spUpdateHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateHerramienta` (IN `_ID_HERRAMIENTA` INT(11), IN `_NOMBRE` INT, IN `_ESTADO` INT, IN `_TIPO` INT, IN `_CANTIDAD` INT, IN `_ID_HORARIO` INT)   BEGIN
 UPDATE HERRAMIENTAS SET NOMBRE = _NOMBRE,ESTADO = _ESTADO,TIPO = _TIPO,CANTIDAD = _CANTIDAD, ID_HORARIO = _ID_HORARIO WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spUpdateHorario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateHorario` (IN `_ID_HORARIO` INT(5), IN `_FECHA_HORA` DATETIME, IN `_TIEMPO_REQUERIDO` VARCHAR(10), IN `_FECHA_REGISTRO` DATE)   BEGIN
 UPDATE HORARIO SET FECHA_HORA = _FECHA_HORA,TIEMPO_REQUERIDO = _TIEMPO_REQUERIDO,FECHA_REGISTRO = _FECHA_REGISTRO WHERE ID_HORARIO = _ID_HORARIO;
END$$

DROP PROCEDURE IF EXISTS `spUpdateInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateInventario` (IN `_ID_INVENTARIO` INT(11), IN `_ID_PC` INT(11), IN `_ID_HERRAMIENTA` INT(11), IN `_ID_AMBIENTES` INT(11), IN `_ID_HORARIO` INT(11), IN `_	ID_MATERIAL` INT(11))   BEGIN
 UPDATE INVENTARIO SET ID_PC = _ID_PC,ID_HERRAMIENTA =_ID_HERRAMIENTA,ID_AMBIENTES =_ID_AMBIENTES,ID_HORARIO = _ID_HORARIO,ID_MATERIAL=_ID_MATERIAL WHERE ID_INVENTARIO =_ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `spUpdateMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateMaterial` (IN `_ID_MATERIAL` INT(11), IN `_NOMBRE` VARCHAR(30), IN `_TIPO` VARCHAR(30), IN `_ESTADO` VARCHAR(10), IN `_CANTIDAD` VARCHAR(10), IN `_COLOR` VARCHAR(10), IN `_MEDIDA` VARCHAR(10), IN `_ID_HORARIO` INT(11))   BEGIN
 UPDATE ID_MATERIAL SET NOMBRE = _NOMBRE,TIPO = _TIPO,ESTADO = _ESTADO,CANTIDAD = _CANTIDAD,COLOR = _COLOR,	MEDIDA = _MEDIDA,ID_HORARIO = _ID_HORARIO;
 END$$

DROP PROCEDURE IF EXISTS `spUpdatePc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdatePc` (IN `_ID_PC` INT(11), IN `_ESTADO` INT(10), IN `_MARCA` INT(30), IN `_ID_HORARIO` INT(11))   BEGIN
 UPDATE ID_PC SET ESTADO = _ESTADO, MARCA = _MARCA, ID_HORARIO = _ID_HORARIO;
 

END$$

DROP PROCEDURE IF EXISTS `spUpdateRegistro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateRegistro` (IN `_ID_REGISTRO` INT(100), IN `_NOMBRE` VARCHAR(30))   BEGIN
 UPDATE REGISTRO SET NOMBRE = _NOMBRE WHERE ID_REGISTRO =_ID_REGISTRO;
END$$

DROP PROCEDURE IF EXISTS `spUpdateRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateRol` (IN `_ID_ROL` INT(11), IN `_NOMBRE_ROL` INT(100), IN `_ESTADO_ROL` INT(11))   BEGIN
 UPDATE ROL SET NOMBRE_ROL = _NOMBRE_ROL,ESTADO_ROL = _ESTADO_ROL WHERE ID_ROL = _ID_ROL;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambientes`
--

DROP TABLE IF EXISTS `ambientes`;
CREATE TABLE `ambientes` (
  `ID_AMBIENTES` int(11) NOT NULL,
  `CANT_SILLAS` int(3) DEFAULT NULL,
  `CANT_MESAS` int(3) DEFAULT NULL,
  `NUM_APRENDICES` int(3) DEFAULT NULL,
  `NUM_EQUIPOS` int(3) DEFAULT NULL,
  `ID_HERRAMIENTA` int(11) DEFAULT NULL,
  `ID_HORARIO` int(11) DEFAULT NULL,
  `ID_MATERIAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ambientes`
--

INSERT INTO `ambientes` (`ID_AMBIENTES`, `CANT_SILLAS`, `CANT_MESAS`, `NUM_APRENDICES`, `NUM_EQUIPOS`, `ID_HERRAMIENTA`, `ID_HORARIO`, `ID_MATERIAL`) VALUES
(1, 10, 5, 10, 5, NULL, 1, NULL),
(2, 15, 10, 15, 10, NULL, 2, NULL),
(3, 20, 8, 15, 9, NULL, 3, NULL),
(4, 15, 7, 15, 10, NULL, 4, NULL),
(5, 12, 8, 10, 8, NULL, 5, NULL),
(6, 10, 11, 15, 13, NULL, 6, NULL),
(7, 10, 5, 10, 5, NULL, 7, NULL),
(8, 10, 6, 14, NULL, 9, 2, 10),
(9, 10, 15, 15, NULL, 3, 3, 1),
(10, 10, 5, 10, NULL, 5, 5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadores`
--

DROP TABLE IF EXISTS `computadores`;
CREATE TABLE `computadores` (
  `ID_PC` int(11) NOT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `MARCA` varchar(30) DEFAULT NULL,
  `ID_HORARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `computadores`
--

INSERT INTO `computadores` (`ID_PC`, `ESTADO`, `MARCA`, `ID_HORARIO`) VALUES
(1, 'disponible', 'lenovo', 1),
(2, 'disponible', 'lenovo', 2),
(3, 'disponible', 'hp', 3),
(4, 'disponible', 'hp', 4),
(5, 'disponible', 'acer', 5),
(6, 'disponible', 'acer', 6),
(7, 'disponible', 'apple', 7),
(8, 'disponible', 'apple', 8),
(9, 'disponible', 'asus', 9),
(10, 'disponible', 'asus', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionesrol`
--

DROP TABLE IF EXISTS `funcionesrol`;
CREATE TABLE `funcionesrol` (
  `ID_FUNCIONES` int(11) NOT NULL,
  `ESTADO_PRESTAMO` varchar(10) DEFAULT NULL,
  `OBSERVACION_PRESTAMO` varchar(100) DEFAULT NULL,
  `ID_ROL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `funcionesrol`
--

INSERT INTO `funcionesrol` (`ID_FUNCIONES`, `ESTADO_PRESTAMO`, `OBSERVACION_PRESTAMO`, `ID_ROL`) VALUES
(1, 'activo', 'funciona instructor', 2),
(2, 'activo', 'funciona coordinador', 3),
(3, 'activo', 'funciona instructor', 2),
(4, 'activo', 'funciona coordinador', 3),
(5, 'activo', 'funciona instructor', 2),
(6, 'activo', 'funciona coordinador', 3),
(7, 'activo', 'funciona instructor', 2),
(8, 'activo', 'funciona coordinador', 3),
(9, 'activo', 'funciona instructor', 2),
(10, 'activo', 'funciona coordinador', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

DROP TABLE IF EXISTS `herramientas`;
CREATE TABLE `herramientas` (
  `ID_HERRAMIENTA` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `CANTIDAD` int(10) DEFAULT NULL,
  `ID_HORARIO` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`ID_HERRAMIENTA`, `NOMBRE`, `ESTADO`, `TIPO`, `CANTIDAD`, `ID_HORARIO`) VALUES
(1, 'martillo', 'disponible', 'uña', 5, 1),
(2, 'martillo', 'disponible', 'bola', 5, 2),
(3, 'cincel', 'disponible', 'diamante', 3, 3),
(4, 'cincel', 'disponible', 'plana', 3, 4),
(5, 'metro', 'disponible', 'metalico', 10, 5),
(6, 'metro', 'disponible', 'calibre', 10, 6),
(7, 'serrucho', 'disponible', 'carpintero', 5, 7),
(8, 'serrucho', 'disponible', 'costilla', 5, 8),
(9, 'pinza', 'disponible', 'tenaza', 5, 9),
(10, 'pinza', 'disponible', 'universal', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

DROP TABLE IF EXISTS `horario`;
CREATE TABLE `horario` (
  `ID_HORARIO` int(5) NOT NULL,
  `FECHA_HORA` datetime NOT NULL DEFAULT current_timestamp(),
  `TIEMPO_REQUERIDO` varchar(10) NOT NULL,
  `FECHA_REGISTRO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID_HORARIO`, `FECHA_HORA`, `TIEMPO_REQUERIDO`, `FECHA_REGISTRO`) VALUES
(1, '2023-05-04 14:54:20', '1 hora', '2023-05-04'),
(2, '2023-05-04 14:54:20', '2 horas', '2023-05-04'),
(3, '2023-05-04 14:55:06', '3 horas', '2023-05-05'),
(4, '2023-05-04 14:55:06', '4 horas', '2023-05-05'),
(5, '2023-05-04 14:55:44', '5 horas', '2023-05-06'),
(6, '2023-05-04 14:55:44', '6 horas', '2023-05-06'),
(7, '2023-05-04 14:56:10', '1 hora', '2023-05-07'),
(8, '2023-05-04 14:56:10', '2 horas', '2023-05-07'),
(9, '2023-05-04 14:56:52', '5 horas', '2023-05-08'),
(10, '2023-05-04 14:56:52', '3 horas', '2023-05-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
  `ID_INVENTARIO` int(11) NOT NULL,
  `ID_PC` int(11) DEFAULT NULL,
  `ID_HERRAMIENTA` int(11) DEFAULT NULL,
  `ID_AMBIENTES` int(11) DEFAULT NULL,
  `ID_HORARIO` int(11) DEFAULT NULL,
  `ID_MATERIAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`ID_INVENTARIO`, `ID_PC`, `ID_HERRAMIENTA`, `ID_AMBIENTES`, `ID_HORARIO`, `ID_MATERIAL`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3),
(4, 3, 3, 3, 3, 3),
(5, 5, 5, 5, 5, 5),
(6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `ID_MATERIAL` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `CANTIDAD` varchar(10) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `MEDIDA` varchar(10) DEFAULT NULL,
  `ID_HORARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`ID_MATERIAL`, `NOMBRE`, `TIPO`, `ESTADO`, `CANTIDAD`, `COLOR`, `MEDIDA`, `ID_HORARIO`) VALUES
(1, 'cuero', 'sintetico', 'disponible', '50', 'marron', 'm', 1),
(2, 'cuero', 'sintetico', 'disponible', '50', 'marron', 'm', 2),
(3, 'tela', 'algodon', 'disponible', '60', 'blanco', 'cm', 3),
(4, 'tela', 'algodon', 'disponible', '60', 'blanco', 'cm', 4),
(5, 'cinta', 'embalaje', 'disponible', '40', 'transparen', 'cm', 5),
(6, 'cinta', 'embalaje', 'disponible', '40', 'transparen', 'cm', 6),
(7, 'lana', 'alpaca', 'disponible', '30', 'blanco', 'm', 7),
(8, 'lana', 'alpaca', 'disponible', '30', 'blanco', 'm', 8),
(9, 'cuerda', 'cañamo', 'disponible', '10', 'cafe', 'm', 9),
(10, 'cuerda', 'cañamo', 'disponible', '10', 'cafe', 'm', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro` (
  `ID_REGISTRO` int(100) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `APELLIDO` varchar(30) DEFAULT NULL,
  `TIPO_DOCUMENTO` varchar(2) DEFAULT NULL,
  `NUMERO_DOCUMENTO` int(20) DEFAULT NULL,
  `CORREO` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(12) DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL,
  `JORNADA` varchar(30) DEFAULT NULL,
  `PROGRAMA_FORMACION` varchar(100) DEFAULT NULL,
  `NUMERO_FICHA` int(15) DEFAULT NULL,
  `GENERO` varchar(10) DEFAULT NULL,
  `CONTRASENA` varchar(100) DEFAULT NULL,
  `ID_ROL` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID_REGISTRO`, `NOMBRE`, `APELLIDO`, `TIPO_DOCUMENTO`, `NUMERO_DOCUMENTO`, `CORREO`, `TELEFONO`, `DIRECCION`, `JORNADA`, `PROGRAMA_FORMACION`, `NUMERO_FICHA`, `GENERO`, `CONTRASENA`, `ID_ROL`) VALUES
(2, 'sebastian', 'henao', 'c.', 1018226843, 'sebas@gmail.com', '3147529717', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'masculino', 'sebas1357', 1),
(3, 'camila', 'grajales', 'c.', 1065987233, 'camila@gmail.com', '3134567890', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'femenino', 'camila12345', 1),
(4, 'manuel', 'martinez', 'c.', 1098213455, 'manuel@gmail.com', '3208990065', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'masculino', 'manuel12345', 1),
(5, 'daniela', 'jaramillo', 'c.', 1073465783, 'dani@gmail.com', '3235678991', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'femenino', 'dani12345', 1),
(6, 'santiago', 'martinez', 'c.', 1065233843, 'santi@gmail.com', '3208990065', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'masculino', 'santi12345', 1),
(7, 'valentina', 'hernandez', 'c.', 1093214567, 'vale@gmail.com', '3235678991', 'calle 107 sur', 'diurna', 'ADSI', 2472762, 'femenino', 'vale12345', 1),
(8, 'many', 'martinez', 'c.', 1087656789, 'many@gmail.com', '3208990065', 'calle 107 sur', '', '', 0, 'masculino', 'manuel12345', 2),
(9, 'luis', 'becerra', 'c.', 2147483647, 'eib@gmail.com', '3235678991', 'calle 107 sur', '', '', 0, 'masculino', 'eibi12345', 2),
(10, 'paula', 'martinez', 'c.', 1034789456, 'paula@gmail.com', '3208990065', 'calle 107 sur', '', '', 0, 'femenino', 'paulal12345', 3),
(11, 'rutelio', 'lopez', 'c.', 1028976543, 'rute@gmail.com', '3235678991', 'calle 107 sur', '', '', 0, 'masculino', 'admini12345', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `ID_ROL` int(11) NOT NULL,
  `NOMBRE_ROL` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_ROL`, `NOMBRE_ROL`, `ESTADO`) VALUES
(1, 'aprendiz', '0'),
(2, 'instructor', '0'),
(3, 'coordinador', '0'),
(4, 'admi', '0'),
(5, 'admi', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`ID_AMBIENTES`),
  ADD KEY `ID_PRESTAMO_HERRA` (`ID_HERRAMIENTA`),
  ADD KEY `ID_PRESTAMO_MATERIAL` (`ID_MATERIAL`),
  ADD KEY `ID_HORARIO` (`ID_HORARIO`);

--
-- Indices de la tabla `computadores`
--
ALTER TABLE `computadores`
  ADD PRIMARY KEY (`ID_PC`),
  ADD KEY `ID_HORARIO` (`ID_HORARIO`);

--
-- Indices de la tabla `funcionesrol`
--
ALTER TABLE `funcionesrol`
  ADD PRIMARY KEY (`ID_FUNCIONES`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`ID_HERRAMIENTA`),
  ADD KEY `ID_HORARIO` (`ID_HORARIO`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID_HORARIO`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_INVENTARIO`),
  ADD KEY `ID_PRESTAMO_PC` (`ID_PC`),
  ADD KEY `ID_PRESTAMO_HERRA` (`ID_HERRAMIENTA`),
  ADD KEY `ID_AMBIENTES` (`ID_AMBIENTES`),
  ADD KEY `ID_HORARIO` (`ID_HORARIO`),
  ADD KEY `ID_PRESTAMO_MATERIAL` (`ID_MATERIAL`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID_MATERIAL`),
  ADD KEY `ID_HORARIO` (`ID_HORARIO`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID_REGISTRO`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  MODIFY `ID_AMBIENTES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `computadores`
--
ALTER TABLE `computadores`
  MODIFY `ID_PC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `funcionesrol`
--
ALTER TABLE `funcionesrol`
  MODIFY `ID_FUNCIONES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  MODIFY `ID_HERRAMIENTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `ID_HORARIO` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `ID_INVENTARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `ID_MATERIAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID_REGISTRO` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD CONSTRAINT `ambientes_ibfk_1` FOREIGN KEY (`ID_HERRAMIENTA`) REFERENCES `herramientas` (`ID_HERRAMIENTA`),
  ADD CONSTRAINT `ambientes_ibfk_2` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID_HORARIO`),
  ADD CONSTRAINT `ambientes_ibfk_3` FOREIGN KEY (`ID_MATERIAL`) REFERENCES `material` (`ID_MATERIAL`);

--
-- Filtros para la tabla `computadores`
--
ALTER TABLE `computadores`
  ADD CONSTRAINT `computadores_ibfk_1` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID_HORARIO`);

--
-- Filtros para la tabla `funcionesrol`
--
ALTER TABLE `funcionesrol`
  ADD CONSTRAINT `funcionesrol_ibfk_1` FOREIGN KEY (`ID_ROL`) REFERENCES `rol` (`ID_ROL`);

--
-- Filtros para la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD CONSTRAINT `herramientas_ibfk_1` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID_HORARIO`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`ID_PC`) REFERENCES `computadores` (`ID_PC`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`ID_HERRAMIENTA`) REFERENCES `herramientas` (`ID_HERRAMIENTA`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`ID_AMBIENTES`) REFERENCES `ambientes` (`ID_AMBIENTES`),
  ADD CONSTRAINT `inventario_ibfk_4` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID_HORARIO`),
  ADD CONSTRAINT `inventario_ibfk_5` FOREIGN KEY (`ID_MATERIAL`) REFERENCES `material` (`ID_MATERIAL`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID_HORARIO`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`ID_ROL`) REFERENCES `rol` (`ID_ROL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
