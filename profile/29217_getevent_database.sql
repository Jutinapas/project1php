-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2018 at 06:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getevent_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE `event_detail` (
  `event_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_size` int(11) NOT NULL,
  `event_category` text NOT NULL,
  `event_type` varchar(4) NOT NULL,
  `event_price` int(11) NOT NULL,
  `event_location` text NOT NULL,
  `event_date` date NOT NULL,
  `event_start` time NOT NULL,
  `event_end` time NOT NULL,
  `event_invitation` text NOT NULL,
  `event_poster` text,
  `event_video` text,
  `event_detail` text NOT NULL,
  `evaluation` text NOT NULL,
  `preCondition` text NOT NULL,
  `event_seat` int(11) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailbox_support`
--

CREATE TABLE `mailbox_support` (
  `mail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mail_title` text NOT NULL,
  `mail_detail` text NOT NULL,
  `mail_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailbox_user`
--

CREATE TABLE `mailbox_user` (
  `mail_id` int(11) NOT NULL,
  `mail_title` text NOT NULL,
  `mail_detail` text NOT NULL,
  `mail_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userevent`
--

CREATE TABLE `userevent` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_status` int(1) NOT NULL,
  `user_payment` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `user_image` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `cardnumber` varchar(16) NOT NULL,
  `holdername` varchar(40) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` year(4) NOT NULL,
  `cvv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mailbox_support`
--
ALTER TABLE `mailbox_support`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mailbox_user`
--
ALTER TABLE `mailbox_user`
  ADD KEY `mail_id` (`mail_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userevent`
--
ALTER TABLE `userevent`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailbox_support`
--
ALTER TABLE `mailbox_support`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD CONSTRAINT `event_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `mailbox_support`
--
ALTER TABLE `mailbox_support`
  ADD CONSTRAINT `mailbox_support_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `mailbox_user`
--
ALTER TABLE `mailbox_user`
  ADD CONSTRAINT `mailbox_user_ibfk_1` FOREIGN KEY (`mail_id`) REFERENCES `mailbox_support` (`mail_id`);

--
-- Constraints for table `userevent`
--
ALTER TABLE `userevent`
  ADD CONSTRAINT `userevent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `userevent_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event_detail` (`event_id`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
