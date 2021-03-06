-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 يونيو 2021 الساعة 20:48
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servomotordb`
--

-- --------------------------------------------------------

--
-- بنية الجدول `on_off_table`
--

CREATE TABLE `on_off_table` (
  `ID` int(11) NOT NULL,
  `ON_OFF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `on_off_table`
--

INSERT INTO `on_off_table` (`ID`, `ON_OFF`) VALUES
(1, 1),
(2, 0),
(3, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `servomotors_table`
--

CREATE TABLE `servomotors_table` (
  `SMID` int(11) NOT NULL,
  `Enigne1` int(11) NOT NULL,
  `Enigne2` int(11) NOT NULL,
  `Enigne3` int(11) NOT NULL,
  `Enigne4` int(11) NOT NULL,
  `Enigne5` int(11) NOT NULL,
  `Enigne6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `servomotors_table`
--

INSERT INTO `servomotors_table` (`SMID`, `Enigne1`, `Enigne2`, `Enigne3`, `Enigne4`, `Enigne5`, `Enigne6`) VALUES
(1, 90, 90, 106, 104, 101, 90),
(2, 109, 67, 107, 105, 107, 109),
(3, 99, 106, 114, 118, 61, 64);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `on_off_table`
--
ALTER TABLE `on_off_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `servomotors_table`
--
ALTER TABLE `servomotors_table`
  ADD PRIMARY KEY (`SMID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `on_off_table`
--
ALTER TABLE `on_off_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `servomotors_table`
--
ALTER TABLE `servomotors_table`
  MODIFY `SMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
