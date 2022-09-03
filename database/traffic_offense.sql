-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffic_offense`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers_list`
--

CREATE TABLE `drivers_list` (
  `id` int(30) NOT NULL,
  `license_id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = suspended, 3 = banned',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers_list`
--

INSERT INTO `drivers_list` (`id`, `license_id_no`, `name`, `status`, `date_created`, `date_updated`) VALUES
(1, 'CDM-062314', 'Smith, Johnny D', 1, '2021-08-19 10:45:48', '2021-08-19 10:53:02'),
(4, 'GBN-10140715', 'Blake, Claire C', 1, '2021-08-19 14:56:09', NULL),
(5, '876487235', 'Hakiri, Korubasuke Hayami', 1, '2022-06-06 21:22:58', NULL),
(6, '7757644535423', 'Baalsrud, Jan Hyenhygy', 1, '2022-06-06 21:50:42', NULL),
(7, '766443322333', 'Musashi, Ayami Koshimi', 1, '2022-06-28 18:05:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers_meta`
--

CREATE TABLE `drivers_meta` (
  `driver_id` int(30) DEFAULT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers_meta`
--

INSERT INTO `drivers_meta` (`driver_id`, `meta_field`, `meta_value`, `date_updated`) VALUES
(1, 'license_id_no', 'CDM-062314', '2021-08-19 10:53:02'),
(1, 'lastname', 'Smith', '2021-08-19 10:53:02'),
(1, 'firstname', 'Johnny', '2021-08-19 10:53:02'),
(1, 'middlename', 'D', '2021-08-19 10:53:02'),
(1, 'dob', '1997-06-23', '2021-08-19 10:53:02'),
(1, 'present_address', 'Valenzuela City', '2022-06-06 21:16:45'),
(1, 'permanent_address', 'Sample Address', '2021-08-19 10:53:02'),
(1, 'civil_status', 'Married', '2021-08-19 10:53:02'),
(1, 'nationality', 'Filipino', '2021-08-19 10:53:02'),
(1, 'contact', '09123456789', '2021-08-19 10:53:02'),
(1, 'license_type', 'Professional', '2021-08-19 10:53:02'),
(1, 'image_path', 'uploads/drivers/1.jpg', '2021-08-19 10:53:02'),
(1, 'driver_id', '1', '2021-08-19 10:53:02'),
(4, 'license_id_no', 'GBN-10140715', '2021-08-19 14:56:09'),
(4, 'lastname', 'Blake', '2021-08-19 14:56:09'),
(4, 'firstname', 'Claire', '2021-08-19 14:56:09'),
(4, 'middlename', 'C', '2021-08-19 14:56:09'),
(4, 'dob', '1992-10-14', '2021-08-19 14:56:09'),
(4, 'present_address', 'Caloocan City', '2022-06-06 21:17:25'),
(4, 'permanent_address', 'Sample Address 123', '2021-08-19 14:56:09'),
(4, 'civil_status', 'Married', '2021-08-19 14:56:09'),
(4, 'nationality', 'Filipino', '2021-08-19 14:56:09'),
(4, 'contact', '09123789456', '2021-08-19 14:56:09'),
(4, 'license_type', 'Non-Professional', '2021-08-19 14:56:09'),
(4, 'image_path', '', '2021-08-19 14:56:09'),
(4, 'driver_id', '4', '2021-08-19 14:56:09'),
(4, 'image_path', 'uploads/drivers/4.jpg', '2021-08-19 14:56:09'),
(5, 'license_id_no', '876487235', '2022-06-06 21:22:58'),
(5, 'lastname', 'Hakiri', '2022-06-06 21:22:58'),
(5, 'firstname', 'Korubasuke', '2022-06-06 21:22:58'),
(5, 'middlename', 'Hayami', '2022-06-06 21:22:58'),
(5, 'dob', '2022-06-13', '2022-06-06 21:22:58'),
(5, 'present_address', 'Quezon City', '2022-06-06 21:22:58'),
(5, 'permanent_address', 'Taguig City', '2022-06-06 21:22:58'),
(5, 'civil_status', 'Divorced', '2022-06-06 21:22:58'),
(5, 'nationality', 'Filipino', '2022-06-06 21:22:58'),
(5, 'contact', '08866554433', '2022-06-06 21:22:58'),
(5, 'license_type', 'Professional', '2022-06-06 21:22:58'),
(5, 'image_path', '', '2022-06-06 21:22:58'),
(5, 'driver_id', '5', '2022-06-06 21:22:58'),
(6, 'license_id_no', '7757644535423', '2022-06-06 21:50:42'),
(6, 'lastname', 'Baalsrud', '2022-06-06 21:50:42'),
(6, 'firstname', 'Jan', '2022-06-06 21:50:42'),
(6, 'middlename', 'Hyenhygy', '2022-06-06 21:50:42'),
(6, 'dob', '2022-06-06', '2022-06-06 21:50:42'),
(6, 'present_address', 'Taguig City', '2022-06-06 21:50:42'),
(6, 'permanent_address', 'Valenzuela City', '2022-06-06 21:50:42'),
(6, 'civil_status', 'Married', '2022-06-06 21:50:42'),
(6, 'nationality', 'Filipino', '2022-06-06 21:50:42'),
(6, 'contact', '0932416161733', '2022-06-06 21:50:42'),
(6, 'license_type', 'Non-Professional', '2022-06-06 21:50:42'),
(6, 'image_path', '', '2022-06-06 21:50:42'),
(6, 'driver_id', '6', '2022-06-06 21:50:42'),
(7, 'license_id_no', '766443322333', '2022-06-28 18:05:55'),
(7, 'lastname', 'Musashi', '2022-06-28 18:05:55'),
(7, 'firstname', 'Ayami', '2022-06-28 18:05:55'),
(7, 'middlename', 'Koshimi', '2022-06-28 18:05:55'),
(7, 'dob', '1994-02-09', '2022-06-28 18:05:55'),
(7, 'present_address', 'Caloocan City', '2022-06-28 18:05:55'),
(7, 'permanent_address', 'Valenzuela City', '2022-06-28 18:05:55'),
(7, 'civil_status', 'Windowed', '2022-06-28 18:05:55'),
(7, 'nationality', 'Japanese', '2022-06-28 18:05:55'),
(7, 'contact', '0932416153', '2022-06-28 18:05:55'),
(7, 'license_type', 'Non-Professional', '2022-06-28 18:05:55'),
(7, 'image_path', '', '2022-06-28 18:05:55'),
(7, 'driver_id', '7', '2022-06-28 18:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fine` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `color` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offenses`
--

INSERT INTO `offenses` (`id`, `code`, `name`, `description`, `fine`, `status`, `date_created`, `date_updated`, `color`) VALUES
(1, 'OT-1001', 'Driving without License', 'This is a traffic offense for driving without License', 650, 1, '2021-08-19 09:14:43', '2022-06-02 19:55:33', '#0000FF'),
(2, 'TO-1002', 'Running Over Speed Limit', '&lt;p&gt;Sample Traffic offense or violation for over speed limit.&lt;/p&gt;', 1000, 1, '2021-08-19 13:54:51', '2022-06-02 19:56:10', '#FF00FF'),
(3, 'OT-3342', 'Disregarding Traffic Signs', '&lt;p&gt;Disregarding Traffic Signs Violation&amp;nbsp;&lt;/p&gt;', 800, 1, '2022-06-02 19:40:16', '2022-06-02 19:56:51', '#FF0000'),
(4, 'OT-33423', 'Reckless Driving', '&lt;p&gt;Sample Offense&lt;/p&gt;', 10000, 1, '2022-06-02 20:01:18', NULL, ''),
(7, 'OT-5543', 'Illegal Parking', 'Illegal Parking Offense Sample', 3000, 1, '2022-06-02 20:15:14', '2022-06-02 20:26:39', '#557789'),
(8, 'OT-3344', 'Obstruction violation', 'Sample Only', 500, 1, '2022-06-02 20:16:56', NULL, ''),
(9, 'OT-123', 'Truck Ban', '&lt;p&gt;Sample&lt;/p&gt;', 2000, 1, '2022-06-02 20:26:39', NULL, ''),
(10, 'OC-4344', 'Illegal Counterflow', '&lt;p&gt;Sample&lt;/p&gt;', 5000, 1, '2022-06-02 20:27:51', '2022-06-02 20:46:01', '#2ee50d'),
(11, 'OT-65354', 'test', '&lt;p&gt;sample&lt;/p&gt;', 300, 1, '2022-06-02 20:46:01', '2022-06-02 20:46:33', '#8491ec'),
(12, 'OT-65553', 'TETSN', '&lt;p&gt;DKJABSKJF&lt;/p&gt;', 400, 1, '2022-06-02 20:46:33', NULL, ''),
(13, 'OT-777', 'NZBFKJSABFJK', '&lt;p&gt;MNBJSAJF&lt;/p&gt;', 30000, 1, '2022-06-02 20:48:27', NULL, ''),
(14, 'OT-7856735', 'MAS KSF', '&lt;p&gt;NBC BJAS&lt;/p&gt;', 100, 1, '2022-06-02 20:50:07', '2022-06-02 20:51:03', '#340748'),
(15, 'OT-583754', 'LKDFMMKN', '&lt;p&gt;NBFJSABFHA&lt;/p&gt;', 2000, 1, '2022-06-02 20:51:03', NULL, ''),
(16, 'OT-0996858', 'ZCKJXK', '&lt;p&gt;NKDBF OASDHGFCUIEWF&lt;/p&gt;', 300000, 1, '2022-06-02 20:52:40', '2022-06-02 20:52:40', '#ac9f3e');

-- --------------------------------------------------------

--
-- Table structure for table `offense_items`
--

CREATE TABLE `offense_items` (
  `driver_offense_id` int(30) NOT NULL,
  `offense_id` int(30) DEFAULT NULL,
  `fine` float NOT NULL,
  `area` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offense_items`
--

INSERT INTO `offense_items` (`driver_offense_id`, `offense_id`, `fine`, `area`, `status`, `date_created`) VALUES
(1, 1, 650, '', 1, '2021-08-18 15:00:00'),
(1, 2, 1000, '', 1, '2021-08-18 15:00:00'),
(3, 1, 650, '', 0, '2022-05-31 10:20:00'),
(4, 4, 10000, '', 0, '2022-06-02 22:24:00'),
(5, 10, 5000, '', 0, '2022-06-03 02:17:00'),
(6, 10, 5000, '', 0, '2022-06-03 02:19:00'),
(7, 2, 1000, '', 0, '2022-06-03 02:34:00'),
(8, 7, 3000, '', 0, '2022-06-03 02:40:00'),
(9, 2, 1000, '', 0, '2022-06-23 22:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
  `id` int(30) NOT NULL,
  `driver_id` int(30) NOT NULL,
  `officer_name` text NOT NULL,
  `officer_id` text NOT NULL,
  `ticket_no` text NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offense_list`
--

INSERT INTO `offense_list` (`id`, `driver_id`, `officer_name`, `officer_id`, `ticket_no`, `total_amount`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'George Wilson', 'OFC-789456123', '123456789', 1650, 'Sample Traffic Offense Record Only.', 1, '2021-08-18 15:00:00', '2021-08-19 14:20:59'),
(3, 1, 'John Doe', '32441', '209843', 650, 'Negative over and out', 0, '2022-05-31 10:20:00', NULL),
(4, 4, 'Gregory Chant', '98877', '56543', 10000, 'Lasing nakainom tas nakadroga', 0, '2022-06-02 22:24:00', NULL),
(5, 4, 'Blake Jayson Turado', 'ou7576576', '786756454', 5000, '', 0, '2022-06-03 02:17:00', NULL),
(6, 1, 'Ding DOng', '3243353465345', '55555555555555555', 5000, 'lhjcjaHFOCIEAWHNCIUEW', 0, '2022-06-03 02:19:00', NULL),
(7, 1, 'Gusion Goddess', '65897654', 'u8735834584', 1000, 'Ilang beses na nahuli ikulong na salamat', 0, '2022-06-03 02:34:00', NULL),
(8, 1, 'Harvey Alipio', '999999', '35356754', 3000, 'Huli ka', 0, '2022-06-03 02:40:00', NULL),
(9, 5, 'Gusion Goddess', '7835665', '34835834', 1000, '', 0, '2022-06-23 22:16:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Movva - Traffic Offense shit'),
(6, 'short_name', 'Movva - Traffic'),
(11, 'logo', 'uploads/1629334140_traffic_light_logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1629334140_traffic_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(9, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/1629336240_avatar.jpg', NULL, 2, '2021-08-19 09:24:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers_list`
--
ALTER TABLE `drivers_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `offenses`
--
ALTER TABLE `offenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD KEY `driver_offense_id` (`driver_offense_id`),
  ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers_list`
--
ALTER TABLE `drivers_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offenses`
--
ALTER TABLE `offenses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD CONSTRAINT `drivers_meta_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD CONSTRAINT `offense_items_ibfk_1` FOREIGN KEY (`driver_offense_id`) REFERENCES `offense_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offense_items_ibfk_2` FOREIGN KEY (`offense_id`) REFERENCES `offenses` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD CONSTRAINT `offense_list_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
