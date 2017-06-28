-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2017 at 07:26 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `user_id`) VALUES
(2, 'Business', '2017-03-04 13:14:40', '1'),
(4, 'Technology', '2017-06-27 11:27:51', '1'),
(5, 'test', '2017-06-27 13:30:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(3, 3, 'ketan', 'test@gmail.comq', 'Please check  its working or nor', '2017-06-27 08:18:04'),
(4, 3, 'manan', 'best@gmail.com', 'hi good one', '2017-06-27 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 1, 'Blog Post 1', 'Blog-Post-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et molestie eros. Maecenas dignissim, erat at faucibus finibus, nunc nibh finibus lacus, sed gravida leo urna at erat. Proin et efficitur dolor, eget interdum enim. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Integer gravida nisi id urna rhoncus, nec tristique magna efficitur. Mauris non blandit ipsum, ut tempus purus. Praesent rhoncus gravida aliquam. Nulla finibus mi id fermentum fringilla. Morbi volutpat, massa eget sodales tempus, est risus elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'OS_Ubuntu.png', '2017-03-17 13:22:28'),
(2, 2, 1, 'Blog Post 2', 'Blog-Post-2', '<p>. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Intes elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'ci.png', '2017-03-17 13:23:23'),
(3, 4, 3, 'Createt by first user', 'Createt-by-first-user', 'tested', 'fut_3.jpg', '2017-06-28 03:51:55'),
(4, 5, 3, 'new added', 'new-added', 'at morning', 'Koala.jpg', '2017-06-28 03:59:22'),
(5, 5, 4, 'created by user', 'created-by-user', 'To delet this say to user', 'Desert.jpg', '2017-06-28 05:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`, `user_type`) VALUES
(1, 'ketan', '400057', 'test@gmail.comq', 'roha', 'fffc8b1694dd30071e158e36342e10d3', '2017-06-27 08:17:14', 1),
(4, 'India', '123456', 'indy@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2017-06-28 05:19:33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
