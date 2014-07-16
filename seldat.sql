-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2014 at 05:47 PM
-- Server version: 5.6.19
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seldat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_dtl`
--

CREATE TABLE IF NOT EXISTS `cust_dtl` (
  `order-id` int(11) NOT NULL,
  `order-item-id` int(11) NOT NULL,
  `purchase-date` varchar(20) NOT NULL,
  `payments-date` varchar(20) NOT NULL,
  `reporting-date` varchar(20) NOT NULL,
  `promise-date` varchar(20) NOT NULL,
  `days-past-promise` varchar(20) NOT NULL,
  `buyer-email` varchar(20) NOT NULL,
  `buyer-name` varchar(20) NOT NULL,
  `buyer-phone-number` varchar(15) NOT NULL,
  `sku` varchar(11) NOT NULL,
  `product-name` varchar(20) NOT NULL,
  `quantity-purchased` int(11) NOT NULL,
  `quantity-shipped` int(11) NOT NULL,
  `quantity-to-ship` int(11) NOT NULL,
  `ship-service-level` varchar(20) NOT NULL,
  `recipient-name` varchar(20) NOT NULL,
  `ship-address-1` varchar(20) NOT NULL,
  `ship-address-2` varchar(20) NOT NULL,
  `ship-address-3` varchar(20) NOT NULL,
  `ship-city` varchar(20) NOT NULL,
  `ship-postal-code` varchar(20) NOT NULL,
  `ship-country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_dtl`
--

INSERT INTO `cust_dtl` (`order-id`, `order-item-id`, `purchase-date`, `payments-date`, `reporting-date`, `promise-date`, `days-past-promise`, `buyer-email`, `buyer-name`, `buyer-phone-number`, `sku`, `product-name`, `quantity-purchased`, `quantity-shipped`, `quantity-to-ship`, `ship-service-level`, `recipient-name`, `ship-address-1`, `ship-address-2`, `ship-address-3`, `ship-city`, `ship-postal-code`, `ship-country`) VALUES
(2081, 206, '12/01/2013', '12/01/2013', '12/01/2013', '12/01/2013', '-2', 'abc@yahoo.com', 'Anne Ellis', '9106930064', '206', 'PACKING CUBE SET', 1, 0, 1, 'Standard Shipping', 'Anne Ellis', '1 Main St', 'Forest Greek Golf ', '', 'Pinehurts', 'NC', 'NC'),
(2082, 206, '12/01/2013', '12/01/2013', '12/01/2013', '12/01/2013', '12/01/2013', 'abcc@gmail.com', 'Alcy G', '9493616678', '206', 'PACKING CUBE SET', 2, 0, 2, 'Standard Shipping', 'Alcy G', '121 Park Ave', '', '', 'San Clemente', '92672', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `ia_order_raw_amazon`
--

CREATE TABLE IF NOT EXISTS `ia_order_raw_amazon` (
  `order-id` int(10) NOT NULL,
  `order-item-id` varchar(20) NOT NULL,
  `purchase-date` varchar(20) NOT NULL,
  `payments-date` varchar(20) NOT NULL,
  `reporting-date` varchar(20) NOT NULL,
  `promise-date` varchar(20) NOT NULL,
  `days-past-promise` varchar(20) NOT NULL,
  `buyer-email` varchar(20) NOT NULL,
  `buyer-name` varchar(20) NOT NULL,
  `buyer-phone` varchar(20) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `product-name` varchar(20) NOT NULL,
  `quantity-purchased` int(11) NOT NULL,
  `quantity-shipped` int(11) NOT NULL,
  `quantity-to-ship` int(11) NOT NULL,
  `ship-service` varchar(20) NOT NULL,
  `recipient-name` varchar(20) NOT NULL,
  `ship-address-1` varchar(30) NOT NULL,
  `ship-address-2` varchar(30) NOT NULL,
  `ship-city` varchar(20) NOT NULL,
  `ship-state` varchar(20) NOT NULL,
  `ship-postal-code` varchar(20) NOT NULL,
  `ship-country` varchar(20) NOT NULL,
  `loaded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ia_order_raw_amazon`
--

INSERT INTO `ia_order_raw_amazon` (`order-id`, `order-item-id`, `purchase-date`, `payments-date`, `reporting-date`, `promise-date`, `days-past-promise`, `buyer-email`, `buyer-name`, `buyer-phone`, `sku`, `product-name`, `quantity-purchased`, `quantity-shipped`, `quantity-to-ship`, `ship-service`, `recipient-name`, `ship-address-1`, `ship-address-2`, `ship-city`, `ship-state`, `ship-postal-code`, `ship-country`, `loaded`) VALUES
(2081, '206', '12/01/2013', '12/01/2013', '12/01/2013', '12/01/2013', '-2', 'abc@yahoo.com', 'Anne Ellis', '9106930064', '206', 'PACKING CUBE SET', 1, 0, 1, 'Standard Shipping', 'Anne Ellis', '1 Main St', 'Forest Greek Golf', 'Pinehurts', 'NC', '12343', 'US', 1),
(2084, '203-BLK', '12/04/2013', '12/04/2013', '12/04/2013', '12/04/2013', '-2', 'abc@gmail.com', 'John Smith', '1234567890', '203-BLK', 'TRAVEL UMBRELLA', 1, 0, 1, 'Standard Shipping', 'John Smith', '1 East State ST', '', 'Trenton', 'NJ', '12343', 'US', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
