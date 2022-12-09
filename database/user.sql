-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 01:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `password`, `cpassword`) VALUES
(25, 'Ankit', 'ankitkumarcse91@gmail.com', '7296068140', '$2y$10$EWB6GsFf6XjGuqvJbJUAWOEsblgdxFSWtVtyGTp2fs0gI3FYbURs2', '$2y$10$uDou4l5JxwTk3QkZh2y/0OlffqpDa.VBFelpCpGPqjNi62g8PZhHC'),
(26, 'manish', 'manish@gmail.com', '7894561230', '$2y$10$jjuZswJ7bsaq4h6d34hOeOqHurmTmhhDnH6OcKtFMVU/Qpa.FkGKq', '$2y$10$czHOsZC9J1KKXp1K83y68u54YV8LLpC5IK8OoX1HCrg2ICjM5qlte'),
(27, 'Subhash', 'Subhash@gmail.com', '7418529630', '$2y$10$fk.Yr27U2S2NiovwHd1IwuSU6LFk4pYDicZ6QyrnPUBW3GC.CWHrC', '$2y$10$eJCzNQ5JFztkVFGo6cCWz.HEhGM6lg6zvLclMA07V64c4nRU/2dHm'),
(28, 'suraj', 'suraj@gmail.com', '0101010101', '$2y$10$j0xBmKrQBxHglpvWfoDj.ubTkKdR5xzj9th90C7W99o.AjLOWd7Ja', '$2y$10$HILIjnd8RRVRSYkBka1p7u6Vz.EpELlCOG6M1eu8QtwdIa19LIEu.'),
(29, 'Prabhat', 'Prabhat@gmail.com', '7418529635', '$2y$10$Ch.KvVGY/wp1tzl7Lhcg9Ov3ejZ5LmUWoNQzYiZTF9UwnUAebDa0m', '$2y$10$8gmn4y9nIO25vj1tlz/zZulhM.5Ba6ej2Qw3xxppKk//lFI9QJNHa'),
(30, 'muskan', 'muskan@gmail.com', '0990909081', '$2y$10$5RoKvIEt2oLUv9dYsRH2Te6PZty/6LH5uU1zLyBTszyQYxkuIXey.', '$2y$10$YkxVzBToTtJw8DHsXT9d5uIOGgWC012KIozzx9QWe6hyyqaB6e95y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
