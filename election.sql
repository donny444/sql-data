-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 06:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `party` int(11) DEFAULT NULL,
  `file_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `party`, `file_name`) VALUES
(9, 'เสรีพิศุทธ์ เตมียเวส', 2, 'seri.webp'),
(10, 'จุรินทร์ ลักษณวิศิษฏ์', 3, 'jurin.jpg'),
(11, 'ประยุทธ์ จันทร์โอชา', 4, 'prayuth.jpg'),
(12, 'เศรษฐา ทวีสิน', 5, 'shetta.webp'),
(13, 'วรงค์ เดชกิจวิกรม', 6, 'warong.webp'),
(14, 'พิธา ลิ้มเจริญรัตน์', 7, 'pita.jpg'),
(15, 'วราวุธ ศิลปอาชา', 8, 'warawuth.jpg'),
(16, 'สุดารัตน์ เกยุราพันธุ์', 9, 'sudarat.jpg'),
(17, 'กรณ์ จาติกวณิช', 10, 'korn.jpg'),
(18, 'ประวิตร วงษ์สุวรรณ', 11, 'prawit.jpg'),
(19, 'อนุทิน ชาญวีรกูล', 22, 'anutin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `candidate` int(11) DEFAULT NULL,
  `file_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `name`, `candidate`, `file_name`) VALUES
(2, 'เสรีรวมไทย', 9, 'เสรีรวมไทย.jpg'),
(3, 'ประชาธิปัตย์', 10, 'ประชาธิปัตย์.jpg'),
(4, 'รวมไทยสร้างชาติ', 11, 'รวมไทยสร้างชาติ.jpg'),
(5, 'เพื่อไทย', 12, 'เพื่อไทย.jpg'),
(6, 'ไทยภักดี', 13, 'ไทยภักดี.jpg'),
(7, 'ก้าวไกล', 14, 'ก้าวไกล.jpg'),
(8, 'ชาติไทยพัฒนา', 15, 'ชาติไทยพัฒนากล้า.jpg'),
(9, 'ไทยสร้างไทย', 16, 'ไทยสร้างไทย.jpg'),
(10, 'ชาติพัฒนากล้า', 17, 'ชาติพัฒนากล้า.jpg'),
(11, 'พลังประชารัฐ', 18, 'พลังประชารัฐ.jpg'),
(22, 'ภูมิใจไทย', 19, 'ภูมิใจไทย.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `party` int(11) DEFAULT NULL,
  `detail` varchar(200) NOT NULL,
  `file_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `party`, `detail`, `file_name`) VALUES
(1, 'เงินหมื่นดิจิตอล', 5, 'รับเงินหนึ่งหมื่นบาทในรูปแบบดิจิตอลวอลเล็ทเพื่อการจับจ่ายใช้สอยในท้องถิ่น', '10k.webp'),
(2, '20บาทตลอดสาย', 5, 'ค่าเดินทางรถไฟรวม20บาทตลอดสาย', '20.webp'),
(3, 'แก้ไขมาตรา112', 7, 'แก้ไขกฎหมายมาตรา112เพื่อเสรีภาพในการแสดงออก', '112.jpg'),
(4, 'ยกเลิกเกณฑ์ทหาร', NULL, 'ยกเลิกการเกณฑ์ทหาร เปลี่ยนเป็นรูปแบบสมัครใจ', 'military.jpg'),
(5, 'สมรสเท่าเทียม', NULL, 'สิทธิในการสมรสเพื่อความเท่าเทียมทางเพศ', 'pride.jpg'),
(6, 'กัญชาเสรี', 22, 'การใช้กัญชาทางการแพทย์และสันทนาการ', 'weeds.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `party` int(11) DEFAULT NULL,
  `opinion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party` (`party`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate` (`candidate`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party` (`party`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party` (`party`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_ibfk_1` FOREIGN KEY (`candidate`) REFERENCES `candidates` (`id`);

--
-- Constraints for table `policies`
--
ALTER TABLE `policies`
  ADD CONSTRAINT `policies_ibfk_1` FOREIGN KEY (`party`) REFERENCES `parties` (`id`);

--
-- Constraints for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD CONSTRAINT `questionnaire_ibfk_1` FOREIGN KEY (`party`) REFERENCES `parties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
