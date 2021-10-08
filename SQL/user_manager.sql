-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 04, 2021 at 07:16 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(16) DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `test_user` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`, `first_name`, `last_name`, `gender`, `address`, `city`, `mobile`, `test_user`) VALUES
('anmolkmr', '2003', 'Anmol', 'Kumar', 'Male', 'Madhav Puram', 'Meerut', '7983543575', 0),
('xwwtqv', '1', 'Uudjtfzuw', 'Iievnf', NULL, NULL, NULL, '9699530890', 1),
('xgaukat', '1', 'Tthocnwndh', 'Kkakqr', NULL, NULL, NULL, '9955306447', 1),
('ebsbtbrv', '1', 'Wwvdly', 'Wwncxjck', NULL, NULL, NULL, '9492578144', 1),
('khjeipj', '1', 'Ffkxofl', 'Aarbedj', NULL, NULL, NULL, '9676235427', 1),
('ygcpst', '1', 'Jjsuxnmby', 'Wwusknuqi', NULL, NULL, NULL, '9335651073', 1),
('ztwgrfya', '1', 'Uueob', 'Zzrsxpss', NULL, NULL, NULL, '9195441341', 1),
('tfnupxwbyb', '1', 'Ccjxtolai', 'Ddmyxruyw', NULL, NULL, NULL, '9991564428', 1),
('khanmq', '1', 'Xxbxworqi', 'Qqseiiub', NULL, NULL, NULL, '9567893868', 1),
('lbodwwk', '1', 'Kkvsfjzv', 'Iicylkotr', NULL, NULL, NULL, '9211208541', 1),
('lepvhospa', '1', 'Jjhdkojh', 'Aagvzzgnt', NULL, NULL, NULL, '949692878', 1),
('konppmfrnc', '1', 'Wwgmlws', 'Ffhmkohypm', NULL, NULL, NULL, '9499403418', 1),
('dvkcnhj', '1', 'Bbtcpeyj', 'Rryhldiwdej', NULL, NULL, NULL, '9294340483', 1),
('iapjbbtj', '1', 'Nnfnohipu', 'Aalvmumjjgz', NULL, NULL, NULL, '9668532655', 1),
('wwtexeds', '1', 'Qqcgxcko', 'Ttytlenn', NULL, NULL, NULL, '922443639', 1),
('pmpntzeg', '1', 'Oozkuzcco', 'Mmcrxlwgx', NULL, NULL, NULL, '97201811', 1),
('rzyczi', '1', 'Yymlcxpvd', 'Oosshjudf', NULL, NULL, NULL, '9102474858', 1),
('giyalagli', '1', 'Iidmzhzvihw', 'Iijstyool', NULL, NULL, NULL, '9947179671', 1),
('lorqpwlbkc', '1', 'Hhwwiewwev', 'Kknopur', NULL, NULL, NULL, '9590464904', 1),
('txjrmd', '1', 'Hhsjsfnagqq', 'Zztfeagyzw', NULL, NULL, NULL, '9830704113', 1),
('xubxgjc', '1', 'Kkeyrbzkym', 'Qqvlcoxhks', NULL, NULL, NULL, '9160162019', 1),
('snfzd', '1', 'Yymflwek', 'Aaejtbyyzj', NULL, NULL, NULL, '9790478024', 1),
('zatzpe', '1', 'Nnviejys', 'Uuuaeiii', NULL, NULL, NULL, '94872413', 1),
('yfpxuhndr', '1', 'Zzuzgbpr', 'Aaozaakxhp', NULL, NULL, NULL, '9261940715', 1),
('imvlmmsu', '1', 'Eeobhjgghye', 'Yyveziatp', NULL, NULL, NULL, '9592145070', 1),
('znewogtb', '1', 'Ffstkqym', 'Ddhxutinnr', NULL, NULL, NULL, '9690938242', 1),
('zvfwew', '1', 'Ggqbxdjledm', 'Qqbecmngbz', NULL, NULL, NULL, '9493048218', 1),
('fsenoirrs', '1', 'Ccvicpqofp', 'Wwmgzlojnj', NULL, NULL, NULL, '9222551144', 1),
('hqhlagfqw', '1', 'Ccuuxzkdrcf', 'Aaynvarfjtz', NULL, NULL, NULL, '9433589503', 1),
('zuqzzgg', '1', 'Nnfzvixfrq', 'Yytvrlccyoq', NULL, NULL, NULL, '9719180430', 1),
('cpojrfilb', '1', 'Eeqtpxzl', 'Yyfiocxe', NULL, NULL, NULL, '9955010575', 1),
('pnfkbv', '1', 'Iihpnuab', 'Ooeybnbmio', NULL, NULL, NULL, '9606705369', 1),
('witeooo', '1', 'Ccpaw', 'Vvbkkzztkn', NULL, NULL, NULL, '996899525', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
