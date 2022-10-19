-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 09, 2021 at 03:05 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp-dan`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `ped_detalle_pedido`
--

DROP TABLE IF EXISTS `ped_detalle_pedido`;
CREATE TABLE IF NOT EXISTS `ped_detalle_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `precio_dp` double DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `detalle_pedido_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Detalle_Ped-Material` (`id_material`) USING BTREE,
  KEY `FK-Detalle_Ped-Pedido` (`detalle_pedido_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ped_detalle_pedido`
--

INSERT INTO `ped_detalle_pedido` (`id`, `cantidad`, `precio_dp`, `id_material`, `detalle_pedido_id`) VALUES
(1, 10, 36, 2, NULL),
(2, 50, 3698, 4, 47),
(3, 50, 3698, 4, 48),
(4, 50, 3698, 4, 49),
(5, 10, 5, 2, 49),
(6, 50, 3698, 4, 50),
(7, 10, 5, 2, 50),
(8, 50, 3698, 4, 51),
(9, 10, 5, 2, 51),
(10, 50, 0, 4, 52),
(11, 10, 0, 2, 52),
(12, 50, 0, 4, 53),
(13, 10, 0, 2, 53),
(14, 50, 2500, 3, 54),
(15, 10, 2500, 1, 54),
(16, 5000, 250000, 3, 55),
(17, 19, 4750, 1, 55),
(18, 5000, 250000, 3, 56),
(19, 19, 4750, 1, 56),
(20, 200, 10000, 3, 57),
(21, 19, 4750, 1, 57),
(22, 200, 10000, 3, 58),
(23, 19, 4750, 1, 58),
(24, 200, 10000, 2, 59),
(25, 19, 4750, 1, 59),
(26, 200, 10000, 2, 60),
(27, 19, 4750, 1, 60),
(28, 200, 10000, 2, 61),
(29, 19, 4750, 1, 61),
(30, 200, 10000, 2, 62),
(31, 19, 4750, 1, 62),
(32, 200, 10000, 2, 63),
(33, 19, 4750, 1, 63),
(34, 200, 10000, 2, 64),
(35, 19, 4750, 1, 64),
(36, 200, 10000, 2, 65),
(37, 19, 4750, 1, 65),
(38, 200, 10000, 2, 66),
(39, 19, 4750, 1, 66),
(40, 200, 10000, 2, 67),
(41, 19, 4750, 1, 67),
(42, 200, 10000, 2, 68),
(43, 19, 4750, 1, 68),
(44, 200, 10000, 2, 69),
(45, 19, 4750, 1, 69),
(46, 200, 10000, 2, 70),
(47, 19, 4750, 1, 70),
(48, 200, 10000, 2, 71),
(49, 19, 4750, 1, 71),
(50, 200, 10000, 2, 72),
(51, 19, 4750, 1, 72),
(52, 200, 10000, 2, 73),
(53, 19, 4750, 1, 73),
(54, 200, 10000, 2, 74),
(55, 19, 4750, 1, 74),
(56, 200, 10000, 2, 75),
(57, 19, 4750, 1, 75),
(58, 200, 10000, 2, 76),
(59, 19, 4750, 1, 76),
(60, 200, 10000, 2, 77),
(61, 19, 4750, 1, 77),
(62, 200, 10000, 2, 78),
(63, 19, 4750, 1, 78),
(64, 1000, 50000, 2, 79),
(65, 1000, 250000, 1, 79),
(66, 1000, 50000, 2, 80),
(67, 1000, 250000, 1, 80),
(68, 1000, 50000, 2, 81),
(69, 1000, 250000, 1, 81),
(70, 1000, 50000, 2, 82),
(71, 1000, 250000, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `ped_estado_pedido`
--

DROP TABLE IF EXISTS `ped_estado_pedido`;
CREATE TABLE IF NOT EXISTS `ped_estado_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ped_estado_pedido`
--

INSERT INTO `ped_estado_pedido` (`id`, `estado`) VALUES
(1, 'NUEVO'),
(2, 'CONFIRMADO'),
(3, 'PENDIENTE'),
(4, 'CANCELADO'),
(5, 'ACEPTADO'),
(6, 'RECHAZADO'),
(7, 'EN PREPARACION'),
(8, 'ENTREGADO');

-- --------------------------------------------------------

--
-- Table structure for table `ped_pedido`
--

DROP TABLE IF EXISTS `ped_pedido`;
CREATE TABLE IF NOT EXISTS `ped_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` timestamp NULL DEFAULT NULL,
  `estado_pedido_id` int(11) DEFAULT NULL,
  `obra_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Pedido_id-Obra_id` (`obra_id`) USING BTREE,
  KEY `FK-Pedido_id-Estado_Ped_id` (`estado_pedido_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ped_pedido`
--

INSERT INTO `ped_pedido` (`id`, `fecha_pedido`, `estado_pedido_id`, `obra_id`) VALUES
(17, '2021-02-12 12:26:31', 5, 1),
(34, '2021-02-12 09:26:31', 1, 1),
(35, '2021-02-12 09:26:31', 1, 1),
(36, '2021-02-12 09:26:31', 1, 1),
(37, '2021-02-12 09:26:31', 1, 1),
(43, '2021-02-12 09:26:31', 5, 1),
(44, NULL, 5, 1),
(45, '2021-05-28 16:06:54', 5, 1),
(46, '2021-05-28 16:06:18', 5, 1),
(47, '2021-05-28 16:09:00', 5, 1),
(48, '2021-05-28 16:13:34', 5, 1),
(49, '2021-05-29 23:03:23', 5, 1),
(50, '2021-05-29 23:05:53', 5, 1),
(51, '2021-05-29 23:39:25', 5, 1),
(52, '2021-05-30 13:57:08', 5, 1),
(53, '2021-05-30 13:58:02', 5, 1),
(54, '2021-05-30 14:13:30', 5, 1),
(55, '2021-05-30 14:15:47', 5, 1),
(56, '2021-09-14 00:18:24', 3, 1),
(57, '2021-09-16 00:15:32', 1, 1),
(58, '2021-09-16 00:40:40', 1, 1),
(59, '2021-09-16 04:06:01', 1, 4),
(60, '2021-09-17 04:41:30', 1, 4),
(61, '2021-09-17 04:43:53', 1, 4),
(62, '2021-09-17 04:44:22', 1, 4),
(63, '2021-09-17 04:47:43', 1, 4),
(64, '2021-09-17 04:48:24', 1, 4),
(65, '2021-09-17 04:55:11', 1, 4),
(66, '2021-09-17 04:59:53', 1, 4),
(67, '2021-09-17 05:02:52', 1, 4),
(68, '2021-09-17 05:16:05', 1, 4),
(69, '2021-09-17 05:25:48', 1, 4),
(70, '2021-09-17 05:36:13', 1, 4),
(71, '2021-09-17 05:39:59', 1, 4),
(72, '2021-09-17 05:40:06', 1, 4),
(73, '2021-09-17 05:40:07', 1, 4),
(74, '2021-09-17 05:40:07', 1, 4),
(75, '2021-09-17 05:43:22', 3, 4),
(76, '2021-09-17 05:49:55', 3, 4),
(77, '2021-09-17 05:54:13', 3, 4),
(78, '2021-09-17 05:54:49', 1, 4),
(79, '2021-09-25 12:49:18', 1, 4),
(80, '2021-09-25 13:04:57', 1, 4),
(81, '2021-09-25 13:24:27', 1, 4),
(82, '2021-09-25 13:55:05', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pgs_medio_pago`
--

DROP TABLE IF EXISTS `pgs_medio_pago`;
CREATE TABLE IF NOT EXISTS `pgs_medio_pago` (
  `disc` char(1) NOT NULL,
  `id` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `fecha_cobro` timestamp NULL DEFAULT NULL,
  `nro_cheque` int(11) DEFAULT NULL,
  `nro_recibo` int(11) DEFAULT NULL,
  `cbu_destino` varchar(255) DEFAULT NULL,
  `cbu_origen` varchar(255) DEFAULT NULL,
  `codigo_transferencia` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pgs_pago`
--

DROP TABLE IF EXISTS `pgs_pago`;
CREATE TABLE IF NOT EXISTS `pgs_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pago` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_medio_pago` int(11) DEFAULT NULL,
  `monto_pagado` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Pago_id-Cliente_id` (`id_cliente`) USING BTREE,
  KEY `FK-Pago_id-MedioPago_id` (`id_medio_pago`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stk_detalle_provision`
--

DROP TABLE IF EXISTS `stk_detalle_provision`;
CREATE TABLE IF NOT EXISTS `stk_detalle_provision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `id_provision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-DetalleProvision_id-Material_id` (`id_material`) USING BTREE,
  KEY `FK-DetalleProvision_id-Provision_id` (`id_provision`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stk_detalle_provision`
--

INSERT INTO `stk_detalle_provision` (`id`, `cantidad`, `id_material`, `id_provision`) VALUES
(1, 7290, 1, 1),
(2, 7290, 1, 2),
(3, 7290, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stk_material`
--

DROP TABLE IF EXISTS `stk_material`;
CREATE TABLE IF NOT EXISTS `stk_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock_actual` int(11) DEFAULT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Material_id-Unidad_id` (`id_unidad`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stk_material`
--

INSERT INTO `stk_material` (`id`, `descripcion`, `nombre`, `precio`, `stock_actual`, `stock_minimo`, `id_unidad`) VALUES
(1, 'Cemento', NULL, 250, 1500, 4050, 4),
(2, 'ladrillo', NULL, 550, 38800, 3000, 4),
(3, 'Tornillos', NULL, 50, 4950, 2000, 4),
(4, 'arena', NULL, 850, 400, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stk_movimiento_stock`
--

DROP TABLE IF EXISTS `stk_movimiento_stock`;
CREATE TABLE IF NOT EXISTS `stk_movimiento_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_entrada` int(11) DEFAULT NULL,
  `cantidad_salida` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `id_detalle_pedido` int(11) DEFAULT NULL,
  `id_detalle_provision` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-MovStock_id-DetalleProvision_id` (`id_detalle_provision`) USING BTREE,
  KEY `FK-MovStock_id-DetallePedido_id` (`id_detalle_pedido`) USING BTREE,
  KEY `FK-MovStock_id-Material_id` (`id_material`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stk_movimiento_stock`
--

INSERT INTO `stk_movimiento_stock` (`id`, `cantidad_entrada`, `cantidad_salida`, `fecha`, `id_detalle_pedido`, `id_detalle_provision`, `id_material`) VALUES
(1, NULL, 50, '2021-05-29 23:05:52', 6, NULL, 4),
(2, NULL, 10, '2021-05-29 23:05:53', 7, NULL, 2),
(3, NULL, 50, '2021-05-29 23:39:25', 8, NULL, 4),
(4, NULL, 10, '2021-05-29 23:39:25', 9, NULL, 2),
(5, NULL, 50, '2021-05-30 13:57:08', 10, NULL, 4),
(6, NULL, 10, '2021-05-30 13:57:08', 11, NULL, 2),
(7, NULL, 50, '2021-05-30 13:58:01', 12, NULL, 4),
(8, NULL, 10, '2021-05-30 13:58:01', 13, NULL, 2),
(9, NULL, 50, '2021-05-30 14:13:30', 14, NULL, 3),
(10, NULL, 10, '2021-05-30 14:13:30', 15, NULL, 1),
(11, NULL, 5000, '2021-05-30 14:15:46', 16, NULL, 3),
(12, NULL, 19, '2021-05-30 14:15:46', 17, NULL, 1),
(13, NULL, 200, '2021-09-17 05:36:23', 46, NULL, 2),
(14, NULL, 19, '2021-09-17 05:36:24', 47, NULL, 1),
(15, NULL, 200, '2021-09-17 05:40:19', 48, NULL, 2),
(16, NULL, 19, '2021-09-17 05:40:19', 49, NULL, 1),
(17, NULL, 200, '2021-09-17 05:40:39', 50, NULL, 2),
(18, NULL, 19, '2021-09-17 05:40:39', 51, NULL, 1),
(19, NULL, 200, '2021-09-17 05:40:59', 52, NULL, 2),
(20, NULL, 19, '2021-09-17 05:40:59', 53, NULL, 1),
(21, NULL, 200, '2021-09-17 05:41:19', 54, NULL, 2),
(22, NULL, 19, '2021-09-17 05:41:20', 55, NULL, 1),
(23, NULL, 200, '2021-09-17 05:55:09', 62, NULL, 2),
(24, NULL, 19, '2021-09-17 05:55:09', 63, NULL, 1),
(25, NULL, 1000, '2021-09-25 13:07:35', 66, NULL, 2),
(26, NULL, 1000, '2021-09-25 13:13:35', 67, NULL, 1),
(27, NULL, 1000, '2021-09-25 13:20:03', 66, NULL, 2),
(28, NULL, 1000, '2021-09-25 13:20:22', 66, NULL, 2),
(29, NULL, 1000, '2021-09-25 13:25:33', 68, NULL, 2),
(30, NULL, 1000, '2021-09-25 13:33:40', 68, NULL, 2),
(31, NULL, 1000, '2021-09-25 13:38:11', 68, NULL, 2),
(32, NULL, 1000, '2021-09-25 13:53:25', 68, NULL, 2),
(33, 7290, NULL, '2021-09-25 13:55:34', NULL, 1, 1),
(34, NULL, 1000, '2021-09-25 13:53:34', 69, NULL, 1),
(35, NULL, 1000, '2021-09-25 13:58:53', 70, NULL, 2),
(36, 7290, NULL, '2021-09-25 14:01:36', NULL, 2, 1),
(37, NULL, 1000, '2021-09-25 13:59:06', 71, NULL, 1),
(38, NULL, 1000, '2021-09-25 14:01:38', 70, NULL, 2),
(39, 7290, NULL, '2021-09-25 14:03:39', NULL, 3, 1),
(40, NULL, 1000, '2021-09-25 14:01:39', 71, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stk_provision`
--

DROP TABLE IF EXISTS `stk_provision`;
CREATE TABLE IF NOT EXISTS `stk_provision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_provision` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stk_provision`
--

INSERT INTO `stk_provision` (`id`, `fecha_provision`) VALUES
(1, '10:53:34'),
(2, '10:59:21'),
(3, '11:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `stk_unidad`
--

DROP TABLE IF EXISTS `stk_unidad`;
CREATE TABLE IF NOT EXISTS `stk_unidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stk_unidad`
--

INSERT INTO `stk_unidad` (`id`, `descripcion`) VALUES
(1, 'M2'),
(2, 'LITROS'),
(3, 'KG'),
(4, 'UNIDAD');

-- --------------------------------------------------------

--
-- Table structure for table `usr_cliente`
--

DROP TABLE IF EXISTS `usr_cliente`;
CREATE TABLE IF NOT EXISTS `usr_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cuit` varchar(255) DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `habilitado_online` bit(1) DEFAULT NULL,
  `max_cuenta_corriente` double DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Cliente_id-Usuario_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_cliente`
--

INSERT INTO `usr_cliente` (`id`, `razon_social`, `cuit`, `mail`, `habilitado_online`, `max_cuenta_corriente`, `fecha_baja`, `user_id`) VALUES
(1, 'test', '23398391209', 'uanchi@test.com', b'1', 350000, '2021-09-21', 3),
(6, 'string', 'string', 'el mail del pibe', b'1', 3700, '2021-05-27', 3),
(17, 'juano', '4688992235', 'juanitounael maskpo', b'1', 3985000, NULL, 10),
(19, 'male', '25202', 'malenito', b'1', 88700, NULL, 16),
(20, 'male', '25202', 'malenito', b'1', 88700, NULL, 17),
(26, 'juanga', '25202', 'juanisimo', b'1', 88700, NULL, 24),
(27, 'juanga', '25202', 'juanisimo', b'1', 88700, NULL, 25),
(30, 'juanga', '25202', 'juanisimo', b'1', 88700, NULL, 28),
(31, 'juanga', '25202', 'juanisimo', b'1', 88700, NULL, 29),
(32, 'juanga', '25202', 'juanisimo', b'1', 88700, NULL, 30),
(33, 'laurita', '202999841', 'elroyga', b'1', 35, NULL, 31),
(34, 'Lalin', '20288810', 'lauratorrealday@gmail.com', b'1', 60000, NULL, 32),
(35, 'Lalin', '20288810', 'lauratorrealday@gmail.com', b'1', 600000, NULL, 33);

-- --------------------------------------------------------

--
-- Table structure for table `usr_empleado`
--

DROP TABLE IF EXISTS `usr_empleado`;
CREATE TABLE IF NOT EXISTS `usr_empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-Empleado_id-Usuario_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_empleado`
--

INSERT INTO `usr_empleado` (`id`, `mail`, `nombre`, `user_id`) VALUES
(8, 'string', 'string', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usr_obra`
--

DROP TABLE IF EXISTS `usr_obra`;
CREATE TABLE IF NOT EXISTS `usr_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `latitud` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `superficie` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `id_tipo_obra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj3t1r6giw9rq918no8tlos2g7` (`id_tipo_obra`),
  KEY `FK-Obra_id-CLiente_id` (`cliente_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_obra`
--

INSERT INTO `usr_obra` (`id`, `descripcion`, `direccion`, `latitud`, `longitud`, `superficie`, `cliente_id`, `id_tipo_obra`) VALUES
(1, 'refaccion', 'san lorenzo43', 60000, 31000, 20, 1, 3),
(2, 'pozo 1', 'san lorenzo', 0, 0, 95, 1, 1),
(3, 'techo', 'castelli 48', 5648, 659521, 9555, 1, 2),
(4, 'patio', 'san juan48', 233, 666521, 36, 17, 4),
(7, 'obra creado con orm cascade merge', 'la quinta', 5440, 6650, 960, 19, 3),
(8, 'obra creado con orm cascade merge no tengo ni puta idea como esta adando esto', 'la quinta', 5440, 6650, 960, 20, 3),
(12, 'el rancho del pupi', 'la picada', 233, 666521, 10, 17, 3),
(15, 'Reforma Villur', 'costanera del sol', 5648, 659521, 500, NULL, 1),
(16, 'el rancho del pupi2', 'la picada2', 233, 666521, 10, 17, 3),
(23, 'esta es una verga', 'napinda 48', 5648, 659521, 9555, 30, 1),
(24, 'esta es una verga', 'napinda 48', 5648, 659521, 9555, 31, 1),
(25, 'esta es una verga', 'napinda 48', 5648, 659521, 9555, 32, 2),
(26, 'una linda obrita', 'napinda 48', 5648, 659521, 500, 33, 3),
(28, 'quinppta', 'la picppada', 233, 666521, 36, 33, 3),
(30, 'Reforma frente san lorenzo', 'San lorenzo 43', 5648, 659521, 500, 35, 1),
(31, 'Reforma Villur', 'costanera del sol', 5648, 659521, 500, 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `usr_tipo_obra`
--

DROP TABLE IF EXISTS `usr_tipo_obra`;
CREATE TABLE IF NOT EXISTS `usr_tipo_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_tipo_obra`
--

INSERT INTO `usr_tipo_obra` (`id`, `descripcion`) VALUES
(1, 'REFORMA'),
(2, 'CASA'),
(3, 'EDIFICIO'),
(4, 'OBRA PUBLICA');

-- --------------------------------------------------------

--
-- Table structure for table `usr_tipo_usuario`
--

DROP TABLE IF EXISTS `usr_tipo_usuario`;
CREATE TABLE IF NOT EXISTS `usr_tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_tipo_usuario`
--

INSERT INTO `usr_tipo_usuario` (`id`, `tipo`) VALUES
(1, 'CLIENTE'),
(2, 'VENDEDOR');

-- --------------------------------------------------------

--
-- Table structure for table `usr_usuario`
--

DROP TABLE IF EXISTS `usr_usuario`;
CREATE TABLE IF NOT EXISTS `usr_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `tipo_usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsfg0f2vfondte1ku5it8c9pr` (`tipo_usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr_usuario`
--

INSERT INTO `usr_usuario` (`id`, `password`, `user`, `tipo_usuario_id`) VALUES
(1, '1234', 'juan96', 1),
(2, 'vendedor', 'vendedor', 2),
(3, '1234', 'el mail del pibe', NULL),
(4, '1234', 'el mail del pibe', NULL),
(9, '1234', 'el mail deguille', 1),
(10, '1234699', 'el mail deguille', 1),
(14, '1234', 'royg', 1),
(16, '1234', 'malenito', 1),
(17, '1234', 'malenito', 1),
(24, '1234', 'juanisimo', 1),
(25, '1234', 'juanisimo', 1),
(28, '1234', 'juanisimo', 1),
(29, '1234', 'juanisimo', 1),
(30, '1234', 'juanisimo', 1),
(31, '1234', 'elroyga', 1),
(32, '1234', 'lauratorrealday@gmail.com', 1),
(33, '1234', 'lauratorrealday@gmail.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ped_detalle_pedido`
--
ALTER TABLE `ped_detalle_pedido`
  ADD CONSTRAINT `FKaasy94hdxrmne3t9iinhiomau` FOREIGN KEY (`id_material`) REFERENCES `stk_material` (`id`),
  ADD CONSTRAINT `FKp0nbcjoei4qy65wgfqonf4beo` FOREIGN KEY (`detalle_pedido_id`) REFERENCES `ped_pedido` (`id`);

--
-- Constraints for table `ped_pedido`
--
ALTER TABLE `ped_pedido`
  ADD CONSTRAINT `FKcehprhhsa9cxq9a4uo7cnongb` FOREIGN KEY (`estado_pedido_id`) REFERENCES `ped_estado_pedido` (`id`),
  ADD CONSTRAINT `FKd22v73s0y6wkuk7jfocfia373` FOREIGN KEY (`obra_id`) REFERENCES `usr_obra` (`id`);

--
-- Constraints for table `pgs_pago`
--
ALTER TABLE `pgs_pago`
  ADD CONSTRAINT `FK7l7l7qn4unrql4txnrt082okx` FOREIGN KEY (`id_medio_pago`) REFERENCES `pgs_medio_pago` (`id`),
  ADD CONSTRAINT `FKa6op551ce7shi11335dpkj9ll` FOREIGN KEY (`id_cliente`) REFERENCES `usr_cliente` (`id`);

--
-- Constraints for table `stk_detalle_provision`
--
ALTER TABLE `stk_detalle_provision`
  ADD CONSTRAINT `FK7bn2t5krofwpvg1fjsa2f5f3a` FOREIGN KEY (`id_provision`) REFERENCES `stk_provision` (`id`),
  ADD CONSTRAINT `FKhux61evunfi3f45b8t9k85m4k` FOREIGN KEY (`id_material`) REFERENCES `stk_material` (`id`);

--
-- Constraints for table `stk_material`
--
ALTER TABLE `stk_material`
  ADD CONSTRAINT `FKg423qmoe0veckdmie27fwtxpo` FOREIGN KEY (`id_unidad`) REFERENCES `stk_unidad` (`id`);

--
-- Constraints for table `stk_movimiento_stock`
--
ALTER TABLE `stk_movimiento_stock`
  ADD CONSTRAINT `FK6662tyuxceactqves6c7gphg2` FOREIGN KEY (`id_detalle_pedido`) REFERENCES `ped_detalle_pedido` (`id`),
  ADD CONSTRAINT `FK7qfn48f44lbvj9ucj5mqokd6c` FOREIGN KEY (`id_detalle_provision`) REFERENCES `stk_detalle_provision` (`id`),
  ADD CONSTRAINT `FKneqm5t2swmkks4ndsrnim8syo` FOREIGN KEY (`id_material`) REFERENCES `stk_material` (`id`);

--
-- Constraints for table `usr_cliente`
--
ALTER TABLE `usr_cliente`
  ADD CONSTRAINT `FKee3gumsbmm262g7w4sta6pahv` FOREIGN KEY (`user_id`) REFERENCES `usr_usuario` (`id`);

--
-- Constraints for table `usr_empleado`
--
ALTER TABLE `usr_empleado`
  ADD CONSTRAINT `FK2lhcqropmlkbpintnag6pmj3s` FOREIGN KEY (`user_id`) REFERENCES `usr_usuario` (`id`);

--
-- Constraints for table `usr_obra`
--
ALTER TABLE `usr_obra`
  ADD CONSTRAINT `FKj3t1r6giw9rq918no8tlos2g7` FOREIGN KEY (`id_tipo_obra`) REFERENCES `usr_tipo_obra` (`id`),
  ADD CONSTRAINT `FKmi1wih9lwqudr62drc2r1gx2d` FOREIGN KEY (`cliente_id`) REFERENCES `usr_cliente` (`id`);

--
-- Constraints for table `usr_usuario`
--
ALTER TABLE `usr_usuario`
  ADD CONSTRAINT `FKsfg0f2vfondte1ku5it8c9pr` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `usr_tipo_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
