
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2018 at 10:16 AM
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
-- Table structure for table `Autor`
--

CREATE TABLE IF NOT EXISTS `Autor` (
  `IDAutor` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `direccio` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDAutor`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Autor`
--

INSERT INTO `Autor` (`IDAutor`, `email`, `direccio`) VALUES
(1, 'dbaques@gmail.com', 'C/muntaner 64 1-2'),
(2, 'maria@gmail.com', 'C/Balmes 135, 12');

-- --------------------------------------------------------

--
-- Table structure for table `Factura`
--

CREATE TABLE IF NOT EXISTS `Factura` (
  `IDCompra` int(11) NOT NULL AUTO_INCREMENT,
  `IDUsuari` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IDLlibre` int(11) NOT NULL,
  PRIMARY KEY (`IDCompra`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Factura`
--

INSERT INTO `Factura` (`IDCompra`, `IDUsuari`, `IDLlibre`) VALUES
(10, 'Davide', 3),
(9, 'Olivier', 4),
(8, 'Olivier', 3),
(7, 'Davide', 1),
(6, 'Davide', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Libres`
--

CREATE TABLE IF NOT EXISTS `Libres` (
  `IDLlibre` int(11) NOT NULL AUTO_INCREMENT,
  `IDAutor` int(11) NOT NULL,
  `Preu` decimal(15,3) NOT NULL,
  PRIMARY KEY (`IDLlibre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Libres`
--

INSERT INTO `Libres` (`IDLlibre`, `IDAutor`, `Preu`) VALUES
(1, 1, '23.000'),
(2, 1, '32.000'),
(3, 2, '25.000'),
(4, 2, '34.000'),
(5, 2, '45.000');

-- --------------------------------------------------------

--
-- Table structure for table `Stock`
--

CREATE TABLE IF NOT EXISTS `Stock` (
  `IDLlibre` int(11) NOT NULL,
  `NUnitats` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Stock`
--

INSERT INTO `Stock` (`IDLlibre`, `NUnitats`) VALUES
(1, 23),
(2, 10),
(3, 15),
(4, 18),
(5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Usuaris`
--

CREATE TABLE IF NOT EXISTS `Usuaris` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Passwors` varbinary(20) NOT NULL,
  PRIMARY KEY (`UserName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Usuaris`
--

INSERT INTO `Usuaris` (`UserName`, `email`, `Passwors`) VALUES
('Davide', 'davide@gmail.com', '11'),
('Olivier', 'olivier@gmail.com', '13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
