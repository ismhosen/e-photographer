-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 09:00 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

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
(6, 0, 'archi6.jpg', '');

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
(7, 0, 'fashion7.jpg', '');

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
(3, 0, 'p1.JPG', ''),
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
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_photos`
--

INSERT INTO `sports_photos` (`id`, `user_id`, `img_name`, `img_des`) VALUES
(1, 0, 'sport00.jpg', ''),
(2, 0, 'sport0.jpg', ''),
(3, 0, 'sport1.jpg', ''),
(4, 0, 'sport2.jpg', ''),
(5, 0, 'sport3.jpg', ''),
(6, 0, 'sport5.jpg', ''),
(7, 0, 'sport6.jpg', '');

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
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `img`) VALUES
(1, 'ismail', 'ismhosen', 'ismhosen@gmail.com', '1234', ''),
(2, 'hosen', 'hosenism', 'hosenism@gmail.com', '4321', ''),
(19, 'askj', 'sks', 'sd', 'sdh', '2.png'),
(20, 'asba', 'ams', ';kwj', 'alsjdna', 'dp2.jpg'),
(21, 'a', 'asa', 'ass', 'asa', 'dp2.jpg'),
(22, 'as', 'assdsdkl', 'sdkwy', 'kshdyie', 'dp1.jpg'),
(23, 'a', 'asasa', 'asad', 'asd', 'black.png'),
(24, 'asas', 'assad', 'sdsdc', 'sdsd', 'dp2.jpg'),
(25, 'aa', 'asas', 'sdsdfs', 'sdfwefe', 'dp1.jpg'),
(26, 'as', 'sdfjk', 'sdjwe', 'shd', 'dp1.jpg'),
(27, '1', '1', '1', '1', 'fashion2.jpg'),
(28, '2', '222', '22', '2', 'fashion2.jpg');

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
(9, 0, 'wedding9.jpg', '');

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
(7, 0, 'wild7.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `architecture_photos`
--
ALTER TABLE `architecture_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion_photos`
--
ALTER TABLE `fashion_photos`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
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
-- AUTO_INCREMENT for table `architecture_photos`
--
ALTER TABLE `architecture_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fashion_photos`
--
ALTER TABLE `fashion_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wedding_photos`
--
ALTER TABLE `wedding_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wildlife_photos`
--
ALTER TABLE `wildlife_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
