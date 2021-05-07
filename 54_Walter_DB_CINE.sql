-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2021 a las 22:29:50
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cartelera`
--

CREATE TABLE `tbl_cartelera` (
  `ID_CARTELERA` int(11) NOT NULL,
  `PELICULA` varchar(50) NOT NULL,
  `HORA` varchar(50) NOT NULL,
  `FECHA` varchar(40) NOT NULL,
  `IDIOMA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cartelera`
--

INSERT INTO `tbl_cartelera` (`ID_CARTELERA`, `PELICULA`, `HORA`, `FECHA`, `IDIOMA`) VALUES
(1, 'Hulk', '12:00 am', '12/02/2021', 'Español'),
(2, 'MARVEL', '15:00 AM', '12/02/2022', 'ESPAÑOL'),
(3, 'MARVEL 2', '18:00 AM', '12/03/2021', 'INGLES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_taquilla`
--

CREATE TABLE `tbl_taquilla` (
  `ID_TAQUILLA` int(11) NOT NULL,
  `SALA` varchar(100) NOT NULL,
  `BUTAKAS` int(100) NOT NULL,
  `BOLETOS` int(100) NOT NULL,
  `PRECIO` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_taquilla`
--

INSERT INTO `tbl_taquilla` (`ID_TAQUILLA`, `SALA`, `BUTAKAS`, `BOLETOS`, `PRECIO`) VALUES
(4, 'sala #1', 100, 50, 200),
(5, 'sala #1', 100, 50, 200),
(6, 'sala #1', 200, 200, 200),
(7, 'f', 100, 100, 100),
(8, 'sala', 100, 100, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cartelera`
--
ALTER TABLE `tbl_cartelera`
  ADD PRIMARY KEY (`ID_CARTELERA`);

--
-- Indices de la tabla `tbl_taquilla`
--
ALTER TABLE `tbl_taquilla`
  ADD PRIMARY KEY (`ID_TAQUILLA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cartelera`
--
ALTER TABLE `tbl_cartelera`
  MODIFY `ID_CARTELERA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_taquilla`
--
ALTER TABLE `tbl_taquilla`
  MODIFY `ID_TAQUILLA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
