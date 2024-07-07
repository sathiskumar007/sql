-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 01:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloth-hunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `imagePath` varchar(250) NOT NULL,
  `tittle` varchar(100) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `imagePath`, `tittle`, `updatedOn`) VALUES
(1, 'category-1.jpg', 'Topes', '2024-03-09 08:27:32'),
(2, 'category-2.jpg', 'Shirts', '2024-03-09 08:27:32'),
(3, 'category-3.jpg', 'Glasses', '2024-03-09 08:28:26'),
(4, 'category-4.jpg', 'Sandals', '2024-03-09 08:28:26'),
(5, 'category-5.jpg', 'Bag', '2024-03-09 08:29:02'),
(6, 'category-6.jpg', 'Shoes', '2024-03-09 08:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `caurosel`
--

CREATE TABLE `caurosel` (
  `id` int(11) NOT NULL,
  `imagePath` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caurosel`
--

INSERT INTO `caurosel` (`id`, `imagePath`, `description`, `updatedOn`) VALUES
(1, 'banner-1.png', 'This is A<br>Long Open <br> <span class=\'span\'>Robo</span>', '2024-03-08 06:40:55'),
(2, 'banner-2.png', 'Unvelling <br>This Session\'s<br> Fashion', '2024-03-08 06:40:55'),
(3, 'banner-3.png', 'Epitome <br>Of The Big <br> Sweater', '2024-03-08 07:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `imagePath` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `tittle`, `updatedOn`, `imagePath`) VALUES
(1, 'Spring Collections', '2024-03-09 07:17:09', 'specialcollection-1.jpg'),
(2, '30% off all order', '2024-03-09 07:17:09', 'specialcollection-2.jpg'),
(3, 'Must-Have Style', '2024-03-09 07:17:37', 'specialcollection-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `insta`
--

CREATE TABLE `insta` (
  `id` int(11) NOT NULL,
  `imagePath` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insta`
--

INSERT INTO `insta` (`id`, `imagePath`, `icon`, `updatedOn`) VALUES
(1, 'insta1.jpg', '<i class=\"fab fa-instagram\"></i>', '2024-03-14 08:31:34'),
(2, 'insta2.jpg', '<i class=\"fab fa-instagram\"></i>', '2024-03-14 08:31:34'),
(3, 'insta3.jpg', '<i class=\"fab fa-instagram\"></i>', '2024-03-14 08:32:01'),
(4, 'insta4.jpg', '<i class=\"fab fa-instagram\"></i>', '2024-03-14 08:32:01'),
(5, 'insta5.jpg', '<i class=\"fab fa-instagram\"></i>', '2024-03-14 08:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `imagePath` varchar(250) NOT NULL,
  `imageback` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `deletedRate` varchar(250) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `userStatus` varchar(250) NOT NULL,
  `cartStatus` varchar(250) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `imagePath`, `imageback`, `title`, `deletedRate`, `rate`, `userStatus`, `cartStatus`, `updatedOn`) VALUES
(1, 'sellerfront-1.jpg', 'sellerback-1.jpg', '90s Chino Pant', '60', '50', 'active', 'true\r\n', '2024-03-10 08:48:02'),
(2, 'sellerfront-2.jpg', 'sellerback-2.jpg', 'Running Shoe', '150', '148', 'active', 'false', '2024-03-10 08:48:02'),
(3, 'sellerfront-3.jpg', 'sellerback-3.jpg', 'Floral Print Top with Puff Sleeves', '160', '140', 'active', 'false', '2024-03-10 08:57:05'),
(4, 'sellerfront-4.jpg', 'sellerback-4.jpg', 'Floral Print Top with Puff Sleeves', '170', '150', 'active', 'false', '2024-03-10 08:57:05'),
(5, 'sellerfront-5.jpg', 'sellerback-5.jpg', 'VeBNoR \r\nMen Regular Fit Solid Spread Collar Casual Shirt', '180', ' 160', 'active', 'false', '2024-03-10 09:04:34'),
(6, 'sellerfront-6.jpg', 'sellerback-6.jpg', 'Men Regular Fit Solid Spread Collar Casual Shirt', '100', '  80', 'inactive', 'false', '2024-03-10 09:04:34'),
(7, 'sellerfront-7.jpg', 'sellerback-7.jpg', 'Cozy Fleece skirt', '175', '158', 'inactive', 'false', '2024-03-21 12:13:04'),
(8, 'sellerfront-8.jpg', 'sellerback-8.jpg', 'Cozy Fleece Mega Sweatpant', '220', '190', 'inactive', 'false', '2024-03-21 12:13:04'),
(9, 'sellerfront-9.jpg', 'sellerback-9.jpg', 'Band Straw Hat', '250', '220', 'inactive', 'false', '2024-03-21 12:13:12'),
(10, 'sellerfront-10.jpg', 'sellerback-10.jpg', 'Audience Satin Dress', '160', '148', 'inactive', 'false', '2024-03-21 12:13:12'),
(11, 'img.jpg', 'imgback.jpg', 'title', '', 'price', 'inactive', 'false', '2024-03-22 12:30:39'),
(12, 'img.jpg', 'img.jpg', 'orange', '', '250', 'inactive', 'false', '2024-03-22 12:33:57'),
(13, 'young-girl-student-with-school-bag-city-generative-ai_849906-6526.jpg', 'young-girl-student-with-school-bag-city-generative-ai_849906-6526.jpg', 'Orange', '', 'abcd', 'inactive', '0', '2024-03-22 12:35:22'),
(14, 'Asset 1@4x-100.jpg', 'seller14.jpeg', 'logo ', '', 'this is logo', 'inactive', '0', '2024-03-25 04:12:59'),
(15, 'Asset 1@4x-100.jpg', 'Asset 1@4x-100.jpg', 'Apple', '', '100', 'inactive', '0', '2024-03-25 05:16:51'),
(16, 'Behance-logo.jpg', 'Behance-logo.jpg', 'New Card', '', 'Testing', 'inactive', '0', '2024-03-25 05:53:20'),
(17, 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'Checking', '', 'Checking card', 'inactive', '0', '2024-04-04 05:36:48'),
(18, 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'checking card', '', '12345', '', '0', '2024-04-04 05:37:24'),
(19, 'Untitled-2.png', 'Untitled-2.png', 'asdf', '', '123', 'inactive', '0', '2024-04-04 05:39:54'),
(20, 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'pretty-girl-black-hat-red-coat-raised-hands-holding-cap-studio-white-wall.jpg', 'Cheking', '', '125', 'inactive', '0', '2024-05-16 04:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `imagePath` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `imagePath`, `description`, `Author`, `updatedOn`) VALUES
(1, 'testimonial-1.jpg', '\"Cloth Hunt has revolutionized my wardrobe! Their trendy designs and quality fabrics have elevated my style game. I can always count on them for the latest fashion trends.\"\n', 'Michael R.', '2024-03-12 11:18:55'),
(2, 'testimonial-2.jpg', 'I stumbled upon Cloth Hunt while searching for unique clothing pieces, and I\'m so glad I did! Their collection is a perfect blend of chic and comfortable.', 'Sara.L', '2024-03-12 11:18:55'),
(3, 'testimonial-3.jpg', '\"Cloth Hunt has revolutionized my wardrobe! Their trendy designs and quality fabrics have elevated my style game. I can always count on them for the latest fashion trends.\"\r\n', 'Priya jackson', '2024-03-12 12:24:54'),
(4, 'testimonial-4.jpg', '\"Cloth Hunt has revolutionized my wardrobe! Their trendy designs and quality fabrics have elevated my style game. I can always count on them for the latest fashion trends.\"\r\n', 'Trisha Raj', '2024-03-12 12:24:54'),
(5, 'testimonial-5.jpg', 'I stumbled upon Cloth Hunt while searching for unique clothing pieces, and I\'m so glad I did! Their collection is a perfect blend of chic and comfortable.', 'Sukran', '2024-03-12 12:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `userslist`
--

CREATE TABLE `userslist` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `conformPassword` varchar(50) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userslist`
--

INSERT INTO `userslist` (`id`, `userName`, `email`, `password`, `conformPassword`, `updatedOn`) VALUES
(2, 'sathishkumar', 'www.sathis19799@gmail.com', 'sathish@123', 'sathish@123', '2024-03-12 13:04:19'),
(3, 'suriya', 'suriya@gmail.com', 'Suriya@123', 'Suriya@123', '2024-03-13 04:29:02'),
(4, 'akilan', 'akilan234@gmail.com', 'akil@234', 'akil@234', '2024-06-03 15:34:56'),
(5, 'kumar', 'kumar@gmail.com', 'Kumar@123', 'Kumar@123', '2024-06-03 15:37:02'),
(6, 'sathish', 'www.sathis19799@gmail.com', 'Sathish@123', 'Sathish@123', '2024-06-03 15:48:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caurosel`
--
ALTER TABLE `caurosel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insta`
--
ALTER TABLE `insta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userslist`
--
ALTER TABLE `userslist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `caurosel`
--
ALTER TABLE `caurosel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insta`
--
ALTER TABLE `insta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userslist`
--
ALTER TABLE `userslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
