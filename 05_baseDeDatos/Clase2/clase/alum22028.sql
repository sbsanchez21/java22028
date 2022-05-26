-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2022 a las 20:30:12
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alum22028`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` bigint(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telefono` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `email`, `usuario`, `password`, `telefono`) VALUES
(1, 'Juan ', 'Perez', 25654654, 'ddd@gmail.com', 'jperez@gmail.com', '111', 1155553336),
(2, 'Romina', 'Aizen', 23456654, 'fff@gmail.com', 'raizen@gmail.com', '222', 11523234234),
(3, 'Nicanor ', 'Paredes', 23654987, 'dsd@gmail.com', 'jperez@gmail.com', '333', 1155556666),
(5, 'Felipe', 'Stalmish', 25321321, 'jperez@gmail.com', 'jrom@gmail.com', '444', 1155556666),
(6, 'Cristian ', 'Perez', 25654654, 'ddd@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(7, 'Baltazar', 'Aizen', 23456624, 'fff@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(8, 'Rosalia ', 'Perez', 23654987, 'dsd@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(9, 'Felipa', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(10, 'Felipa', 'Aizen', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(11, 'Remberto', 'Narvaez', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(12, 'Rosario', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666),
(13, 'Felipa', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Química', 'Química general'),
(2, 'Matemática I', 'Matemática General 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `dni` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`) VALUES
(1, 'Roberto', 'Perez', 11223546),
(2, 'Marta', 'Estevez', 14546654),
(3, 'Franco', 'Somosa', NULL),
(4, 'Tomas', 'Stillman', 2345654);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dni` (`dni`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni_2` (`dni`),
  ADD KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
