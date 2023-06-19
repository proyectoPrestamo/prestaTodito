-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2023 a las 06:02:16
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
-- Base de datos: `proyectoprestamo`
--
CREATE DATABASE IF NOT EXISTS `proyectoprestamo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proyectoprestamo`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `spDeleteAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteAmbientes` (IN `_ID` INT)   BEGIN
    DELETE FROM ambientes
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `spDeleteComputador`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteComputador` (IN `_ID_COMPUTADOR` INT)   BEGIN
    DELETE FROM computador
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `spDeleteElementos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteElementos` (IN `_ID_ELEMENTO` INT)   BEGIN
    DELETE FROM elementos
    WHERE ID_ELEMENTOS = _ID_ELEMENTO;
END$$

DROP PROCEDURE IF EXISTS `spDeleteHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteHerramienta` (IN `_ID_HERRAMIENTA` INT)   BEGIN
    DELETE FROM herramienta
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spDeleteInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteInventario` (IN `_ID_INVENTARIO` INT)   BEGIN
    DELETE FROM inventario
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `spDeleteMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteMaterial` (IN `_ID_MATERIAL` INT)   BEGIN
    DELETE FROM material
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `spDeletePrestamos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeletePrestamos` (IN `_ID_PRESTAMOS` INT)   BEGIN
    DELETE FROM prestamos
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `spDeleteResElem`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteResElem` (IN `_ID_RES_ELEM` INT)   BEGIN
    DELETE FROM res_elem
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `spDeleteReserva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteReserva` (IN `_ID_RESERVA` INT)   BEGIN
    DELETE FROM reserva
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `spDeleteRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteRol` (IN `_ID_ROL` INT)   BEGIN
    DELETE FROM rol
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `spDeleteUsuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteUsuario` (IN `_ID_USUARIO` INT)   BEGIN
    DELETE FROM usuario
    WHERE ID_USUARIO = _ID_USUARIO;
END$$

DROP PROCEDURE IF EXISTS `spFindAllAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllAmbientes` ()   BEGIN
    SELECT ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS
    FROM ambientes;
END$$

DROP PROCEDURE IF EXISTS `spFindAllComputador`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllComputador` ()   BEGIN
    SELECT ID_COMPUTADOR, MARCA, CARGADOR, MOUSE
    FROM computador;
END$$

DROP PROCEDURE IF EXISTS `spFindAllElementos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllElementos` ()   BEGIN
    SELECT ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO
    FROM elementos;
END$$

DROP PROCEDURE IF EXISTS `spFindAllHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllHerramienta` ()   BEGIN
    SELECT ID_HERRAMIENTA, TIPO, COLOR
    FROM herramienta;
END$$

DROP PROCEDURE IF EXISTS `spFindAllInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllInventario` ()   BEGIN
    SELECT ID_INVENTARIO, CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL
    FROM inventario;
END$$

DROP PROCEDURE IF EXISTS `spFindAllMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllMaterial` ()   BEGIN
    SELECT ID_MATERIAL,NOMBRE, TIPO, COLOR, MEDIDAS
    FROM material;
END$$

DROP PROCEDURE IF EXISTS `spFindAllPrestamos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllPrestamos` ()   BEGIN
    SELECT ID_PRESTAMOS, FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO
    FROM prestamos;
END$$

DROP PROCEDURE IF EXISTS `spFindAllResElem`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllResElem` ()   BEGIN
    SELECT ID_RES_ELEM, ID_RESERVA, ID_INVENTARIO
    FROM res_elem;
END$$

DROP PROCEDURE IF EXISTS `spFindAllReserva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllReserva` ()   BEGIN
    SELECT ID_RESERVA, FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO
    FROM reserva;
END$$

DROP PROCEDURE IF EXISTS `spFindAllRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllRol` ()   BEGIN
    SELECT ID_ROL, NOMBRE_ROL, ESTADO
    FROM rol;
END$$

DROP PROCEDURE IF EXISTS `spFindAllUsuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAllUsuario` ()   BEGIN
    SELECT ID_USUARIO, NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL
    FROM usuario;
END$$

DROP PROCEDURE IF EXISTS `spFindAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindAmbientes` (IN `_ID` INT)   BEGIN
    SELECT ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS
    FROM ambientes
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `spFindComputador`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindComputador` (IN `_ID_COMPUTADOR` INT)   BEGIN
    SELECT ID_COMPUTADOR, MARCA, CARGADOR, MOUSE
    FROM computador
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `spFindElementos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindElementos` (IN `_ID_ELEMENTO` INT)   BEGIN
    SELECT ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO
    FROM elementos
    WHERE ID_ELEMENTOS = _ID_ELEMENTO;
END$$

DROP PROCEDURE IF EXISTS `spFindHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindHerramienta` (IN `_ID_HERRAMIENTA` INT)   BEGIN
    SELECT ID_HERRAMIENTA, TIPO, COLOR
    FROM herramienta
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spFindInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindInventario` (IN `_ID_INVENTARIO` INT)   BEGIN
    SELECT ID_INVENTARIO, CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL
    FROM inventario
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `spFindMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindMaterial` (IN `_ID_MATERIAL` INT)   BEGIN
    SELECT ID_MATERIAL, TIPO, COLOR, MEDIDAS
    FROM material
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `spFindPrestamos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindPrestamos` (IN `_ID_PRESTAMOS` INT)   BEGIN
    SELECT ID_PRESTAMOS, FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO
    FROM prestamos
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `spFindResElem`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindResElem` (IN `_ID_RES_ELEM` INT)   BEGIN
    SELECT ID_RES_ELEM, ID_RESERVA, ID_INVENTARIO
    FROM res_elem
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `spFindReserva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindReserva` (IN `_ID_RESERVA` INT)   BEGIN
    SELECT ID_RESERVA, FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO
    FROM reserva
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `spFindRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindRol` (IN `_ID_ROL` INT)   BEGIN
    SELECT ID_ROL, NOMBRE_ROL, ESTADO
    FROM rol
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `spFindUser`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindUser` (IN `_id_usuario` INT, IN `_contrasena` VARCHAR(100), IN `_id_rol` VARCHAR(100))   BEGIN
    SELECT ID_USUARIO, CONTRASENA, ID_ROL
    FROM usuario
    WHERE ID_USUARIO = _id_usuario
        AND CONTRASENA = _contrasena
        AND ID_ROL = _id_rol;
END$$

DROP PROCEDURE IF EXISTS `spFindUsuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindUsuario` (IN `_ID_USUARIO` INT)   BEGIN
    SELECT ID_USUARIO, NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL
    FROM usuario
    WHERE ID_USUARIO = _ID_USUARIO;
END$$

DROP PROCEDURE IF EXISTS `spInsertAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertAmbientes` (IN `_ID_AMBIENTES` INT, IN `_CANT_SILLAS` INT, IN `_CANT_MESAS` INT, IN `_NUM_APRENDICES` INT, IN `_NUM_EQUIPOS` INT)   BEGIN
    INSERT INTO ambientes (ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS)
    VALUES (_ID_AMBIENTES, _CANT_SILLAS, _CANT_MESAS, _NUM_APRENDICES, _NUM_EQUIPOS);
END$$

DROP PROCEDURE IF EXISTS `spInsertComputador`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertComputador` (IN `_ID_COMPUTADOR` INT, IN `_MARCA` VARCHAR(100), IN `_CARGADOR` VARCHAR(10), IN `_MOUSE` VARCHAR(10))   BEGIN
    INSERT INTO computador (ID_COMPUTADOR, MARCA, CARGADOR, MOUSE)
    VALUES (_ID_COMPUTADOR, _MARCA, _CARGADOR, _MOUSE);
END$$

DROP PROCEDURE IF EXISTS `spInsertElementos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertElementos` (IN `_ID_ELEMENTOS` INT, IN `_ESTADO_ACTUAL` TINYINT, IN `_ID_PRESTAMOS` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    INSERT INTO elementos (ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO)
    VALUES (_ID_ELEMENTOS, _ESTADO_ACTUAL, _ID_PRESTAMOS, _ID_INVENTARIO);
END$$

DROP PROCEDURE IF EXISTS `spInsertHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertHerramienta` (IN `_ID_HERRAMIENTA` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10))   BEGIN
    INSERT INTO herramienta (ID_HERRAMIENTA, TIPO, COLOR)
    VALUES (_ID_HERRAMIENTA, _TIPO, _COLOR);
END$$

DROP PROCEDURE IF EXISTS `spInsertInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertInventario` (IN `_CANTIDAD` INT, IN `_FECHA_REGISTRO` DATE, IN `_ESTADO` TINYINT, IN `_ID_COMPUTADOR` INT, IN `_ID_HERRAMIENTA` INT, IN `_ID_AMBIENTES` INT, IN `_ID_MATERIAL` INT)   BEGIN
    INSERT INTO inventario (CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL)
    VALUES ( _CANTIDAD, _FECHA_REGISTRO, _ESTADO, _ID_COMPUTADOR, _ID_HERRAMIENTA, _ID_AMBIENTES, _ID_MATERIAL);
END$$

DROP PROCEDURE IF EXISTS `spInsertMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertMaterial` (IN `_NOMBRE` VARCHAR(100), IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10), IN `_MEDIDAS` VARCHAR(10))   BEGIN
    INSERT INTO material (NOMBRE,TIPO, COLOR, MEDIDAS)
    VALUES (_NOMBRE,_TIPO, _COLOR, _MEDIDAS);
END$$

DROP PROCEDURE IF EXISTS `spInsertPrestamos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPrestamos` (IN `_FECHA_PRESTAMO` DATE, IN `_FINAL_PRESTAMO` DATE, IN `_OBSERVACIONES` VARCHAR(100), IN `_ID_USUARIO` INT)   BEGIN
    INSERT INTO prestamos (FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO)
    VALUES (_FECHA_PRESTAMO, _FINAL_PRESTAMO, _OBSERVACIONES, _ID_USUARIO);
END$$

DROP PROCEDURE IF EXISTS `spInsertResElem`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertResElem` (IN `_ID_RESERVA` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    INSERT INTO res_elem (ID_RESERVA, ID_INVENTARIO)
    VALUES ( _ID_RESERVA, _ID_INVENTARIO);
END$$

DROP PROCEDURE IF EXISTS `spInsertReserva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertReserva` (IN `_FECHA_RES` DATE, IN `_HORA_RES` TIME, IN `_TIEMPO_REQUERIDO` TIME, IN `_ID_USUARIO` INT)   BEGIN
    INSERT INTO reserva (FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO)
    VALUES (_FECHA_RES, _HORA_RES, _TIEMPO_REQUERIDO, _ID_USUARIO);
END$$

DROP PROCEDURE IF EXISTS `spInsertRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertRol` (IN `_ID_ROL` INT, IN `_NOMBRE_ROL` VARCHAR(100), IN `_ESTADO` TINYINT)   BEGIN
    INSERT INTO rol (ID_ROL,NOMBRE_ROL, ESTADO)
    VALUES (_ID_ROL,_NOMBRE_ROL, _ESTADO);
END$$

DROP PROCEDURE IF EXISTS `spInsertUsuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertUsuario` (IN `_NOMBRE` VARCHAR(30), IN `_APELLIDO` VARCHAR(30), IN `_TIPO_DOCUMENTO` VARCHAR(3), IN `_NUM_DOCUMENTO` INT, IN `_CORREO` VARCHAR(30), IN `_TELEFONO` VARCHAR(12), IN `_DIRECCION` VARCHAR(30), IN `_JORNADA` VARCHAR(30), IN `_PROGRAMA_FORMACION` VARCHAR(100), IN `_NUM_FICHA` INT, IN `_GENERO` VARCHAR(10), IN `_CONTRASENA` VARCHAR(100), IN `_ID_ROL` INT)   BEGIN
    INSERT INTO usuario (NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL)
    VALUES ( _NOMBRE, _APELLIDO, _TIPO_DOCUMENTO, _NUM_DOCUMENTO, _CORREO, _TELEFONO, _DIRECCION, _JORNADA, _PROGRAMA_FORMACION, _NUM_FICHA, _GENERO, _CONTRASENA, _ID_ROL);
END$$

DROP PROCEDURE IF EXISTS `spUpdateAmbientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateAmbientes` (IN `_ID` INT, IN `_CANT_SILLAS` INT, IN `_CANT_MESAS` INT, IN `_NUM_APRENDICES` INT, IN `_NUM_EQUIPOS` INT)   BEGIN
    UPDATE ambientes
    SET CANT_SILLAS = _CANT_SILLAS, CANT_MESAS = _CANT_MESAS, NUM_APRENDICES = _NUM_APRENDICES, NUM_EQUIPOS = _NUM_EQUIPOS
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `spUpdateComputador`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateComputador` (IN `_ID_COMPUTADOR` INT, IN `_MARCA` VARCHAR(100), IN `_CARGADOR` VARCHAR(10), IN `_MOUSE` VARCHAR(10))   BEGIN
    UPDATE computador
    SET MARCA = _MARCA, CARGADOR = _CARGADOR, MOUSE = _MOUSE
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `spUpdateElementos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateElementos` (IN `_ID_ELEMENTO` INT, IN `_ESTADO_ACTUAL` TINYINT, IN `_ID_PRESTAMOS` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    UPDATE elementos
    SET ESTADO_ACTUAL = _ESTADO_ACTUAL, ID_PRESTAMOS = _ID_PRESTAMOS, ID_INVENTARIO = _ID_INVENTARIO
    WHERE ID_ELEMENTOS = _ID_ELEMENTO;
END$$

DROP PROCEDURE IF EXISTS `spUpdateHerramienta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateHerramienta` (IN `_ID_HERRAMIENTA` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10))   BEGIN
    UPDATE herramienta
    SET TIPO = _TIPO, COLOR = _COLOR
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `spUpdateInventario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateInventario` (IN `_ID_INVENTARIO` INT, IN `_CANTIDAD` INT, IN `_FECHA_REGISTRO` DATE, IN `_ESTADO` TINYINT, IN `_ID_COMPUTADOR` INT, IN `_ID_HERRAMIENTA` INT, IN `_ID_AMBIENTES` INT, IN `_ID_MATERIAL` INT)   BEGIN
    UPDATE inventario
    SET CANTIDAD = _CANTIDAD, FECHA_REGISTRO = _FECHA_REGISTRO, ESTADO = _ESTADO, ID_COMPUTADOR = _ID_COMPUTADOR, ID_HERRAMIENTA = _ID_HERRAMIENTA, ID_AMBIENTES = _ID_AMBIENTES, ID_MATERIAL = _ID_MATERIAL
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `spUpdateMaterial`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateMaterial` (IN `_ID_MATERIAL` INT, IN `_NOMBRE` VARCHAR(100), IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10), IN `_MEDIDAS` VARCHAR(10))   BEGIN
    UPDATE material
    SET NOMBRE = _NOMBRE,TIPO = _TIPO, COLOR = _COLOR, MEDIDAS = _MEDIDAS
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `spUpdatePrestamos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdatePrestamos` (IN `_ID_PRESTAMOS` INT, IN `_FECHA_PRESTAMO` DATE, IN `_FINAL_PRESTAMO` DATE, IN `_OBSERVACIONES` VARCHAR(100), IN `_ID_USUARIO` INT)   BEGIN
    UPDATE prestamos
    SET FECHA_PRESTAMO = _FECHA_PRESTAMO, FINAL_PRESTAMO = _FINAL_PRESTAMO, OBSERVACIONES = _OBSERVACIONES, ID_USUARIO = _ID_USUARIO
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `spUpdateResElem`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateResElem` (IN `_ID_RES_ELEM` INT, IN `_ID_RESERVA` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    UPDATE res_elem
    SET ID_RESERVA = _ID_RESERVA, ID_INVENTARIO = _ID_INVENTARIO
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `spUpdateReserva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateReserva` (IN `_ID_RESERVA` INT, IN `_FECHA_RES` DATE, IN `_HORA_RES` TIME, IN `_TIEMPO_REQUERIDO` TIME, IN `_ID_USUARIO` INT)   BEGIN
    UPDATE reserva
    SET FECHA_RES = _FECHA_RES, HORA_RES = _HORA_RES, TIEMPO_REQUERIDO = _TIEMPO_REQUERIDO, ID_USUARIO = _ID_USUARIO
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `spUpdateRol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateRol` (IN `_ID_ROL` INT, IN `_NOMBRE_ROL` VARCHAR(100), IN `_ESTADO` TINYINT)   BEGIN
    UPDATE rol
    SET NOMBRE_ROL = _NOMBRE_ROL, ESTADO = _ESTADO
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `spUpdateUsuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUsuario` (IN `_ID_USUARIO` INT, IN `_NOMBRE` VARCHAR(30), IN `_APELLIDO` VARCHAR(30), IN `_TIPO_DOCUMENTO` VARCHAR(3), IN `_NUM_DOCUMENTO` INT, IN `_CORREO` VARCHAR(30), IN `_TELEFONO` VARCHAR(12), IN `_DIRECCION` VARCHAR(30), IN `_JORNADA` VARCHAR(30), IN `_PROGRAMA_FORMACION` VARCHAR(100), IN `_NUM_FICHA` INT, IN `_GENERO` VARCHAR(10), IN `_CONTRASENA` VARCHAR(100), IN `_ID_ROL` INT)   BEGIN
    UPDATE usuario
    SET NOMBRE = _NOMBRE, APELLIDO = _APELLIDO, TIPO_DOCUMENTO = _TIPO_DOCUMENTO, NUM_DOCUMENTO = _NUM_DOCUMENTO, CORREO = _CORREO, TELEFONO = _TELEFONO, DIRECCION = _DIRECCION, JORNADA = _JORNADA, PROGRAMA_FORMACION = _PROGRAMA_FORMACION, NUM_FICHA = _NUM_FICHA, GENERO = _GENERO, CONTRASENA = _CONTRASENA, ID_ROL = _ID_ROL
    WHERE ID_USUARIO = _ID_USUARIO;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambientes`
--

DROP TABLE IF EXISTS `ambientes`;
CREATE TABLE `ambientes` (
  `ID_AMBIENTES` int(100) NOT NULL,
  `CANT_SILLAS` int(100) DEFAULT NULL,
  `CANT_MESAS` int(100) DEFAULT NULL,
  `NUM_APRENDICES` int(100) DEFAULT NULL,
  `NUM_EQUIPOS` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ambientes`
--

INSERT INTO `ambientes` (`ID_AMBIENTES`, `CANT_SILLAS`, `CANT_MESAS`, `NUM_APRENDICES`, `NUM_EQUIPOS`) VALUES
(123, 11, 5, 21, 3),
(220, 2, 2, 2, 4),
(224, 23, 22, 20, 20),
(234, 10, 5, 20, 3),
(257, 15, 8, 18, 4),
(344, 132, 2, 34, 28),
(345, 14, 7, 16, 3),
(456, 8, 4, 22, 5),
(543, 18, 9, 24, 5),
(689, 16, 9, 19, 4),
(712, 20, 10, 25, 6),
(890, 12, 6, 15, 2),
(987, 13, 7, 17, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computador`
--

DROP TABLE IF EXISTS `computador`;
CREATE TABLE `computador` (
  `ID_COMPUTADOR` int(100) NOT NULL,
  `MARCA` varchar(100) DEFAULT NULL,
  `CARGADOR` varchar(10) DEFAULT NULL,
  `MOUSE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `computador`
--

INSERT INTO `computador` (`ID_COMPUTADOR`, `MARCA`, `CARGADOR`, `MOUSE`) VALUES
(1, 'hp', 'No', 'SI'),
(2, 'hp', 'No', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

DROP TABLE IF EXISTS `elementos`;
CREATE TABLE `elementos` (
  `ID_ELEMENTOS` int(100) NOT NULL,
  `ESTADO_ACTUAL` tinyint(1) NOT NULL,
  `ID_PRESTAMOS` int(100) NOT NULL,
  `ID_INVENTARIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `elementos`
--

INSERT INTO `elementos` (`ID_ELEMENTOS`, `ESTADO_ACTUAL`, `ID_PRESTAMOS`, `ID_INVENTARIO`) VALUES
(2, 0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramienta`
--

DROP TABLE IF EXISTS `herramienta`;
CREATE TABLE `herramienta` (
  `ID_HERRAMIENTA` int(100) NOT NULL,
  `TIPO` varchar(100) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `herramienta`
--

INSERT INTO `herramienta` (`ID_HERRAMIENTA`, `TIPO`, `COLOR`) VALUES
(1, 'plana', '45'),
(2, 'plana', 'rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
  `ID_INVENTARIO` int(100) NOT NULL,
  `CANTIDAD` int(100) NOT NULL,
  `FECHA_REGISTRO` date NOT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `ID_COMPUTADOR` int(100) DEFAULT NULL,
  `ID_HERRAMIENTA` int(100) DEFAULT NULL,
  `ID_AMBIENTES` int(100) DEFAULT NULL,
  `ID_MATERIAL` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`ID_INVENTARIO`, `CANTIDAD`, `FECHA_REGISTRO`, `ESTADO`, `ID_COMPUTADOR`, `ID_HERRAMIENTA`, `ID_AMBIENTES`, `ID_MATERIAL`) VALUES
(2, 2, '2023-03-01', 0, 1, 1, 1, 2),
(5, 10, '0000-00-00', 0, 4, 2, 3, 5),
(10, 2, '0000-00-00', 0, 3, 3, 5, 3),
(12, 2, '0000-00-00', 0, 0, 4, 4, 0),
(14, 90, '0000-00-00', 0, 7, 10, 11, 4),
(17, 96, '0000-00-00', 0, 9, 8, 9, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `ID_MATERIAL` int(100) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `TIPO` varchar(100) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `MEDIDAS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`ID_MATERIAL`, `NOMBRE`, `TIPO`, `COLOR`, `MEDIDAS`) VALUES
(1, 'tela', 'cuero', 'azul', 'Metros'),
(2, 'tela', 'cuero', 'azul', 'Metros'),
(4, 'tela', 'trasparente', 'azul', 'M'),
(5, 'tela', 'trasparente', 'azul', 'M'),
(6, 'tela', 'trasparente', 'azul', 'M'),
(7, 'tela', 'sintentica', 'morado', 'm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
CREATE TABLE `prestamos` (
  `ID_PRESTAMOS` int(100) NOT NULL,
  `FECHA_PRESTAMO` date NOT NULL,
  `FINAL_PRESTAMO` date NOT NULL,
  `OBSERVACIONES` varchar(100) NOT NULL,
  `ID_USUARIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE `reserva` (
  `ID_RESERVA` int(100) NOT NULL,
  `FECHA_RES` date NOT NULL,
  `HORA_RES` time NOT NULL,
  `TIEMPO_REQUERIDO` time NOT NULL,
  `ID_USUARIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_elem`
--

DROP TABLE IF EXISTS `res_elem`;
CREATE TABLE `res_elem` (
  `ID_RES_ELEM` int(100) NOT NULL,
  `ID_RESERVA` int(100) NOT NULL,
  `ID_INVENTARIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `res_elem`
--

INSERT INTO `res_elem` (`ID_RES_ELEM`, `ID_RESERVA`, `ID_INVENTARIO`) VALUES
(1, 5, 6),
(4, 99, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `ID_ROL` int(100) NOT NULL,
  `NOMBRE_ROL` varchar(100) NOT NULL,
  `ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `ID_USUARIO` int(100) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `APELLIDO` varchar(30) DEFAULT NULL,
  `TIPO_DOCUMENTO` varchar(3) DEFAULT NULL,
  `CORREO` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(12) DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL,
  `JORNADA` varchar(30) DEFAULT NULL,
  `PROGRAMA_FORMACION` varchar(100) DEFAULT NULL,
  `NUM_FICHA` int(15) DEFAULT NULL,
  `GENERO` varchar(10) DEFAULT NULL,
  `CONTRASENA` varchar(100) NOT NULL,
  `ID_ROL` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOMBRE`, `APELLIDO`, `TIPO_DOCUMENTO`, `CORREO`, `TELEFONO`, `DIRECCION`, `JORNADA`, `PROGRAMA_FORMACION`, `NUM_FICHA`, `GENERO`, `CONTRASENA`, `ID_ROL`) VALUES
(1, 'daniela', 'jaramillo', 'c.', 'danij@gmail.com', '3147536733', 'calle 142 sur', 'diurna', 'adsi', 2472762, 'femenino', 'danis357', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`ID_AMBIENTES`);

--
-- Indices de la tabla `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`ID_COMPUTADOR`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD PRIMARY KEY (`ID_ELEMENTOS`),
  ADD UNIQUE KEY `ID_INVENTARIO` (`ID_INVENTARIO`),
  ADD UNIQUE KEY `ID_PRESTAMOS` (`ID_PRESTAMOS`);

--
-- Indices de la tabla `herramienta`
--
ALTER TABLE `herramienta`
  ADD PRIMARY KEY (`ID_HERRAMIENTA`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_INVENTARIO`),
  ADD UNIQUE KEY `ID_COMPUTADOR` (`ID_COMPUTADOR`),
  ADD UNIQUE KEY `ID_HERRAMIENTA` (`ID_HERRAMIENTA`),
  ADD UNIQUE KEY `ID_AMBIENTES` (`ID_AMBIENTES`),
  ADD UNIQUE KEY `ID_MATERIAL` (`ID_MATERIAL`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID_MATERIAL`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`ID_PRESTAMOS`),
  ADD UNIQUE KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_RESERVA`),
  ADD UNIQUE KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `res_elem`
--
ALTER TABLE `res_elem`
  ADD PRIMARY KEY (`ID_RES_ELEM`),
  ADD UNIQUE KEY `ID_RESERVA` (`ID_RESERVA`),
  ADD UNIQUE KEY `ID_INVENTARIO` (`ID_INVENTARIO`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_ROL` (`ID_ROL`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computador`
--
ALTER TABLE `computador`
  MODIFY `ID_COMPUTADOR` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `elementos`
--
ALTER TABLE `elementos`
  MODIFY `ID_ELEMENTOS` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `herramienta`
--
ALTER TABLE `herramienta`
  MODIFY `ID_HERRAMIENTA` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `ID_INVENTARIO` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `ID_MATERIAL` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `ID_PRESTAMOS` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `ID_RESERVA` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `res_elem`
--
ALTER TABLE `res_elem`
  MODIFY `ID_RES_ELEM` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_ROL` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
