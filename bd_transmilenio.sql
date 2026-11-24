-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2026 a las 14:56:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_transmilenio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bus`
--

CREATE TABLE `tb_bus` (
  `id_bus` int(11) NOT NULL,
  `placa` varchar(15) DEFAULT NULL,
  `modelo` int(11) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estado` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_bus`
--

INSERT INTO `tb_bus` (`id_bus`, `placa`, `modelo`, `capacidad`, `estado`) VALUES
(1, 'ABC123', 2020, 160, 'Activo'),
(2, 'DEF456', 2021, 150, 'Activo'),
(3, 'GHI789', 2019, 140, 'Mantenimiento'),
(4, 'JKL321', 2022, 160, 'Activo'),
(5, 'MNO654', 2023, 180, 'Activo'),
(6, 'PQR987', 2018, 140, 'Inactivo'),
(7, 'STU147', 2021, 150, 'Activo'),
(8, 'VWX258', 2022, 160, 'Activo'),
(9, 'YZA369', 2020, 180, 'Mantenimiento'),
(10, 'BCD741', 2023, 160, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estacion`
--

CREATE TABLE `tb_estacion` (
  `id_estacion` int(11) NOT NULL,
  `Nombre` varchar(22) DEFAULT NULL,
  `Direccion` varchar(25) DEFAULT NULL,
  `Localidad` varchar(22) DEFAULT NULL,
  `Tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estacion`
--

INSERT INTO `tb_estacion` (`id_estacion`, `Nombre`, `Direccion`, `Localidad`, `Tipo`) VALUES
(1, 'Portal Norte', 'Calle 170 # 20-90', 'Usaquen', 'Portal'),
(2, 'Portal Sur', 'Autopista Sur # 65', 'Bosa', 'Portal'),
(3, 'Portal Suba', 'Calle 145 # 105', 'Suba', 'Portal'),
(4, 'Portal Americas', 'Avenida Americas', 'Kennedy', 'Portal'),
(5, 'Calle 100', 'Carrera 15 # 100', 'Chapinero', 'Estacion'),
(6, 'Museo Nacional', 'Carrera 7 # 28', 'Santa Fe', 'Estacion'),
(7, 'Ricaurte', 'Calle 13 # 28', 'Los Martires', 'Estacion'),
(8, 'Portal Tunal', 'Calle 48B Sur', 'Tunjuelito', 'Portal'),
(9, 'Av Jimenez', 'Avenida Jimenez', 'Santa Fe', 'Estacion'),
(10, 'Portal 80', 'Calle 80 # 100', 'Engativa', 'Portal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rutas`
--

CREATE TABLE `tb_rutas` (
  `id_rutas` int(11) NOT NULL,
  `codigo` varchar(15) DEFAULT NULL,
  `nombre` varchar(22) DEFAULT NULL,
  `tipo` varchar(22) DEFAULT NULL,
  `horario_inicio` time DEFAULT NULL,
  `horario_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rutas`
--

INSERT INTO `tb_rutas` (`id_rutas`, `codigo`, `nombre`, `tipo`, `horario_inicio`, `horario_fin`) VALUES
(1, 'B10', 'Norte Centro', 'Urbana', '04:30:00', '23:00:00'),
(2, 'C15', 'Sur Centro', 'Urbana', '05:00:00', '22:30:00'),
(3, 'A20', 'Suba Norte', 'Expresa', '04:30:00', '22:00:00'),
(4, 'D30', 'Americas Centro', 'Urbana', '05:00:00', '23:00:00'),
(5, 'E45', 'Centro Norte', 'Expresa', '04:30:00', '22:30:00'),
(6, 'F12', 'Museo Tunal', 'Urbana', '05:00:00', '22:00:00'),
(7, 'G18', 'Ricaurte Norte', 'Expresa', '04:30:00', '23:00:00'),
(8, 'H25', 'Tunal Centro', 'Urbana', '05:00:00', '22:30:00'),
(9, 'J40', 'Jimenez Suba', 'Expresa', '04:30:00', '22:00:00'),
(10, 'K50', 'Ochenta Centro', 'Urbana', '05:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_viaje`
--

CREATE TABLE `tb_viaje` (
  `id_viaje` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `hora_llegada` time DEFAULT NULL,
  `id_bus` int(11) DEFAULT NULL,
  `id_rutas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_viaje`
--

INSERT INTO `tb_viaje` (`id_viaje`, `fecha`, `hora_salida`, `hora_llegada`, `id_bus`, `id_rutas`) VALUES
(1, '2026-11-20', '05:00:00', '06:00:00', 1, 1),
(2, '2026-11-20', '06:00:00', '07:15:00', 2, 2),
(3, '2026-11-21', '07:00:00', '08:00:00', 3, 3),
(4, '2026-11-21', '08:00:00', '09:10:00', 4, 4),
(5, '2026-11-22', '09:00:00', '10:00:00', 5, 5),
(6, '2026-11-22', '10:00:00', '11:20:00', 6, 6),
(7, '2026-11-23', '11:00:00', '12:00:00', 7, 7),
(8, '2026-11-23', '12:00:00', '13:15:00', 8, 8),
(9, '2026-11-24', '13:00:00', '14:00:00', 9, 9),
(10, '2026-11-24', '14:00:00', '15:10:00', 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_bus`
--
ALTER TABLE `tb_bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indices de la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD PRIMARY KEY (`id_estacion`);

--
-- Indices de la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD PRIMARY KEY (`id_rutas`);

--
-- Indices de la tabla `tb_viaje`
--
ALTER TABLE `tb_viaje`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `fk_viaje_bus` (`id_bus`),
  ADD KEY `fk_viaje_rutas` (`id_rutas`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_viaje`
--
ALTER TABLE `tb_viaje`
  ADD CONSTRAINT `fk_viaje_bus` FOREIGN KEY (`id_bus`) REFERENCES `tb_bus` (`id_bus`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viaje_rutas` FOREIGN KEY (`id_rutas`) REFERENCES `tb_rutas` (`id_rutas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
