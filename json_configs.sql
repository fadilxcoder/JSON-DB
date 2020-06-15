-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2020 at 06:54 PM
-- Server version: 5.7.14
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `experimental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `json_configs`
--

DROP TABLE IF EXISTS `json_configs`;
CREATE TABLE `json_configs` (
  `id` int(11) NOT NULL,
  `config_name` text NOT NULL,
  `configuration` json NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `json_configs`
--

INSERT INTO `json_configs` (`id`, `config_name`, `configuration`) VALUES
(1, 'WEBSITE_CONFIGS', '{\"allow\": true, \"version\": 7, \"language\": \"fr\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `json_configs`
--
ALTER TABLE `json_configs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `json_configs`
--
ALTER TABLE `json_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

