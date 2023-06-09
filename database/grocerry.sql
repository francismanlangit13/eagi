-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 07:37 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '$2y$10$rmBnmFdpbtw4DatgAogaf.uAJp.EYQs8koJ.I7ThwspQw7SVYo3ce');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_orders`
--

CREATE TABLE `assigned_orders` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_orders`
--

INSERT INTO `assigned_orders` (`id`, `od_id`, `dv_id`) VALUES
(1, 3, 0),
(2, 5, 0),
(3, 15, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 16, 0),
(17, 13, 1),
(18, 12, 1),
(19, 17, 1),
(20, 21, 1),
(21, 19, 1),
(22, 20, 1),
(23, 22, 1),
(24, 23, 1),
(25, 27, 1),
(26, 24, 1),
(27, 25, 1),
(28, 26, 1),
(29, 28, 1),
(30, 30, 1),
(31, 31, 1),
(32, 33, 1),
(33, 32, 1),
(34, 34, 1),
(35, 41, 1),
(36, 42, 1),
(37, 35, 1),
(38, 43, 1),
(39, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id`, `type`) VALUES
(6, 'Store'),
(7, 'Retailer');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `is_applied` tinyint(1) NOT NULL,
  `promo` float NOT NULL,
  `is_add_w` tinyint(1) NOT NULL,
  `wl_amt` float NOT NULL,
  `final_amt` float NOT NULL,
  `ship_fee` tinyint(1) NOT NULL,
  `belonging_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `u_id`, `total`, `is_applied`, `promo`, `is_add_w`, `wl_amt`, `final_amt`, `ship_fee`, `belonging_city`) VALUES
(8, 1, 0, 0, 0, 0, 0, 30, 30, 3),
(13, 2, 120, 0, 0, 0, 0, 120, 0, 23),
(14, 3, 120, 0, 0, 0, 0, 120, 0, 23),
(19, 13, 52.5, 0, 0, 0, 0, 52.5, 0, 23),
(20, 0, 250, 0, 0, 0, 0, 250, 0, 29);

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `p_id`, `qty`) VALUES
(5, 13, 21, 1),
(6, 14, 21, 1),
(11, 19, 15, 1),
(12, 20, 3, 1),
(49, 20, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`) VALUES
(6, 'Fertilizer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `s_id`, `c_id`, `city_name`) VALUES
(14, 8, 3, 'Tudela'),
(15, 8, 3, 'Tangub'),
(16, 8, 3, 'Sinacaban'),
(17, 8, 3, 'Sapang Dalaga'),
(18, 8, 3, 'Plaridel'),
(19, 8, 3, 'Panaon'),
(20, 8, 3, 'Ozamis'),
(21, 8, 3, 'Oroquieta'),
(22, 8, 3, 'Lopez Jaena'),
(23, 8, 3, 'Jimenez'),
(24, 8, 3, 'Concepcion'),
(25, 8, 3, 'Clarin'),
(26, 8, 3, 'Calamba'),
(27, 8, 3, 'Bonifacio'),
(28, 8, 3, 'Baliangao'),
(29, 8, 3, 'Aloran');

-- --------------------------------------------------------

--
-- Table structure for table `cnfrm_delivery`
--

CREATE TABLE `cnfrm_delivery` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cnfrm_delivery`
--

INSERT INTO `cnfrm_delivery` (`id`, `od_id`, `dv_id`) VALUES
(1, 14, 1),
(2, 3, 1),
(3, 15, 1),
(4, 16, 1),
(5, 10, 1),
(8, 33, 6),
(11, 35, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cnfrm_undelivery`
--

CREATE TABLE `cnfrm_undelivery` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `com` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id`, `scat_id`, `com`) VALUES
(1, 1, 5),
(2, 2, 5),
(3, 3, 5),
(4, 4, 5),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `cntry_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `cntry_name`) VALUES
(3, 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `dc`
--

CREATE TABLE `dc` (
  `id` int(11) NOT NULL,
  `dc` float NOT NULL,
  `pc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dc`
--

INSERT INTO `dc` (`id`, `dc`, `pc`) VALUES
(1, 150, 60),
(6, 12, 1),
(22, 400, 60),
(29, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `dv_name` varchar(255) NOT NULL,
  `dv_username` varchar(255) NOT NULL,
  `dv_password` text NOT NULL,
  `dv_email` varchar(255) NOT NULL,
  `dv_mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `dv_name`, `dv_username`, `dv_password`, `dv_email`, `dv_mobile`) VALUES
(1, 'Franz', 'franz12', '$2y$10$veJy5qYcHEPoF54YxIINaOx1YI1Bao3kg23MaYN6jyWC79ly0NqkO', 'franz@yahoo.com', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `dv_time`
--

CREATE TABLE `dv_time` (
  `id` int(11) NOT NULL,
  `from` varchar(100) NOT NULL,
  `tto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dv_time`
--

INSERT INTO `dv_time` (`id`, `from`, `tto`) VALUES
(5, '07:30', '08:30'),
(6, '08:30', '09:30'),
(7, '09:30', '10:30'),
(8, '10:30', '11:30'),
(9, '13:00', '14:00'),
(10, '14:00', '15:00'),
(11, '15:00', '16:00');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `filter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `subcat_id`, `filter`) VALUES
(6, 8, 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `isue`
--

CREATE TABLE `isue` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isue`
--

INSERT INTO `isue` (`id`, `oid`) VALUES
(1, 4),
(2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ofd`
--

CREATE TABLE `ofd` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ofd`
--

INSERT INTO `ofd` (`id`, `od_id`, `dv_id`) VALUES
(8, 11, 1),
(10, 31, 0),
(11, 33, 0),
(12, 32, 0),
(13, 34, 0),
(14, 35, 0),
(15, 41, 0),
(16, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `o_id` text NOT NULL,
  `u_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `dv_date` varchar(255) NOT NULL,
  `dv_time` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `mihpayid` varchar(255) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `payu_status` varchar(255) NOT NULL,
  `total_amt` float NOT NULL,
  `ship_fee_order` float NOT NULL,
  `final_val` float NOT NULL,
  `isnew` int(11) NOT NULL,
  `delivered_by` int(11) NOT NULL,
  `u_cnfrm` int(11) NOT NULL,
  `ptu` int(11) NOT NULL,
  `udvc` int(11) NOT NULL,
  `is_p_app` int(11) NOT NULL,
  `is_w_ap` int(11) NOT NULL,
  `prmo` float NOT NULL,
  `wlmt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `o_id`, `u_id`, `ad_id`, `dv_date`, `dv_time`, `payment_type`, `payment_status`, `order_status`, `mihpayid`, `txnid`, `payu_status`, `total_amt`, `ship_fee_order`, `final_val`, `isnew`, `delivered_by`, `u_cnfrm`, `ptu`, `udvc`, `is_p_app`, `is_w_ap`, `prmo`, `wlmt`) VALUES
(35, 'ODR901644743137', 1, 5, '8', 'Today', 1, 0, 5, '', 'fd4ee3def3fee62166fa', '', 100, 0, 100, 1, 6, 0, 0, 0, 0, 0, 0, 0),
(36, 'ODR351644743558', 1, 5, '11', 'Today', 1, 0, 2, '', 'cbcec0f76c6579308758', '', 100, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'ODH591644744190', 1, 5, '11', 'Today', 1, 0, 2, '', 'f8d9dffe018fcd1c3e5e', '', 100, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'ODS121644744301', 1, 5, '10', 'Today', 1, 0, 2, '', '2550651d5b54e8397005', '', 100, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'ODZ911644744916', 1, 5, '11', 'Today', 1, 0, 2, '', 'adf554642e761f87bb30', '', 100, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 'ODS731644746063', 1, 5, '11', 'Today', 1, 0, 2, '', 'b2a67adca742554cfb8b', '', 100, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 'ODR141644771504', 1, 5, '9', 'Today', 1, 0, 3, '', '9ffc1748d59b86efd1f3', '', 150, 0, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 'ODW791644987273', 1, 5, '5', 'Today', 1, 0, 3, '', '0f3d542cc0810c1077ff', '', 300, 60, 360, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `hover` int(11) NOT NULL,
  `rcvd` int(11) NOT NULL,
  `delivered_qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `oid`, `p_id`, `qty`, `hover`, `rcvd`, `delivered_qty`) VALUES
(16, 2, 1, 1, 0, 0, 0),
(17, 3, 2, 1, 0, 0, 0),
(18, 4, 21, 1, 1, 0, 0),
(19, 5, 15, 1, 0, 0, 0),
(20, 6, 21, 1, 0, 0, 1),
(21, 7, 15, 2, 0, 0, 0),
(22, 8, 1, 1, 0, 0, 0),
(23, 9, 1, 1, 0, 0, 0),
(24, 10, 1, 1, 0, 0, 0),
(25, 11, 2, 1, 0, 0, 0),
(26, 12, 1, 1, 0, 0, 0),
(27, 13, 2, 1, 0, 0, 0),
(28, 14, 2, 1, 0, 0, 0),
(29, 15, 2, 1, 0, 0, 0),
(30, 16, 2, 1, 0, 0, 0),
(31, 17, 2, 1, 0, 0, 0),
(32, 18, 2, 1, 0, 0, 0),
(33, 19, 3, 1, 0, 0, 0),
(34, 20, 3, 1, 0, 0, 0),
(35, 21, 1, 1, 0, 0, 0),
(36, 22, 2, 1, 0, 0, 0),
(37, 23, 2, 1, 0, 0, 0),
(38, 24, 2, 1, 0, 0, 0),
(39, 25, 3, 1, 0, 0, 0),
(40, 26, 3, 1, 0, 0, 0),
(41, 27, 3, 1, 0, 0, 0),
(42, 28, 2, 2, 0, 0, 0),
(43, 29, 2, 1, 0, 0, 0),
(44, 30, 3, 1, 0, 0, 0),
(45, 31, 1, 1, 0, 0, 0),
(46, 32, 3, 1, 0, 0, 0),
(47, 33, 1, 1, 0, 0, 0),
(48, 34, 3, 1, 0, 0, 0),
(49, 35, 2, 1, 0, 0, 0),
(50, 36, 2, 1, 0, 0, 0),
(51, 37, 2, 1, 0, 0, 0),
(52, 38, 2, 1, 0, 0, 0),
(53, 39, 2, 1, 0, 0, 0),
(54, 0, 2, 1, 0, 0, 0),
(55, 0, 2, 1, 0, 0, 0),
(56, 0, 2, 1, 0, 0, 0),
(57, 0, 2, 1, 0, 0, 0),
(58, 40, 2, 1, 0, 0, 0),
(59, 41, 3, 1, 0, 0, 0),
(60, 42, 3, 1, 0, 0, 0),
(61, 43, 3, 2, 0, 0, 0),
(62, 44, 15, 1, 0, 0, 0),
(63, 44, 9, 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `o_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `o_status`) VALUES
(1, 'Placing'),
(2, 'Placed'),
(3, 'Assigned'),
(4, 'Out for delivery'),
(5, 'Delivered'),
(6, 'Undelivered'),
(7, 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `order_stlmnt`
--

CREATE TABLE `order_stlmnt` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `val` float NOT NULL,
  `sc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_stlmnt`
--

INSERT INTO `order_stlmnt` (`id`, `oid`, `sid`, `val`, `sc`) VALUES
(1, 1, 2, 18.36, 0),
(2, 1, 1, 13, 0),
(3, 8, 1, 14.9184, 0),
(4, 9, 1, 5.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_time`
--

CREATE TABLE `order_time` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `o_status` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_time`
--

INSERT INTO `order_time` (`id`, `oid`, `o_status`, `added_on`) VALUES
(1, 1, 2, '2021-09-24 13:46:08'),
(2, 1, 3, '2021-09-24 13:49:21'),
(3, 1, 4, '2021-09-24 13:50:00'),
(5, 1, 5, '2021-09-24 13:51:08'),
(6, 2, 2, '2021-09-24 14:37:41'),
(7, 4, 2, '2021-09-24 14:40:44'),
(8, 4, 3, '2021-09-24 14:42:33'),
(9, 4, 4, '2021-09-24 14:43:05'),
(10, 4, 5, '2021-09-24 14:43:40'),
(11, 4, 7, '2021-09-24 14:43:40'),
(12, 5, 2, '2021-09-24 17:14:36'),
(20, 5, 3, '2021-09-24 18:00:10'),
(21, 5, 4, '2021-09-24 18:00:15'),
(22, 5, 6, '2021-09-24 18:00:29'),
(23, 6, 2, '2021-09-25 11:15:22'),
(24, 7, 2, '2021-09-25 11:15:22'),
(25, 8, 2, '2021-09-25 11:19:18'),
(26, 8, 3, '2021-09-25 11:21:50'),
(27, 8, 4, '2021-09-25 11:22:28'),
(29, 8, 5, '2021-09-25 11:23:35'),
(30, 9, 2, '2021-09-27 10:30:31'),
(31, 9, 3, '2021-09-27 10:32:32'),
(32, 9, 4, '2021-09-27 10:33:39'),
(33, 9, 5, '2021-09-27 10:34:35'),
(34, 1, 2, '2022-02-07 14:27:03'),
(35, 2, 2, '2022-02-07 14:29:51'),
(36, 3, 2, '2022-02-07 14:32:44'),
(37, 3, 3, '2022-02-07 14:33:05'),
(38, 4, 2, '2022-02-08 05:26:32'),
(39, 5, 2, '2022-02-08 05:38:33'),
(40, 5, 3, '2022-02-08 06:04:32'),
(41, 6, 2, '2022-02-08 06:08:43'),
(42, 6, 3, '2022-02-08 06:13:10'),
(43, 6, 4, '2022-02-08 07:06:49'),
(44, 6, 5, '2022-02-08 07:19:45'),
(45, 7, 2, '2022-02-08 07:22:35'),
(46, 10, 2, '2022-02-09 03:54:26'),
(47, 11, 2, '2022-02-09 03:55:14'),
(48, 12, 2, '2022-02-09 04:40:33'),
(49, 13, 2, '2022-02-09 04:46:51'),
(50, 14, 2, '2022-02-09 04:48:41'),
(51, 15, 2, '2022-02-09 05:01:31'),
(52, 16, 2, '2022-02-09 05:19:01'),
(53, 15, 3, '2022-02-09 06:16:14'),
(54, 0, 3, '2022-02-09 07:22:21'),
(55, 0, 3, '2022-02-09 07:22:22'),
(56, 0, 3, '2022-02-09 07:22:23'),
(57, 0, 3, '2022-02-09 07:22:24'),
(58, 0, 3, '2022-02-09 07:22:32'),
(59, 0, 3, '2022-02-09 07:28:33'),
(60, 0, 3, '2022-02-09 07:33:33'),
(61, 0, 3, '2022-02-09 07:33:42'),
(62, 0, 3, '2022-02-09 07:34:56'),
(63, 16, 3, '2022-02-09 07:48:22'),
(64, 14, 3, '2022-02-09 07:49:01'),
(65, 10, 3, '2022-02-09 07:58:06'),
(66, 11, 3, '2022-02-09 08:00:19'),
(67, 13, 3, '2022-02-09 08:05:14'),
(68, 14, 4, '2022-02-09 08:11:53'),
(69, 12, 3, '2022-02-09 08:30:16'),
(70, 17, 2, '2022-02-09 08:45:45'),
(71, 17, 3, '2022-02-09 08:46:04'),
(72, 3, 4, '2022-02-09 09:14:19'),
(73, 3, 4, '2022-02-09 09:14:23'),
(74, 18, 2, '2022-02-09 09:23:28'),
(75, 14, 5, '2022-02-09 09:41:35'),
(76, 3, 5, '2022-02-09 09:43:03'),
(77, 15, 4, '2022-02-09 09:45:15'),
(78, 15, 5, '2022-02-09 09:45:38'),
(79, 16, 4, '2022-02-09 09:46:42'),
(80, 16, 5, '2022-02-09 09:46:51'),
(81, 10, 4, '2022-02-09 09:47:20'),
(82, 10, 5, '2022-02-09 09:50:59'),
(83, 18, 3, '2022-02-09 09:59:13'),
(84, 18, 4, '2022-02-09 09:59:46'),
(85, 11, 4, '2022-02-09 10:01:12'),
(86, 18, 5, '2022-02-09 11:57:05'),
(87, 18, 7, '2022-02-09 11:58:00'),
(88, 19, 2, '2022-02-10 14:37:18'),
(89, 20, 2, '2022-02-10 14:55:36'),
(90, 21, 2, '2022-02-10 15:14:18'),
(91, 21, 3, '2022-02-10 15:45:30'),
(92, 19, 3, '2022-02-10 15:45:44'),
(93, 20, 3, '2022-02-10 15:46:07'),
(94, 22, 2, '2022-02-10 15:46:53'),
(95, 23, 2, '2022-02-10 15:47:58'),
(96, 24, 2, '2022-02-10 15:50:08'),
(97, 22, 3, '2022-02-10 16:32:49'),
(98, 25, 2, '2022-02-10 17:45:50'),
(99, 26, 2, '2022-02-13 06:26:51'),
(100, 23, 3, '2022-02-13 07:04:40'),
(101, 27, 2, '2022-02-13 07:13:06'),
(102, 27, 3, '2022-02-13 07:15:36'),
(103, 24, 3, '2022-02-13 07:15:48'),
(104, 28, 2, '2022-02-13 07:16:46'),
(105, 25, 3, '2022-02-13 07:24:21'),
(106, 26, 3, '2022-02-13 07:24:30'),
(107, 28, 3, '2022-02-13 07:24:44'),
(108, 29, 2, '2022-02-13 07:27:09'),
(109, 30, 2, '2022-02-13 08:00:47'),
(110, 31, 2, '2022-02-13 08:01:30'),
(111, 32, 2, '2022-02-13 08:12:48'),
(112, 33, 2, '2022-02-13 08:23:16'),
(113, 34, 2, '2022-02-13 08:29:09'),
(114, 35, 2, '2022-02-13 09:05:37'),
(115, 36, 2, '2022-02-13 09:12:38'),
(116, 37, 2, '2022-02-13 09:23:10'),
(117, 38, 2, '2022-02-13 09:25:02'),
(118, 39, 2, '2022-02-13 09:35:17'),
(119, 40, 2, '2022-02-13 09:54:23'),
(120, 30, 3, '2022-02-13 11:35:25'),
(121, 30, 4, '2022-02-13 11:35:40'),
(122, 30, 5, '2022-02-13 11:37:32'),
(123, 31, 3, '2022-02-13 11:59:07'),
(124, 31, 4, '2022-02-13 11:59:16'),
(125, 31, 5, '2022-02-13 11:59:32'),
(126, 33, 3, '2022-02-13 12:12:07'),
(127, 33, 4, '2022-02-13 12:12:18'),
(128, 33, 5, '2022-02-13 12:12:30'),
(129, 32, 3, '2022-02-13 16:24:41'),
(130, 34, 3, '2022-02-13 16:24:52'),
(131, 41, 2, '2022-02-13 16:30:24'),
(132, 41, 3, '2022-02-13 16:55:26'),
(133, 42, 2, '2022-02-13 16:58:25'),
(134, 42, 3, '2022-02-13 17:04:15'),
(135, 32, 4, '2022-02-13 17:19:23'),
(136, 32, 5, '2022-02-13 17:19:30'),
(137, 34, 4, '2022-02-13 17:30:11'),
(138, 34, 5, '2022-02-13 17:33:34'),
(139, 35, 3, '2022-02-14 13:50:01'),
(140, 35, 4, '2022-02-14 13:50:14'),
(141, 35, 5, '2022-02-14 13:50:23'),
(142, 43, 2, '2022-02-16 04:54:33'),
(143, 43, 3, '2022-02-16 04:54:56'),
(144, 41, 4, '2022-02-16 04:55:15'),
(145, 41, 5, '2022-02-16 04:55:40'),
(146, 44, 2, '2022-02-23 04:13:44'),
(147, 44, 3, '2022-02-23 04:17:16'),
(148, 44, 4, '2022-02-23 04:18:26'),
(149, 44, 5, '2022-02-23 04:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `cn_id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `c_id`, `s_id`, `cn_id`, `pincode`) VALUES
(1, 2, 1, 1, '145879'),
(2, 3, 1, 1, '147858'),
(3, 4, 2, 1, '5787568'),
(4, 5, 2, 1, '567863'),
(5, 6, 3, 1, '452577'),
(6, 7, 3, 1, '564678'),
(7, 9, 4, 1, '478587'),
(8, 8, 4, 1, '75678678'),
(9, 14, 8, 3, '7202'),
(10, 15, 8, 3, '7214'),
(11, 16, 8, 3, '7203'),
(12, 17, 8, 3, '7212'),
(13, 18, 8, 3, '7209'),
(14, 19, 8, 3, '7205'),
(15, 20, 8, 3, '7200'),
(16, 21, 8, 3, '7207'),
(17, 22, 8, 3, '7208'),
(18, 23, 8, 3, '7204'),
(19, 24, 8, 3, '7213'),
(20, 25, 8, 3, '7201'),
(21, 26, 8, 3, '7210'),
(22, 27, 8, 3, '7215'),
(23, 28, 8, 3, '7211'),
(24, 29, 8, 3, '7206');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `sell_price` float NOT NULL,
  `fa` float NOT NULL,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL,
  `isappp` int(11) NOT NULL,
  `isnew` tinyint(1) NOT NULL,
  `bs` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_by` int(11) NOT NULL,
  `belonging_city` int(11) NOT NULL,
  `tax` float NOT NULL,
  `sku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `scat_id`, `product_name`, `img1`, `img2`, `img3`, `img4`, `price`, `sell_price`, `fa`, `description`, `qty`, `isappp`, `isnew`, `bs`, `status`, `added_by`, `belonging_city`, `tax`, `sku`) VALUES
(1, 6, 1, 'GO KKK', '8531901041644321221.jpg', '4992675781644321221.jpg', '5744900171644321221.jpg', '5931803381644321221.jpg', 400, 350, 350, 'asdsaddsadasldjsifhly e', 5, 1, 1, 0, 1, 6, 29, 0, 'V29EN40E'),
(2, 6, 2, '5656', '2582194001644321596.jpg', '1613498261644321596.jpg', '1997884111644321596.jpg', '3757052951644321596.jpg', 122, 100, 100, 'sfsdfsdf', 41, 1, 1, 0, 1, 6, 29, 0, 'S30HB92C'),
(3, 6, 1, 'My Organic Grower', '5670030381644503699.jpg', '4993218311644503699.jpg', '7748480901644503699.jpg', '9599880641644503699.jpg', 175, 150, 150, 'This is for the Plant Fertilizer.', 98, 1, 1, 0, 1, 22, 29, 0, 'V79OF83X'),
(4, 6, 1, 'Grower', '2727593311644920614.jpg', '5239800341644920614.jpg', '7264811191644920614.jpg', '5629882811644920614.jpg', 150, 120, 120, 'This is my product', 10, 1, 1, 0, 1, 25, 29, 0, 'R65KT80I'),
(5, 6, 1, 'Plant Fertilizer', '8436686191644988391.jpg', '4475368921644988391.jpg', '1997341571644988391.jpg', '1753472221644988391.jpg', 260, 240, 240, 'This is for small plant only.', 20, 1, 1, 0, 1, 27, 23, 0, 'O16MC17N'),
(6, 6, 1, 'Grower Plant', '8372395831644988475.jpg', '2606608071644988475.jpg', '2885742181644988475.jpg', '7061360671644988475.jpg', 310, 290, 290, 'For Trees only.', 20, 1, 1, 0, 1, 27, 23, 0, 'O99VF36T'),
(7, 6, 1, 'Plant Grower', '9736328121644988545.jpg', '8497450081644988545.jpg', '6654188361644988545.jpg', '3933105461644988545.jpg', 470, 420, 420, 'For plants only.', 100, 1, 1, 0, 1, 27, 23, 0, 'V64OO24O'),
(8, 6, 1, 'Plant Booster', '3788791231644988646.jpg', '4243706591644988646.jpg', '8690592441644988646.jpg', '8817816841644988646.jpg', 1120, 200, 200, 'This is for Plant Booster.', 100, 1, 1, 0, 1, 27, 23, 0, 'B15BO22V'),
(9, 6, 1, 'EXAMPLE PRODUCT', '5900607631645589181.jpg', '3181694871645589181.jpg', '2236870651645589181.jpg', '1889919701645589181.jpg', 500, 250, 250, 'jkjhaduskhflaskjf;isygoejnfasfno', 7, 1, 1, 0, 1, 29, 29, 0, 'W91WM82A');

-- --------------------------------------------------------

--
-- Table structure for table `product_ad_on`
--

CREATE TABLE `product_ad_on` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_ad_on`
--

INSERT INTO `product_ad_on` (`id`, `pid`, `added_on`) VALUES
(1, 1, '2021-09-15 12:09:35'),
(2, 2, '2021-09-15 12:12:04'),
(3, 3, '2021-09-15 12:57:36'),
(4, 4, '2021-09-15 12:58:41'),
(5, 5, '2021-09-15 13:05:41'),
(6, 6, '2021-09-15 13:07:31'),
(7, 7, '2021-09-15 13:10:54'),
(8, 8, '2021-09-15 13:11:56'),
(9, 1, '2022-02-01 03:54:16'),
(10, 2, '2022-02-01 04:21:29'),
(11, 3, '2022-02-07 14:58:21'),
(12, 4, '2022-02-07 15:22:35'),
(13, 5, '2022-02-07 15:29:33'),
(14, 6, '2022-02-07 15:44:12'),
(15, 7, '2022-02-07 15:46:05'),
(16, 8, '2022-02-07 16:10:39'),
(17, 9, '2022-02-07 18:12:54'),
(18, 10, '2022-02-07 18:14:13'),
(19, 11, '2022-02-07 18:16:38'),
(20, 12, '2022-02-07 18:18:25'),
(21, 13, '2022-02-07 18:20:09'),
(22, 14, '2022-02-08 02:45:35'),
(23, 15, '2022-02-08 02:58:52'),
(24, 16, '2022-02-08 03:42:54'),
(25, 17, '2022-02-08 03:45:26'),
(26, 18, '2022-02-08 03:46:27'),
(27, 19, '2022-02-08 03:58:46'),
(28, 20, '2022-02-08 04:07:33'),
(29, 21, '2022-02-08 04:10:48'),
(30, 1, '2022-02-08 11:53:41'),
(31, 2, '2022-02-08 11:59:56'),
(32, 3, '2022-02-10 14:34:59'),
(33, 4, '2022-02-15 10:23:34'),
(34, 5, '2022-02-16 05:13:11'),
(35, 6, '2022-02-16 05:14:35'),
(36, 7, '2022-02-16 05:15:45'),
(37, 8, '2022-02-16 05:17:26'),
(38, 9, '2022-02-23 04:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `code` varchar(60) NOT NULL,
  `dis` float NOT NULL,
  `minbal` float NOT NULL,
  `scat` int(11) NOT NULL,
  `adb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `p_filter`
--

CREATE TABLE `p_filter` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_filter`
--

INSERT INTO `p_filter` (`id`, `pid`, `fid`) VALUES
(5, 4, 5),
(7, 1, 5),
(8, 5, 6),
(9, 6, 5),
(10, 7, 5),
(11, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `p_reject`
--

CREATE TABLE `p_reject` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cause` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `p_sfilter`
--

CREATE TABLE `p_sfilter` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sfid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_sfilter`
--

INSERT INTO `p_sfilter` (`id`, `pid`, `sfid`) VALUES
(6, 4, 5),
(8, 1, 5),
(9, 5, 9),
(10, 6, 5),
(11, 6, 8),
(12, 7, 5),
(13, 7, 8),
(14, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rejection`
--

CREATE TABLE `rejection` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejection`
--

INSERT INTO `rejection` (`id`, `s_id`, `reason`) VALUES
(4, 5, 'e'),
(5, 23, 'rfdsas');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tob` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `b_crft` varchar(255) NOT NULL,
  `is_gst` tinyint(1) NOT NULL,
  `gst_id` varchar(255) NOT NULL,
  `gst_crft` varchar(255) NOT NULL,
  `plan` tinyint(1) NOT NULL,
  `acc_num` varchar(255) NOT NULL,
  `acc_holder` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `isapp` int(11) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_cp` tinyint(1) NOT NULL,
  `adhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `email`, `password`, `mobile`, `f_name`, `address`, `tob`, `country`, `state`, `city`, `pin`, `b_name`, `b_crft`, `is_gst`, `gst_id`, `gst_crft`, `plan`, `acc_num`, `acc_holder`, `ifsc`, `bank`, `branch`, `isapp`, `is_new`, `is_cp`, `adhar`, `pan`, `Timestamp`, `status`) VALUES
(6, 'franzcarl13@yahoo.com', '$2y$10$mnBSzL.y3NOOfaoXWWtI1uxKPQtcuARwtATiwe4dZtctt7bUnqrHi', '0912356666', 'Francis Carlo A. Manlangit', 'dawwuiu', 6, 3, 8, 29, 24, 'Inday Store', '4493272561643213424.jpg', 2, 'No GST', '0', 0, '342342', 'rsere', '54654654', 'sdfdsf', 'sdfsdf', 1, 0, 1, '5893283411643213424.jpg', '7244466141643213425.jpg', '2022-02-14 10:11:49', 1),
(22, 'admin@gmail.com', '$2y$10$IHz1JuyGX7ZG6D4emkkXuezmT3V1y6LI1bog.KwOo5sZ2StumH/R.', '09123464673', 'John Fernandez', 'Aloran IFI', 6, 3, 8, 29, 24, 'ALO''s STORE', '7849392361644486562.jpg', 0, '', '', 3, '516215645555555', 'Google', '', 'Jimenez', 'Nacional', 1, 0, 1, '8932562931644486562.jpg', '4637044271644486562.jpg', '2022-02-13 18:01:41', 1),
(23, 'test1@yahoo.com', '$2y$10$nGEPvaBrDE1Qrpvy5MxwTOA.gJHiGgX1SS5hsrBlj0yUEOHfgkXKm', '09135464646', 'TEST', 'TEST Address', 7, 3, 8, 29, 24, 'TEST Business', '5572916661644814340.jpg', 0, '', '', 1, '', '', '', '', '', 2, 0, 2, '1907823341644814340.jpg', '8940429681644814340.jpg', '2022-02-15 14:01:45', 1),
(24, 'test2@yahoo.com', '$2y$10$l2wwnMYNXC5BUzGD0UPxsOzRWaXaQrdFkqoofCreAKfvx.PvAJ00G', '09432163243', '', '', 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, 1, 0, '', '', '2022-02-14 11:54:04', 1),
(25, 'test3@yahoo.com', '$2y$10$qT1VJUFpjOR1.FHrLQ1GOuCIaiLW.yjtrxwlr39SjFWVyTUs5BfOS', '546333', 'Franz', 'ewewr', 7, 3, 8, 29, 24, 'eerr', '5234917531644920187.jpg', 0, '', '', 1, 'No Account Number', 'No Account Holder', '', 'NULL', 'NULL', 1, 0, 1, '7010362411644920187.jpg', '8172743051644920187.jpg', '2022-02-15 10:21:02', 1),
(26, 'test4@yahoo.com', '$2y$10$GCPD1rpvXDC.sEhSAVCbBeR6wHXDgRqEwMrn5CABg7SKozDGzGSKe', '546333', 'Franz43', '546333', 6, 3, 8, 29, 24, 'eerr', '9144965271644927514.jpg', 0, '', '', 1, 'No Account Number', 'No Account Holder', '', 'NULL', 'NULL', 0, 0, 1, '2372233071644927514.jpg', '8449978291644927514.jpg', '2022-02-15 14:01:33', 1),
(27, 'test6@yahoo.com', '$2y$10$8mDuHa6jDVltzZxn9IFIgeC38jPDF/z5S/CXopvh7VBRoagclysUS', '09145623246', 'Francis Manlangit', 'NAcional Jimenez', 6, 3, 8, 29, 24, 'KY Store', '7792697481644988273.jpg', 0, '', '', 1, '', 'No Account Holder', '', 'NULL', 'NULL', 1, 0, 1, '8447265621644988273.jpg', '3545193141644988273.jpg', '2022-02-16 17:06:09', 1),
(28, 'test7@yahoo.com', '$2y$10$Wyoo8AK4fqfA238MuUgizOBDk3MyWMUswEHe6JmXFK5C2tqazZZsC', '0912354862', '', '', 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, 1, 0, '', '', '2022-02-16 17:40:35', 1),
(29, 'franzcarl13@yahoo.com', '$2y$10$PoNC4tuFYSVN0n21wjoHz.zZYKBh3FUROTHdwPUFDBtrXHokgARVq', '0912356666', 'Franz Manlangit', 'Nacional', 6, 3, 8, 29, 18, 'KK Store', '6712510851645588597.jpg', 0, '', '', 3, '', '', '', '', '', 1, 0, 1, '1540256071645588597.jpg', '7070041231645588597.jpg', '2022-02-23 04:03:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet`
--

CREATE TABLE `seller_wallet` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `ballance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_wallet`
--

INSERT INTO `seller_wallet` (`id`, `seller_id`, `ballance`) VALUES
(1, 2, 36.72),
(2, 4, 0),
(3, 1, 32.4184),
(4, 3, 0),
(5, 6, 0),
(6, 22, 0),
(7, 25, 0),
(8, 25, 0),
(9, 27, 0),
(10, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_w_msg`
--

CREATE TABLE `seller_w_msg` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_w_msg`
--

INSERT INTO `seller_w_msg` (`id`, `s_id`, `cod`, `msg`, `balance`, `added_on`) VALUES
(1, 2, 1, 'Wallet created', 0, '2021-09-15 11:52:01'),
(2, 4, 1, 'Wallet created', 0, '2021-09-15 11:52:16'),
(3, 1, 1, 'Wallet created', 0, '2021-09-15 11:59:54'),
(4, 3, 1, 'Wallet created', 0, '2021-09-15 12:00:58'),
(9, 4, 1, 'bonus', 1, '2021-09-20 13:53:15'),
(11, 4, 0, 'Charge', 0, '2021-09-20 13:56:03'),
(13, 2, 1, ' For ODU131632157314', 18.36, '2021-09-24 12:00:31'),
(14, 1, 1, ' For ODU131632157314', 20.51, '2021-09-24 12:03:05'),
(15, 2, 1, ' For ODP741632491075', 18.36, '2021-09-24 14:14:59'),
(16, 1, 1, ' For ODP741632491075', 13, '2021-09-24 14:15:08'),
(17, 1, 0, 'Charge', 32.51, '2021-09-24 16:55:52'),
(18, 1, 0, 'Charge', 1, '2021-09-24 16:57:20'),
(19, 1, 0, 'Witdraw Requested', 0, '2021-09-25 06:42:19'),
(20, 1, 0, 'Witdraw approved <br>Txn 23erds3462dser', 20, '2021-09-25 06:39:48'),
(21, 1, 0, 'Witdraw Requested', 0, '2021-09-25 06:47:27'),
(22, 1, 0, 'Witdraw Rejected', 0, '2021-09-25 06:47:41'),
(23, 1, 1, 'Bonus', 0.49, '2021-09-25 06:50:20'),
(24, 1, 1, ' For ODN321632738577', 5.5, '2021-09-27 10:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `c_id`, `state_name`) VALUES
(8, 3, 'Misamis Occidental');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cat_id`, `subcat`, `status`) VALUES
(1, 6, 'Organic Fertilizer', 1),
(2, 6, 'Nitrogen Fertilizer', 1),
(3, 6, 'Phosphate Fertilizer', 1),
(4, 6, 'Potassium Fertilizer', 1),
(5, 6, 'Fertilizer Forms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_filter`
--

CREATE TABLE `sub_filter` (
  `id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `subfilter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_filter`
--

INSERT INTO `sub_filter` (`id`, `filter_id`, `subfilter`) VALUES
(3, 3, 'sf1'),
(4, 4, 'sf2'),
(6, 3, 'sf4'),
(7, 4, 'sf5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `m_vfd` tinyint(1) NOT NULL,
  `e_vfd` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `mobile`, `name`, `m_vfd`, `e_vfd`, `status`) VALUES
(1, 'franz@yahoo.com', '$2y$10$yvo2/bX/ZHZivLBR9XfX3.dZWV3NVa5hs8QKYGfWPtdWkGbYJcBeu', '0912356666', 'Francis', 1, 1, 1),
(13, 'admin@gmail.com', '$2y$10$zc2R5.sOMlWrPlSLXvBkS.RIoRwldGaAApPRlzJLrSWUBhcfncFW.', '546333', 'Franz', 1, 1, 1),
(14, 'fanz@yahoo.com', '$2y$10$xvdyq03WmVvTkx5hq2FDoOJpY7sO1eA24ygwTRV7NpxibCaX83H2e', '546333', 'Franz', 1, 1, 1),
(15, 'franz1@yahoo.com', '$2y$10$0axo8e778akbGUAr8qh8S.WCaDyjUDk4Oh0GAW9TpM4wA5BsD/IRS', '09156465441', 'Francis Carlo Manlangit', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type_ad` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_add` varchar(255) NOT NULL,
  `user_pin` varchar(255) NOT NULL,
  `user_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `uid`, `type_ad`, `user_name`, `user_mobile`, `user_city`, `user_add`, `user_pin`, `user_local`) VALUES
(4, 1, 'Home', 'Ayondip Jana', '4178589658', 3, 'wert frt fy5 tyty 6fgty', '721122', 'India'),
(5, 1, 'Home', 'Franz', '546333', 29, 'asdasds', '4353', 'Philippines'),
(6, 1, 'Home', 'Franz', '0912345678', 23, 'Nacional P4', '7204', 'Misamis Occidental'),
(7, 13, 'Home', 'Franz', '546333', 23, 'ggg', '7204', 'Misamis Occidental');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ballance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`id`, `user_id`, `ballance`) VALUES
(1, 1, 39.66),
(2, 3, 0),
(3, 1, 0),
(4, 2, 0),
(5, 3, 0),
(6, 4, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 13, 0),
(16, 14, 0),
(17, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_w_msg`
--

CREATE TABLE `user_w_msg` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_new` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_w_msg`
--

INSERT INTO `user_w_msg` (`id`, `u_id`, `cod`, `msg`, `balance`, `added_on`, `is_new`) VALUES
(1, 1, 1, 'Wallet created', 0, '2021-09-16 11:52:04', 1),
(3, 1, 1, 'Refund for ODT981632503623', 36.66, '2021-09-25 05:33:12', 1),
(7, 1, 0, 'Used in purchase', 36.66, '2021-09-26 18:20:39', 1),
(8, 1, 1, 'get form purchase', 36.66, '2021-09-26 18:24:01', 1),
(9, 1, 0, 'Used in purchase', 36.66, '2021-09-26 18:24:25', 1),
(10, 1, 1, 'get form purchase', 36.66, '2021-09-26 18:24:31', 1),
(11, 1, 0, 'Used in purchase', 37.88, '2021-09-26 18:24:57', 1),
(12, 1, 1, 'get form purchase', 37.88, '2021-09-26 18:25:37', 1),
(13, 1, 0, 'Used in purchase', 37.88, '2021-09-26 18:33:01', 1),
(14, 1, 1, 'get form purchase', 37.88, '2021-09-26 18:33:12', 1),
(15, 3, 1, 'Wallet created', 0, '2021-09-26 19:19:04', 1),
(16, 1, 1, 'Wallet created', 0, '2022-02-02 03:17:31', 1),
(17, 2, 1, 'Wallet created', 0, '2022-02-08 04:30:00', 1),
(18, 3, 1, 'Wallet created', 0, '2022-02-08 04:40:59', 1),
(19, 4, 1, 'Wallet created', 0, '2022-02-08 04:50:30', 1),
(20, 0, 1, 'Wallet created', 0, '2022-02-08 04:57:07', 1),
(21, 0, 1, 'Wallet created', 0, '2022-02-08 04:58:37', 1),
(22, 0, 1, 'Wallet created', 0, '2022-02-08 04:59:42', 1),
(23, 0, 1, 'Wallet created', 0, '2022-02-08 05:07:41', 1),
(24, 0, 1, 'Wallet created', 0, '2022-02-08 05:08:29', 1),
(25, 0, 1, 'Wallet created', 0, '2022-02-08 05:10:11', 1),
(26, 0, 1, 'Wallet created', 0, '2022-02-08 05:11:48', 1),
(27, 0, 1, 'Wallet created', 0, '2022-02-08 05:12:59', 1),
(28, 13, 1, 'Wallet created', 0, '2022-02-08 05:19:26', 1),
(29, 14, 1, 'Wallet created', 0, '2022-02-08 16:21:38', 1),
(30, 15, 1, 'Wallet created', 0, '2022-02-16 05:10:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `witdraw_req`
--

CREATE TABLE `witdraw_req` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `amount_w` float NOT NULL,
  `amount_r` float NOT NULL,
  `isnew` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cnfrm_delivery`
--
ALTER TABLE `cnfrm_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cnfrm_undelivery`
--
ALTER TABLE `cnfrm_undelivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc`
--
ALTER TABLE `dc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dv_time`
--
ALTER TABLE `dv_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isue`
--
ALTER TABLE `isue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofd`
--
ALTER TABLE `ofd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_stlmnt`
--
ALTER TABLE `order_stlmnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_time`
--
ALTER TABLE `order_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ad_on`
--
ALTER TABLE `product_ad_on`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_filter`
--
ALTER TABLE `p_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_reject`
--
ALTER TABLE `p_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_sfilter`
--
ALTER TABLE `p_sfilter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rejection`
--
ALTER TABLE `rejection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_w_msg`
--
ALTER TABLE `seller_w_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_filter`
--
ALTER TABLE `sub_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_w_msg`
--
ALTER TABLE `user_w_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `business_type`
--
ALTER TABLE `business_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `cnfrm_delivery`
--
ALTER TABLE `cnfrm_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cnfrm_undelivery`
--
ALTER TABLE `cnfrm_undelivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dc`
--
ALTER TABLE `dc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dv_time`
--
ALTER TABLE `dv_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `isue`
--
ALTER TABLE `isue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ofd`
--
ALTER TABLE `ofd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `order_stlmnt`
--
ALTER TABLE `order_stlmnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `order_time`
--
ALTER TABLE `order_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product_ad_on`
--
ALTER TABLE `product_ad_on`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_filter`
--
ALTER TABLE `p_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `p_reject`
--
ALTER TABLE `p_reject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_sfilter`
--
ALTER TABLE `p_sfilter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rejection`
--
ALTER TABLE `rejection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `seller_w_msg`
--
ALTER TABLE `seller_w_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_filter`
--
ALTER TABLE `sub_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user_w_msg`
--
ALTER TABLE `user_w_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  ADD CONSTRAINT `witdraw_req_ibfk_1` FOREIGN KEY (`id`) REFERENCES `seller_wallet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
