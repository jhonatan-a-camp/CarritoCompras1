-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2022 a las 07:39:45
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda2022n`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `usr` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `usr`, `pwd`, `fnacimiento`, `detalle`) VALUES
(5, ' Jhonatan', 'Campoverde', 'jhona', 'jhona', '2022-02-19', ' comprador'),
(6, ' aaa', ' aaaaa', NULL, NULL, '2022-03-05', ' aaa'),
(7, ' aaa', ' aaaaa', NULL, NULL, '2022-02-17', ' aaa'),
(8, ' aaa', ' aaaaa', NULL, NULL, '2022-02-20', ' aaa'),
(9, 'a', 'a', 'a', 'a', '2022-02-11', 'no lo se '),
(10, ' luis', ' Campoverde', ' luis', '1234', '2022-02-20', ' abogado'),
(11, ' maite', ' capa', ' maite', '914420a9b210195dea7e8a1fdc5234fb1f413c04dba3b5eaab', '2022-02-20', ' estudiante'),
(12, ' a', ' a', ' a', 'a', '2022-03-19', ' e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` int(11) NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` double DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `idFactura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`id`, `idProducto`, `cantidad`, `precioventa`, `importe`, `idFactura`) VALUES
(1, 1, 120, 120, 7, 1),
(2, 1, 120, 120, 7, 2),
(3, 1, 120, 120, 7, 2),
(4, 1, 2, 120, 240, 8),
(5, 7, 1, 250, 250, 8),
(6, 7, 1, 250, 250, 8),
(7, 2, 2, 120, 240, 9),
(8, 7, 3, 250, 750, 9),
(9, 7, 3, 250, 750, 9),
(10, 1, 1, 120, 120, 10),
(11, 1, 1, 120, 120, 10),
(12, 3, 2, 120, 240, 11),
(13, 2, 1, 120, 120, 11),
(14, 2, 1, 120, 120, 11),
(15, 2, 1, 120, 120, 12),
(16, 2, 1, 120, 120, 12),
(17, 1, 120, 120, 3, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idf` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `IVA` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idf`, `fecha`, `subtotal`, `IVA`, `total`, `idcliente`) VALUES
(1, '2022-02-15', '600', '72', '672', 9),
(2, '2022-02-15', '120', '14', '134', 9),
(3, '2022-02-16', '240', '29', '269', 9),
(4, '2022-02-16', '240', '29', '269', 9),
(5, '2022-02-16', '360', '43', '403', 9),
(6, '2022-02-16', '490', '59', '549', 9),
(7, '2022-02-16', '240', '29', '269', 9),
(8, '2022-02-16', '490', '59', '549', 9),
(9, '2022-02-16', '990', '119', '1109', 9),
(10, '2022-02-16', '120', '14', '134', 9),
(11, '2022-02-16', '360', '43', '403', 9),
(12, '2022-02-25', '120', '14', '134', 9),
(13, '2022-06-01', '120', '14', '134', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `detalle`, `precio`, `stock`, `foto`) VALUES
(1, ' doggi', ' aaa', ' aaa', 120, 5, 'perro.png'),
(2, ' aaa', ' aaa', ' aaa', 120, 5, '1.png'),
(3, 'perdar', ' aaa', ' cachorro', 120, 6, '4.png'),
(7, ' aaa', ' a', ' a', 250, 5, 'perro.png'),
(8, ' b', ' b', ' b', 120, 5, '1.png'),
(9, ' w', ' w', ' w', 120, 5, '2.png'),
(10, ' aaa', ' aaa', ' aaa', 250, 5, '4.png'),
(12, ' doggi', ' chachau', ' adulto', 120, 5, '1.png'),
(13, ' aa', ' aaa', ' aa', 250, 5, '2.png'),
(14, ' bbb', ' b', ' b', 250, 5, '3.png'),
(15, ' ccc', ' ccc', ' ccc', 250, 5, '4.png'),
(16, ' aaa', ' ccc', ' cc', 150, 6, 'perro.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idu` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idu`, `nombres`, `apellidos`, `usuario`, `clave`) VALUES
(1, 'jhona', 'camp', 'jhona', '1234'),
(7, ' jhonatan', ' Campoverde', ' a', '4051e082daeeaaf9ca487f4ee4e0cfbb8169996846b17e1262'),
(8, ' Luis', ' Campoverde', ' luis', '914420a9b210195dea7e8a1fdc5234fb1f413c04dba3b5eaab'),
(9, ' jhonatan', ' Campoverde', ' jhonatan', '327e110b72b2bc8825693529f577da91998180c101fc3e9d14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idFactura` (`idFactura`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idFactura`) REFERENCES `facturas` (`idf`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
