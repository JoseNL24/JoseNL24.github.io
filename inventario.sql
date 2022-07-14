-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-07-2022 a las 17:53:41
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adulto`
--

DROP TABLE IF EXISTS `adulto`;
CREATE TABLE IF NOT EXISTS `adulto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `adulto`
--

INSERT INTO `adulto` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Adulto Mayor', '2022-07-06', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/103-2/54', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agropecuario`
--

DROP TABLE IF EXISTS `agropecuario`;
CREATE TABLE IF NOT EXISTS `agropecuario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agropecuario`
--

INSERT INTO `agropecuario` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Desarrollo Agropecuario', '2022-07-08', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agua`
--

DROP TABLE IF EXISTS `agua`;
CREATE TABLE IF NOT EXISTS `agua` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agua`
--

INSERT INTO `agua` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Cultura del Agua', '2021-06-16', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
CREATE TABLE IF NOT EXISTS `biblioteca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Biblioteca Municipal', '2022-07-07', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catastro`
--

DROP TABLE IF EXISTS `catastro`;
CREATE TABLE IF NOT EXISTS `catastro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `catastro`
--

INSERT INTO `catastro` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Instituto Catastral', '2022-07-02', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/103-2/119', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicacion`
--

DROP TABLE IF EXISTS `comunicacion`;
CREATE TABLE IF NOT EXISTS `comunicacion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comunicacion`
--

INSERT INTO `comunicacion` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Comunicación Social', '2022-07-27', 'Router', 'MSAM/2/9/4/1/103-2/119', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conciliador`
--

DROP TABLE IF EXISTS `conciliador`;
CREATE TABLE IF NOT EXISTS `conciliador` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `conciliador`
--

INSERT INTO `conciliador` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Juez Conciliador', '2022-07-24', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorio`
--

DROP TABLE IF EXISTS `consultorio`;
CREATE TABLE IF NOT EXISTS `consultorio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `consultorio`
--

INSERT INTO `consultorio` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Consultorio Municipal', '2022-07-07', 'Router', 'MSAM/2/9/4/1/103-2/287', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contraloria`
--

DROP TABLE IF EXISTS `contraloria`;
CREATE TABLE IF NOT EXISTS `contraloria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contraloria`
--

INSERT INTO `contraloria` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Contraloría', '2022-07-14', 'Router', 'MSAM/2/9/4/1/120/89', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

DROP TABLE IF EXISTS `deportes`;
CREATE TABLE IF NOT EXISTS `deportes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Dirección de Deportes', '2025-11-14', 'Router', 'MSAM/2/9/4/1/120/32', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

DROP TABLE IF EXISTS `despacho`;
CREATE TABLE IF NOT EXISTS `despacho` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `despacho`
--

INSERT INTO `despacho` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Despacho Presidencial', '2022-07-20', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dif`
--

DROP TABLE IF EXISTS `dif`;
CREATE TABLE IF NOT EXISTS `dif` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dif`
--

INSERT INTO `dif` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'DIF', '2022-07-22', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ecologia`
--

DROP TABLE IF EXISTS `ecologia`;
CREATE TABLE IF NOT EXISTS `ecologia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ecologia`
--

INSERT INTO `ecologia` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Ecología y Medio Ambiente ', '2022-07-15', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/120/89', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar`
--

DROP TABLE IF EXISTS `familiar`;
CREATE TABLE IF NOT EXISTS `familiar` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `familiar`
--

INSERT INTO `familiar` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Registro Familiar', '2022-07-15', 'Router', 'MSAM/2/9/4/1/120/32', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informatica`
--

DROP TABLE IF EXISTS `informatica`;
CREATE TABLE IF NOT EXISTS `informatica` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `informatica`
--

INSERT INTO `informatica` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Informática', '2022-07-22', 'Impresora Multifuncional Epson', 'MSAM/2/9/4/1/120/89', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juridico`
--

DROP TABLE IF EXISTS `juridico`;
CREATE TABLE IF NOT EXISTS `juridico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `juridico`
--

INSERT INTO `juridico` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Dirección Jurídica', '2022-08-03', 'Router', 'MSAM/2/9/4/1/120/32', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mujer`
--

DROP TABLE IF EXISTS `mujer`;
CREATE TABLE IF NOT EXISTS `mujer` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mujer`
--

INSERT INTO `mujer` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Instancia A La Mujer', '2022-07-28', 'Router', 'MSAM/2/9/4/1/120/32', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

DROP TABLE IF EXISTS `obras`;
CREATE TABLE IF NOT EXISTS `obras` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Obras Públicas', '2022-07-29', 'Router', 'MSAM/2/9/4/1/103-2/287', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficialia`
--

DROP TABLE IF EXISTS `oficialia`;
CREATE TABLE IF NOT EXISTS `oficialia` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `oficialia`
--

INSERT INTO `oficialia` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Oficialía Mayor', '2022-07-22', 'Router', 'MSAM/2/9/4/1/120/89', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pamar`
--

DROP TABLE IF EXISTS `pamar`;
CREATE TABLE IF NOT EXISTS `pamar` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pamar`
--

INSERT INTO `pamar` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Centro PAMAR', '2022-07-29', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/103-2/287', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planeacion`
--

DROP TABLE IF EXISTS `planeacion`;
CREATE TABLE IF NOT EXISTS `planeacion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `planeacion`
--

INSERT INTO `planeacion` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Planeación', '2022-07-21', 'Router', 'MSAM/2/9/4/1/103-2/54', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predial`
--

DROP TABLE IF EXISTS `predial`;
CREATE TABLE IF NOT EXISTS `predial` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `predial`
--

INSERT INTO `predial` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Impuesto Predial', '2022-07-06', 'Router', 'MSAM/2/9/4/1/120/32', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proteccion`
--

DROP TABLE IF EXISTS `proteccion`;
CREATE TABLE IF NOT EXISTS `proteccion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proteccion`
--

INSERT INTO `proteccion` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Protección Civil', '2022-07-29', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/120/89', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion`
--

DROP TABLE IF EXISTS `recepcion`;
CREATE TABLE IF NOT EXISTS `recepcion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `recepcion`
--

INSERT INTO `recepcion` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Recepción', '2022-07-30', 'Impresora Multifuncional Epson', 'MSAM/2/9/4/1/120/32', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretariag`
--

DROP TABLE IF EXISTS `secretariag`;
CREATE TABLE IF NOT EXISTS `secretariag` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `secretariag`
--

INSERT INTO `secretariag` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(4, 'Secretaria General', '2022-07-28', 'Router', 'MSAM/2/9/4/1/103-2/119', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

DROP TABLE IF EXISTS `seguridad`;
CREATE TABLE IF NOT EXISTS `seguridad` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `seguridad`
--

INSERT INTO `seguridad` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(2, 'Seguridad Pública', '2022-07-01', 'Router', 'MSAM/2/9/4/1/120/89', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE IF NOT EXISTS `servicios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Servicios Públicos', '2022-08-06', 'Impresora Multifuncional Gpson', 'MSAM/2/9/4/1/103-2/119', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social`
--

DROP TABLE IF EXISTS `social`;
CREATE TABLE IF NOT EXISTS `social` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` text COLLATE utf8_spanish_ci NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `social`
--

INSERT INTO `social` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Desarrollo Social', '2022-07-07', 'Router', 'MSAM/2/9/4/1/103-2/287', 'Se encuentra en malas condiciones', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesoreria`
--

DROP TABLE IF EXISTS `tesoreria`;
CREATE TABLE IF NOT EXISTS `tesoreria` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tesoreria`
--

INSERT INTO `tesoreria` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Tesorería', '2022-07-13', 'Impresora Multifuncional Epson', 'MSAM/2/9/4/1/103-2/54', 'Impresora Multifuncional de inyección de tinta color negro', 'Ma. Guadalupe Guzmán Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turismo`
--

DROP TABLE IF EXISTS `turismo`;
CREATE TABLE IF NOT EXISTS `turismo` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Objeto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `turismo`
--

INSERT INTO `turismo` (`codigo`, `Area`, `Fecha`, `Objeto`, `Clave`, `Descripcion`, `Responsable`) VALUES
(1, 'Turismo y Cultura', '2022-07-06', 'Impresora Multifuncional Epson', 'MSAM/2/9/4/1/120/856', 'Se encuentra en buenas condiciones', 'Ma. Guadalupe Guzmán Romero');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
