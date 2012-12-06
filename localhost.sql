-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2012 at 08:39 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amazon_instance`
--
CREATE DATABASE `amazon_instance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `amazon_instance`;

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE IF NOT EXISTS `instance` (
  `instance_id` int(15) NOT NULL AUTO_INCREMENT,
  `Os` varchar(45) DEFAULT '1',
  `Ram` varchar(45) DEFAULT '0',
  `Storage` varchar(45) DEFAULT NULL,
  `Amazon_instance_id` varchar(45) DEFAULT NULL,
  `Start_date` varchar(45) DEFAULT NULL,
  `Instance_Type` varchar(50) DEFAULT NULL,
  `Stop_date` varchar(50) DEFAULT NULL,
  `Total_hours` int(11) DEFAULT NULL,
  `taas_instance_id` varchar(45) DEFAULT NULL,
  `current_state` varchar(45) DEFAULT NULL,
  `Fk_tools_id` int(11) DEFAULT NULL,
  `fk_contract_id` int(50) DEFAULT NULL,
  `signed_by` varchar(45) DEFAULT NULL,
  `date_signed` date DEFAULT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `fk_user_id` int(45) DEFAULT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `instance_id` (`instance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `instance`
--

INSERT INTO `instance` (`instance_id`, `Os`, `Ram`, `Storage`, `Amazon_instance_id`, `Start_date`, `Instance_Type`, `Stop_date`, `Total_hours`, `taas_instance_id`, `current_state`, `Fk_tools_id`, `fk_contract_id`, `signed_by`, `date_signed`, `client_name`, `fk_user_id`) VALUES
(1, 'Orangehrm', '0.613', '32', 'i-82641ee5', 'Fri Apr 20 15:25:24 PDT 2012', 't1.micro', 'Fri Apr 20 15:26:32 PDT 2012', 0, '1', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(2, 'Orangehrm', '0.613', '32', 'i-0a185c6d', 'Fri Apr 20 18:06:51 PDT 2012', 't1.micro', NULL, NULL, '2', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'orangehrm', '0.613', '32', 'i-f48f7e8d', 'Sun Jun 03 01:45:01 BST 2012', 't1.micro', 'Sun Jun 03 02:08:43 BST 2012', 1, '3', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(4, 'orangehrm', '0.613', '32', 'i-30f40549', 'Sun Jun 03 01:51:18 BST 2012', 't1.micro', 'Sun Jun 03 02:08:43 BST 2012', 1, '4', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(5, 'orangehrm', '0.613', '32', 'i-aef607d7', 'Sun Jun 03 01:53:49 BST 2012', 't1.micro', 'Sun Jun 03 02:08:43 BST 2012', 1, '5', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(6, 'orangehrm', '0.613', '32', 'i-6eeb1a17', 'Sun Jun 03 02:07:46 BST 2012', 't1.micro', 'Sun Jun 03 02:08:43 BST 2012', 0, '6', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(7, 'orangehrm', '0.613', '32', 'i-1057a669', 'Sun Jun 03 04:07:11 BST 2012', 't1.micro', 'Sun Jun 03 04:08:05 BST 2012', 0, '7', 'terminate', NULL, 0, NULL, NULL, NULL, NULL),
(8, 'orangehrm', '0.613', '32', 'i-4a416a32', 'Mon Jul 23 22:30:51 BST 2012', 't1.micro', NULL, NULL, '8', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'orangehrm', '0.613', '32', 'i-ce446fb6', 'Mon Jul 23 22:34:17 BST 2012', 't1.micro', 'Mon Jul 23 22:37:05 BST 2012', 1, '9', 'terminate', NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_name` varchar(45) DEFAULT NULL,
  `fk_resource-id` varchar(45) DEFAULT NULL,
  `project_description` varchar(1024) DEFAULT NULL,
  `TestProjectID` int(11) DEFAULT NULL,
  `TesterID` int(11) DEFAULT NULL,
  `ProjectDate` date DEFAULT NULL,
  `Description` varchar(1024) DEFAULT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `ProductVersion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_name`, `fk_resource-id`, `project_description`, `TestProjectID`, `TesterID`, `ProjectDate`, `Description`, `ProductName`, `ProductVersion`) VALUES
('test', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('test3', NULL, 'test3', NULL, NULL, NULL, NULL, NULL, NULL),
('test 4', NULL, 'test 4', NULL, NULL, NULL, NULL, NULL, NULL),
('test5', NULL, 'test5', NULL, NULL, NULL, NULL, NULL, NULL),
('test6', NULL, 'test6 check', NULL, NULL, NULL, NULL, NULL, NULL),
('TAAS Project', NULL, 'This is a demo project', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testproject`
--

CREATE TABLE IF NOT EXISTS `testproject` (
  `project_name` varchar(45) NOT NULL,
  `fk_resource-id` varchar(45) NOT NULL,
  `project_description` varchar(1024) NOT NULL,
  `TestProjectID` int(11) NOT NULL,
  `TesterID` int(11) NOT NULL,
  `ProjectDate` date NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductVersion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testtool`
--

CREATE TABLE IF NOT EXISTS `testtool` (
  `ToolID` int(11) NOT NULL AUTO_INCREMENT,
  `ToolName` varchar(50) DEFAULT NULL,
  `project_name` varchar(45) NOT NULL,
  `project_desc` varchar(1024) NOT NULL,
  `tool_type` varchar(45) NOT NULL,
  PRIMARY KEY (`ToolID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `testtool`
--

INSERT INTO `testtool` (`ToolID`, `ToolName`, `project_name`, `project_desc`, `tool_type`) VALUES
(1, 'Selenium', 'gui-1', 'gui testing', 'gui'),
(2, 'JMeter', 'load-1', 'load testing', 'load');
--
-- Database: `cbsa`
--
CREATE DATABASE `cbsa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cbsa`;

-- --------------------------------------------------------

--
-- Table structure for table `jmeterresult`
--

CREATE TABLE IF NOT EXISTS `jmeterresult` (
  `TestResultID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL DEFAULT '1',
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RequestTime` int(11) NOT NULL,
  `TestLabel` varchar(100) NOT NULL,
  `DataType` varchar(45) NOT NULL DEFAULT 'text',
  `ThreadName` varchar(50) NOT NULL,
  `ReturnCode` varchar(10) NOT NULL,
  `Byte` int(11) NOT NULL,
  KEY `TestResultID` (`TestResultID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `jmeterresult`
--

INSERT INTO `jmeterresult` (`TestResultID`, `UserID`, `TimeStamp`, `RequestTime`, `TestLabel`, `DataType`, `ThreadName`, `ReturnCode`, `Byte`) VALUES
(1, 1, '2012-03-06 00:08:54', 642, '', 'text', '1', '', 7364),
(2, 1, '2012-03-06 00:08:54', 306, '', 'text', '1', '', 7364),
(3, 1, '2012-03-06 00:08:54', 602, '', 'text', '2', '', 7364),
(4, 1, '2012-03-06 00:08:54', 299, '', 'text', '2', '', 7364),
(5, 1, '2012-03-06 00:08:54', 603, '', 'text', '3', '', 7364),
(6, 1, '2012-03-06 00:08:54', 299, '', 'text', '3', '', 7364),
(7, 1, '2012-03-06 00:08:54', 603, '', 'text', '4', '', 7364),
(8, 1, '2012-03-06 00:08:54', 303, '', 'text', '4', '', 7364),
(9, 1, '2012-03-06 00:08:54', 626, '', 'text', '1', '', 7364),
(10, 1, '2012-03-06 00:08:54', 308, '', 'text', '1', '', 7364),
(11, 1, '2012-03-06 00:08:54', 611, '', 'text', '2', '', 7364),
(12, 1, '2012-03-06 00:08:54', 308, '', 'text', '2', '', 7364),
(1, 1, '2012-05-05 07:08:54', 642, '', 'text', '1', '', 7364),
(2, 1, '2012-05-05 07:08:54', 306, '', 'text', '1', '', 7364),
(3, 1, '2012-05-05 07:08:54', 602, '', 'text', '2', '', 7364),
(4, 1, '2012-05-05 07:08:54', 299, '', 'text', '2', '', 7364),
(5, 1, '2012-05-05 07:08:54', 603, '', 'text', '3', '', 7364),
(6, 1, '2012-05-05 07:08:54', 299, '', 'text', '3', '', 7364),
(7, 1, '2012-05-05 07:08:54', 603, '', 'text', '4', '', 7364),
(8, 1, '2012-05-05 07:08:54', 303, '', 'text', '4', '', 7364),
(9, 1, '2012-05-05 07:13:07', 626, '', 'text', '1', '', 7364),
(10, 1, '2012-05-05 07:13:07', 308, '', 'text', '1', '', 7364),
(11, 1, '2012-05-05 07:13:07', 611, '', 'text', '2', '', 7364),
(12, 1, '2012-05-05 07:13:07', 308, '', 'text', '2', '', 7364),
(13, 1, '2012-05-05 07:13:07', 611, '', 'text', '3', '', 7364),
(14, 1, '2012-05-05 07:13:07', 309, '', 'text', '3', '', 7364),
(15, 1, '2012-05-05 07:13:07', 611, '', 'text', '4', '', 7364),
(16, 1, '2012-05-05 07:13:07', 309, '', 'text', '4', '', 7364),
(17, 1, '2012-05-05 19:49:46', 835, '', 'text', '1', '', 7364),
(18, 1, '2012-05-05 19:49:46', 655, '', 'text', '2', '', 7364),
(19, 1, '2012-05-05 19:49:46', 311, '', 'text', '1', '', 7364),
(20, 1, '2012-05-05 19:49:46', 310, '', 'text', '2', '', 7364),
(21, 1, '2012-05-05 19:49:46', 631, '', 'text', '3', '', 7364),
(22, 1, '2012-05-05 19:49:46', 309, '', 'text', '3', '', 7364),
(23, 1, '2012-05-05 19:49:46', 605, '', 'text', '4', '', 7364),
(24, 1, '2012-05-05 19:49:46', 309, '', 'text', '4', '', 7364),
(25, 1, '2012-05-06 19:53:36', 768, '', 'text', '2', '', 7364),
(26, 1, '2012-05-06 19:53:36', 1040, '', 'text', '1', '', 7364),
(27, 1, '2012-05-06 19:53:36', 339, '', 'text', '2', '', 7364),
(28, 1, '2012-05-06 19:53:36', 316, '', 'text', '1', '', 7364),
(29, 1, '2012-05-06 19:53:36', 718, '', 'text', '3', '', 7364),
(30, 1, '2012-05-06 19:53:36', 314, '', 'text', '3', '', 7364),
(31, 1, '2012-05-06 19:53:36', 678, '', 'text', '4', '', 7364),
(32, 1, '2012-05-06 19:53:36', 319, '', 'text', '4', '', 7364),
(33, 1, '2012-05-06 20:04:54', 700, '', 'text', '1', '', 7364),
(34, 1, '2012-05-06 20:04:54', 389, '', 'text', '1', '', 7364),
(35, 1, '2012-05-06 20:04:54', 673, '', 'text', '2', '', 7364),
(36, 1, '2012-05-06 20:04:54', 319, '', 'text', '2', '', 7364),
(37, 1, '2012-05-06 20:04:54', 663, '', 'text', '3', '', 7364),
(38, 1, '2012-05-06 20:04:54', 308, '', 'text', '3', '', 7364),
(39, 1, '2012-05-06 20:04:54', 608, '', 'text', '4', '', 7364),
(40, 1, '2012-05-06 20:04:54', 310, '', 'text', '4', '', 7364),
(41, 1, '2012-05-06 20:29:12', 666, '', 'text', '1', '', 7364),
(42, 1, '2012-05-06 20:29:12', 303, '', 'text', '1', '', 7364),
(43, 1, '2012-05-06 20:29:12', 688, '', 'text', '2', '', 7364),
(44, 1, '2012-05-06 20:29:12', 368, '', 'text', '2', '', 7364),
(45, 1, '2012-05-06 20:29:12', 612, '', 'text', '3', '', 7364),
(46, 1, '2012-05-06 20:29:12', 309, '', 'text', '3', '', 7364),
(47, 1, '2012-05-06 20:29:12', 742, '', 'text', '4', '', 7364),
(48, 1, '2012-05-06 20:29:12', 309, '', 'text', '4', '', 7364),
(49, 1, '2012-05-06 21:43:40', 718, '', 'text', '1', '', 7364),
(50, 1, '2012-05-06 21:43:40', 303, '', 'text', '1', '', 7364),
(51, 1, '2012-05-06 21:43:40', 702, '', 'text', '2', '', 7364),
(52, 1, '2012-05-06 21:43:40', 307, '', 'text', '2', '', 7364),
(53, 1, '2012-05-06 21:43:40', 700, '', 'text', '3', '', 7364),
(54, 1, '2012-05-06 21:43:40', 329, '', 'text', '3', '', 7364),
(55, 1, '2012-05-06 21:43:40', 610, '', 'text', '4', '', 7364),
(56, 1, '2012-05-06 21:43:40', 300, '', 'text', '4', '', 7364),
(57, 1, '2012-05-09 06:20:08', 812, '', 'text', '1', '', 7364),
(58, 1, '2012-05-09 06:20:08', 602, '', 'text', '2', '', 7364),
(59, 1, '2012-05-09 06:20:08', 301, '', 'text', '1', '', 7364),
(60, 1, '2012-05-09 06:20:08', 340, '', 'text', '2', '', 7364),
(61, 1, '2012-05-09 06:20:08', 604, '', 'text', '3', '', 7364),
(62, 1, '2012-05-09 06:20:08', 307, '', 'text', '3', '', 7364),
(63, 1, '2012-05-09 06:20:08', 604, '', 'text', '4', '', 7364),
(64, 1, '2012-05-09 06:20:08', 309, '', 'text', '4', '', 7364);

-- --------------------------------------------------------

--
-- Table structure for table `performancemetric`
--

CREATE TABLE IF NOT EXISTS `performancemetric` (
  `MetricID` int(11) NOT NULL AUTO_INCREMENT,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL,
  `Statistic` varchar(15) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `Equation` varchar(1024) NOT NULL,
  `Type` varchar(25) NOT NULL DEFAULT 'User Defined',
  PRIMARY KEY (`MetricID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `performancemetric`
--

INSERT INTO `performancemetric` (`MetricID`, `isDefault`, `Name`, `Statistic`, `Description`, `Equation`, `Type`) VALUES
(1, 1, 'CPUUtilization', 'Average', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(2, 0, 'CPUUtilization', 'Maximum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(3, 0, 'CPUUtilization', 'Minimum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(5, 0, 'CPUUtilization', 'SampleCount', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(6, 1, 'DiskReadOps', 'Average', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(7, 0, 'DiskReadOps', 'Maximum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(8, 0, 'DiskReadOps', 'Minimum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(9, 0, 'DiskReadOps', 'Sum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(10, 0, 'DiskReadOps', 'SampleCount', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(11, 0, 'DiskWriteOps', 'Average', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(12, 0, 'DiskWriteOps', 'Maximum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(13, 0, 'DiskWriteOps', 'Minimum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(14, 0, 'DiskWriteOps', 'Sum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(15, 0, 'DiskWriteOps', 'SampleCount', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(16, 0, 'DiskReadBytes', 'Average', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(17, 0, 'DiskReadBytes', 'Maximum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(18, 0, 'DiskReadBytes', 'Minimum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(19, 0, 'DiskReadBytes', 'Sum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(20, 0, 'DiskReadBytes', 'SampleCount', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(21, 0, 'DiskWriteBytes', 'Average', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(22, 0, 'DiskWriteBytes', 'Maximum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(23, 0, 'DiskWriteBytes', 'Minimum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(24, 0, 'DiskWriteBytes', 'Sum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(25, 0, 'DiskWriteBytes', 'SampleCount', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(26, 0, 'NetworkIn', 'Average', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(27, 0, 'NetworkIn', 'Maximum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(28, 0, 'NetworkIn', 'Minimum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(29, 0, 'NetworkIn', 'Sum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(30, 0, 'NetworkIn', 'SampleCount', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(31, 0, 'NetworkOut', 'Average', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(32, 0, 'NetworkOut', 'Maximum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(33, 0, 'NetworkOut', 'Minimum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(34, 0, 'NetworkOut', 'Sum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(35, 0, 'NetworkOut', 'SampleCount', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(60, 0, 'VolumeReadBytes', 'Average', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(61, 0, 'VolumeReadBytes', 'Maximum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(62, 0, 'VolumeReadBytes', 'Minimum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(63, 0, 'VolumeReadBytes', 'Sum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(64, 0, 'VolumeReadBytes', 'SampleCount', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(65, 0, 'VolumeWriteBytes', 'Average', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(66, 0, 'VolumeWriteBytes', 'Maximum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(67, 0, 'VolumeWriteBytes', 'Minimum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(68, 0, 'VolumeWriteBytes', 'Sum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(69, 0, 'VolumeWriteBytes', 'SampleCount', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(70, 0, 'VolumeReadOps', 'Average', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(71, 0, 'VolumeReadOps', 'Maximum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(72, 0, 'VolumeReadOps', 'Minimum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(74, 0, 'VolumeReadOps', 'Sum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(75, 0, 'VolumeReadOps', 'SampleCount', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(76, 0, 'VolumeWriteOps', 'Average', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(77, 0, 'VolumeWriteOps', 'Maximum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(78, 0, 'VolumeWriteOps', 'Minimum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(79, 0, 'VolumeWriteOps', 'Sum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(80, 0, 'VolumeWriteOps', 'SampleCount', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(83, 0, 'CRUM', 'Average', 'Utilization', 'System Defined', 'System Defined'),
(84, 0, 'StorageUtilization', 'Average', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(85, 0, 'StorageUtilization', 'Minimum', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(86, 0, 'StorageUtilization', 'Maximum', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(88, 0, 'StorageUtilization', 'SampleCount', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(89, 0, 'MemoryUtilization', 'Average', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(90, 0, 'MemoryUtilization', 'Minimum', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(91, 0, 'MemoryUtilization', 'Maximum', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(93, 0, 'MemoryUtilization', 'SampleCount', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(94, 0, 'CacheUtilization', 'Average', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(95, 0, 'CacheUtilization', 'Minimum', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(96, 0, 'CacheUtilization', 'Maximum', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(98, 0, 'CacheUtilization', 'SampleCount', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(99, 0, 'NetworkUtilization', 'Average', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(100, 0, 'NetworkUtilization', 'Minimum', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(101, 0, 'NetworkUtilization', 'Maximum', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(103, 0, 'NetworkUtilization', 'SampleCount', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(104, 0, 'StorageAllocated', 'Average', 'Total storage allocated.', 'System Defined', 'System Defined'),
(105, 0, 'StorageAllocated', 'Minimum', 'Total storage allocated.', 'System Defined', 'System Defined'),
(106, 0, 'StorageAllocated', 'Maximum', 'Total storage allocated.', 'System Defined', 'System Defined'),
(108, 0, 'StorageAllocated', 'SampleCount', 'Total storage allocated.', 'System Defined', 'System Defined'),
(109, 0, 'MemoryAllocated', 'Average', 'Total memory allocated.', 'System Defined', 'System Defined'),
(110, 0, 'MemoryAllocated', 'Minimum', 'Total memory allocated.', 'System Defined', 'System Defined'),
(111, 0, 'MemoryAllocated', 'Maximum', 'Total memory allocated.', 'System Defined', 'System Defined'),
(113, 0, 'MemoryAllocated', 'SampleCount', 'Total memory allocated.', 'System Defined', 'System Defined'),
(114, 0, 'CPUAllocated', 'Average', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(115, 0, 'CPUAllocated', 'Minimum', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(116, 0, 'CPUAllocated', 'Maximum', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(118, 0, 'CPUAllocated', 'SampleCount', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(119, 0, 'CacheAllocated', 'Average', 'Total cache allocated.', 'System Defined', 'System Defined'),
(120, 0, 'CacheAllocated', 'Minimum', 'Total cache allocated.', 'System Defined', 'System Defined'),
(121, 0, 'CacheAllocated', 'Maximum', 'Total cache allocated.', 'System Defined', 'System Defined'),
(123, 0, 'CacheAllocated', 'SampleCount', 'Total cache allocated.', 'System Defined', 'System Defined'),
(124, 0, 'NetworkBoundary', 'Average', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(125, 0, 'NetworkBoundary', 'Minimum', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(126, 0, 'NetworkBoundary', 'Maximum', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(128, 0, 'NetworkBoundary', 'SampleCount', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(129, 0, 'Reliability', 'Average', 'Reliability.', 'System Defined', 'System Defined'),
(130, 0, 'Reliability', 'Minimum', 'Reliability.', 'System Defined', 'System Defined'),
(131, 0, 'Reliability', 'Maximum', 'Reliability.', 'System Defined', 'System Defined'),
(132, 0, 'Reliability', 'SampleCount', 'Reliability.', 'System Defined', 'System Defined'),
(133, 0, 'Availability', 'Average', 'Availability.', 'System Defined', 'System Defined'),
(134, 0, 'Availability', 'Minimum', 'Availability.', 'System Defined', 'System Defined'),
(135, 0, 'Availability', 'Maximum', 'Availability.', 'System Defined', 'System Defined'),
(136, 0, 'Availability', 'SampleCount', 'Availability.', 'System Defined', 'System Defined'),
(137, 0, 'ResponseTime', 'Average', 'Response time.', 'System Defined', 'System Defined'),
(138, 0, 'ResponseTime', 'Minimum', 'Response time.', 'System Defined', 'System Defined'),
(139, 0, 'ResponseTime', 'Maximum', 'Response time.', 'System Defined', 'System Defined'),
(140, 0, 'ResponseTime', 'SampleCount', 'Response time.', 'System Defined', 'System Defined'),
(141, 0, 'ThroughputRatio', 'None', 'Ratio of network used to network allocated', '.5 * NetworkUtilization : Average + 1 * NetworkUtilization : Maximum', 'System Defined'),
(142, 0, 'CommTrafficLoad', 'None', 'Total number of network messages.', '1 * NetworkIn : Sum + 1 * NetworkOut : Sum', 'System Defined'),
(143, 0, 'SystemDataLoad', 'None', 'Total number of data transactions.', '1 * VolumeReadOps : Sum + 1 * VolumeWriteOps : Sum', 'System Defined'),
(144, 0, 'UserAccessLoad', 'Average', 'Total users accessing system.', 'System Defined', 'System Defined'),
(145, 0, 'UserAccessLoad', 'Minimum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(146, 0, 'UserAccessLoad', 'Maximum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(147, 0, 'UserAccessLoad', 'Sum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(148, 0, 'UserAccessLoad', 'SampleCount', 'Response time.', 'System Defined', 'System Defined'),
(149, 0, 'CRAM', 'Average', 'Resource allocation.', 'System Defined', 'System Defined'),
(150, 0, 'SLM', 'Average', 'System load.', 'System Defined', 'System Defined'),
(151, 0, 'SPM', 'Average', 'System performance', 'System Defined', 'System Defined'),
(152, 0, 'ResourcesUsed', 'None', 'Total resources used.', '1 * CRUM : None * 1 * CRAM : None', 'System Defined');

-- --------------------------------------------------------

--
-- Table structure for table `performancemodel`
--

CREATE TABLE IF NOT EXISTS `performancemodel` (
  `ModelID` int(11) NOT NULL AUTO_INCREMENT,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `NumMetrics` int(11) NOT NULL,
  `Type` varchar(25) NOT NULL DEFAULT 'User Defined',
  `Status` varchar(10) NOT NULL DEFAULT '(Stopped)',
  `Value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ModelID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `performancemodel`
--

INSERT INTO `performancemodel` (`ModelID`, `isDefault`, `Name`, `Description`, `NumMetrics`, `Type`, `Status`, `Value`) VALUES
(1, 1, 'CRAM', 'Computing Resource Allocation Meter. Measures System Resources Allocation.', 5, 'System Defined', '(running)', 1001),
(2, 0, 'CRUM', 'Computing Resource Utilization Meter. Measures System Resources Utilization.', 5, 'System Defined', '(running)', 1004),
(26, 0, 'SPM', 'System Performance Meter.', 5, 'System Defined', '(running)', 1003),
(27, 0, 'SLM', 'System Load Meter.', 3, 'System Defined', '(running)', 1002),
(28, 0, 'SCM', 'System Capacity Meter.', 3, 'System Defined', '(running)', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `performancemodeldata`
--

CREATE TABLE IF NOT EXISTS `performancemodeldata` (
  `ModelID` int(11) NOT NULL,
  `CollectedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MetricID` int(11) NOT NULL,
  `Data` double(15,5) NOT NULL,
  KEY `ModelID` (`ModelID`),
  KEY `MetricID` (`MetricID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performancemodeldata`
--

INSERT INTO `performancemodeldata` (`ModelID`, `CollectedTime`, `MetricID`, `Data`) VALUES
(1, '2012-11-30 13:45:08', 104, 762.08512),
(1, '2012-11-30 13:45:08', 109, 613.00999),
(1, '2012-11-30 13:45:08', 114, 2002.00001),
(1, '2012-11-30 13:45:08', 119, 4024.00566),
(1, '2012-11-30 13:45:08', 124, 1028.78291),
(1, '2012-11-30 13:58:32', 104, 763.90822),
(1, '2012-11-30 13:58:32', 109, 613.00019),
(1, '2012-11-30 13:58:32', 114, 2001.99888),
(1, '2012-11-30 13:58:32', 119, 4024.00066),
(1, '2012-11-30 13:58:32', 124, 1204.98872),
(1, '2012-11-30 14:28:23', 104, 762.08661),
(1, '2012-11-30 14:28:23', 109, 614.09823),
(1, '2012-11-30 14:28:23', 114, 1999.99921),
(1, '2012-11-30 14:28:23', 119, 4044.01000),
(1, '2012-11-30 14:28:23', 124, 1032.77645),
(1, '2012-11-30 14:45:01', 104, 1522.98872),
(1, '2012-11-30 14:45:01', 109, 1225.98007),
(1, '2012-11-30 14:45:01', 114, 4010.00222),
(1, '2012-11-30 14:45:01', 119, 8101.01019),
(1, '2012-11-30 14:45:01', 124, 2200.90391),
(1, '2012-11-30 15:08:21', 104, 1522.99481),
(1, '2012-11-30 15:08:21', 109, 1520.98890),
(1, '2012-11-30 15:08:21', 114, 4008.00001),
(1, '2012-11-30 15:08:21', 119, 8044.00236),
(1, '2012-11-30 15:08:21', 124, 2028.73221),
(2, '2012-11-30 13:45:08', 99, 1.00987),
(2, '2012-11-30 13:45:08', 94, 10.98772),
(2, '2012-11-30 13:45:08', 89, 23.99811),
(2, '2012-11-30 13:45:08', 84, 2.98882),
(2, '2012-11-30 13:45:08', 1, 30.39282),
(2, '2012-11-30 13:58:32', 99, 2.98872),
(2, '2012-11-30 13:58:32', 94, 12.98773),
(2, '2012-11-30 13:58:32', 89, 25.12232),
(2, '2012-11-30 13:58:32', 84, 3.00011),
(2, '2012-11-30 13:58:32', 1, 60.31232),
(2, '2012-11-30 14:28:23', 99, 4.54344),
(2, '2012-11-30 14:28:23', 94, 14.23722),
(2, '2012-11-30 14:28:23', 89, 30.24332),
(2, '2012-11-30 14:28:23', 84, 3.12224),
(2, '2012-11-30 14:28:23', 1, 85.87100),
(2, '2012-11-30 14:45:01', 99, 1.59983),
(2, '2012-11-30 14:45:01', 94, 15.24332),
(2, '2012-11-30 14:45:01', 89, 25.98982),
(2, '2012-11-30 14:45:01', 84, 3.98871),
(2, '2012-11-30 14:45:01', 1, 35.98892),
(2, '2012-11-30 15:08:21', 99, 2.98901),
(2, '2012-11-30 15:08:21', 94, 16.88833),
(2, '2012-11-30 15:08:21', 89, 30.98882),
(2, '2012-11-30 15:08:21', 84, 4.908923),
(2, '2012-11-30 15:08:21', 1, 41.98829),
(26, '2012-11-30 13:45:08', 83, 28.98834),
(26, '2012-11-30 13:58:32', 83, 56.98872),
(26, '2012-11-30 14:28:23', 83, 80.65552),
(26, '2012-11-30 14:45:01', 83, 30.98322),
(26, '2012-11-30 15:08:21', 83, 39.34562),
(26, '2012-11-30 13:45:08', 129, 100.00000),
(26, '2012-11-30 13:58:32', 129, 100.00000),
(26, '2012-11-30 14:28:23', 129, 100.00000),
(26, '2012-11-30 14:45:01', 129, 100.00000),
(26, '2012-11-30 15:08:21', 129, 100.00000),
(26, '2012-11-30 13:45:08', 133, 100.00000),
(26, '2012-11-30 13:58:32', 133, 100.00000),
(26, '2012-11-30 14:28:23', 133, 100.00000),
(26, '2012-11-30 14:45:01', 133, 100.00000),
(26, '2012-11-30 15:08:21', 133, 100.00000),
(26, '2012-11-30 13:45:08', 137, 137.53476),
(26, '2012-11-30 13:58:32', 137, 156.94396),
(26, '2012-11-30 14:28:23', 137, 200.34343),
(26, '2012-11-30 14:45:01', 137, 153.87946),
(26, '2012-11-30 15:08:21', 137, 209.23211),
(26, '2012-11-30 13:45:08', 141, 8.02311),
(26, '2012-11-30 13:58:32', 141, 8.88919),
(26, '2012-11-30 14:28:23', 141, 9.01231),
(26, '2012-11-30 14:45:01', 141, 9.08008),
(26, '2012-11-30 15:08:21', 141, 9.14092),
(27, '2012-11-30 13:45:08', 142, 56987.00000),
(27, '2012-11-30 13:58:32', 142, 90123.00000),
(27, '2012-11-30 14:28:23', 142, 204123.00000),
(27, '2012-11-30 14:45:01', 142, 500983.00000),
(27, '2012-11-30 15:08:21', 142, 890293.00000),
(27, '2012-11-30 13:45:08', 143, 525.00000),
(27, '2012-11-30 13:58:32', 143, 1023.00000),
(27, '2012-11-30 14:28:23', 143, 2838.00000),
(27, '2012-11-30 14:45:01', 143, 4812.00000),
(27, '2012-11-30 15:08:21', 143, 8080.00000),
(27, '2012-11-30 13:45:08', 147, 1002.00000),
(27, '2012-11-30 13:58:32', 147, 2003.00000),
(27, '2012-11-30 14:28:23', 147, 4001.00000),
(27, '2012-11-30 14:45:01', 147, 8002.00000),
(27, '2012-11-30 15:08:21', 147, 14994.00000),
(28, '2012-11-30 13:45:08', 150, 49881.00000),
(28, '2012-11-30 13:58:32', 150, 90012.00000),
(28, '2012-11-30 14:28:23', 150, 197266.00000),
(28, '2012-11-30 14:45:01', 150, 434301.00000),
(28, '2012-11-30 15:08:21', 150, 883231.00000),
(28, '2012-11-30 13:45:08', 151, 112.11001),
(28, '2012-11-30 13:58:32', 151, 122.99876),
(28, '2012-11-30 14:28:23', 151, 137.86551),
(28, '2012-11-30 14:45:01', 151, 115.65882),
(28, '2012-11-30 15:08:21', 151, 140.63315),
(28, '2012-11-30 13:45:08', 149, 2812.88771),
(28, '2012-11-30 13:58:32', 149, 2988.12342),
(28, '2012-11-30 14:28:23', 149, 2887.27732),
(28, '2012-11-30 14:45:01', 149, 4899.12319),
(28, '2012-11-30 15:08:21', 149, 4877.09872);

-- --------------------------------------------------------

--
-- Table structure for table `performancemodelmetric`
--

CREATE TABLE IF NOT EXISTS `performancemodelmetric` (
  `ModelID` int(11) NOT NULL,
  `MetricID` int(11) NOT NULL,
  `ModelMetric` tinyint(1) NOT NULL DEFAULT '0',
  KEY `ModelID` (`ModelID`),
  KEY `MetricID` (`MetricID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performancemodelmetric`
--

INSERT INTO `performancemodelmetric` (`ModelID`, `MetricID`, `ModelMetric`) VALUES
(2, 99, 0),
(2, 94, 0),
(2, 89, 0),
(2, 84, 0),
(2, 1, 0),
(1, 104, 0),
(1, 109, 0),
(1, 114, 0),
(1, 119, 0),
(1, 124, 0),
(26, 83, 0),
(26, 129, 0),
(26, 133, 0),
(26, 137, 0),
(26, 141, 0),
(27, 142, 0),
(27, 143, 0),
(27, 147, 0),
(28, 150, 0),
(28, 151, 0),
(28, 149, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scalabilitymetric`
--

CREATE TABLE IF NOT EXISTS `scalabilitymetric` (
  `MetricID` int(11) NOT NULL AUTO_INCREMENT,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL,
  `Statistic` varchar(15) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `Equation` varchar(1024) NOT NULL,
  `Type` varchar(25) NOT NULL DEFAULT 'User Defined',
  PRIMARY KEY (`MetricID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `scalabilitymetric`
--

INSERT INTO `scalabilitymetric` (`MetricID`, `isDefault`, `Name`, `Statistic`, `Description`, `Equation`, `Type`) VALUES
(1, 1, 'CPUUtilization', 'Average', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(2, 0, 'CPUUtilization', 'Maximum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(3, 0, 'CPUUtilization', 'Minimum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(5, 0, 'CPUUtilization', 'SampleCount', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(6, 1, 'DiskReadOps', 'Average', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(7, 0, 'DiskReadOps', 'Maximum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(8, 0, 'DiskReadOps', 'Minimum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(9, 0, 'DiskReadOps', 'Sum', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(10, 0, 'DiskReadOps', 'SampleCount', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
(11, 0, 'DiskWriteOps', 'Average', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(12, 0, 'DiskWriteOps', 'Maximum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(13, 0, 'DiskWriteOps', 'Minimum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(14, 0, 'DiskWriteOps', 'Sum', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(15, 0, 'DiskWriteOps', 'SampleCount', 'Completed write operations to all ephemeral disks available.', 'System Defined', 'System Defined'),
(16, 0, 'DiskReadBytes', 'Average', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(17, 0, 'DiskReadBytes', 'Maximum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(18, 0, 'DiskReadBytes', 'Minimum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(19, 0, 'DiskReadBytes', 'Sum', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(20, 0, 'DiskReadBytes', 'SampleCount', 'Bytes read from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(21, 0, 'DiskWriteBytes', 'Average', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(22, 0, 'DiskWriteBytes', 'Maximum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(23, 0, 'DiskWriteBytes', 'Minimum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(24, 0, 'DiskWriteBytes', 'Sum', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(25, 0, 'DiskWriteBytes', 'SampleCount', 'Bytes written  from all ephemeral disks available to the instance.', 'System Defined', 'System Defined'),
(26, 0, 'NetworkIn', 'Average', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(27, 0, 'NetworkIn', 'Maximum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(28, 0, 'NetworkIn', 'Minimum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(29, 0, 'NetworkIn', 'Sum', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(30, 0, 'NetworkIn', 'SampleCount', 'Number of bytes received on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(31, 0, 'NetworkOut', 'Average', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(32, 0, 'NetworkOut', 'Maximum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(33, 0, 'NetworkOut', 'Minimum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(34, 0, 'NetworkOut', 'Sum', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(35, 0, 'NetworkOut', 'SampleCount', 'Number of bytes sent out  on all network interfaces by the instance.', 'System Defined', 'System Defined'),
(60, 0, 'VolumeReadBytes', 'Average', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(61, 0, 'VolumeReadBytes', 'Maximum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(62, 0, 'VolumeReadBytes', 'Minimum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(63, 0, 'VolumeReadBytes', 'Sum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(64, 0, 'VolumeReadBytes', 'SampleCount', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(65, 0, 'VolumeWriteBytes', 'Average', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(66, 0, 'VolumeWriteBytes', 'Maximum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(67, 0, 'VolumeWriteBytes', 'Minimum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(68, 0, 'VolumeWriteBytes', 'Sum', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(69, 0, 'VolumeWriteBytes', 'SampleCount', 'The total number of bytes transferred in the period.', 'System Defined	System Defined', 'System Defined'),
(70, 0, 'VolumeReadOps', 'Average', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(71, 0, 'VolumeReadOps', 'Maximum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(72, 0, 'VolumeReadOps', 'Minimum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(74, 0, 'VolumeReadOps', 'Sum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(75, 0, 'VolumeReadOps', 'SampleCount', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(76, 0, 'VolumeWriteOps', 'Average', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(77, 0, 'VolumeWriteOps', 'Maximum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(78, 0, 'VolumeWriteOps', 'Minimum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(79, 0, 'VolumeWriteOps', 'Sum', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(80, 0, 'VolumeWriteOps', 'SampleCount', 'The total number of operations in the period', 'System Defined	System Defined', 'System Defined'),
(83, 0, 'CRUM', 'Average', 'Utilization', 'System Defined', 'System Defined'),
(84, 0, 'StorageUtilization', 'Average', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(85, 0, 'StorageUtilization', 'Minimum', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(86, 0, 'StorageUtilization', 'Maximum', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(88, 0, 'StorageUtilization', 'SampleCount', 'Percentage of allocated storage in use.', 'System Defined', 'System Defined'),
(89, 0, 'MemoryUtilization', 'Average', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(90, 0, 'MemoryUtilization', 'Minimum', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(91, 0, 'MemoryUtilization', 'Maximum', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(93, 0, 'MemoryUtilization', 'SampleCount', 'Percentage of allocated memory in use.', 'System Defined', 'System Defined'),
(94, 0, 'CacheUtilization', 'Average', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(95, 0, 'CacheUtilization', 'Minimum', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(96, 0, 'CacheUtilization', 'Maximum', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(98, 0, 'CacheUtilization', 'SampleCount', 'Percentage of cache in use.', 'System Defined', 'System Defined'),
(99, 0, 'NetworkUtilization', 'Average', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(100, 0, 'NetworkUtilization', 'Minimum', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(101, 0, 'NetworkUtilization', 'Maximum', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(103, 0, 'NetworkUtilization', 'SampleCount', 'Percentage of network throughput in use.', 'System Defined', 'System Defined'),
(104, 0, 'StorageAllocated', 'Average', 'Total storage allocated.', 'System Defined', 'System Defined'),
(105, 0, 'StorageAllocated', 'Minimum', 'Total storage allocated.', 'System Defined', 'System Defined'),
(106, 0, 'StorageAllocated', 'Maximum', 'Total storage allocated.', 'System Defined', 'System Defined'),
(108, 0, 'StorageAllocated', 'SampleCount', 'Total storage allocated.', 'System Defined', 'System Defined'),
(109, 0, 'MemoryAllocated', 'Average', 'Total memory allocated.', 'System Defined', 'System Defined'),
(110, 0, 'MemoryAllocated', 'Minimum', 'Total memory allocated.', 'System Defined', 'System Defined'),
(111, 0, 'MemoryAllocated', 'Maximum', 'Total memory allocated.', 'System Defined', 'System Defined'),
(113, 0, 'MemoryAllocated', 'SampleCount', 'Total memory allocated.', 'System Defined', 'System Defined'),
(114, 0, 'CPUAllocated', 'Average', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(115, 0, 'CPUAllocated', 'Minimum', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(116, 0, 'CPUAllocated', 'Maximum', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(118, 0, 'CPUAllocated', 'SampleCount', 'Total CPU allocated.', 'System Defined', 'System Defined'),
(119, 0, 'CacheAllocated', 'Average', 'Total cache allocated.', 'System Defined', 'System Defined'),
(120, 0, 'CacheAllocated', 'Minimum', 'Total cache allocated.', 'System Defined', 'System Defined'),
(121, 0, 'CacheAllocated', 'Maximum', 'Total cache allocated.', 'System Defined', 'System Defined'),
(123, 0, 'CacheAllocated', 'SampleCount', 'Total cache allocated.', 'System Defined', 'System Defined'),
(124, 0, 'NetworkBoundary', 'Average', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(125, 0, 'NetworkBoundary', 'Minimum', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(126, 0, 'NetworkBoundary', 'Maximum', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(128, 0, 'NetworkBoundary', 'SampleCount', 'Network traffic boundary.', 'System Defined', 'System Defined'),
(129, 0, 'Reliability', 'Average', 'Reliability.', 'System Defined', 'System Defined'),
(130, 0, 'Reliability', 'Minimum', 'Reliability.', 'System Defined', 'System Defined'),
(131, 0, 'Reliability', 'Maximum', 'Reliability.', 'System Defined', 'System Defined'),
(132, 0, 'Reliability', 'SampleCount', 'Reliability.', 'System Defined', 'System Defined'),
(133, 0, 'Availability', 'Average', 'Availability.', 'System Defined', 'System Defined'),
(134, 0, 'Availability', 'Minimum', 'Availability.', 'System Defined', 'System Defined'),
(135, 0, 'Availability', 'Maximum', 'Availability.', 'System Defined', 'System Defined'),
(136, 0, 'Availability', 'SampleCount', 'Availability.', 'System Defined', 'System Defined'),
(137, 0, 'ResponseTime', 'Average', 'Response time.', 'System Defined', 'System Defined'),
(138, 0, 'ResponseTime', 'Minimum', 'Response time.', 'System Defined', 'System Defined'),
(139, 0, 'ResponseTime', 'Maximum', 'Response time.', 'System Defined', 'System Defined'),
(140, 0, 'ResponseTime', 'SampleCount', 'Response time.', 'System Defined', 'System Defined'),
(141, 0, 'ThroughputRatio', 'None', 'Ratio of network used to network allocated', '.5 * NetworkUtilization : Average + 1 * NetworkUtilization : Maximum', 'System Defined'),
(142, 0, 'CommTrafficLoad', 'None', 'Total number of network messages.', '1 * NetworkIn : Sum + 1 * NetworkOut : Sum', 'System Defined'),
(143, 0, 'SystemDataLoad', 'None', 'Total number of data transactions.', '1 * VolumeReadOps : Sum + 1 * VolumeWriteOps : Sum', 'System Defined'),
(144, 0, 'UserAccessLoad', 'Average', 'Total users accessing system.', 'System Defined', 'System Defined'),
(145, 0, 'UserAccessLoad', 'Minimum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(146, 0, 'UserAccessLoad', 'Maximum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(147, 0, 'UserAccessLoad', 'Sum', 'Total users accessing system.', 'System Defined', 'System Defined'),
(148, 0, 'UserAccessLoad', 'SampleCount', 'Response time.', 'System Defined', 'System Defined'),
(149, 0, 'CRAM', 'Average', 'Resource allocation.', 'System Defined', 'System Defined'),
(150, 0, 'SLM', 'Average', 'System load.', 'System Defined', 'System Defined'),
(151, 0, 'SPM', 'Average', 'System performance', 'System Defined', 'System Defined'),
(152, 0, 'ResourcesUsed', 'None', 'Total resources used.', '1 * CRUM : None * 1 * CRAM : None', 'System Defined');

-- --------------------------------------------------------

--
-- Table structure for table `scalabilitymodel`
--

CREATE TABLE IF NOT EXISTS `scalabilitymodel` (
  `ModelID` int(11) NOT NULL AUTO_INCREMENT,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `NumMetrics` int(11) NOT NULL,
  `Type` varchar(25) NOT NULL DEFAULT 'User Defined',
  `Status` varchar(10) NOT NULL DEFAULT '(Stopped)',
  `Value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ModelID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `scalabilitymodel`
--

INSERT INTO `scalabilitymodel` (`ModelID`, `isDefault`, `Name`, `Description`, `NumMetrics`, `Type`, `Status`, `Value`) VALUES
(1, 1, 'CRAM', 'Computing Resource Allocation Meter. Measures System Resources Allocation.', 5, 'System Defined', '(stopped)', 1001),
(2, 0, 'CRUM', 'Computing Resource Utilization Meter. Measures System Resources Utilization.', 5, 'System Defined', '(stopped)', 1004),
(26, 0, 'SPM', 'System Performance Meter.', 5, 'System Defined', '(stopped)', 1003),
(27, 0, 'SLM', 'System Load Meter.', 3, 'System Defined', '(stopped)', 1002),
(28, 0, 'SCM', 'System Capacity Meter.', 3, 'System Defined', '(stopped)', 1004),
(29, 0, 'SEC', 'System Effective Capacity.', 3, 'System Defined', '(running)', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `scalabilitymodeldata`
--

CREATE TABLE IF NOT EXISTS `scalabilitymodeldata` (
  `ModelID` int(11) NOT NULL,
  `CollectedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MetricID` int(11) NOT NULL,
  `Data` double(15,5) NOT NULL,
  KEY `ModelID` (`ModelID`),
  KEY `MetricID` (`MetricID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scalabilitymodeldata`
--

INSERT INTO `scalabilitymodeldata` (`ModelID`, `CollectedTime`, `MetricID`, `Data`) VALUES
(1, '2012-11-30 13:45:08', 104, 762.08512),
(1, '2012-11-30 13:45:08', 109, 613.00999),
(1, '2012-11-30 13:45:08', 114, 2002.00001),
(1, '2012-11-30 13:45:08', 119, 4024.00566),
(1, '2012-11-30 13:45:08', 124, 1028.78291),
(1, '2012-11-30 13:58:32', 104, 763.90822),
(1, '2012-11-30 13:58:32', 109, 613.00019),
(1, '2012-11-30 13:58:32', 114, 2001.99888),
(1, '2012-11-30 13:58:32', 119, 4024.00066),
(1, '2012-11-30 13:58:32', 124, 1204.98872),
(1, '2012-11-30 14:28:23', 104, 762.08661),
(1, '2012-11-30 14:28:23', 109, 614.09823),
(1, '2012-11-30 14:28:23', 114, 1999.99921),
(1, '2012-11-30 14:28:23', 119, 4044.01000),
(1, '2012-11-30 14:28:23', 124, 1032.77645),
(1, '2012-11-30 14:45:01', 104, 1522.98872),
(1, '2012-11-30 14:45:01', 109, 1225.98007),
(1, '2012-11-30 14:45:01', 114, 4010.00222),
(1, '2012-11-30 14:45:01', 119, 8101.01019),
(1, '2012-11-30 14:45:01', 124, 2200.90391),
(1, '2012-11-30 15:08:21', 104, 1522.99481),
(1, '2012-11-30 15:08:21', 109, 1520.98890),
(1, '2012-11-30 15:08:21', 114, 4008.00001),
(1, '2012-11-30 15:08:21', 119, 8044.00236),
(1, '2012-11-30 15:08:21', 124, 2028.73221),
(2, '2012-11-30 13:45:08', 99, 1.00987),
(2, '2012-11-30 13:45:08', 94, 10.98772),
(2, '2012-11-30 13:45:08', 89, 23.99811),
(2, '2012-11-30 13:45:08', 84, 2.98882),
(2, '2012-11-30 13:45:08', 1, 30.39282),
(2, '2012-11-30 13:58:32', 99, 2.98872),
(2, '2012-11-30 13:58:32', 94, 12.98773),
(2, '2012-11-30 13:58:32', 89, 25.12232),
(2, '2012-11-30 13:58:32', 84, 3.00011),
(2, '2012-11-30 13:58:32', 1, 60.31232),
(2, '2012-11-30 14:28:23', 99, 4.54344),
(2, '2012-11-30 14:28:23', 94, 14.23722),
(2, '2012-11-30 14:28:23', 89, 30.24332),
(2, '2012-11-30 14:28:23', 84, 3.12224),
(2, '2012-11-30 14:28:23', 1, 85.87100),
(2, '2012-11-30 14:45:01', 99, 1.59983),
(2, '2012-11-30 14:45:01', 94, 15.24332),
(2, '2012-11-30 14:45:01', 89, 25.98982),
(2, '2012-11-30 14:45:01', 84, 3.98871),
(2, '2012-11-30 14:45:01', 1, 35.98892),
(2, '2012-11-30 15:08:21', 99, 2.98901),
(2, '2012-11-30 15:08:21', 94, 16.88833),
(2, '2012-11-30 15:08:21', 89, 30.98882),
(2, '2012-11-30 15:08:21', 84, 4.908923),
(2, '2012-11-30 15:08:21', 1, 41.98829),
(26, '2012-11-30 13:45:08', 83, 28.98834),
(26, '2012-11-30 13:58:32', 83, 56.98872),
(26, '2012-11-30 14:28:23', 83, 80.65552),
(26, '2012-11-30 14:45:01', 83, 30.98322),
(26, '2012-11-30 15:08:21', 83, 39.34562),
(26, '2012-11-30 13:45:08', 129, 100.00000),
(26, '2012-11-30 13:58:32', 129, 100.00000),
(26, '2012-11-30 14:28:23', 129, 100.00000),
(26, '2012-11-30 14:45:01', 129, 100.00000),
(26, '2012-11-30 15:08:21', 129, 100.00000),
(26, '2012-11-30 13:45:08', 133, 100.00000),
(26, '2012-11-30 13:58:32', 133, 100.00000),
(26, '2012-11-30 14:28:23', 133, 100.00000),
(26, '2012-11-30 14:45:01', 133, 100.00000),
(26, '2012-11-30 15:08:21', 133, 100.00000),
(26, '2012-11-30 13:45:08', 137, 137.53476),
(26, '2012-11-30 13:58:32', 137, 156.94396),
(26, '2012-11-30 14:28:23', 137, 200.34343),
(26, '2012-11-30 14:45:01', 137, 153.87946),
(26, '2012-11-30 15:08:21', 137, 209.23211),
(26, '2012-11-30 13:45:08', 141, 8.02311),
(26, '2012-11-30 13:58:32', 141, 8.88919),
(26, '2012-11-30 14:28:23', 141, 9.01231),
(26, '2012-11-30 14:45:01', 141, 9.08008),
(26, '2012-11-30 15:08:21', 141, 9.14092),
(27, '2012-11-30 13:45:08', 142, 56987.00000),
(27, '2012-11-30 13:58:32', 142, 90123.00000),
(27, '2012-11-30 14:28:23', 142, 204123.00000),
(27, '2012-11-30 14:45:01', 142, 500983.00000),
(27, '2012-11-30 15:08:21', 142, 890293.00000),
(27, '2012-11-30 13:45:08', 143, 525.00000),
(27, '2012-11-30 13:58:32', 143, 1023.00000),
(27, '2012-11-30 14:28:23', 143, 2838.00000),
(27, '2012-11-30 14:45:01', 143, 4812.00000),
(27, '2012-11-30 15:08:21', 143, 8080.00000),
(27, '2012-11-30 13:45:08', 147, 1002.00000),
(27, '2012-11-30 13:58:32', 147, 2003.00000),
(27, '2012-11-30 14:28:23', 147, 4001.00000),
(27, '2012-11-30 14:45:01', 147, 8002.00000),
(27, '2012-11-30 15:08:21', 147, 14994.00000),
(28, '2012-11-30 13:45:08', 150, 49881.00000),
(28, '2012-11-30 13:58:32', 150, 90012.00000),
(28, '2012-11-30 14:28:23', 150, 197266.00000),
(28, '2012-11-30 14:45:01', 150, 434301.00000),
(28, '2012-11-30 15:08:21', 150, 883231.00000),
(28, '2012-11-30 13:45:08', 151, 112.11001),
(28, '2012-11-30 13:58:32', 151, 122.99876),
(28, '2012-11-30 14:28:23', 151, 137.86551),
(28, '2012-11-30 14:45:01', 151, 115.65882),
(28, '2012-11-30 15:08:21', 151, 140.63315),
(28, '2012-11-30 13:45:08', 149, 2812.88771),
(28, '2012-11-30 13:58:32', 149, 2988.12342),
(28, '2012-11-30 14:28:23', 149, 2887.27732),
(28, '2012-11-30 14:45:01', 149, 4899.12319),
(28, '2012-11-30 15:08:21', 149, 4877.09872),
(29, '2012-11-30 13:45:08', 150, 49881.00000),
(29, '2012-11-30 13:58:32', 150, 90012.00000),
(29, '2012-11-30 14:28:23', 150, 197266.00000),
(29, '2012-11-30 14:45:01', 150, 434301.00000),
(29, '2012-11-30 15:08:21', 150, 883231.00000),
(29, '2012-11-30 13:45:08', 151, 112.11001),
(29, '2012-11-30 13:58:32', 151, 122.99876),
(29, '2012-11-30 14:28:23', 151, 137.86551),
(29, '2012-11-30 14:45:01', 151, 115.65882),
(29, '2012-11-30 15:08:21', 151, 140.63315),
(29, '2012-11-30 13:45:08', 152, 23.88771),
(29, '2012-11-30 13:58:32', 152, 56.12342),
(29, '2012-11-30 14:28:23', 152, 87.27732),
(29, '2012-11-30 14:45:01', 152, 25.12319),
(29, '2012-11-30 15:08:21', 152, 60.09872);

-- --------------------------------------------------------

--
-- Table structure for table `scalabilitymodelmetric`
--

CREATE TABLE IF NOT EXISTS `scalabilitymodelmetric` (
  `ModelID` int(11) NOT NULL,
  `MetricID` int(11) NOT NULL,
  `ModelMetric` tinyint(1) NOT NULL DEFAULT '0',
  KEY `ModelID` (`ModelID`),
  KEY `MetricID` (`MetricID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scalabilitymodelmetric`
--

INSERT INTO `scalabilitymodelmetric` (`ModelID`, `MetricID`, `ModelMetric`) VALUES
(2, 99, 0),
(2, 94, 0),
(2, 89, 0),
(2, 84, 0),
(2, 1, 0),
(1, 104, 0),
(1, 109, 0),
(1, 114, 0),
(1, 119, 0),
(1, 124, 0),
(26, 83, 0),
(26, 129, 0),
(26, 133, 0),
(26, 137, 0),
(26, 141, 0),
(27, 142, 0),
(27, 143, 0),
(27, 147, 0),
(28, 150, 0),
(28, 151, 0),
(28, 149, 0),
(29, 150, 0),
(29, 151, 0),
(29, 152, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seleniumresult`
--

CREATE TABLE IF NOT EXISTS `seleniumresult` (
  `TestResultID` int(10) NOT NULL AUTO_INCREMENT,
  `TestProject` varchar(10) NOT NULL,
  `UserID` int(50) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TestURL` varchar(100) DEFAULT NULL,
  `TestSuite` varchar(50) DEFAULT NULL,
  `ResultFile` varchar(50) DEFAULT NULL,
  `Success` int(50) DEFAULT NULL,
  `Fail` int(50) DEFAULT NULL,
  `Remarks` int(50) DEFAULT NULL,
  PRIMARY KEY (`TestResultID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `seleniumresult`
--

INSERT INTO `seleniumresult` (`TestResultID`, `TestProject`, `UserID`, `TimeStamp`, `TestURL`, `TestSuite`, `ResultFile`, `Success`, `Fail`, `Remarks`) VALUES
(1, 'test6', 2, '2012-04-29 05:09:37', 'http%3A%2F%2F50.17.206.106%3A8080', 'testsuite.html', '1335676006444', 1, 0, NULL),
(2, 'gui-2', 2, '2012-04-29 06:20:11', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335680409587', 1, 0, NULL),
(3, 'gui-2', 2, '2012-04-29 06:30:32', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335681031541', 1, 0, NULL),
(4, 'gui-2', 2, '2012-04-29 06:57:18', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335682636291', 1, 0, NULL),
(5, 'gui-2', 2, '2012-04-29 06:57:49', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335682668942', 1, 0, NULL),
(6, 'gui-2', 2, '2012-04-29 06:58:49', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335682728677', 1, 0, NULL),
(7, 'gui-2', 2, '2012-04-29 07:30:17', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1335684615310', 1, 0, NULL),
(8, 'test6', 2, '2012-04-29 07:32:49', 'http%3A%2F%2F50.17.206.106%3A8080', 'testsuite.html', '1335684730743', 1, 0, NULL),
(9, 'test6', 2, '2012-04-29 07:54:49', 'http%3A%2F%2F50.17.206.106%3A8080', 'testsuite.html', '1335686051699', 1, 0, NULL),
(10, 'gui-2', 2, '2012-05-03 19:24:51', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1336073043574', 0, 1, NULL),
(11, 'gui-2', 2, '2012-05-03 19:27:13', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1336073187555', 0, 1, NULL),
(12, 'gui-2', 2, '2012-05-03 19:30:43', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1336073385519', 0, 1, NULL),
(13, 'gui-2', 2, '2012-05-09 17:33:41', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1336584781907', 0, 1, NULL),
(14, 'TAAS', 2, '2012-05-09 18:12:50', 'http%3A%2F%2Fec2-184-73-117-249.compute-1.amazonaws.com%2Forangehrm-2.7-rc.1', 'AddEmployee.html', '1336586449102', 18, 11, NULL),
(15, 'gui-2', 2, '2012-05-09 22:41:19', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1336603242269', 0, 1, NULL),
(16, 'gui-2', 2, '2012-05-09 22:47:54', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1336603637811', 0, 1, NULL),
(17, 'gui-2', 2, '2012-05-25 19:40:06', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1337974767374', 0, 1, NULL),
(18, 'gui-2', 2, '2012-06-03 02:05:47', 'http%3A%2F%2F50.17.206.106%3A8080', 'ts1.html', '1338689108183', 0, 1, NULL),
(19, 'gui-2', 2, '2012-06-03 03:51:23', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1338695444078', 0, 1, NULL),
(20, 'gui-2', 2, '2012-06-03 04:29:01', 'http%3A%2F%2F50.17.206.106%3A8080', 'FoodTS.html', '1338697702542', 0, 1, NULL),
(21, 'TAAS', 2, '2012-06-03 05:39:35', 'http%3A%2F%2Fwww.google.com', 'ADemoSuite.html', '1338701968373', 0, 4, NULL),
(22, 'TAAS', 2, '2012-06-03 05:42:22', 'http%3A%2F%2Fec2-107-22-46-131.compute-1.amazonaws.com', 'ADemoSuite.html', '1338702108784', 4, 0, NULL),
(23, 'TAAS', 2, '2012-06-03 05:59:03', 'http%3A%2F%2Fec2-107-22-46-131.compute-1.amazonaws.com', 'ADemoSuite.html', '1338703125831', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testproject`
--

CREATE TABLE IF NOT EXISTS `testproject` (
  `project_name` varchar(45) NOT NULL,
  `fk_resource-id` varchar(45) NOT NULL,
  `project_description` varchar(1024) NOT NULL,
  `TestProjectID` int(11) NOT NULL,
  `TesterID` int(11) NOT NULL,
  `ProjectDate` date NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductVersion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testtool`
--

CREATE TABLE IF NOT EXISTS `testtool` (
  `ToolID` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) NOT NULL,
  `project_desc` varchar(1024) NOT NULL,
  `tool_type` varchar(45) NOT NULL,
  PRIMARY KEY (`ToolID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE IF NOT EXISTS `useraccount` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `PrimaryEmail` varchar(50) NOT NULL,
  `TimeZone` varchar(50) NOT NULL,
  `AccountType` varchar(5) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`UserID`, `FirstName`, `LastName`, `UserName`, `PrimaryEmail`, `TimeZone`, `AccountType`, `Password`) VALUES
(1, 'Teja', 'Karra', 'kteja', 'tejaswinikarra@gmail.com', '(GMT-8:00) Pacific Time', 'Admin', 'user1'),
(2, 'Ying', 'Zuo', 'zying', 'yzonemail@gmail.com', '(GMT-8:00) Pacific Time', 'Admin', 'user2'),
(3, 'Radha', 'Iyer', 'iradha', 'goradhago@gmail.com', '(GMT-8:00) Pacific Time', 'Admin', 'user3'),
(4, 'UserF4', 'UserL4', 'FL4', 'FL4@CBSA.com', '(GMT-8:00) Pacific Time', 'user', 'user4'),
(5, 'UserF5', 'UserL5', 'FL5', 'FL5@CBSA.com', '(GMT-8:00) Pacific Time', 'user', 'user5'),
(6, 'UserF6', 'UserL6', 'FL6', 'FL6@CBSA.com', '(GMT-8:00) Pacific Time', 'user', 'user6');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scalabilitymodeldata`
--
ALTER TABLE `scalabilitymodeldata`
  ADD CONSTRAINT `scalabilitymodeldata_ibfk_1` FOREIGN KEY (`ModelID`) REFERENCES `scalabilitymodel` (`ModelID`) ON DELETE CASCADE,
  ADD CONSTRAINT `scalabilitymodeldata_ibfk_2` FOREIGN KEY (`MetricID`) REFERENCES `scalabilitymetric` (`MetricID`);

--
-- Constraints for table `scalabilitymodelmetric`
--
ALTER TABLE `scalabilitymodelmetric`
  ADD CONSTRAINT `scalabilitymodelmetric_ibfk_1` FOREIGN KEY (`ModelID`) REFERENCES `scalabilitymodel` (`ModelID`) ON DELETE CASCADE,
  ADD CONSTRAINT `scalabilitymodelmetric_ibfk_2` FOREIGN KEY (`MetricID`) REFERENCES `scalabilitymetric` (`MetricID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
