
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2018 at 10:56 AM
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
-- Table structure for table `Amics`
--

CREATE TABLE IF NOT EXISTS `Amics` (
  `IDUsuari` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IDUsuari1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Com` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDUsuari`,`IDUsuari1`),
  UNIQUE KEY `IDUsuari` (`IDUsuari`,`IDUsuari1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Amics`
--

INSERT INTO `Amics` (`IDUsuari`, `IDUsuari1`, `Com`) VALUES
('Olivier', 'Davide', 'Universitat'),
('Davide', 'Maria', 'Facebook'),
('Maria', 'Joan', 'escola'),
('Davide', 'Joan', 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `Fotos`
--

CREATE TABLE IF NOT EXISTS `Fotos` (
  `IDFoto` int(11) NOT NULL AUTO_INCREMENT,
  `IDUsuari` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDFoto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Fotos`
--

INSERT INTO `Fotos` (`IDFoto`, `IDUsuari`, `URL`) VALUES
(1, 'Davide', 'https://www.mokkedo.com'),
(2, 'Olivier', 'https://www.mokkedo1.com');

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
('Olivier', 'olivier@gmail.com', '13'),
('Maria', 'm@gmail.com', ''),
('Joan', 'j@gmail.com', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
