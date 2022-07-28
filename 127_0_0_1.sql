-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2022 at 11:06 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aidiet`
--
CREATE DATABASE IF NOT EXISTS `aidiet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aidiet`;

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
CREATE TABLE IF NOT EXISTS `conversation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `iden` bigint NOT NULL,
  `by` varchar(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `dates` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=598 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `iden`, `by`, `type`, `message`, `dates`) VALUES
(462, 3, 'user', 'text', 'hello\r\n', 'Tuesday Jun 21, 2022 20:16'),
(463, 3, 'admin', 'text', 'Please answer the next question', 'Tuesday Jun 21, 2022 20:16'),
(464, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Tuesday Jun 21, 2022 20:16'),
(465, 3, 'admin', 'text', 'How old are you?', 'Tuesday Jun 21, 2022 20:16'),
(466, 3, 'user', 'text', '10', 'Tuesday Jun 21, 2022 20:16'),
(467, 3, 'admin', 'text', 'Age not in range, please visit a physical dietitian', 'Tuesday Jun 21, 2022 20:16'),
(468, 3, 'user', 'text', 'hello', 'Tuesday Jun 21, 2022 20:16'),
(469, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Tuesday Jun 21, 2022 20:16'),
(470, 3, 'admin', 'text', 'How old are you?', 'Tuesday Jun 21, 2022 20:16'),
(471, 3, 'user', 'text', '20', 'Tuesday Jun 21, 2022 20:16'),
(472, 3, 'admin', 'text', 'Are you a male or a female?', 'Tuesday Jun 21, 2022 20:16'),
(473, 3, 'user', 'text', 'male', 'Tuesday Jun 21, 2022 20:16'),
(474, 3, 'admin', 'text', 'What is your height... Height is in m<sup>2</sup>', 'Tuesday Jun 21, 2022 20:16'),
(475, 3, 'user', 'text', '7', 'Tuesday Jun 21, 2022 20:17'),
(476, 3, 'admin', 'text', 'What is your Weight... Weight is in kg', 'Tuesday Jun 21, 2022 20:17'),
(477, 3, 'user', 'text', '60', 'Tuesday Jun 21, 2022 20:17'),
(478, 3, 'admin', 'text', 'Please state yes or no if you are any of: <br> a muscle builder, Long distance athletes, Breast feeding or Pregnant?', 'Tuesday Jun 21, 2022 20:17'),
(479, 3, 'user', 'text', 'no', 'Tuesday Jun 21, 2022 20:17'),
(480, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, Thank you for using this application, Below is your statistics<br> BMI = 8.57 <br> BMI status is underweight <br> you can dowmload full document and diet plan by clicking this button <a href=\"plan.php?ref=3\"><button class=\"btn btn-info\">Click Here!</button></a>', 'Tuesday Jun 21, 2022 20:17'),
(481, 3, 'user', 'text', 'hello', 'Tuesday Jun 21, 2022 20:55'),
(482, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Tuesday Jun 21, 2022 20:55'),
(483, 3, 'admin', 'text', 'Input Package title', 'Tuesday Jun 21, 2022 20:55'),
(484, 3, 'user', 'text', '', 'Tuesday Jun 21, 2022 20:55'),
(485, 3, 'admin', 'text', 'Invalid, please input a number', 'Tuesday Jun 21, 2022 20:55'),
(486, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 09:39'),
(487, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:39'),
(488, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:39'),
(489, 3, 'user', 'text', 'Phone', 'Wednesday Jun 22, 2022 09:40'),
(490, 3, 'admin', 'text', 'Age not in range, please visit a physical dietitian', 'Wednesday Jun 22, 2022 09:40'),
(491, 3, 'user', 'text', 'hello\r\n', 'Wednesday Jun 22, 2022 09:41'),
(492, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 09:41'),
(493, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:41'),
(494, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:41'),
(495, 3, 'user', 'text', 'The title', 'Wednesday Jun 22, 2022 09:41'),
(496, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:41'),
(497, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:41'),
(498, 3, 'user', 'text', 'The title', 'Wednesday Jun 22, 2022 09:43'),
(499, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 09:43'),
(500, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:43'),
(501, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:43'),
(502, 3, 'user', 'text', '', 'Wednesday Jun 22, 2022 09:47'),
(503, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 09:47'),
(504, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:47'),
(505, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:47'),
(506, 3, 'user', 'text', 'title this', 'Wednesday Jun 22, 2022 09:47'),
(507, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 09:47'),
(508, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:47'),
(509, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:47'),
(510, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 09:55'),
(511, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 09:55'),
(512, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 09:55'),
(513, 3, 'user', 'text', 'The tile', 'Wednesday Jun 22, 2022 09:55'),
(514, 3, 'admin', 'text', 'Are you a male or a female?', 'Wednesday Jun 22, 2022 09:55'),
(515, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 10:06'),
(516, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 10:06'),
(517, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 10:06'),
(518, 3, 'user', 'text', 'Package title\r\n', 'Wednesday Jun 22, 2022 10:06'),
(519, 3, 'admin', 'text', 'Are you a male or a female?', 'Wednesday Jun 22, 2022 10:06'),
(520, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 10:07'),
(521, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 10:07'),
(522, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 10:07'),
(523, 3, 'user', 'text', 'The title', 'Wednesday Jun 22, 2022 10:07'),
(524, 3, 'admin', 'text', 'Where is your address?', 'Wednesday Jun 22, 2022 10:07'),
(525, 3, 'user', 'text', 'House 12 Ilesanmi', 'Wednesday Jun 22, 2022 10:07'),
(526, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup<li> <li>For No Pickup<li></ol>', 'Wednesday Jun 22, 2022 10:07'),
(527, 3, 'user', 'text', '4', 'Wednesday Jun 22, 2022 10:08'),
(528, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:08'),
(529, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:08'),
(530, 3, 'user', 'text', '5', 'Wednesday Jun 22, 2022 10:11'),
(531, 3, 'admin', 'text', 'Invalid, please input 1 or 2', 'Wednesday Jun 22, 2022 10:11'),
(532, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:11'),
(533, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:12'),
(534, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:12'),
(535, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:12'),
(536, 3, 'user', 'text', '5', 'Wednesday Jun 22, 2022 10:13'),
(537, 3, 'admin', 'text', 'Invalid, please input 1 or 2', 'Wednesday Jun 22, 2022 10:13'),
(538, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:13'),
(539, 3, 'user', 'text', '1', 'Wednesday Jun 22, 2022 10:13'),
(540, 3, 'admin', 'text', 'Where do you want it delivered to?', 'Wednesday Jun 22, 2022 10:13'),
(541, 3, 'user', 'text', 'Sango Ibadan', 'Wednesday Jun 22, 2022 10:14'),
(542, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:14'),
(543, 3, 'admin', 'text', 'Where do you want it delivered to?', 'Wednesday Jun 22, 2022 10:14'),
(544, 3, 'user', 'text', 'oyo', 'Wednesday Jun 22, 2022 10:34'),
(545, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 10:34'),
(546, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 10:34'),
(547, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 10:34'),
(548, 3, 'user', 'text', 'The title\r\n', 'Wednesday Jun 22, 2022 10:34'),
(549, 3, 'admin', 'text', 'Where is your address?', 'Wednesday Jun 22, 2022 10:34'),
(550, 3, 'user', 'text', 'oyo', 'Wednesday Jun 22, 2022 10:34'),
(551, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:34'),
(552, 3, 'user', 'text', '2', 'Wednesday Jun 22, 2022 10:34'),
(553, 3, 'admin', 'text', 'Where do you want it delivered to?', 'Wednesday Jun 22, 2022 10:34'),
(554, 3, 'user', 'text', 'oyo', 'Wednesday Jun 22, 2022 10:35'),
(555, 3, 'user', 'text', 'hello', 'Wednesday Jun 22, 2022 10:37'),
(556, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, we are happy you are using this application, please provide all informations correctly', 'Wednesday Jun 22, 2022 10:37'),
(557, 3, 'admin', 'text', 'Input Package title', 'Wednesday Jun 22, 2022 10:37'),
(558, 3, 'user', 'text', 'The title', 'Wednesday Jun 22, 2022 10:37'),
(559, 3, 'admin', 'text', 'Where is your address?', 'Wednesday Jun 22, 2022 10:37'),
(560, 3, 'user', 'text', 'Oyo', 'Wednesday Jun 22, 2022 10:37'),
(561, 3, 'admin', 'text', 'Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>', 'Wednesday Jun 22, 2022 10:37'),
(562, 3, 'user', 'text', '2', 'Wednesday Jun 22, 2022 10:38'),
(563, 3, 'admin', 'text', 'Where do you want it delivered to?', 'Wednesday Jun 22, 2022 10:38'),
(564, 3, 'user', 'text', 'Oyo', 'Wednesday Jun 22, 2022 10:38'),
(565, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:38'),
(566, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:38'),
(567, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:38'),
(568, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:38'),
(569, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:40'),
(570, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:40'),
(571, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:40'),
(572, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:43'),
(573, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:43'),
(574, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:43'),
(575, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:47'),
(576, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:47'),
(577, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:47'),
(578, 3, 'user', 'text', 'uhu', 'Wednesday Jun 22, 2022 10:47'),
(579, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:47'),
(580, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:47'),
(581, 3, 'user', 'text', '20\r\n', 'Wednesday Jun 22, 2022 10:53'),
(582, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:53'),
(583, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:53'),
(584, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:54'),
(585, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:54'),
(586, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:54'),
(587, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:55'),
(588, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:55'),
(589, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:55'),
(590, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 10:59'),
(591, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 10:59'),
(592, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 10:59'),
(593, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 11:00'),
(594, 3, 'admin', 'text', 'Please answer the next question', 'Wednesday Jun 22, 2022 11:00'),
(595, 3, 'admin', 'text', 'What is the weight of the item... Weight is in KG', 'Wednesday Jun 22, 2022 11:00'),
(596, 3, 'user', 'text', '50', 'Wednesday Jun 22, 2022 11:01'),
(597, 3, 'admin', 'text', 'Dear Oladeji Oreoluwa Emmanuel, Thank you for using this application, Below is your order<br> Title = it is ok <br> Destination Oyo <br> We have created a delivery for you. You can tack with this number: 78852496', 'Wednesday Jun 22, 2022 11:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ptitle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paddress` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `pod` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `weight` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `tracking` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `ptitle`, `paddress`, `pod`, `destination`, `mail`, `password`, `weight`, `price`, `date`, `tracking`) VALUES
(3, 'Oladeji Oreoluwa Emmanuel', 'it is ok2', 'Oyo', '2', 'Oyo', 'oladejioreoluwa94@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '50', '1050', 'Tuesday Jun 21, 2022 20:15', '78852496');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
