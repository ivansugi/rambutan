-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2011 at 03:36 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rambutan`
--

-- --------------------------------------------------------

--
-- Table structure for table `rambutan_assesment`
--

CREATE TABLE IF NOT EXISTS `rambutan_assesment` (
  `assesment_id` int(11) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assesment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_assesment`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_attachment`
--

CREATE TABLE IF NOT EXISTS `rambutan_attachment` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `files` varchar(255) NOT NULL,
  `sub_assesment_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_attachment`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_component`
--

CREATE TABLE IF NOT EXISTS `rambutan_component` (
  `component_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_component`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_earnings`
--

CREATE TABLE IF NOT EXISTS `rambutan_earnings` (
  `earning_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `amount_item` float NOT NULL,
  `total` float NOT NULL,
  `report_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_earnings`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_executor_board`
--

CREATE TABLE IF NOT EXISTS `rambutan_executor_board` (
  `executor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `responsibility` varchar(255) NOT NULL,
  `report_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`executor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_executor_board`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_inquiries`
--

CREATE TABLE IF NOT EXISTS `rambutan_inquiries` (
  `inquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `revision_no` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `fund` int(11) NOT NULL,
  `submited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inquiry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_inquiries`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_inquiry_item`
--

CREATE TABLE IF NOT EXISTS `rambutan_inquiry_item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `inquiry_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_inquiry_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_level`
--

CREATE TABLE IF NOT EXISTS `rambutan_level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_level`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_organizations`
--

CREATE TABLE IF NOT EXISTS `rambutan_organizations` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `region` int(11) NOT NULL,
  `address` text,
  `phone` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `postal` varchar(6) DEFAULT NULL,
  `description` text,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_organizations`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_permission`
--

CREATE TABLE IF NOT EXISTS `rambutan_permission` (
  `level_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_permission`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_progress`
--

CREATE TABLE IF NOT EXISTS `rambutan_progress` (
  `progress_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`progress_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_progress`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_proposals`
--

CREATE TABLE IF NOT EXISTS `rambutan_proposals` (
  `proposal_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `no` varchar(255) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_proposals`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_report`
--

CREATE TABLE IF NOT EXISTS `rambutan_report` (
  `report_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `executor` int(11) NOT NULL,
  `intial` text NOT NULL,
  `description` text NOT NULL,
  `impact` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `purposes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rambutan_report`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_sub_assesment`
--

CREATE TABLE IF NOT EXISTS `rambutan_sub_assesment` (
  `sub_assesment_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `notes` text NOT NULL,
  `assesment_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_assesment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_sub_assesment`
--


-- --------------------------------------------------------

--
-- Table structure for table `rambutan_users`
--

CREATE TABLE IF NOT EXISTS `rambutan_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rambutan_users`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
