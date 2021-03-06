-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 10:06 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ephotographer`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_photo`
--

CREATE TABLE `all_photo` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_photo`
--

INSERT INTO `all_photo` (`id`, `photo_id`, `category`, `user_id`, `description`) VALUES
(1, 13, 'wedding_photos', 29, 'asdasd'),
(3, 11, 'wildlife_photos', 29, 'dfgdfg'),
(4, 20, 'wedding_photos', 29, 'asda'),
(5, 12, 'wedding_photos', 47, 'sdfsdf'),
(6, 1, 'sports_photos', 29, 'sdfsd'),
(7, 2, 'sports_photos', 29, 'bd'),
(8, 1, 'fashion_photos', 29, 'f'),
(9, 4, 'architecture_photos', 29, 'archi'),
(10, 6, 'wildlife_photos', 29, 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `architecture_photos`
--

CREATE TABLE `architecture_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `architecture_photos`
--

INSERT INTO `architecture_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'archi1.jpg', ''),
(2, 0, 'archi2.jpg', ''),
(3, 0, 'archi3.jpg', ''),
(4, 0, 'archi4.jpg', ''),
(5, 0, 'archi5.jpg', ''),
(6, 0, 'archi6.jpg', ''),
(7, 29, 'archi4.jpg', 'archi');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `photo_id`, `category`, `user_id`) VALUES
(1, 3, 'recommend_photos', 29),
(18, 6, 'recommend_photos', 37),
(19, 9, 'recommend_photos', 37),
(20, 10, 'recommend_photos', 37),
(21, 5, 'recommend_photos', 37),
(22, 3, 'recommend_photos', 37),
(23, 8, 'recommend_photos', 37),
(24, 7, 'recommend_photos', 37);

-- --------------------------------------------------------

--
-- Table structure for table `fashion_photos`
--

CREATE TABLE `fashion_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fashion_photos`
--

INSERT INTO `fashion_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'fashion1.jpg', ''),
(2, 0, 'fashion2.jpg', ''),
(3, 0, 'fashion3.jpg', ''),
(4, 0, 'fashion4.jpg', ''),
(5, 0, 'fashion5.jpg', ''),
(6, 0, 'fashion6.jpg', ''),
(7, 0, 'fashion7.jpg', ''),
(8, 29, 'fashion1.jpg', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(1, 'sdfs', 'sdfsdfsd'),
(2, 'sdf', 'sdfsdfsdf'),
(3, 'dfgdf', 'dfgdfgdfgdfg'),
(4, 'sdfsdf', 'sdfsdfsdfsdf'),
(5, '1', 'dfgd'),
(6, 'f', 'trrtyrt'),
(7, 'df', 'werwe'),
(8, 'sdf', '2w3rw3rw'),
(9, 'sd', 'w4erw3'),
(10, 'sdf', 'ghjtgh');

-- --------------------------------------------------------

--
-- Table structure for table `image_details`
--

CREATE TABLE `image_details` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_details`
--

INSERT INTO `image_details` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 5, 'p1.JPG', ''),
(2, 6, 'p2.jpg', ''),
(3, 7, 'p3.jpg', ''),
(4, 8, 'p4.JPG', ''),
(5, 8, 'p5.JPG', ''),
(6, 9, 'p6.JPG', ''),
(7, 10, 'p7.jpg', ''),
(8, 11, 'p8.jpg', ''),
(9, 7, 'p9.jpg', ''),
(10, 6, 'p10.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE `messenger` (
  `sender_id` int(50) NOT NULL,
  `receiver_id` int(50) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommend_photos`
--

CREATE TABLE `recommend_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommend_photos`
--

INSERT INTO `recommend_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'p4.jpg', ''),
(2, 0, 'p10.jpg', ''),
(3, 29, 'p1.JPG', ''),
(4, 0, 'p2.jpg', ''),
(5, 0, 'p3.jpg', ''),
(6, 0, 'p5.JPG', ''),
(7, 0, 'p6.JPG', ''),
(8, 0, 'p7.jpg', ''),
(9, 0, 'p8.jpg', ''),
(10, 0, 'p9.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `sports_photos`
--

CREATE TABLE `sports_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_photos`
--

INSERT INTO `sports_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 29, 'sport0.jpg', 'sdfsd'),
(2, 29, 'sport00.jpg', 'bd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `tagline` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `img`, `tagline`, `facebook`, `instagram`, `type`, `active`) VALUES
(1, 'Admin', '', 'admin@gmail.com', 'admin', 'dp1.jpg', '', '', '', 'admin', 1),
(27, '1', '', '1', '1', 'fashion2.jpg', '', '', '', 'client', 0),
(29, 'Ismail Hosen ', 'ism', '3', '3', 'dp1.jpg', 'capture', '/ismhosenn', '/ismhosenn', 'photographer', 0),
(30, '5', '', '5', '5', 'dp2.jpg', '', '', '', 'photographer', 0),
(31, '7', '', '7', '7', 'dp1.jpg', '', '', '', 'client', 0),
(32, '8', '', '8', '8', 'dp1.jpg', '', '', '', 'photographer', 0),
(33, '9', '', '9', '9', '2.png', '', '', '', 'client', 0),
(35, '10', '', '10', '10', 'archi2.jpg', '', '', '', 'photographer', 0),
(36, '11', '', '11', '11', 'fashion1.jpg', '', '', '', 'client', 0),
(37, '12', '', '12', '12', 'fashion2.jpg', '', '', '', 'client', 1),
(38, '21', '', '21', '321', 'add-image.png', '', '', '', 'photographer', 0),
(39, '22', '', '22', '22', 'black.png', '', '', '', 'photographer', 0),
(40, '24', '', '24', '24', 'archi6.jpg', '', '', '', 'photographer', 0),
(41, '211', '211', '211', '211', 'fashion3.jpg', 'my tagline', '/myfacebook', '/myinstagram', 'photographer', 0),
(42, '2111', '2111', '2111', '2111', 'fashion3.jpg', '', '', '', 'client', 0),
(43, '232', '2323', '2323', '32323', 'fashion5.jpg', '', '', '', 'photographer', 0),
(44, 'fg', '3', 'fghf', 'As#123456', 'fashion6.jpg', '', '', '', 'photographer', 0),
(45, '455', '455', 'ismhdossden@gmail.com', 'Ad#232323424', 'dp1.jpg', '', '', '', 'photographer', 0),
(46, '555', '555', 'ismhdosen@gmail.com', 'Ad@3345345', 'fashion6.jpg', '', '', '', 'photographer', 0),
(47, '555', '555', 'ismhdasdosen@gmail.com', '3A@dfgh4545', 'fashion7.jpg', '', '', '', 'photographer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wedding_photos`
--

CREATE TABLE `wedding_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wedding_photos`
--

INSERT INTO `wedding_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'wedding1.jpg', ''),
(2, 0, 'wedding2.jpg', ''),
(3, 0, 'wedding3.jpg', ''),
(4, 0, 'wedding4.jpg', ''),
(5, 0, 'wedding5.jpeg', ''),
(6, 0, 'wedding6.jpeg', ''),
(7, 0, 'wedding7.jpeg', ''),
(8, 0, 'wedding8.jpg', ''),
(9, 0, 'wedding9.jpg', ''),
(10, 29, 'wedding6.jpeg', 'dfgdfgd'),
(11, 29, 'wedding6.jpeg', 'GFGHF'),
(12, 29, 'dp1.jpg', 'asdasd'),
(13, 29, 'archi6.jpg', 'asdasd'),
(14, 29, 'archi6.jpg', 'asdasd'),
(15, 29, 'dp1.jpg', 'fghfgh'),
(16, 29, 'black.png', 'asda'),
(17, 29, 'archi6.jpg', 'xvxcv'),
(18, 29, 'archi6.jpg', 'asdasd'),
(19, 46, 'dp1.jpg', 'fg 46'),
(20, 29, 'fashion6.jpg', 'asda'),
(21, 47, 'dp1.jpg', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `wildlife_photos`
--

CREATE TABLE `wildlife_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wildlife_photos`
--

INSERT INTO `wildlife_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'wild1.jpg', ''),
(2, 0, 'wild2.jpg', ''),
(3, 0, 'wild3.jpg', ''),
(4, 0, 'wild4.jpg', ''),
(5, 0, 'wild5.jpg', ''),
(6, 0, 'wild6.jpg', ''),
(7, 0, 'wild7.jpg', ''),
(8, 29, 'dp2.jpg', 'wew'),
(9, 29, 'archi6.jpg', 'asdasd'),
(10, 29, 'archi6.jpg', 'dgdfg'),
(11, 29, 'fashion6.jpg', 'dfgdfg'),
(12, 29, 'wild6.jpg', 'sdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_photo`
--
ALTER TABLE `all_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `architecture_photos`
--
ALTER TABLE `architecture_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion_photos`
--
ALTER TABLE `fashion_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_details`
--
ALTER TABLE `image_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommend_photos`
--
ALTER TABLE `recommend_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports_photos`
--
ALTER TABLE `sports_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wedding_photos`
--
ALTER TABLE `wedding_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wildlife_photos`
--
ALTER TABLE `wildlife_photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_photo`
--
ALTER TABLE `all_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `architecture_photos`
--
ALTER TABLE `architecture_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fashion_photos`
--
ALTER TABLE `fashion_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `image_details`
--
ALTER TABLE `image_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recommend_photos`
--
ALTER TABLE `recommend_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sports_photos`
--
ALTER TABLE `sports_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wedding_photos`
--
ALTER TABLE `wedding_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wildlife_photos`
--
ALTER TABLE `wildlife_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
