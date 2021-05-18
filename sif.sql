-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2021 a las 22:46:30
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sif`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Cod_cliente` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido_Paterno` varchar(20) NOT NULL,
  `Apellido_Materno` varchar(20) NOT NULL,
  `CI` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Cod_cliente`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `CI`, `Telefono`) VALUES
(1, 'asdasdasd', 'asdasda', 'asdasd', 213123, 123123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `Cod_cuenta` int(11) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Pasword` varchar(60) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Nivel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`Cod_cuenta`, `Usuario`, `Pasword`, `Nombre`, `Nivel`) VALUES
(1, 'luis', '202cb962ac59075b964b07152d234b70', 'jorge', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farmaceutica`
--

CREATE TABLE `farmaceutica` (
  `Cod_personal` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefeno` int(11) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Cod_usuario` int(11) NOT NULL,
  `Cod_producto` int(11) NOT NULL,
  `Cod_pedido` int(11) NOT NULL,
  `Cod_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Cod_pedido` bigint(20) UNSIGNED NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Cod_proveedor` int(11) NOT NULL,
  `Cod_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Cod_pedido`, `Descripcion`, `Fecha`, `Cantidad`, `Precio`, `Cod_proveedor`, `Cod_producto`) VALUES
(1, 'CETOFAR 120 mg/sml', '05/12/2020', 30, 550, 1, 0),
(2, 'IBUPROFENO', '07/12/2020', 50, 130, 2, 0),
(3, 'VERAMIDON B', '01/12/2020', 20, 35, 1, 0),
(4, 'DICLOFENACO 50 mL', '05/12/2020', 150, 1420, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Cod_producto` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Lote` varchar(50) NOT NULL,
  `Fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Cod_producto`, `Nombre`, `Tipo`, `Stock`, `Precio`, `Lote`, `Fecha_vencimiento`) VALUES
(3, 'PARACETAMOL 500 mg ', 'COMPRIMIDO', 50, 1, '01359634', '2022-08-18'),
(4, 'FLUIMUCIL 30 mg', 'SOLUCION INYECTABLE', 30, 10, '03052934', '2022-12-16'),
(5, 'MUXATIL 300 mg', 'SOLUCION INYECTABLE', 30, 14, '02539334', '2020-11-11'),
(6, 'GRIFANTIL 100mg ', 'COMPRIMIDO', 20, 2, '03331734', '2023-01-13'),
(7, 'ASPIRINETAS 100 mg', 'COMPRIMIDO', 60, 1, '02213034', '2022-11-30'),
(9, 'ASPIRINA', 'COMPRIMIDO', 50, 5, '02656834', '2022-11-25'),
(10, 'VITAMINA C1G 5 ml ', 'SOLUCION INYECTABLE ', 10, 25, '02224134', '2023-05-14'),
(12, 'QUETAROL 10ML ', 'GEL', 20, 7, '0.356475', '2022-02-05'),
(13, 'QUETAROL 10ML ', 'GEL', 20, 7, '0.356475', '2022-02-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Cod_proveedor` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Correo_electronico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`Cod_proveedor`, `Nombre`, `Telefono`, `Direccion`, `Correo_electronico`) VALUES
(1, ' Laboratorios COFAR ', 78965426, 'Calle pinilla 259 La Paz', 'almacen@COFAR.com.bo'),
(3, 'VITA S.A', 25264852, 'Av.Hector Homacge 320 La Paz', 'almacen@vita.com.bo'),
(14, 'Drogueria INTI SA Almabol', 22245364, 'Puerto de hilo El Alto', 'almacenllojeta@inti.com.bo'),
(15, 'Laboratorio Bago de Bolivia', 22364785, 'Av. Costanera, Calacoto , Zona Sur ', 'almacen@LabBago.com.bo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Cod_usuario` bigint(20) UNSIGNED NOT NULL,
  `Clave_acceso` varchar(20) NOT NULL,
  `Cod_cuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Cod_cliente`),
  ADD UNIQUE KEY `Cod_cliente` (`Cod_cliente`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`Cod_cuenta`);

--
-- Indices de la tabla `farmaceutica`
--
ALTER TABLE `farmaceutica`
  ADD PRIMARY KEY (`Cod_personal`),
  ADD UNIQUE KEY `Cod_personal` (`Cod_personal`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Cod_pedido`),
  ADD UNIQUE KEY `Cod_pedido` (`Cod_pedido`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Cod_producto`),
  ADD UNIQUE KEY `Cod_producto` (`Cod_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Cod_proveedor`),
  ADD UNIQUE KEY `Cod_proveedor` (`Cod_proveedor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Cod_usuario`),
  ADD UNIQUE KEY `Cod_usuario` (`Cod_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Cod_cliente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `farmaceutica`
--
ALTER TABLE `farmaceutica`
  MODIFY `Cod_personal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Cod_pedido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Cod_producto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Cod_proveedor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Cod_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
