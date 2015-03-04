-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2015 a las 15:49:17
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
`id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha-publicacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxcategorias`
--

CREATE TABLE IF NOT EXISTS `auxcategorias` (
`id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxcomunidades`
--

CREATE TABLE IF NOT EXISTS `auxcomunidades` (
`id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auxcomunidades`
--

INSERT INTO `auxcomunidades` (`id`, `descripcion`) VALUES
(1, 'Andalucía'),
(2, 'Aragón'),
(3, 'Asturias, Principado de'),
(4, 'Balears, Illes'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla y León'),
(8, 'Castilla - La Mancha'),
(9, 'Cataluña'),
(10, 'Comunitat Valenciana'),
(11, 'Extremadura'),
(12, 'Galicia'),
(13, 'Madrid, Comunidad de'),
(14, 'Murcia, Región de'),
(15, 'Navarra, Comunidad Foral de'),
(16, 'País Vasco'),
(17, 'Rioja, La'),
(18, 'Ceuta'),
(19, 'Melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxislas`
--

CREATE TABLE IF NOT EXISTS `auxislas` (
`id` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auxislas`
--

INSERT INTO `auxislas` (`id`, `descripcion`) VALUES
(1, 'Fuerteventura'),
(2, 'Gran Canaria'),
(3, 'Lanzarote'),
(4, 'La Gomera'),
(5, 'El Hierro'),
(6, 'La Palma'),
(7, 'Tenerife');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxmunicipios`
--

CREATE TABLE IF NOT EXISTS `auxmunicipios` (
  `isla` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auxmunicipios`
--

INSERT INTO `auxmunicipios` (`isla`, `municipio`, `descripcion`) VALUES
(1, 35003, 'Antigua'),
(1, 35007, 'Betancuria'),
(1, 35014, 'Oliva, La'),
(1, 35015, 'P'),
(1, 35017, 'Puerto del Rosario'),
(1, 35030, 'Tuineje'),
(2, 35001, 'Agaete'),
(2, 35002, 'Ag'),
(2, 35020, 'Aldea de San Nicol'),
(2, 35005, 'Artenara'),
(2, 35006, 'Arucas'),
(2, 35008, 'Firgas'),
(2, 35009, 'G'),
(2, 35011, 'Ingenio'),
(2, 35012, 'Mog'),
(2, 35013, 'Moya'),
(2, 35016, 'Palmas de Gran Canaria, Las'),
(2, 35019, 'San Bartolom'),
(2, 35021, 'Santa Br'),
(2, 35022, 'Santa Luc'),
(2, 35023, 'Santa Mar'),
(2, 35025, 'Tejeda'),
(2, 35026, 'Telde'),
(2, 35027, 'Teror'),
(2, 35032, 'Valleseco'),
(2, 35031, 'Valsequillo de Gran Canaria'),
(2, 35033, 'Vega de San Mateo'),
(3, 35004, 'Arrecife'),
(3, 35010, 'Har'),
(3, 35018, 'San Bartolom'),
(3, 35024, 'Teguise'),
(3, 35028, 'T'),
(3, 35029, 'Tinajo'),
(3, 35034, 'Yaiza'),
(4, 38002, 'Agulo'),
(4, 38003, 'Alajer'),
(4, 38021, 'Hermigua'),
(4, 38036, 'San Sebasti'),
(4, 38049, 'Valle Gran Rey'),
(4, 38050, 'Vallehermoso'),
(5, 38013, 'Frontera'),
(5, 38901, 'Pinar de El Hierro, El'),
(5, 38048, 'Valverde'),
(6, 38007, 'Barlovento'),
(6, 38008, 'Bre'),
(6, 38009, 'Bre'),
(6, 38014, 'Fuencaliente de la Palma'),
(6, 38016, 'Garaf'),
(6, 38024, 'Llanos de Aridane, Los'),
(6, 38027, 'Paso, El'),
(6, 38029, 'Puntagorda'),
(6, 38030, 'Puntallana'),
(6, 38033, 'San Andr'),
(6, 38037, 'Santa Cruz de la Palma'),
(6, 38045, 'Tazacorte'),
(6, 38047, 'Tijarafe'),
(6, 38053, 'Villa de Mazo'),
(7, 38001, 'Adeje'),
(7, 38004, 'Arafo'),
(7, 38005, 'Arico'),
(7, 38006, 'Arona'),
(7, 38010, 'Buenavista del Norte'),
(7, 38011, 'Candelaria'),
(7, 38012, 'Fasnia'),
(7, 38015, 'Garachico'),
(7, 38017, 'Granadilla de Abona'),
(7, 38018, 'Guancha, La'),
(7, 38019, 'Gu'),
(7, 38020, 'G'),
(7, 38022, 'Icod de los Vinos'),
(7, 38025, 'Matanza de Acentejo, La'),
(7, 38026, 'Orotava, La'),
(7, 38028, 'Puerto de la Cruz'),
(7, 38031, 'Realejos, Los'),
(7, 38032, 'Rosario, El'),
(7, 38023, 'San Crist'),
(7, 38034, 'San Juan de la Rambla'),
(7, 38035, 'San Miguel de Abona'),
(7, 38038, 'Santa Cruz de Tenerife'),
(7, 38039, 'Santa '),
(7, 38040, 'Santiago del Teide'),
(7, 38041, 'Sauzal, El'),
(7, 38042, 'Silos, Los'),
(7, 38043, 'Tacoronte'),
(7, 38044, 'Tanque, El'),
(7, 38046, 'Tegueste'),
(7, 38051, 'Victoria de Acentejo, La'),
(7, 38052, 'Vilaflor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxroles`
--

CREATE TABLE IF NOT EXISTS `auxroles` (
`id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auxroles`
--

INSERT INTO `auxroles` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxtioporecursos`
--

CREATE TABLE IF NOT EXISTS `auxtioporecursos` (
`id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
`id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `fecha-publicacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE IF NOT EXISTS `recursos` (
`id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `ruta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `apellidos` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `clave` varchar(500) NOT NULL,
  `rol` int(11) NOT NULL,
  `comunidad` int(11) NOT NULL,
  `avatar` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `clave`, `rol`, `comunidad`, `avatar`) VALUES
(1, 'Micael', 'Martín Morales', 'micael@gmail.com', '1234', 1, 6, 'images/avatar/avatar01.png'),
(2, 'Carlos', 'Perez Suarez', 'carlos@gmail.com', '1234', 2, 11, 'images/avatar/avatar02.png'),
(3, 'Sara', 'Mora Álvarez', 'sara@gmail.com', '1234', 3, 14, 'images/avatar/avatar02.png'),
(4, 'Ana', 'Lopez Sosa', 'ana@gmail.com', '1234', 3, 17, 'images/avatar/avatar01.png'),
(5, 'Maria', 'Sanchez', 'maria@gmail.com', '1234', 2, 4, 'images/avatar/avatar02.png\r\n'),
(6, 'Mario', 'Alvarez Suares', 'mario@gmail.com', '78646', 2, 4, 'images/avatar/avatar01.png'),
(7, 'Rafael', 'Martin Segredo', 'rafa@gmail.com', '4987', 1, 5, 'images/avatar/avatar01.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE IF NOT EXISTS `votos` (
`id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auxcategorias`
--
ALTER TABLE `auxcategorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auxcomunidades`
--
ALTER TABLE `auxcomunidades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auxislas`
--
ALTER TABLE `auxislas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auxroles`
--
ALTER TABLE `auxroles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auxtioporecursos`
--
ALTER TABLE `auxtioporecursos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`), ADD KEY `rol` (`rol`), ADD KEY `comunidad` (`comunidad`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auxcategorias`
--
ALTER TABLE `auxcategorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auxcomunidades`
--
ALTER TABLE `auxcomunidades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `auxislas`
--
ALTER TABLE `auxislas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `auxroles`
--
ALTER TABLE `auxroles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auxtioporecursos`
--
ALTER TABLE `auxtioporecursos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `auxroles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`comunidad`) REFERENCES `auxcomunidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
