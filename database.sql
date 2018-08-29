-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2017 a las 16:13:51
-- Versión del servidor: 5.7.17
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `id` int(2) NOT NULL,
  `linea` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `icono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`id`, `linea`, `icono`, `tipo`) VALUES
(1, 'Banquetes', 'Banquetes', 'Servicio'),
(2, 'Musica E Iluminacion', 'Musica', 'Servicio'),
(3, 'Inflables', 'Inflables', 'Servicio'),
(4, 'Fotografia', 'Fotografia', 'Servicio'),
(5, 'Decoracion', 'Decoracion', 'Servicio'),
(6, 'Contratacion De Personal', 'Personal', 'Servicio'),
(7, 'Salas Lounge', 'Salas Lounge', 'Moviliario'),
(8, 'Sillones, taburetes y puff lounge', 'Sillones', 'Moviliario'),
(9, 'PlanMesas altas tipo bares', 'Bar', 'Moviliario'),
(11, 'Mesas iluminadas', 'Mesas', 'Moviliario'),
(12, 'Camas lounge', 'Camas', 'Moviliario'),
(14, 'Bodas', 'Bodas', 'Eventos Sociales'),
(15, 'XV Años', 'XV', 'Eventos Sociales'),
(16, 'Aniversarios', 'Aniversarios', 'Eventos Sociales'),
(17, 'Graduaciones', 'Graduaciones', 'Eventos Sociales'),
(18, 'Despedidas de solteros', 'Solteros', 'Eventos Sociales'),
(19, 'Noches Beneficas', 'Beneficas', 'Eventos Sociales'),
(20, 'Lanzamiento de nuevos productos', 'Lanzamiento', 'Eventos Empresariales'),
(21, 'Inauguraciones', 'Inauguraciones', 'Eventos Empresariales'),
(22, 'Fiestas de fin de año', 'Fin de año', 'Eventos Empresariales'),
(23, 'Capacitaciones', 'Capacitaciones', 'Eventos Empresariales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `correo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `token` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(9) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_detalle`
--

CREATE TABLE `ordenes_detalles` (
  `id` int(11) NOT NULL,
  `orden_id` int(11) NOT NULL,
  `producto_id` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `codigo` varchar(15) NOT NULL,
  `contrato` varchar(70) NOT NULL,
  `linea` varchar(50) NOT NULL,
  `linea_id` int(2) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes_detalle`
--
ALTER TABLE `ordenes_detalles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ordenes_detalles`
--
ALTER TABLE `ordenes_detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



---------------------------------------------
---------------------------------------------

INSERT INTO `contratos` (`codigo`, `contrato`, `linea`, `linea_id`, `proveedor`, `descripcion`, `precio_compra`) VALUES
('S10_1678', 'Buffet', 'Banquetes', 1, 'Restaurante_1', 'This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.', '48810.00'),
('S10_1949', 'Menús de 3, 4 y 5 tiempos', 'Banquetes', 1, 'Restaurante_1', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '98580.00'),
('S10_2016', 'Taquizas', 'Banquetes', 1, 'Restaurante_1', 'Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '68990.00'),
('S10_4698', 'Parrilladas', 'Banquetes', 1, 'Restaurante_1', 'Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand\r\n, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine', '91020.00'),
('S10_4757', 'Equipo de audio', 'Musica E Iluminacion', 2, 'Áudio_1', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '85680.00'),
('S10_4962', 'Performance', 'Musica E Iluminacion', 2, 'Áudio_2', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '103420.00'),
('S12_1099', 'Salas Lounge 1', 'Salas Lounge', 7, 'Moviliario_1', 'Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.', '95340.00'),
('S12_1108', 'Salas Lounge 23', 'Salas Lounge', 7, 'Moviliario_2', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '95590.00'),
('S12_1666', 'Salas Lounge 11', 'Salas Lounge', 7, 'Moviliario_24', 'Model features 30 windows, skylights & glare resistant glass, working steering system, original logos', '77900.00'),
('S12_2823', 'Bodas de dia', 'Bodas', 14, 'Bodas proveedor 1', 'Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '66270.00'),
('S12_3148', 'Bodas de noche', 'Bodas', 14, 'Bodas proveedor 1', '1:18 scale die-cast about 10\" long doors open, hood opens, trunk opens and wheels roll', '89140.00'),
('S12_3380', 'Inauguraciones De Marca', 'Inauguraciones', 21, 'Inauguraciones proveedor 1', '1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black', '75160.00'),
('S12_3891', 'Inauguraciones de producto', 'Inauguraciones', 21, 'Inauguraciones proveedor 34', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '83050.00');
