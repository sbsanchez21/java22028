-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2022 a las 20:29:48
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
  `telefono` bigint(15) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `email`, `usuario`, `password`, `telefono`, `fecha`) VALUES
(1, 'Juan ', 'Perez', 25654654, 'ddd@gmail.com', 'jperez@gmail.com', '111', 1155553336, '2022-05-31 17:11:21'),
(2, 'Romina', 'Aizen', 23456654, 'fff@gmail.com', 'raizen@gmail.com', '222', 11523234234, '2022-05-31 17:11:21'),
(3, 'Nicanor ', 'Paredes', 23654987, 'dsd@gmail.com', 'jperez@gmail.com', '333', 1112345678, '2022-05-31 17:24:34'),
(5, 'Felipe', 'Stalmish', 25321321, 'jperez@gmail.com', 'jrom@gmail.com', '444', 1155556666, '2022-05-31 17:11:21'),
(6, 'Cristian ', 'Perez', 25654654, 'ddd@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(7, 'Baltazar', 'Aizen', 23456624, 'fff@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(8, 'Rosalia ', 'Perez', 23654987, 'dsd@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(9, 'Felipa', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(10, 'Felipa', 'Aizen', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(11, 'Remberto', 'Narvaez', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(12, 'Rosario', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21'),
(13, 'Felipa', 'Stalmish', 25321321, 'jperez@gmail.com', 'jperez@gmail.com', '1234', 1155556666, '2022-05-31 17:11:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosmaterias`
--

CREATE TABLE `alumnosmaterias` (
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnosmaterias`
--

INSERT INTO `alumnosmaterias` (`idAlumno`, `idMateria`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 4),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(70) NOT NULL,
  `idProfesor` int(11) DEFAULT NULL,
  `idPreceptor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `descripcion`, `idProfesor`, `idPreceptor`) VALUES
(1, 'Química', 'Química general', 1, 1),
(2, 'Matemática I', 'Matemática General 1', 3, 1),
(3, 'Química 2', '', 1, 1),
(4, 'Química 3', '', 1, 3),
(5, 'Física', '', 4, 2),
(6, 'Programación', '', 2, 3),
(7, 'Base de Datos', '', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptores`
--

CREATE TABLE `preceptores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preceptores`
--

INSERT INTO `preceptores` (`id`, `nombre`, `apellido`) VALUES
(1, 'Juan', 'Perez'),
(2, 'Juana', 'Perez'),
(3, 'Juan', 'Rodriguez'),
(4, 'Rodrigo', 'Perez');

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
-- Indices de la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD PRIMARY KEY (`idAlumno`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProfesor` (`idProfesor`),
  ADD KEY `idPreceptor` (`idPreceptor`);

--
-- Indices de la tabla `preceptores`
--
ALTER TABLE `preceptores`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `preceptores`
--
ALTER TABLE `preceptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD CONSTRAINT `alumnosmaterias_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumnosmaterias_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`idPreceptor`) REFERENCES `preceptores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
