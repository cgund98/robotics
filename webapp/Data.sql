-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2017 at 05:37 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robotics_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2016-12-06 21:45:04', '2016-12-06 21:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `event`, `created_at`, `updated_at`) VALUES
(1, 'Loser', '2016 Tippecanoe Event', '2017-01-09 20:26:41', '2017-01-09 20:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text,
  `content` text,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `youtube_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category`, `image`, `created_at`, `updated_at`, `youtube_url`) VALUES
(1, 'A test post', 'Edited', 'Outreach', 'none', '2016-12-15 02:57:05', '2016-12-15 23:42:34', NULL),
(3, 'A second test ', 'returned', 'Press', '', '2016-12-15 23:45:02', '2016-12-15 23:45:02', NULL),
(4, 'test', 'dsdfds', 'Press', '', '2016-12-15 23:45:39', '2016-12-15 23:45:39', NULL),
(5, 'fdf', 'dfdfd', 'Outreach', '', '2016-12-15 23:46:23', '2016-12-15 23:46:23', NULL),
(6, 'fdf', 'nope', 'Press', 'sdsd', '2016-12-15 23:48:58', '2016-12-15 23:51:21', NULL),
(8, 'dfadsf', 'aadada', 'Outreach', 'adad', '2016-12-15 23:49:12', '2016-12-15 23:49:12', NULL),
(12, 'a post', '1 a two', 'Outreach', NULL, '2016-12-16 00:29:08', '2016-12-16 00:29:08', NULL),
(13, 'Test if its an image', '<img src="none.jpg">', 'Press', NULL, '2016-12-16 01:46:38', '2016-12-16 01:46:38', NULL),
(14, 'Hope it works!', 'youtubes work please', 'Outreach', NULL, '2017-01-10 21:49:18', '2017-01-10 21:49:18', NULL),
(15, 'Youtube test', 'Content', 'Press', NULL, '2017-01-10 22:08:36', '2017-01-10 22:08:36', NULL),
(16, 'Image upload', 'content', 'Press', NULL, '2017-01-10 22:11:14', '2017-01-10 22:12:34', 'https://www.youtube.com/embed/gkLywkiDbSk');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('0'),
('20161206234653'),
('20161207022808'),
('20161207025745'),
('20161207030025'),
('20161207030142'),
('20161213171318'),
('20161215025114'),
('20161216190532'),
('20170106030406'),
('20170110214450');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role`, `created_at`, `updated_at`, `username`) VALUES
(1, 'Callum', 'gundlachcallum@gmail.com', '$2a$10$ox5Bvon5VEdXgm/uFRuznOuI2u3XTpSnK18OI3y.zc.X8F55eLFZa', 3, '2016-12-07 02:52:10', '2016-12-19 20:32:02', NULL),
(2, 'Admin', 'admin@admin.icloud.com', '$2a$10$5/6kYYpQec2zve2PyUo7ou1/sLjDD9ASaSyU82WxI0LQC1bpDFqfu', 10, '2016-12-07 03:05:21', '2016-12-07 03:05:21', 'admineruni');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, '1747: This Year\'s Game', 'This year’s game is called FIRST Stronghold and defense is back! Teams begin the match at the center of the field and then travel to their opponents side and destroy their tower. Blocking each alliance’s tower is set of obstacles called defenses which robots must traverse in order to get near the tower. These defenses included ramps, bumps, and gates.', '2016-12-07 02:52:10', '2016-12-27 12:28:55'),
(2, '10133: This Year\'s Game', 'It\'s nut so good!', '2016-12-07 02:52:10', '2016-12-27 12:32:40'),
(3, 'Award Winning', 'Harrison Boiler Robotics has received countless awards over the years including Chairman\'s, Business, Automation. Take a look at the full list here. ', '2017-01-09 20:43:37', '2017-01-09 20:49:32'),
(4, 'Our Mission', 'Our mission is to promote a strong, unified team which works together to accomplish worthwhile goals.', '2017-01-09 20:44:35', '2017-01-09 20:44:35'),
(5, 'Impressive Title', 'Our mission is to promote a strong, unified team which works together to accomplish worthwhile goals.', '2017-01-09 20:45:57', '2017-01-09 20:45:57'),
(6, 'Making the Future', 'Here at HBR, we are proud of what we do. We help educate High school students so they can go off to do great things when they enter the world.', '2017-01-09 20:50:54', '2017-01-09 20:50:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
