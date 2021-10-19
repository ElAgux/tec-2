-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 06:12:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `size` int(200) NOT NULL,
  `curso` int(7) NOT NULL,
  `materia` int(11) NOT NULL,
  `n_especialidad` int(11) NOT NULL,
  `fecha_upload` datetime NOT NULL DEFAULT current_timestamp(),
  `mostrar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `name`, `type`, `size`, `curso`, `materia`, `n_especialidad`, `fecha_upload`, `mostrar`) VALUES
(84, 'DS4Updater.exe', 'application/x-msdownload', 573952, 1, 0, 3, '2021-10-04 00:00:00', 1),
(85, 'DS4Updater.exe', 'application/x-msdownload', 573952, 1, 0, 3, '2021-10-04 00:00:00', 1),
(86, 'DS4Updater.exe', 'application/x-msdownload', 573952, 1, 0, 3, '2021-10-04 00:00:00', 1),
(87, 'DS4Updater.exe', 'application/x-msdownload', 573952, 2, 0, 3, '2021-10-04 00:00:00', 1),
(88, 'DS4Updater.exe', 'application/x-msdownload', 573952, 3, 0, 3, '2021-10-04 00:00:00', 1),
(89, 'DS4Updater.exe', 'application/x-msdownload', 573952, 4, 0, 2, '2021-10-04 00:00:00', 1),
(90, 'Profiles.xml', 'text/xml', 1089, 2, 0, 0, '2021-10-04 00:00:00', 1),
(91, 'Profiles.xml', 'text/xml', 1089, 3, 0, 2, '2021-10-04 00:00:00', 1),
(92, 'DS4Windows.exe', 'application/x-msdownload', 3168256, 1, 0, 0, '2021-10-04 00:00:00', 1),
(93, 'DS4Windows.exe', 'application/x-msdownload', 3168256, 2, 0, 0, '2021-10-04 00:00:00', 1),
(94, 'DS4Windows.exe', 'application/x-msdownload', 3168256, 5, 0, 3, '2021-10-04 00:00:00', 1),
(95, 'DS4Windows.exe', 'application/x-msdownload', 3168256, 5, 0, 1, '2021-10-04 00:00:00', 1),
(96, 'DS4Windows.exe', 'application/x-msdownload', 3168256, 1, 0, 0, '2021-10-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `dni` int(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password_admin` varchar(200) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `apellido`, `mail`, `dni`, `password`, `password_admin`, `id_usuario`) VALUES
('a', 's', 'aa@gmail.com', 0, 'holahola', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
