-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 15, 2019 at 04:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` char(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `id`, `password`) VALUES
('Sid', 'ssimediya@gmail.com', 6, '123123'),
('raj', 'r@r.com', 7, '123456'),
('Raj', 'ab@c.com', 8, '123456'),
('Raj Somani', 'rajsomani@gmail.com', 9, '123123'),
('Rd', 'rr@gmail.com', 10, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `user_6`
--

DROP TABLE IF EXISTS `user_6`;
CREATE TABLE IF NOT EXISTS `user_6` (
  `files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_7`
--

DROP TABLE IF EXISTS `user_7`;
CREATE TABLE IF NOT EXISTS `user_7` (
  `files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_8`
--

DROP TABLE IF EXISTS `user_8`;
CREATE TABLE IF NOT EXISTS `user_8` (
  `files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_8`
--

INSERT INTO `user_8` (`files`) VALUES
('index.php'),
('register.php');

-- --------------------------------------------------------

--
-- Table structure for table `user_9`
--

DROP TABLE IF EXISTS `user_9`;
CREATE TABLE IF NOT EXISTS `user_9` (
  `files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_10`
--

DROP TABLE IF EXISTS `user_10`;
CREATE TABLE IF NOT EXISTS `user_10` (
  `files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_10`
--

INSERT INTO `user_10` (`files`) VALUES
('checkresult.php');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
