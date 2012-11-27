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
(4, 0, 'CPUUtilization', 'Sum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
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
(52, 0, 'TestMetric1', 'None', 'TestMetric', '1 * CPUUtilization : Minimum + 2 * CPUUtilization : Maximum', 'User Defined'),
(53, 0, 'TestMetric2', 'None', 'TestMetric', '2 * DiskReadOps : Sum + 2 * DiskWriteOps : Sum', 'User Defined'),
(54, 0, 'TestMetric3', 'None', 'TestMetric', '3 * TestMetric1 : None + 3 * TestMetric2 : None', 'User Defined'),
(55, 0, 'TestMetric4', 'None', 'TestMetric', '4 * CPUUtilization : SampleCount + 4 * TestMetric3 : None', 'User Defined'),
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
(81, 0, 'CRAM2', 'None', 'Computing Resource Allocation Meter. Measures System Resources Allocation. V2', 'Based on a Model', 'Model Defined'),
(83, 0, 'CRUM2', 'None', 'Crum with volume', 'Based on a Model', 'Model Defined'),
(84, 0, 'CRAM2', 'None', 'Computing Resource Allocation Meter. Measures System Resources Allocation. V2', 'Based on a Model', 'Model Defined'),
(119, 0, 'NWIO', 'None', '', '1 * NetworkIn : Average + 1 * NetworkOut : Average', 'User Defined'),
(121, 0, 'VOPS', 'None', '', '1 * VolumeReadOps : Average + 1 * VolumeReadOps : Average', 'User Defined'),
(122, 0, 'VIO', 'None', '', '1 * VolumeReadBytes : Average + 1 * VolumeWriteBytes : Average', 'User Defined'),
(123, 0, 'ThroughputRatio(%)', 'None', '', '100 * NetworkOut : Average / 1 * NWIO : None', 'User Defined'),
(124, 0, 'Reliability(%)', 'None', '', '0.5 * ThroughputRatio(%) : None + 0.5 * ThroughputRatio(%) : None', 'User Defined'),
(125, 0, 'Utilization(%)', 'None', '', '0.5 * CPUUtilization : Average + 0.5 * CPUUtilization : Average', 'User Defined'),
(126, 0, 'SystemDataLoad(MB)', 'None', '', '0.001 * VolumeReadBytes : Average + 0.001 * VolumeWriteBytes : Average', 'User Defined'),
(127, 0, 'UserAccessLoad(MB)', 'None', '', '0.0005 * NetworkIn : Average + 0.0005 * NetworkIn : Average', 'User Defined'),
(128, 0, 'Comm.Traffic(MB)', 'None', '', '0.001 * NetworkIn : Average + 0.001 * NetworkOut : Average', 'User Defined'),
(129, 0, 'ResourceAllocated', 'None', '', '0.5 * CPUUtilization : Average + 0.5 * CPUUtilization : Average', 'User Defined'),
(130, 0, 'WriteRatio', 'None', '', '100 * VolumeWriteOps : Average / 1 * VOPS : None', 'User Defined'),
(131, 0, 'VolRatio', 'None', '', '100 * VolumeWriteBytes : Average / 1 * VIO : None', 'User Defined'),
(132, 0, 'SystemLoad', 'None', '', '0.5 * ThroughputRatio(%) : None + 0.5 * WriteRatio : None', 'User Defined'),
(133, 0, 'SystemPerformance', 'None', '', '0.5 * ThroughputRatio(%) : None + 0.5 * Reliability(%) : None', 'User Defined'),
(134, 0, 'SPM', 'None', '', 'Based on a Model', 'Model Defined'),
(135, 0, 'SLM', 'None', '', 'Based on a Model', 'Model Defined'),
(136, 0, 'SCM', 'None', '', 'Based on a Model', 'Model Defined');

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
(1, 1, 'CRAM', 'Computing Resource Allocation Meter. Measures System Resources Allocation.', 5, 'System Defined', '(stopped)', 1001),
(2, 0, 'CRUM', 'Computing Resource Utilization Meter. Measures System Resources Utilization.', 5, 'System Defined', '(stopped)', 1004),
(9, 0, 'CRUM2', 'Crum with volume', 5, 'User Defined', '(running)', 1002),
(10, 0, 'CRAM2', 'Computing Resource Allocation Meter. Measures System Resources Allocation. V2', 5, 'User Defined', '(running)', 1001),
(26, 0, 'SPM', '', 3, 'User Defined', '(running)', 1003),
(27, 0, 'SLM', '', 3, 'User Defined', '(running)', 1002),
(28, 0, 'SCM', '', 3, 'User Defined', '(running)', 1004);

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
(26, '2012-07-26 06:15:34', 123, 74.00000),
(26, '2012-07-26 06:15:34', 124, 77.00000),
(26, '2012-07-26 06:15:34', 125, 39.00000),
(26, '2012-07-26 06:15:34', 134, 164.54000),
(26, '2012-07-26 06:35:39', 123, 85.00000),
(26, '2012-07-26 06:35:39', 124, 83.00000),
(26, '2012-07-26 06:35:39', 125, 57.00000),
(26, '2012-07-26 06:35:39', 134, 194.85000),
(26, '2012-07-26 06:50:44', 123, 93.00000),
(26, '2012-07-26 06:50:44', 124, 86.00000),
(26, '2012-07-26 06:50:44', 125, 99.00000),
(26, '2012-07-26 06:50:44', 134, 240.74800),
(27, '2012-07-26 06:15:44', 126, 153.00000),
(27, '2012-07-26 06:15:44', 127, 37.00000),
(27, '2012-07-26 06:15:44', 128, 98.00000),
(27, '2012-07-26 06:15:44', 135, 249.40800),
(27, '2012-07-26 06:35:49', 126, 302.00000),
(27, '2012-07-26 06:35:49', 127, 64.00000),
(27, '2012-07-26 06:35:49', 128, 333.00000),
(27, '2012-07-26 06:35:49', 135, 605.33400),
(27, '2012-07-26 06:50:54', 126, 611.00000),
(27, '2012-07-26 06:50:54', 127, 141.00000),
(27, '2012-07-26 06:50:54', 128, 650.00000),
(27, '2012-07-26 06:50:54', 135, 1214.13200),
(9, '2012-07-26 06:15:54', 1, 47.00000),
(9, '2012-07-26 06:15:54', 26, 28.10000),
(9, '2012-07-26 06:15:54', 31, 89.00000),
(9, '2012-07-26 06:15:54', 60, 35.00000),
(9, '2012-07-26 06:15:54', 65, 99.00000),
(9, '2012-07-26 06:15:54', 83, 283.49310),
(9, '2012-07-26 06:35:59', 1, 70.00000),
(9, '2012-07-26 06:35:59', 26, 72.50000),
(9, '2012-07-26 06:35:59', 31, 278.00000),
(9, '2012-07-26 06:35:59', 60, 52.00000),
(9, '2012-07-26 06:35:59', 65, 230.00000),
(9, '2012-07-26 06:35:59', 83, 668.07750),
(9, '2012-07-26 06:50:04', 1, 97.00000),
(9, '2012-07-26 06:50:04', 26, 167.20000),
(9, '2012-07-26 06:50:04', 31, 516.70000),
(9, '2012-07-26 06:50:04', 60, 213.00000),
(9, '2012-07-26 06:50:04', 65, 467.00000),
(9, '2012-07-26 06:50:04', 83, 1389.31590),
(28, '2012-07-26 08:40:22', 129, 11.67000),
(28, '2012-07-26 08:40:22', 132, 1.00000),
(28, '2012-07-26 08:40:22', 133, 40.40730),
(28, '2012-07-26 08:40:22', 136, 0.00000),
(27, '2012-07-26 08:41:07', 126, 3.19018),
(27, '2012-07-26 08:41:07', 127, 10.20862),
(27, '2012-07-26 08:41:07', 128, 167.09160),
(27, '2012-07-26 08:41:07', 135, 156.30924),
(27, '2012-07-26 08:41:07', 126, 3.19016),
(27, '2012-07-26 08:41:07', 127, 10.20861),
(27, '2012-07-26 08:41:07', 128, 167.09160),
(27, '2012-07-26 08:41:07', 135, 156.30924),
(10, '2012-07-26 08:41:07', 2, 100.00002),
(10, '2012-07-26 08:41:07', 27, 48819.00001),
(10, '2012-07-26 08:41:07', 32, 782907.00002),
(10, '2012-07-26 08:41:07', 71, 0.00002),
(10, '2012-07-26 08:41:07', 77, 13.00002),
(10, '2012-07-26 08:41:07', 81, 791125.90146),
(27, '2012-07-26 08:41:07', 126, 3.19018),
(27, '2012-07-26 08:41:07', 127, 10.20860),
(27, '2012-07-26 08:41:07', 128, 167.09161),
(27, '2012-07-26 08:41:07', 135, 156.30924),
(26, '2012-07-26 08:44:03', 123, 94.12848),
(26, '2012-07-26 08:44:03', 124, 94.12849),
(26, '2012-07-26 08:44:03', 125, 100.00002),
(26, '2012-07-26 08:44:03', 134, 249.63785),
(9, '2012-07-26 08:44:09', 1, 82.30000),
(9, '2012-07-26 08:44:09', 26, 27649.20001),
(9, '2012-07-26 08:44:09', 31, 454179.60002),
(9, '2012-07-26 08:44:09', 60, 23372.80002),
(9, '2012-07-26 08:44:09', 65, 3769.38000),
(9, '2012-07-26 08:44:09', 83, 484138.43909),
(28, '2012-07-26 08:45:22', 129, 100.00002),
(28, '2012-07-26 08:45:22', 132, 119.67201),
(28, '2012-07-26 08:45:22', 133, 94.34399),
(28, '2012-07-26 08:45:22', 136, 271.94582),
(27, '2012-07-26 08:46:08', 126, 27.14220),
(27, '2012-07-26 08:46:08', 127, 33.18022),
(27, '2012-07-26 08:46:08', 128, 580.27100),
(27, '2012-07-26 08:46:08', 135, 554.77014),
(27, '2012-07-26 08:46:08', 126, 27.14220),
(27, '2012-07-26 08:46:08', 127, 33.18022),
(27, '2012-07-26 08:46:08', 128, 580.27100),
(27, '2012-07-26 08:46:08', 135, 554.77014),
(27, '2012-07-26 08:46:08', 126, 27.14220),
(27, '2012-07-26 08:46:08', 127, 33.18021),
(27, '2012-07-26 08:46:08', 128, 580.27100),
(27, '2012-07-26 08:46:08', 135, 554.77014),
(10, '2012-07-26 08:46:08', 2, 100.00000),
(10, '2012-07-26 08:46:08', 27, 43276.00000),
(10, '2012-07-26 08:46:08', 32, 693773.00000),
(10, '2012-07-26 08:46:08', 71, 20.00001),
(10, '2012-07-26 08:46:08', 77, 58.00002),
(10, '2012-07-26 08:46:08', 81, 701144.54234);

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
(1, 2, 0),
(1, 17, 0),
(1, 22, 0),
(1, 27, 0),
(1, 32, 0),
(1, 36, 1),
(2, 1, 0),
(2, 16, 0),
(2, 21, 0),
(2, 26, 0),
(2, 31, 0),
(2, 37, 1),
(3, 9, 0),
(3, 14, 0),
(3, 19, 0),
(3, 24, 0),
(3, 44, 1),
(4, 3, 0),
(4, 2, 0),
(4, 1, 0),
(4, 46, 1),
(5, 52, 0),
(5, 53, 0),
(5, 54, 0),
(5, 55, 0),
(5, 56, 1),
(6, 3, 0),
(6, 2, 0),
(6, 4, 0),
(6, 1, 0),
(6, 59, 1),
(7, 2, 0),
(7, 61, 0),
(7, 66, 0),
(7, 27, 0),
(7, 32, 0),
(7, 81, 1),
(1, 3, 0),
(1, 3, 0),
(1, 3, 0),
(1, 3, 0),
(1, 3, 0),
(1, 36, 1),
(9, 1, 0),
(9, 60, 0),
(9, 65, 0),
(9, 26, 0),
(9, 31, 0),
(9, 83, 1),
(10, 2, 0),
(10, 27, 0),
(10, 32, 0),
(10, 71, 0),
(10, 77, 0),
(10, 81, 1),
(11, 85, 0),
(11, 85, 0),
(11, 3, 0),
(11, 86, 1),
(12, 87, 0),
(12, 88, 0),
(12, 89, 0),
(12, 86, 1),
(13, 2, 0),
(13, 27, 0),
(13, 32, 0),
(13, 91, 1),
(14, 2, 0),
(14, 60, 0),
(14, 65, 0),
(14, 92, 1),
(15, 93, 0),
(15, 88, 0),
(15, 27, 0),
(15, 32, 0),
(15, 2, 0),
(15, 86, 1),
(16, 93, 0),
(16, 94, 0),
(16, 95, 0),
(16, 32, 0),
(16, 27, 0),
(16, 86, 1),
(17, 98, 0),
(17, 99, 0),
(17, 100, 0),
(17, 92, 1),
(18, 94, 0),
(18, 102, 0),
(18, 103, 0),
(18, 27, 0),
(18, 32, 0),
(18, 86, 1),
(19, 102, 0),
(19, 103, 0),
(19, 105, 0),
(19, 94, 0),
(19, 106, 0),
(19, 86, 1),
(20, 3, 0),
(20, 33, 0),
(20, 28, 0),
(20, 62, 0),
(20, 67, 0),
(20, 86, 1),
(21, 109, 0),
(21, 110, 0),
(21, 111, 0),
(21, 91, 1),
(22, 109, 0),
(22, 113, 0),
(22, 111, 0),
(22, 91, 1),
(23, 98, 0),
(23, 100, 0),
(23, 115, 0),
(23, 92, 1),
(24, 106, 0),
(24, 102, 0),
(24, 103, 0),
(24, 94, 0),
(24, 105, 0),
(24, 86, 1),
(25, 106, 0),
(25, 94, 0),
(25, 102, 0),
(25, 86, 1),
(26, 123, 0),
(26, 124, 0),
(26, 125, 0),
(26, 134, 1),
(27, 126, 0),
(27, 127, 0),
(27, 128, 0),
(27, 135, 1),
(28, 129, 0),
(28, 132, 0),
(28, 133, 0),
(28, 136, 1);

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
(1, 0, 'CPUUtilization', 'Average', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(2, 0, 'CPUUtilization', 'Maximum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(3, 0, 'CPUUtilization', 'Minimum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(4, 0, 'CPUUtilization', 'Sum', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(5, 0, 'CPUUtilization', 'SampleCount', 'Percentage of allocated EC2 compute units that are currently in use.', 'System Defined', 'System Defined'),
(6, 0, 'DiskReadOps', 'Average', 'Completed read operations from all ephemeral disks available.', 'System Defined', 'System Defined'),
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
(36, 0, 'CRAM', 'None', 'Computing Resource Allocation Meter. Measures System Resources Allocation.', 'Based on a Model', 'Model Defined'),
(37, 0, 'CRUM', 'None', 'Computing Resource Utilization Meter. Measures System Resources Utilization.', 'Based on a Model', 'Model Defined'),
(39, 0, 'Reliability', 'None', 'System performance', '1 * NetworkOut : Maximum - 1 * NetworkIn : Maximum', 'User Defined'),
(40, 0, 'Availability', 'None', 'Checking system resources', '1 * CPUUtilization : Maximum / 1 * CPUUtilization : Minimum', 'User Defined'),
(41, 0, 'Throughput', 'None', '', '1 * Reliability : None / 1 * NetworkIn : Average', 'User Defined'),
(42, 0, 'ResourceUtilization', 'None', 'System resource', '1 * DiskReadOps : Sum + 1 * DiskWriteOps : Sum', 'User Defined'),
(43, 0, 'SPM', 'None', 'System Performance Meter', 'Based on a Model', 'Model Defined'),
(44, 0, 'ModelMNJ', 'None', 'Created by Manju.', 'Based on a Model', 'Model Defined');

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
(1, 1, 'CRAM', 'Computing Resource Allocation Meter. Measures System Resources Allocation.', 5, 'System Defined', '(running)', 1001),
(2, 0, 'CRUM', 'Computing Resource Utilization Meter. Measures System Resources Utilization.', 5, 'System Defined', '(stopped)', 0),
(3, 0, 'SPM', 'System Performance Meter', 4, 'User Defined', '(stopped)', 0),
(4, 0, 'ModelMNJ', 'Created by Manju.', 3, 'User Defined', '(stopped)', 1003);

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
(2, '2012-04-16 21:16:18', 1, 30.00000),
(2, '2012-04-16 21:16:18', 16, 50.00000),
(2, '2012-04-16 21:16:18', 21, 75.00000),
(2, '2012-04-16 21:16:18', 26, 119.00000),
(2, '2012-04-16 21:16:18', 31, 63.00000),
(2, '2012-04-16 21:16:18', 37, 128.00000),
(2, '2012-04-16 21:20:18', 1, 54.00000),
(2, '2012-04-16 21:20:18', 16, 60.00000),
(2, '2012-04-16 21:20:18', 21, 90.00000),
(2, '2012-04-16 21:20:18', 26, 153.00000),
(2, '2012-04-16 21:20:18', 31, 77.00000),
(2, '2012-04-16 21:20:18', 37, 166.00000),
(2, '2012-04-16 21:25:18', 1, 73.00000),
(2, '2012-04-16 21:25:18', 16, 70.00000),
(2, '2012-04-16 21:25:18', 21, 105.00000),
(2, '2012-04-16 21:25:18', 26, 235.00000),
(2, '2012-04-16 21:25:18', 31, 106.00000),
(2, '2012-04-16 21:25:18', 37, 225.00000),
(3, '2012-04-21 02:16:18', 1, 25.00000),
(3, '2012-04-21 02:16:18', 16, 40.00000),
(3, '2012-04-21 02:16:18', 21, 70.00000),
(3, '2012-04-21 02:16:18', 26, 110.00000),
(3, '2012-04-21 02:16:18', 31, 60.00000),
(3, '2012-04-21 02:16:18', 37, 120.00000),
(3, '2012-04-21 02:20:18', 1, 54.00000),
(3, '2012-04-21 02:20:18', 16, 60.00000),
(3, '2012-04-21 02:20:18', 21, 90.00000),
(3, '2012-04-21 02:20:18', 26, 150.00000),
(3, '2012-04-21 02:20:18', 31, 75.00000),
(3, '2012-04-21 02:20:18', 37, 160.00000),
(3, '2012-04-21 02:25:18', 1, 70.00000),
(3, '2012-04-21 02:25:18', 16, 70.00000),
(3, '2012-04-21 02:25:18', 21, 100.00000),
(3, '2012-04-21 02:25:18', 26, 230.00000),
(3, '2012-04-21 02:25:18', 31, 106.00000),
(3, '2012-04-21 02:25:18', 37, 220.00000),
(4, '2012-05-24 03:35:53', 2, 11.86002),
(4, '2012-05-24 03:35:53', 27, 688.00002),
(4, '2012-05-24 03:35:53', 32, 481.00001),
(4, '2012-05-24 03:35:53', 44, 1022.65476),
(4, '2012-05-24 03:36:53', 2, 10.00001),
(4, '2012-05-24 03:36:53', 27, 556.00000),
(4, '2012-05-24 03:36:53', 32, 377.00002),
(4, '2012-05-24 03:36:53', 44, 816.66196),
(4, '2012-05-24 03:37:53', 2, 11.67002),
(4, '2012-05-24 03:37:53', 27, 688.00001),
(4, '2012-05-24 03:37:53', 32, 481.00000),
(4, '2012-05-24 03:37:53', 44, 1022.49021),
(4, '2012-05-24 03:38:54', 2, 10.00001),
(4, '2012-05-24 03:38:54', 27, 556.00002),
(4, '2012-05-24 03:38:54', 32, 377.00000),
(4, '2012-05-24 03:38:54', 44, 816.66196),
(4, '2012-05-24 03:39:54', 2, 11.67001),
(4, '2012-05-24 03:39:54', 27, 556.00001),
(4, '2012-05-24 03:39:54', 32, 377.00000),
(4, '2012-05-24 03:39:54', 44, 818.10822),
(4, '2012-05-24 03:40:54', 2, 10.00001),
(4, '2012-05-24 03:40:54', 27, 556.00002),
(4, '2012-05-24 03:40:54', 32, 377.00000),
(4, '2012-05-24 03:40:54', 44, 816.66196),
(4, '2012-05-24 17:26:18', 2, 37.70001),
(4, '2012-05-24 17:26:18', 27, 7262.00001),
(4, '2012-05-24 17:26:18', 32, 83161.00000),
(4, '2012-05-24 17:26:18', 44, 78341.26424),
(4, '2012-05-24 21:25:36', 2, 23.33000),
(4, '2012-05-24 21:25:36', 27, 3826.00001),
(4, '2012-05-24 21:25:36', 32, 16605.00000),
(4, '2012-05-24 21:25:36', 44, 17713.96940),
(4, '2012-05-24 21:26:36', 2, 21.67000),
(4, '2012-05-24 21:26:36', 27, 3838.00001),
(4, '2012-05-24 21:26:36', 32, 9309.00000),
(4, '2012-05-24 21:26:36', 44, 11404.40275),
(4, '2012-06-03 06:51:13', 2, 11.86001),
(4, '2012-06-03 06:51:13', 27, 556.00001),
(4, '2012-06-03 06:51:13', 32, 377.00001),
(4, '2012-06-03 06:51:13', 44, 818.27276),
(1, '2012-06-03 08:37:09', 2, 10.00001),
(1, '2012-06-03 08:37:09', 17, 0.00002),
(1, '2012-06-03 08:37:09', 22, 0.00002),
(1, '2012-06-03 08:37:09', 27, 556.00002),
(1, '2012-06-03 08:37:09', 32, 377.00001),
(1, '2012-06-03 08:37:09', 36, 896.84629),
(1, '2012-06-03 08:38:09', 2, 11.86000),
(1, '2012-06-03 08:38:09', 17, 0.00001),
(1, '2012-06-03 08:38:09', 22, 0.00001),
(1, '2012-06-03 08:38:09', 27, 556.00000),
(1, '2012-06-03 08:38:09', 32, 377.00001),
(1, '2012-06-03 08:38:09', 36, 898.61526),
(1, '2012-06-03 08:39:09', 2, 9.84001),
(1, '2012-06-03 08:39:09', 17, 0.00001),
(1, '2012-06-03 08:39:09', 22, 0.00000),
(1, '2012-06-03 08:39:09', 27, 556.00000),
(1, '2012-06-03 08:39:09', 32, 377.00002),
(1, '2012-06-03 08:39:09', 36, 896.69413),
(1, '2012-06-03 08:40:10', 2, 11.86002),
(1, '2012-06-03 08:40:10', 17, 0.00002),
(1, '2012-06-03 08:40:10', 22, 0.00000),
(1, '2012-06-03 08:40:10', 27, 598.00002),
(1, '2012-06-03 08:40:10', 32, 405.00000),
(1, '2012-06-03 08:40:10', 36, 965.18922),
(1, '2012-06-03 08:41:10', 2, 10.00002),
(1, '2012-06-03 08:41:10', 17, 0.00002),
(1, '2012-06-03 08:41:10', 22, 0.00002),
(1, '2012-06-03 08:41:10', 27, 514.00000),
(1, '2012-06-03 08:41:10', 32, 349.00002),
(1, '2012-06-03 08:41:10', 36, 830.27234),
(1, '2012-06-03 08:42:10', 2, 14.75000),
(1, '2012-06-03 08:42:10', 17, 0.00002),
(1, '2012-06-03 08:42:10', 22, 0.00001),
(1, '2012-06-03 08:42:10', 27, 556.00001),
(1, '2012-06-03 08:42:10', 32, 377.00000),
(1, '2012-06-03 08:42:10', 36, 901.36381),
(1, '2012-06-03 08:43:10', 2, 10.17000),
(1, '2012-06-03 08:43:10', 17, 0.00000),
(1, '2012-06-03 08:43:10', 22, 0.00000),
(1, '2012-06-03 08:43:10', 27, 556.00000),
(1, '2012-06-03 08:43:10', 32, 377.00000),
(1, '2012-06-03 08:43:10', 36, 897.00797),
(1, '2012-06-03 08:44:10', 2, 11.48002),
(1, '2012-06-03 08:44:10', 17, 0.00002),
(1, '2012-06-03 08:44:10', 22, 0.00001),
(1, '2012-06-03 08:44:10', 27, 598.00000),
(1, '2012-06-03 08:44:10', 32, 405.00002),
(1, '2012-06-03 08:44:10', 36, 964.82781),
(1, '2012-06-03 08:45:11', 2, 10.17001),
(1, '2012-06-03 08:45:11', 17, 0.00002),
(1, '2012-06-03 08:45:11', 22, 0.00002),
(1, '2012-06-03 08:45:11', 27, 514.00000),
(1, '2012-06-03 08:45:11', 32, 349.00002),
(1, '2012-06-03 08:45:11', 36, 830.43402),
(1, '2012-06-03 08:46:11', 2, 11.67002),
(1, '2012-06-03 08:46:11', 17, 0.00000),
(1, '2012-06-03 08:46:11', 22, 0.00001),
(1, '2012-06-03 08:46:11', 27, 556.00000),
(1, '2012-06-03 08:46:11', 32, 377.00002),
(1, '2012-06-03 08:46:11', 36, 898.43456);

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
(1, 2, 0),
(1, 17, 0),
(1, 22, 0),
(1, 27, 0),
(1, 32, 0),
(1, 36, 1),
(2, 1, 0),
(2, 16, 0),
(2, 21, 0),
(2, 26, 0),
(2, 31, 0),
(2, 37, 1),
(3, 39, 0),
(3, 40, 0),
(3, 41, 0),
(3, 42, 0),
(3, 43, 1),
(4, 2, 0),
(4, 27, 0),
(4, 32, 0),
(4, 44, 1);

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
