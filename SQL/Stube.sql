
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2018 at 08:44 AM
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
-- Table structure for table `Usuaris`
--

CREATE TABLE IF NOT EXISTS `Usuaris` (
  `NUsuari` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varbinary(20) NOT NULL,
  PRIMARY KEY (`NUsuari`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Usuaris`
--

INSERT INTO `Usuaris` (`NUsuari`, `email`, `pass`) VALUES
('DavidBaques', 'dbaques@gmail.com', ''),
('Maria', 'maria@gmail.com', ''),
('Marcos', 'marcos@gmail.com', '14');

-- --------------------------------------------------------

--
-- Table structure for table `Videos`
--

CREATE TABLE IF NOT EXISTS `Videos` (
  `IDVideo` int(11) NOT NULL AUTO_INCREMENT,
  `NUsuari` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Titol` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcio` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `URLFitxer` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDVideo`,`NUsuari`),
  UNIQUE KEY `URLFitxer` (`URLFitxer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Videos`
--

INSERT INTO `Videos` (`IDVideo`, `NUsuari`, `Titol`, `Descripcio`, `URLFitxer`) VALUES
(1, 'DavidBaques', 'Hola', 'Fosdalsdlkjasd', 'https://www.mokkedo.com'),
(2, 'Marcos', 'sdfhjskdfhk', 'sdfhkdsjfjkds', 'https://www.mokkedo1.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
