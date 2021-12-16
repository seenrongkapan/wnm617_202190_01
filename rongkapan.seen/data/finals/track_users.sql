-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2021 at 09:35 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeenzone_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Amelia Cash', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/800/fff/?text=user1', '2021-04-17 02:56:30'),
(2, 'Bowen Buchanan', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/792/fff/?text=user2', '2020-10-22 01:10:18'),
(3, 'Willie Peck', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639023406.1329_5e24cc050db4f8c5cce2a87e40cba03f.jpeg', '2020-02-20 11:11:22'),
(4, 'Rosemarie Willis', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/911/fff/?text=user4', '2020-01-05 06:39:08'),
(5, 'Dianne Mcgowan', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/769/fff/?text=user5', '2021-09-16 01:19:57'),
(6, 'Lessie Schroeder', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/894/fff/?text=user6', '2020-06-23 05:07:03'),
(7, 'Jenny Gonzales', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/717/fff/?text=user7', '2020-08-21 10:55:39'),
(8, 'Collins Stokes', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/795/fff/?text=user8', '2021-06-13 02:28:06'),
(9, 'Cochran Levy', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/705/fff/?text=user9', '2020-05-18 10:17:08'),
(10, 'Hines Diaz', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/852/fff/?text=user10', '2021-07-30 10:47:53'),
(15, 'ham', 'hams', 'hams@ham.ham', '79af0c177db2ee64b7301af6e1d53634', 'uploads/1639614343.6328_tyson.jpeg', '2021-12-08 22:19:51'),
(17, 'Tiffany Chan', 'user0', 'user0@email.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639527469.9498_profile-pic.jpeg', '2021-12-14 17:17:39'),
(18, 'Chloe', 'heyme', 'heyme@email.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639621680.5143_profile-pic.jpeg', '2021-12-15 17:58:45'),
(19, '', 'thisistheway', 'mando@email.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639628426.1669_profile-pic.jpeg', '2021-12-15 21:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
