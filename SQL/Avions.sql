
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2018 at 11:14 AM
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
-- Table structure for table `Avions`
--

CREATE TABLE IF NOT EXISTS `Avions` (
  `IDAvio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Fabricant` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Model` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Capacitat` int(11) NOT NULL,
  PRIMARY KEY (`IDAvio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Avions`
--

INSERT INTO `Avions` (`IDAvio`, `Fabricant`, `Model`, `Capacitat`) VALUES
('AY1654', 'Airbus', 'A321-231', 185),
('VY6004', 'Airbus', 'A319-112', 124),
('VY8319', 'Airbus', 'A320-214', 164),
('D83655', 'Boeing', '737-8JP', 215),
('FR6375', 'Boeing', '737-8AS', 199);

-- --------------------------------------------------------

--
-- Table structure for table `Persones`
--

CREATE TABLE IF NOT EXISTS `Persones` (
  `NIF` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SubName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`NIF`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Persones`
--

INSERT INTO `Persones` (`NIF`, `FirstName`, `SubName`) VALUES
('47640046P', 'David', 'Baques'),
('13248865T', 'Mihër', 'Kuntz'),
('22153324K', 'Daniele', 'Motta'),
('35432411J', 'Oliver', 'Sacks'),
('75326355M', 'Piere', 'Magistretti');

-- --------------------------------------------------------

--
-- Table structure for table `Seients`
--

CREATE TABLE IF NOT EXISTS `Seients` (
  `NSeient` int(11) NOT NULL,
  `NIF` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IDAvio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`NSeient`,`IDAvio`),
  UNIQUE KEY `NIF` (`NIF`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Seients`
--

INSERT INTO `Seients` (`NSeient`, `NIF`, `IDAvio`) VALUES
(1, '13248865T', 'AY1654'),
(2, '22153324K', 'AY1654'),
(1, '35432411J', 'D83655');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
