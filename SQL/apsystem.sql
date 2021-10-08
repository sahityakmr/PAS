-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 11:54 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$ZiSNgB3t7D.xaJuNsnu1dOctsJUVOFieVQsTDr/OdkOePCA3j4yTO', 'avnish', 'gupta', 'splash_screenbackground.jpg', '2018-04-30'),
(2, 'singhj775', 'abc@123', 'jas', 'singh', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(1, 8, '2021-07-22', '21:15:00', 0, '12:15:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_check`
--

CREATE TABLE `attendance_check` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `num_hr` double DEFAULT NULL,
  `fingerprint` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_check`
--

INSERT INTO `attendance_check` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`, `fingerprint`, `latitude`, `longitude`) VALUES
(1, 29, '2021-10-08', '03:08:05', NULL, '03:08:26', NULL, 'w', 77.6907, 0),
(2, 29, '2021-10-08', '03:13:14', NULL, NULL, NULL, 'w', 77.6907, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auto_ins`
--

CREATE TABLE `auto_ins` (
  `MySQL_Function` varchar(30) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auto_ins`
--

INSERT INTO `auto_ins` (`MySQL_Function`, `DateTime`, `Date`, `Time`, `Year`, `TimeStamp`) VALUES
('CURDATE()', '2021-10-04 00:00:00', '2021-10-04', '00:00:00', 2021, '2021-10-03 18:30:00'),
('CURTIME()', '2021-10-04 21:52:21', '2021-10-04', '21:52:21', 0000, '2021-10-04 16:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `biometric`
--

CREATE TABLE `biometric` (
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `fingerprint` text DEFAULT NULL,
  `image_name` text DEFAULT NULL,
  `fingerprint2` text DEFAULT NULL,
  `fingerprint3` text DEFAULT NULL,
  `fingerprint4` text DEFAULT NULL,
  `fingerprint5` text DEFAULT NULL,
  `fingerprint6` text DEFAULT NULL,
  `fingerprint7` text DEFAULT NULL,
  `fingerprint8` text DEFAULT NULL,
  `fingerprint9` text DEFAULT NULL,
  `fingerprint10` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biometric`
--

INSERT INTO `biometric` (`latitude`, `longitude`, `fingerprint`, `image_name`, `fingerprint2`, `fingerprint3`, `fingerprint4`, `fingerprint5`, `fingerprint6`, `fingerprint7`, `fingerprint8`, `fingerprint9`, `fingerprint10`) VALUES
(28.9617, 77.6907, 'q', 'gf', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'),
(28.9617, 77.6907, 'a', 'tr', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z');

-- --------------------------------------------------------

--
-- Table structure for table `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(6, '2021-07-01', '8', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 100),
(2, 'Pagibig', 150),
(3, 'PhilHealth', 150),
(4, 'Project Issues', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `email`, `token`) VALUES
(1, 'singhj775@gmail. com', 'fdNBPoHIQCq5VE7qWdSemP:APA91bERCpkFwCowLwckPivwNQwuSxmU5Y1RiPiHNz52gODjndPihTLPLQB53UwKux_5q1pf_AByPtKhP_m2muvZjW-kuWi_W4N_-LrcVb-Tu0jzzdZT7paDFG7tksP8z-arbrmb0jy1');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `f_name` text NOT NULL,
  `l_name` text DEFAULT NULL,
  `mobile` text NOT NULL,
  `aadhar_no` varchar(16) DEFAULT NULL,
  `pan_no` varchar(16) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_name` text NOT NULL,
  `id` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `fingerprint` text NOT NULL,
  `fingerprint2` text DEFAULT NULL,
  `fingerprint3` text DEFAULT NULL,
  `fingerprint4` text DEFAULT NULL,
  `fingerprint5` text DEFAULT NULL,
  `fingerprint6` text DEFAULT NULL,
  `fingerprint7` text DEFAULT NULL,
  `fingerprint8` text DEFAULT NULL,
  `fingerprint9` text DEFAULT NULL,
  `fingerprint10` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`f_name`, `l_name`, `mobile`, `aadhar_no`, `pan_no`, `dob`, `time`, `image_name`, `id`, `latitude`, `longitude`, `fingerprint`, `fingerprint2`, `fingerprint3`, `fingerprint4`, `fingerprint5`, `fingerprint6`, `fingerprint7`, `fingerprint8`, `fingerprint9`, `fingerprint10`) VALUES
('dhd', 'hdhdh', '6464', '466464', 'dhdd', '2021-10-28', '2021-10-07 19:03:19', '2', 29, 77.6907, 0, 'w', 'e', 'q', '4', 't', 'y', 'u', 'i', 'o', 'p'),
('hdhf', 'jdhdh', '77464', 'hdhd', '7474', '2021-10-28', '2021-10-07 19:15:22', '4', 29, 77.6907, 0, 's', 'd', 'a', '4', 'g', 'h', 'j', 'k', 'l', 'z');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `f_name` text NOT NULL,
  `l_name` text DEFAULT NULL,
  `mobile` text NOT NULL,
  `aadhar_no` varchar(16) DEFAULT NULL,
  `pan_no` varchar(16) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_name` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`f_name`, `l_name`, `mobile`, `aadhar_no`, `pan_no`, `dob`, `time`, `image_name`, `id`) VALUES
('dhd', 'hdhdh', '6464', '466464', 'dhdd', '2021-10-28', '2021-10-07 19:03:19', 'gf', 2),
('hdhf', 'jdhdh', '77464', 'hdhd', '7474', '2021-10-28', '2021-10-07 19:15:22', 'tr', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` text DEFAULT NULL,
  `position_id` text DEFAULT NULL,
  `schedule_id` text DEFAULT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `aadhar` varchar(16) DEFAULT NULL,
  `pan` varchar(200) DEFAULT NULL,
  `image_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`, `aadhar`, `pan`, `image_name`) VALUES
(1, NULL, 'f', 'f', NULL, '2021-10-21', '74743', NULL, NULL, NULL, 'http://192.168.1.106:80/Android/0.png', '2021-10-05 08:31:33', '8744', 'xxd', 'jas'),
(2, NULL, 'rahul', 'sharma', NULL, '2021-10-27', '6646', NULL, NULL, NULL, 'http://192.168.1.106:80/Android/1.png', '2021-10-05 08:31:33', '38764', 'hdhdh', 'pan'),
(3, NULL, 'js', 'dd', NULL, '2021-10-18', '345', NULL, NULL, NULL, 'http://192.168.1.106:80/Android/4.png', '2021-10-05 08:31:33', '445', 'fff', 'gh'),
(4, NULL, 'rty', 'fyyh', NULL, '2021-10-06', '456', NULL, NULL, NULL, 'http://192.168.1.106:80/Android/5.png', '2021-10-05 08:31:33', '4567', 'dg', 'rts');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(4, '6', 240, 1500, '2031-11-08'),
(5, '4', 283.33333333333, 3600, '2018-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `image_path` text DEFAULT NULL,
  `image_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `image_path`, `image_name`) VALUES
(1, 'http://192.168.1.106:80/Android/0.png', 'jas'),
(2, 'http://192.168.1.106:80/Android/1.png', 'pan'),
(3, 'http://192.168.1.106:80/Android/2.png', 'fd'),
(4, 'http://192.168.1.106:80/Android/3.png', 'qww'),
(5, 'http://192.168.1.106:80/Android/4.png', 'gh'),
(6, 'http://192.168.1.106:80/Android/5.png', 'rts');

-- --------------------------------------------------------

--
-- Table structure for table `photo1`
--

CREATE TABLE `photo1` (
  `id` int(11) NOT NULL,
  `image_path` text DEFAULT NULL,
  `image_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Programmer', 100),
(2, 'Writer', 50),
(3, 'Marketing ', 35),
(4, 'Graphic Designer', 75),
(5, 'labor', 38);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:00:00', '17:00:00'),
(3, '09:00:00', '18:00:00'),
(4, '10:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sharp_emp`
--

CREATE TABLE `sharp_emp` (
  `id` int(11) NOT NULL,
  `employee_id` text DEFAULT NULL,
  `first_name` text NOT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text NOT NULL,
  `phone` int(11) NOT NULL,
  `employee_image` text NOT NULL,
  `id_type` text NOT NULL,
  `id_number` text NOT NULL,
  `id_card_image` text NOT NULL,
  `residence_address` text NOT NULL,
  `residence_location` text NOT NULL,
  `residence_direction` text NOT NULL,
  `residence_gps` text NOT NULL,
  `next_of_kin` text NOT NULL,
  `relationship` text NOT NULL,
  `phone_of_kin` text NOT NULL,
  `kin_residence` text NOT NULL,
  `kin_residence_direction` text NOT NULL,
  `date_employed` date NOT NULL,
  `job_type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogintable`
--

CREATE TABLE `userlogintable` (
  `id` int(11) NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlogintable`
--

INSERT INTO `userlogintable` (`id`, `first_name`, `last_name`, `user_email`, `user_password`) VALUES
(1, 'jas', 'singh', 'singhj775@gmail.com', 'abc@123'),
(2, 'jaa', 'singh', 'ss', 'abc@123'),
(3, 'Ramekbal', 'kumar', 'Ramekbal', 'ramekbal001@'),
(4, 'jas', 'singh', 'ss@ss.com', 'abc@123');

-- --------------------------------------------------------

--
-- Table structure for table `userlogintable1`
--

CREATE TABLE `userlogintable1` (
  `id` int(11) NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlogintable1`
--

INSERT INTO `userlogintable1` (`id`, `first_name`, `last_name`, `user_email`, `user_password`) VALUES
(1, 'avnish', 'gupta', 'avnish', 'avnish');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `accounttype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `accounttype`) VALUES
(1, 'Maxwell', 'Morrison', 'xxx2xy', '10a55271c201e41913764ff95b33248b', 'Admin'),
(3, 'Maxwell', 'Morrison', 'admins', '02adcdf2171dc7e5757cdd7c0b91fa03', 'Admin'),
(2, 'Maxwell', 'Morrison', 'xxx2xy', 'qwerty', 'Admin'),
(4, 'Maxwell', 'Morrison', 'adminss', 'qwertyy', 'Admin'),
(5, 'Maxwell', 'Morrison', '2aefc34200a294a3cc7db81b43a81873', 'c93ccd78b2076528346216b3b2f701e6', 'Admin'),
(6, 'Maxwell', 'Morrison', 'admins', 'c93ccd78b2076528346216b3b2f701e6', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_check`
--
ALTER TABLE `attendance_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `pan_no` (`pan_no`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image_name` (`aadhar`),
  ADD UNIQUE KEY `image_name_2` (`aadhar`),
  ADD UNIQUE KEY `image_name_3` (`image_name`),
  ADD UNIQUE KEY `pan_2` (`pan`),
  ADD UNIQUE KEY `pan_3` (`pan`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo1`
--
ALTER TABLE `photo1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharp_emp`
--
ALTER TABLE `sharp_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogintable`
--
ALTER TABLE `userlogintable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogintable1`
--
ALTER TABLE `userlogintable1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_check`
--
ALTER TABLE `attendance_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photo1`
--
ALTER TABLE `photo1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sharp_emp`
--
ALTER TABLE `sharp_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlogintable`
--
ALTER TABLE `userlogintable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogintable1`
--
ALTER TABLE `userlogintable1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
