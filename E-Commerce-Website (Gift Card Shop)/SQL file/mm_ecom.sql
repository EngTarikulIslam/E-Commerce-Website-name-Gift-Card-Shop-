-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 09:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mm_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'e2dbb6702618b2dc556fca3482b8d56d', '2017-01-24 16:21:18', '17-06-2023 11:00:01 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(11, 'e Gift Card ', 'E wallet currency', '2023-06-18 06:54:50', NULL),
(12, 'Subscription', 'Subscribe any Ott platform', '2023-06-18 06:55:35', '18-06-2023 12:25:48 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(17, 5, '1', 1, '2023-06-21 12:07:48', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 14, 'Delivered', 'Done', '2023-06-19 19:41:07'),
(6, 15, 'Decline', 'Not Available', '2023-06-20 15:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 11, 13, '5$ Card', 'Apple', 500, 510, 'You can use this gift card any apple devices.', '63c8400311bf6f03bcc8997eaaaab94e05936ddc.png', 'WhatsApp Image 2023-06-18 at 1.09.25 PM.jpeg', 'WhatsApp Image 2023-06-18 at 1.09.25 PM (1).jpeg', 0, 'In Stock', '2023-06-18 07:09:50', NULL),
(2, 11, 13, '10$ Card', 'Apple', 1000, 1020, 'You can use this gift card any apple devices.<br>', 'p1_2193166_69ce0750.jpg', 'p1_2193166_69ce0750.jpg', 'p1_2193166_69ce0750.jpg', 0, 'In Stock', '2023-06-18 09:35:06', NULL),
(3, 11, 13, '25$ Card', 'Apple', 2500, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can use this gift card any apple devices.</span><br>', 'a8c720972f7977c29e9e2dc506bf20945eb46907.png', 'a8c720972f7977c29e9e2dc506bf20945eb46907.png', 'a8c720972f7977c29e9e2dc506bf20945eb46907.png', 0, 'In Stock', '2023-06-18 14:12:50', NULL),
(24, 11, 13, '50$ Card', 'Apple', 5000, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can use this gift card any apple devices.</span><br>', '5.jpg', '5.jpg', '5.jpg', 0, 'In Stock', '2023-06-18 14:16:15', NULL),
(25, 11, 14, '5$ Card', 'Google', 480, 0, '<font color=\"#666666\" face=\"Roboto, sans-serif\">You can buy anything on android device.</font><br>', 'R.png', '2.png', '2.png', 0, 'In Stock', '2023-06-18 14:23:53', NULL),
(26, 11, 14, '10$ Card', 'Google', 960, 0, 'You can buy anything on android device.&nbsp;<br>', 'OIP.jpeg', 'OIP.jpeg', 'OIP.jpeg', 0, 'In Stock', '2023-06-18 14:28:23', NULL),
(27, 11, 14, '25$ Card', 'Google', 2400, 0, 'You can buy anything on android device.&nbsp;<br>', '5970237_sd.jpg', '5970237_sd.jpg', '5970237_sd.jpg', 0, 'In Stock', '2023-06-18 14:30:19', NULL),
(28, 11, 14, '50$ Card', 'Google', 4800, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy anything on android device.&nbsp;</span><br>', '50.jpg', '50.jpg', '50.jpg', 0, 'In Stock', '2023-06-18 14:33:46', NULL),
(29, 11, 15, '5$ Pin', 'Razer', 550, 0, 'You can buy any kind of in game item and top-up.', 'OIP (2).jpeg', 'OIP (2).jpeg', 'OIP (2).jpeg', 0, 'In Stock', '2023-06-18 14:44:39', NULL),
(30, 11, 15, '10$ Pin', 'Razer', 1100, 0, 'You can buy any kind of in game item and top-up.<br>', '640x640.jpg', '640x640.jpg', '640x640.jpg', 0, 'In Stock', '2023-06-18 14:48:47', NULL),
(31, 11, 15, '25$ Pin', 'Razer', 2750, 0, 'You can buy any kind of in game item and top-up.<br>', '25-Razer-Gold-Pin-gift-card-buy-online-in-pakistan.png', '25-Razer-Gold-Pin-gift-card-buy-online-in-pakistan.png', '25-Razer-Gold-Pin-gift-card-buy-online-in-pakistan.png', 0, 'In Stock', '2023-06-18 14:52:34', NULL),
(32, 11, 15, '50$ Pin', 'Razer', 5500, 0, 'You can buy any kind of in game item and top-up.<br>', 'razer-gold-50-us.jpg', 'razer-gold-50-us.jpg', 'razer-gold-50-us.jpg', 0, 'In Stock', '2023-06-18 14:55:14', NULL),
(33, 11, 16, '5$ Card', 'Micrsoft', 500, 0, 'You can buy any kind of in game item and top-up in Microsoft store.<br>', 'R.jpeg', 'R.jpeg', 'R.jpeg', 0, 'In Stock', '2023-06-18 15:00:21', NULL),
(34, 11, 16, '10$ Card', 'Micrsoft', 1000, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Microsoft store.</span><br>', 'Xbox-10-300x300.png', 'Xbox-10-300x300.png', 'Xbox-10-300x300.png', 0, 'In Stock', '2023-06-18 15:04:36', NULL),
(35, 11, 16, '25$ Card', 'Micrsoft', 2500, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Microsoft store.</span><br>', '4249413_sd.jpg', '4249413_sd.jpg', '4249413_sd.jpg', 0, 'In Stock', '2023-06-18 15:06:49', NULL),
(36, 11, 16, '50$ Card', 'Micrsoft', 5000, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Microsoft store.</span><br>', '4248500_sd.jpg', '4248500_sd.jpg', '4248500_sd.jpg', 0, 'In Stock', '2023-06-18 15:09:22', NULL),
(37, 11, 17, '5$ Card', 'Sony', 520, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Sony devices.</span><br>', 'HC7L2IL4FV.jpg', 'HC7L2IL4FV.jpg', 'HC7L2IL4FV.jpg', 0, 'In Stock', '2023-06-18 15:15:02', NULL),
(38, 11, 17, '10$ Card', 'Sony', 1040, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Sony devices.</span><br>', 'R (1).jpeg', 'R (1).jpeg', 'R (1).jpeg', 0, 'In Stock', '2023-06-18 15:18:11', NULL),
(39, 11, 17, '25$ Card', 'Sony', 2600, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Sony devices.</span><br>', '25-750x750.jpg', '25-750x750.jpg', '25-750x750.jpg', 0, 'In Stock', '2023-06-18 15:27:14', NULL),
(40, 11, 17, '50$ Card', 'Sony', 5200, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of in game item and top-up in Sony devices.</span><br>', 'psn-card-50-usd.jpg', 'psn-card-50-usd.jpg', 'psn-card-50-usd.jpg', 0, 'In Stock', '2023-06-18 15:29:38', NULL),
(41, 11, 18, '5$ Card', 'Amazon', 400, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of product in amazon store.</span><br>', 'amazon-5-gift-card.jpg', 'amazon-5-gift-card.jpg', 'amazon-5-gift-card.jpg', 0, 'In Stock', '2023-06-18 15:44:26', NULL),
(42, 11, 18, '10$ Card', 'Amazon', 800, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of product in amazon store.</span><br>', '3748475d54e26484dfb78273d46d167c.jpg', '3748475d54e26484dfb78273d46d167c.jpg', '3748475d54e26484dfb78273d46d167c.jpg', 0, 'In Stock', '2023-06-18 15:47:30', NULL),
(43, 11, 18, '25$ Card', 'Amazon', 2000, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of product in amazon store.</span><br>', 'OIP.jpeg', 'OIP.jpeg', 'OIP.jpeg', 0, 'In Stock', '2023-06-18 15:50:10', NULL),
(44, 11, 18, '50$ Card', 'Amazon', 3800, 4000, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy any kind of product in amazon store.</span><br>', 'amazon50.png', 'amazon50.png', 'amazon50.png', 0, 'In Stock', '2023-06-18 15:51:00', NULL),
(45, 12, 20, '1 Month Subscription', 'Netflix', 200, 220, 'Netflix 1 month subscription with single screen.', 'R (2).jpeg', 'R (2).jpeg', 'R (2).jpeg', 0, 'In Stock', '2023-06-18 20:04:40', NULL),
(46, 12, 20, '2 Month Subscription', 'Netflix', 400, 420, '2 Month Subscription with single screen.<br>', 'header-tech_netflixandchill_v1.jpg', 'R (2).jpeg', 'R (2).jpeg', 0, 'In Stock', '2023-06-18 20:07:08', NULL),
(47, 12, 20, '3 Month Subscription', 'Netflix', 600, 640, '2 Month Subscription with single screen.<br>', 'OIP (3).jpeg', 'R (2).jpeg', 'header-tech_netflixandchill_v1.jpg', 0, 'In Stock', '2023-06-18 20:13:12', NULL),
(48, 12, 20, '15$ Card', 'Netflix', 1350, 1400, 'You can buy Netflix subscription through this gift card balance.', 'OIP (1).jpeg', 'OIP (1).jpeg', 'OIP (1).jpeg', 0, 'In Stock', '2023-06-18 20:15:22', NULL),
(49, 12, 20, '25$ Card', 'Netflix', 2250, 2325, 'You can buy Netflix subscription through this gift card balance.<br>', 'OIP (2).jpeg', 'OIP (2).jpeg', 'OIP (2).jpeg', 0, 'In Stock', '2023-06-18 20:17:28', NULL),
(50, 12, 21, '10$ Card', 'Apple', 900, 1000, 'You can buy Spotify subscription through this gift card balance.<br>', 'OIP.jpeg', 'OIP.jpeg', 'OIP.jpeg', 0, 'In Stock', '2023-06-18 20:23:26', NULL),
(51, 12, 21, '25$ Card', 'Apple', 2250, 2400, 'You can buy Spotify subscription through this gift card balance.<br>', '0df0feb03780bdbe818233594c344652.png', '0df0feb03780bdbe818233594c344652.png', '0df0feb03780bdbe818233594c344652.png', 0, 'In Stock', '2023-06-18 20:25:21', NULL),
(52, 12, 21, '50$ Card', 'Apple', 4500, 4800, 'You can buy Spotify subscription through this gift card balance.<br>', '3042ef44611b68f07287407654ec5049.png', '3042ef44611b68f07287407654ec5049.png', '3042ef44611b68f07287407654ec5049.png', 0, 'In Stock', '2023-06-18 20:29:03', NULL),
(53, 12, 21, '12 Month Subscription', 'Apple', 9000, 9900, 'You can enjoy all premium feature in Spotify app.&nbsp; Enjoy your premium music non stop services.', 'OIP (1).jpeg', 'OIP (1).jpeg', 'OIP (1).jpeg', 0, 'In Stock', '2023-06-18 20:33:42', NULL),
(54, 12, 22, '1 Month Subscription', 'Hulu', 180, 200, '<br><div><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Hulu 1 month subscription with single screen.</span><br></div>', '07871445e4cde1adf9ca83c58a678d32.jpg', '07871445e4cde1adf9ca83c58a678d32.jpg', '07871445e4cde1adf9ca83c58a678d32.jpg', 0, 'In Stock', '2023-06-18 21:22:48', NULL),
(55, 12, 23, '1 Month Subscription', 'Chorki', 150, 180, '<br><div><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Chorki 1 month subscription with single screen.</span><br></div>', 'R.png', 'R.png', 'R.png', 0, 'In Stock', '2023-06-18 21:26:15', NULL),
(56, 12, 24, '1 Month Subscription', 'Hoichoi', 170, 190, '<div><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Hoichoi 1 month subscription with single screen.</span><br></div>', 'hoichoi-28805-2.jpg', 'hoichoi-28805-2.jpg', 'hoichoi-28805-2.jpg', 0, 'In Stock', '2023-06-18 21:38:24', NULL),
(57, 12, 25, '100$ Card', 'Disney', 6500, 7000, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">You can buy Disney subscription through this gift card balance.</span><br>', 'OIP (2).jpeg', 'OIP (2).jpeg', 'OIP (2).jpeg', 0, 'In Stock', '2023-06-18 21:43:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 11, 'iTune', '2023-06-18 06:56:17', NULL),
(14, 11, 'Google', '2023-06-18 06:56:35', NULL),
(15, 11, 'Razer Gold', '2023-06-18 06:56:58', NULL),
(16, 11, 'Xbox', '2023-06-18 06:57:17', NULL),
(17, 11, 'PlayStation', '2023-06-18 06:57:42', NULL),
(18, 11, 'Amazon', '2023-06-18 06:58:34', NULL),
(20, 12, 'Netflix', '2023-06-18 06:59:45', NULL),
(21, 12, 'Spotify', '2023-06-18 07:00:01', NULL),
(22, 12, 'Hulu', '2023-06-18 07:00:57', NULL),
(23, 12, 'Chorki', '2023-06-18 07:02:30', NULL),
(24, 12, 'Hoichoi', '2023-06-18 07:02:46', NULL),
(25, 12, 'Disney', '2023-06-18 07:02:59', '19-06-2023 03:11:59 AM'),
(27, 13, 'Jewellery', '2023-06-18 21:07:10', NULL),
(28, 14, 'Mobile', '2023-06-18 21:09:05', NULL),
(30, 13, 'Mans Fashion', '2023-06-18 21:12:47', NULL),
(31, 13, 'Womens Fashion', '2023-06-18 21:13:24', NULL),
(32, 13, 'Mans Shoes', '2023-06-18 21:14:22', NULL),
(33, 13, 'Womens Shoes', '2023-06-18 21:14:52', NULL),
(34, 14, 'Laptop', '2023-06-18 21:15:43', NULL),
(35, 14, 'Home Appliance', '2023-06-18 21:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-18 09:14:05', '18-06-2023 11:04:43 PM', 1),
(27, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-18 17:35:01', NULL, 1),
(28, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 16:34:57', NULL, 1),
(29, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-21 11:29:54', '21-06-2023 05:05:57 PM', 1),
(30, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-21 11:54:26', NULL, 1),
(31, 'tarikul552828@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-02 19:05:13', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Tarikul Islam', 'tarikul552828@gmail.com', 1823761240, 'e2dbb6702618b2dc556fca3482b8d56d', 'Deora', 'Chittagong', 'Cumilla', 3560, 'deora', 'Chittagong', 'Comilla', 3560, '2023-06-17 17:19:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
