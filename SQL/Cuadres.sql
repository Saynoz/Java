
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2018 at 07:58 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u265245860_prueb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Autors`
--

CREATE TABLE IF NOT EXISTS `Autors` (
  `NIF` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`NIF`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Autors`
--

INSERT INTO `Autors` (`NIF`, `FirstName`, `SubName`) VALUES
('47640046P', 'David', 'Baques'),
('54763574G', 'Olivier', 'Deskjam'),
('13225377H', 'Müller', 'Kuntz'),
('67558832R', 'Cesare', 'Cremonini'),
('776759809T', 'Monique', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `Comprador`
--

CREATE TABLE IF NOT EXISTS `Comprador` (
  `NIF` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nom` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NIF`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Comprador`
--

INSERT INTO `Comprador` (`NIF`, `Nom`) VALUES
('78642243O', 'Maria'),
('64734498N', 'Josep');

-- --------------------------------------------------------

--
-- Table structure for table `Cuadres`
--

CREATE TABLE IF NOT EXISTS `Cuadres` (
  `IDCuadre` int(11) NOT NULL AUTO_INCREMENT,
  `IDAutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Preu` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IDCuadre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Cuadres`
--

INSERT INTO `Cuadres` (`IDCuadre`, `IDAutor`, `Preu`) VALUES
(1, '13225377H', '300.00'),
(2, '47640046P', '142.00'),
(3, '54763574G', '400.00'),
(4, '67558832R', '200.00'),
(5, '67558832R', '354.00');

-- --------------------------------------------------------

--
-- Table structure for table `VentaCuadres`
--

CREATE TABLE IF NOT EXISTS `VentaCuadres` (
  `IDComprador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NVenta` int(11) NOT NULL AUTO_INCREMENT,
  `IDCuadre` int(11) NOT NULL,
  PRIMARY KEY (`NVenta`,`IDCuadre`),
  UNIQUE KEY `IDCuadre` (`IDCuadre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `VentaCuadres`
--

INSERT INTO `VentaCuadres` (`IDComprador`, `NVenta`, `IDCuadre`) VALUES
('64734498N', 8, 1),
('64734498N', 9, 2),
('64734498N', 10, 3),
('78642243O', 11, 4),
('78642243O', 12, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
