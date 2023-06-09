-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-06-2023 a las 05:14:05
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
CREATE DATABASE IF NOT EXISTS `proyectoprestamo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyectoprestamo`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `deleteAmbientes`$$
CREATE DEFINER=`` PROCEDURE `deleteAmbientes` (IN `_ID` INT)   BEGIN
    DELETE FROM ambientes
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `deleteComputador`$$
CREATE DEFINER=`` PROCEDURE `deleteComputador` (IN `_ID_COMPUTADOR` INT)   BEGIN
    DELETE FROM computador
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `deleteElementos`$$
CREATE DEFINER=`` PROCEDURE `deleteElementos` (IN `_ID_ELEMENTOS` INT)   BEGIN
    DELETE FROM elementos
    WHERE ID_ELEMENTOS = _ID_ELEMENTOS;
END$$

DROP PROCEDURE IF EXISTS `deleteHerramienta`$$
CREATE DEFINER=`` PROCEDURE `deleteHerramienta` (IN `_ID_HERRAMIENTA` INT)   BEGIN
    DELETE FROM herramienta
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `deleteInventario`$$
CREATE DEFINER=`` PROCEDURE `deleteInventario` (IN `_ID_INVENTARIO` INT(1))   BEGIN
    DELETE FROM inventario
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `deleteMaterial`$$
CREATE DEFINER=`` PROCEDURE `deleteMaterial` (IN `_ID_MATERIAL` INT)   BEGIN
    DELETE FROM material
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `deletePrestamos`$$
CREATE DEFINER=`` PROCEDURE `deletePrestamos` (IN `_ID_PRESTAMOS` INT)   BEGIN
    DELETE FROM prestamos
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `deleteResElem`$$
CREATE DEFINER=`` PROCEDURE `deleteResElem` (IN `_ID_RES_ELEM` INT)   BEGIN
    DELETE FROM res_elem
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `deleteReserva`$$
CREATE DEFINER=`` PROCEDURE `deleteReserva` (IN `_ID_RESERVA` INT)   BEGIN
    DELETE FROM reserva
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `deleteRol`$$
CREATE DEFINER=`` PROCEDURE `deleteRol` (IN `_ID_ROL` INT)   BEGIN
    DELETE FROM rol
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `deleteUsuario`$$
CREATE DEFINER=`` PROCEDURE `deleteUsuario` (IN `_ID_USUARIO` INT)   BEGIN
    DELETE FROM usuario
    WHERE ID_USUARIO = _ID_USUARIO;
END$$

DROP PROCEDURE IF EXISTS `findAllAmbientes`$$
CREATE DEFINER=`` PROCEDURE `findAllAmbientes` ()   BEGIN
    SELECT ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS
    FROM ambientes;
END$$

DROP PROCEDURE IF EXISTS `findAllComputador`$$
CREATE DEFINER=`` PROCEDURE `findAllComputador` ()   BEGIN
    SELECT ID_COMPUTADOR, MARCA, CARGADOR, MOUSE
    FROM computador;
END$$

DROP PROCEDURE IF EXISTS `findAllElementos`$$
CREATE DEFINER=`` PROCEDURE `findAllElementos` ()   BEGIN
    SELECT ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO
    FROM elementos;
END$$

DROP PROCEDURE IF EXISTS `findAllHerramienta`$$
CREATE DEFINER=`` PROCEDURE `findAllHerramienta` ()   BEGIN
    SELECT ID_HERRAMIENTA, TIPO, COLOR
    FROM herramienta;
END$$

DROP PROCEDURE IF EXISTS `findAllInventario`$$
CREATE DEFINER=`` PROCEDURE `findAllInventario` ()   BEGIN
    SELECT ID_INVENTARIO, CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL
    FROM inventario;
END$$

DROP PROCEDURE IF EXISTS `findAllMaterial`$$
CREATE DEFINER=`` PROCEDURE `findAllMaterial` ()   BEGIN
    SELECT ID_MATERIAL, TIPO, COLOR, MEDIDAS
    FROM material;
END$$

DROP PROCEDURE IF EXISTS `findAllPrestamos`$$
CREATE DEFINER=`` PROCEDURE `findAllPrestamos` ()   BEGIN
    SELECT ID_PRESTAMOS, FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO
    FROM prestamos;
END$$

DROP PROCEDURE IF EXISTS `findAllResElem`$$
CREATE DEFINER=`` PROCEDURE `findAllResElem` ()   BEGIN
    SELECT ID_RES_ELEM, ID_RESERVA, ID_INVENTARIO
    FROM res_elem;
END$$

DROP PROCEDURE IF EXISTS `findAllReserva`$$
CREATE DEFINER=`` PROCEDURE `findAllReserva` ()   BEGIN
    SELECT ID_RESERVA, FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO
    FROM reserva;
END$$

DROP PROCEDURE IF EXISTS `findAllRol`$$
CREATE DEFINER=`` PROCEDURE `findAllRol` ()   BEGIN
    SELECT ID_ROL, NOMBRE_ROL, ESTADO
    FROM rol;
END$$

DROP PROCEDURE IF EXISTS `findAllUsuario`$$
CREATE DEFINER=`` PROCEDURE `findAllUsuario` ()   BEGIN
    SELECT ID_USUARIO, NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL
    FROM usuario;
END$$

DROP PROCEDURE IF EXISTS `findAmbientes`$$
CREATE DEFINER=`` PROCEDURE `findAmbientes` (IN `_ID` INT)   BEGIN
    SELECT ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS
    FROM ambientes
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `findComputador`$$
CREATE DEFINER=`` PROCEDURE `findComputador` (IN `_ID_COMPUTADOR` INT)   BEGIN
    SELECT ID_COMPUTADOR, MARCA, CARGADOR, MOUSE
    FROM computador
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `findElementos`$$
CREATE DEFINER=`` PROCEDURE `findElementos` (IN `_ID_ELEMENTOS` INT)   BEGIN
    SELECT ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO
    FROM elementos
    WHERE ID_ELEMENTOS = _ID_ELEMENTOS;
END$$

DROP PROCEDURE IF EXISTS `findHerramienta`$$
CREATE DEFINER=`` PROCEDURE `findHerramienta` (IN `_ID_HERRAMIENTA` INT)   BEGIN
    SELECT ID_HERRAMIENTA, TIPO, COLOR
    FROM herramienta
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `findInventario`$$
CREATE DEFINER=`` PROCEDURE `findInventario` (IN `_ID_INVENTARIO` INT)   BEGIN
    SELECT ID_INVENTARIO, CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL
    FROM inventario
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `findMaterial`$$
CREATE DEFINER=`` PROCEDURE `findMaterial` (IN `_ID_MATERIAL` INT)   BEGIN
    SELECT ID_MATERIAL, TIPO, COLOR, MEDIDAS
    FROM material
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `findPrestamos`$$
CREATE DEFINER=`` PROCEDURE `findPrestamos` (IN `_ID_PRESTAMOS` INT)   BEGIN
    SELECT ID_PRESTAMOS, FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO
    FROM prestamos
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `findResElem`$$
CREATE DEFINER=`` PROCEDURE `findResElem` (IN `_ID_RES_ELEM` INT)   BEGIN
    SELECT ID_RES_ELEM, ID_RESERVA, ID_INVENTARIO
    FROM res_elem
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `findReserva`$$
CREATE DEFINER=`` PROCEDURE `findReserva` (IN `_ID_RESERVA` INT)   BEGIN
    SELECT ID_RESERVA, FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO
    FROM reserva
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `findRol`$$
CREATE DEFINER=`` PROCEDURE `findRol` (IN `_ID_ROL` INT)   BEGIN
    SELECT ID_ROL, NOMBRE_ROL, ESTADO
    FROM rol
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `findUsuario`$$
CREATE DEFINER=`` PROCEDURE `findUsuario` (IN `_ID_USUARIO` INT)   BEGIN
    SELECT ID_USUARIO, NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL
    FROM usuario
    WHERE ID_USUARIO = _ID_USUARIO;
END$$

DROP PROCEDURE IF EXISTS `insertAmbientes`$$
CREATE DEFINER=`` PROCEDURE `insertAmbientes` (IN `_ID_AMBIENTES` INT(100), IN `_CANT_SILLAS` INT(100), IN `_CANT_MESAS` INT(100), IN `_NUM_APRENDICES` INT(100), IN `_NUM_EQUIPOS` INT(100))   BEGIN
    INSERT INTO ambientes (ID_AMBIENTES, CANT_SILLAS, CANT_MESAS, NUM_APRENDICES, NUM_EQUIPOS)
    VALUES (_ID_AMBIENTES, _CANT_SILLAS, _CANT_MESAS, _NUM_APRENDICES, _NUM_EQUIPOS);
END$$

DROP PROCEDURE IF EXISTS `insertComputador`$$
CREATE DEFINER=`` PROCEDURE `insertComputador` (IN `_ID_COMPUTADOR` INT, IN `_MARCA` VARCHAR(100), IN `_CARGADOR` VARCHAR(10), IN `_MOUSE` VARCHAR(10))   BEGIN
    INSERT INTO computador (ID_COMPUTADOR, MARCA, CARGADOR, MOUSE)
    VALUES (_ID_COMPUTADOR, _MARCA, _CARGADOR, _MOUSE);
END$$

DROP PROCEDURE IF EXISTS `insertElementos`$$
CREATE DEFINER=`` PROCEDURE `insertElementos` (IN `_ID_ELEMENTOS` INT, IN `_ESTADO_ACTUAL` TINYINT, IN `_ID_PRESTAMOS` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    INSERT INTO elementos (ID_ELEMENTOS, ESTADO_ACTUAL, ID_PRESTAMOS, ID_INVENTARIO)
    VALUES (_ID_ELEMENTOS, _ESTADO_ACTUAL, _ID_PRESTAMOS, _ID_INVENTARIO);
END$$

DROP PROCEDURE IF EXISTS `insertHerramienta`$$
CREATE DEFINER=`` PROCEDURE `insertHerramienta` (IN `_ID_HERRAMIENTA` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10))   BEGIN
    INSERT INTO herramienta (ID_HERRAMIENTA, TIPO, COLOR)
    VALUES (_ID_HERRAMIENTA, _TIPO, _COLOR);
END$$

DROP PROCEDURE IF EXISTS `insertInventario`$$
CREATE DEFINER=`` PROCEDURE `insertInventario` (IN `_ID_INVENTARIO` INT(1), IN `_CANTIDAD` INT(100), IN `_FECHA_REGISTRO` DATE, IN `_ESTADO` TINYINT(3), IN `_ID_COMPUTADOR` INT(100), IN `_ID_HERRAMIENTA` INT(1), IN `_ID_AMBIENTES` INT(1), IN `_ID_MATERIAL` INT(2))   BEGIN
    INSERT INTO inventario (ID_INVENTARIO, CANTIDAD, FECHA_REGISTRO, ESTADO, ID_COMPUTADOR, ID_HERRAMIENTA, ID_AMBIENTES, ID_MATERIAL)
    VALUES (_ID_INVENTARIO, _CANTIDAD, _FECHA_REGISTRO, _ESTADO, _ID_COMPUTADOR, _ID_HERRAMIENTA, _ID_AMBIENTES, _ID_MATERIAL);
END$$

DROP PROCEDURE IF EXISTS `insertMaterial`$$
CREATE DEFINER=`` PROCEDURE `insertMaterial` (IN `_ID_MATERIAL` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10), IN `_MEDIDAS` VARCHAR(10))   BEGIN
    INSERT INTO material (ID_MATERIAL, TIPO, COLOR, MEDIDAS)
    VALUES (_ID_MATERIAL, _TIPO, _COLOR, _MEDIDAS);
END$$

DROP PROCEDURE IF EXISTS `insertPrestamos`$$
CREATE DEFINER=`` PROCEDURE `insertPrestamos` (IN `_ID_PRESTAMOS` INT, IN `_FECHA_PRESTAMO` DATE, IN `_FINAL_PRESTAMO` DATE, IN `_OBSERVACIONES` VARCHAR(100), IN `_ID_USUARIO` INT)   BEGIN
    INSERT INTO prestamos (ID_PRESTAMOS, FECHA_PRESTAMO, FINAL_PRESTAMO, OBSERVACIONES, ID_USUARIO)
    VALUES (_ID_PRESTAMOS, _FECHA_PRESTAMO, _FINAL_PRESTAMO, _OBSERVACIONES, _ID_USUARIO);
END$$

DROP PROCEDURE IF EXISTS `insertResElem`$$
CREATE DEFINER=`` PROCEDURE `insertResElem` (IN `_ID_RES_ELEM` INT, IN `_ID_RESERVA` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    INSERT INTO res_elem (ID_RES_ELEM, ID_RESERVA, ID_INVENTARIO)
    VALUES (_ID_RES_ELEM, _ID_RESERVA, _ID_INVENTARIO);
END$$

DROP PROCEDURE IF EXISTS `insertReserva`$$
CREATE DEFINER=`` PROCEDURE `insertReserva` (IN `_ID_RESERVA` INT, IN `_FECHA_RES` DATE, IN `_HORA_RES` TIME, IN `_TIEMPO_REQUERIDO` TIME, IN `_ID_USUARIO` INT)   BEGIN
    INSERT INTO reserva (ID_RESERVA, FECHA_RES, HORA_RES, TIEMPO_REQUERIDO, ID_USUARIO)
    VALUES (_ID_RESERVA, _FECHA_RES, _HORA_RES, _TIEMPO_REQUERIDO, _ID_USUARIO);
END$$

DROP PROCEDURE IF EXISTS `insertRol`$$
CREATE DEFINER=`` PROCEDURE `insertRol` (IN `_ID_ROL` INT, IN `_NOMBRE_ROL` VARCHAR(100), IN `_ESTADO` TINYINT)   BEGIN
    INSERT INTO rol (ID_ROL, NOMBRE_ROL, ESTADO)
    VALUES (_ID_ROL, _NOMBRE_ROL, _ESTADO);
END$$

DROP PROCEDURE IF EXISTS `insertUsuario`$$
CREATE DEFINER=`` PROCEDURE `insertUsuario` (IN `_ID_USUARIO` INT, IN `_NOMBRE` VARCHAR(30), IN `_APELLIDO` VARCHAR(30), IN `_TIPO_DOCUMENTO` VARCHAR(3), IN `_NUM_DOCUMENTO` INT, IN `_CORREO` VARCHAR(30), IN `_TELEFONO` VARCHAR(12), IN `_DIRECCION` VARCHAR(30), IN `_JORNADA` VARCHAR(30), IN `_PROGRAMA_FORMACION` VARCHAR(100), IN `_NUM_FICHA` INT, IN `_GENERO` VARCHAR(10), IN `_CONTRASENA` VARCHAR(100), IN `_ID_ROL` INT)   BEGIN
    INSERT INTO usuario (ID_USUARIO, NOMBRE, APELLIDO, TIPO_DOCUMENTO, NUM_DOCUMENTO, CORREO, TELEFONO, DIRECCION, JORNADA, PROGRAMA_FORMACION, NUM_FICHA, GENERO, CONTRASENA, ID_ROL)
    VALUES (_ID_USUARIO, _NOMBRE, _APELLIDO, _TIPO_DOCUMENTO, _NUM_DOCUMENTO, _CORREO, _TELEFONO, _DIRECCION, _JORNADA, _PROGRAMA_FORMACION, _NUM_FICHA, _GENERO, _CONTRASENA, _ID_ROL);
END$$

DROP PROCEDURE IF EXISTS `updateAmbientes`$$
CREATE DEFINER=`` PROCEDURE `updateAmbientes` (IN `_ID` INT, IN `_CANT_SILLAS` INT, IN `_CANT_MESAS` INT, IN `_NUM_APRENDICES` INT, IN `_NUM_EQUIPOS` INT)   BEGIN
    UPDATE ambientes
    SET CANT_SILLAS = _CANT_SILLAS, CANT_MESAS = _CANT_MESAS, NUM_APRENDICES = _NUM_APRENDICES, NUM_EQUIPOS = _NUM_EQUIPOS
    WHERE ID_AMBIENTES = _ID;
END$$

DROP PROCEDURE IF EXISTS `updateComputador`$$
CREATE DEFINER=`` PROCEDURE `updateComputador` (IN `_ID_COMPUTADOR` INT, IN `_MARCA` VARCHAR(100), IN `_CARGADOR` VARCHAR(10), IN `_MOUSE` VARCHAR(10))   BEGIN
    UPDATE computador
    SET MARCA = _MARCA, CARGADOR = _CARGADOR, MOUSE = _MOUSE
    WHERE ID_COMPUTADOR = _ID_COMPUTADOR;
END$$

DROP PROCEDURE IF EXISTS `updateElementos`$$
CREATE DEFINER=`` PROCEDURE `updateElementos` (IN `_ID_ELEMENTOS` INT, IN `_ESTADO_ACTUAL` TINYINT, IN `_ID_PRESTAMOS` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    UPDATE elementos
    SET ESTADO_ACTUAL = _ESTADO_ACTUAL, ID_PRESTAMOS = _ID_PRESTAMOS, ID_INVENTARIO = _ID_INVENTARIO
    WHERE ID_ELEMENTOS = _ID_ELEMENTOS;
END$$

DROP PROCEDURE IF EXISTS `updateHerramienta`$$
CREATE DEFINER=`` PROCEDURE `updateHerramienta` (IN `_ID_HERRAMIENTA` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10))   BEGIN
    UPDATE herramienta
    SET TIPO = _TIPO, COLOR = _COLOR
    WHERE ID_HERRAMIENTA = _ID_HERRAMIENTA;
END$$

DROP PROCEDURE IF EXISTS `updateInventario`$$
CREATE DEFINER=`` PROCEDURE `updateInventario` (IN `_ID_INVENTARIO` INT, IN `_CANTIDAD` INT, IN `_FECHA_REGISTRO` DATE, IN `_ESTADO` TINYINT, IN `_ID_COMPUTADOR` INT, IN `_ID_HERRAMIENTA` INT, IN `_ID_AMBIENTES` INT, IN `_ID_MATERIAL` INT)   BEGIN
    UPDATE inventario
    SET CANTIDAD = _CANTIDAD, FECHA_REGISTRO = _FECHA_REGISTRO, ESTADO = _ESTADO, ID_COMPUTADOR = _ID_COMPUTADOR, ID_HERRAMIENTA = _ID_HERRAMIENTA, ID_AMBIENTES = _ID_AMBIENTES, ID_MATERIAL = _ID_MATERIAL
    WHERE ID_INVENTARIO = _ID_INVENTARIO;
END$$

DROP PROCEDURE IF EXISTS `updateMaterial`$$
CREATE DEFINER=`` PROCEDURE `updateMaterial` (IN `_ID_MATERIAL` INT, IN `_TIPO` VARCHAR(100), IN `_COLOR` VARCHAR(10), IN `_MEDIDAS` VARCHAR(10))   BEGIN
    UPDATE material
    SET TIPO = _TIPO, COLOR = _COLOR, MEDIDAS = _MEDIDAS
    WHERE ID_MATERIAL = _ID_MATERIAL;
END$$

DROP PROCEDURE IF EXISTS `updatePrestamos`$$
CREATE DEFINER=`` PROCEDURE `updatePrestamos` (IN `_ID_PRESTAMOS` INT, IN `_FECHA_PRESTAMO` DATE, IN `_FINAL_PRESTAMO` DATE, IN `_OBSERVACIONES` VARCHAR(100), IN `_ID_USUARIO` INT)   BEGIN
    UPDATE prestamos
    SET FECHA_PRESTAMO = _FECHA_PRESTAMO, FINAL_PRESTAMO = _FINAL_PRESTAMO, OBSERVACIONES = _OBSERVACIONES, ID_USUARIO = _ID_USUARIO
    WHERE ID_PRESTAMOS = _ID_PRESTAMOS;
END$$

DROP PROCEDURE IF EXISTS `updateResElem`$$
CREATE DEFINER=`` PROCEDURE `updateResElem` (IN `_ID_RES_ELEM` INT, IN `_ID_RESERVA` INT, IN `_ID_INVENTARIO` INT)   BEGIN
    UPDATE res_elem
    SET ID_RESERVA = _ID_RESERVA, ID_INVENTARIO = _ID_INVENTARIO
    WHERE ID_RES_ELEM = _ID_RES_ELEM;
END$$

DROP PROCEDURE IF EXISTS `updateReserva`$$
CREATE DEFINER=`` PROCEDURE `updateReserva` (IN `_ID_RESERVA` INT, IN `_FECHA_RES` DATE, IN `_HORA_RES` TIME, IN `_TIEMPO_REQUERIDO` TIME, IN `_ID_USUARIO` INT)   BEGIN
    UPDATE reserva
    SET FECHA_RES = _FECHA_RES, HORA_RES = _HORA_RES, TIEMPO_REQUERIDO = _TIEMPO_REQUERIDO, ID_USUARIO = _ID_USUARIO
    WHERE ID_RESERVA = _ID_RESERVA;
END$$

DROP PROCEDURE IF EXISTS `updateRol`$$
CREATE DEFINER=`` PROCEDURE `updateRol` (IN `_ID_ROL` INT, IN `_NOMBRE_ROL` VARCHAR(100), IN `_ESTADO` TINYINT)   BEGIN
    UPDATE rol
    SET NOMBRE_ROL = _NOMBRE_ROL, ESTADO = _ESTADO
    WHERE ID_ROL = _ID_ROL;
END$$

DROP PROCEDURE IF EXISTS `updateUsuario`$$
CREATE DEFINER=`` PROCEDURE `updateUsuario` (IN `_ID_USUARIO` INT, IN `_NOMBRE` VARCHAR(30), IN `_APELLIDO` VARCHAR(30), IN `_TIPO_DOCUMENTO` VARCHAR(3), IN `_NUM_DOCUMENTO` INT, IN `_CORREO` VARCHAR(30), IN `_TELEFONO` VARCHAR(12), IN `_DIRECCION` VARCHAR(30), IN `_JORNADA` VARCHAR(30), IN `_PROGRAMA_FORMACION` VARCHAR(100), IN `_NUM_FICHA` INT, IN `_GENERO` VARCHAR(10), IN `_CONTRASENA` VARCHAR(100), IN `_ID_ROL` INT)   BEGIN
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 11, '2021-01-23', 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `ID_MATERIAL` int(100) NOT NULL,
  `TIPO` varchar(100) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `MEDIDAS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_elem`
--

DROP TABLE IF EXISTS `res_elem`;
CREATE TABLE `res_elem` (
  `ID_RES_ELEM` int(100) NOT NULL,
  `ID_RESERVA` int(100) NOT NULL,
  `ID_INVENTARIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `ID_ROL` int(100) NOT NULL,
  `NOMBRE_ROL` varchar(100) NOT NULL,
  `ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `NUM_DOCUMENTO` int(20) DEFAULT NULL,
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
  ADD UNIQUE KEY `ID_PRESTAMOS` (`ID_PRESTAMOS`),
  ADD UNIQUE KEY `ID_INVENTARIO` (`ID_INVENTARIO`);

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
  ADD UNIQUE KEY `ID_COMPUTADOR` (`ID_COMPUTADOR`) USING BTREE,
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
  ADD PRIMARY KEY (`ID_PRESTAMOS`) USING BTREE,
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
  ADD UNIQUE KEY `ID_ROL` (`ID_ROL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `ID_INVENTARIO` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `ID_PRESTAMOS` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `ID_RESERVA` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_elem`
--
ALTER TABLE `res_elem`
  MODIFY `ID_RES_ELEM` int(100) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD CONSTRAINT `ambientes_ibfk_1` FOREIGN KEY (`ID_AMBIENTES`) REFERENCES `inventario` (`ID_AMBIENTES`);

--
-- Filtros para la tabla `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`ID_COMPUTADOR`) REFERENCES `inventario` (`ID_COMPUTADOR`);

--
-- Filtros para la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD CONSTRAINT `elementos_ibfk_1` FOREIGN KEY (`ID_INVENTARIO`) REFERENCES `inventario` (`ID_INVENTARIO`),
  ADD CONSTRAINT `elementos_ibfk_2` FOREIGN KEY (`ID_PRESTAMOS`) REFERENCES `prestamos` (`ID_PRESTAMOS`);

--
-- Filtros para la tabla `herramienta`
--
ALTER TABLE `herramienta`
  ADD CONSTRAINT `herramienta_ibfk_1` FOREIGN KEY (`ID_HERRAMIENTA`) REFERENCES `inventario` (`ID_HERRAMIENTA`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`ID_MATERIAL`) REFERENCES `inventario` (`ID_MATERIAL`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `res_elem`
--
ALTER TABLE `res_elem`
  ADD CONSTRAINT `res_elem_ibfk_1` FOREIGN KEY (`ID_INVENTARIO`) REFERENCES `inventario` (`ID_INVENTARIO`),
  ADD CONSTRAINT `res_elem_ibfk_2` FOREIGN KEY (`ID_RESERVA`) REFERENCES `reserva` (`ID_RESERVA`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_ROL`) REFERENCES `rol` (`ID_ROL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
