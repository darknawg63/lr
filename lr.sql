-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2015 at 08:45 PM
-- Server version: 5.6.21-log
-- PHP Version: 5.6.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--
CREATE DATABASE IF NOT EXISTS `lr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lr`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `email_code` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `password_recover` int(1) DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  `allow_email` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `email_code`, `active`, `password_recover`, `type`, `allow_email`) VALUES
(1, 'billy', '5f4dcc3b5aa765d61d8327deb882cf99', 'Billy', 'Garrett', 'billy@phpacademy.org', '4acc8334b6269c840077fd9c96e1130d', 1, 0, 2, 0),
(2, 'alex', '5f4dcc3b5aa765d61d8327deb882cf99', 'Alex', 'Garrett', 'alex@phpacademy.org', '1b31361daf285660f870e94346696341', 1, 0, 1, 0),
(3, 'ashley', '5f4dcc3b5aa765d61d8327deb882cf99', 'Ashley', 'Garrett', 'ashley@phpacademy.org', '12a59beefb4d902ca3ee691709837508', 1, 0, 0, 1),
(4, 'dale', '5f4dcc3b5aa765d61d8327deb882cf99', 'Dale', 'Garrett', 'dale@phpacademy.org', '', 1, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
