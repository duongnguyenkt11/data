-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2020 at 11:35 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `answer1` varchar(200) DEFAULT NULL,
  `answer2` varchar(200) DEFAULT NULL,
  `answer3` varchar(200) DEFAULT NULL,
  `answer4` varchar(200) DEFAULT NULL,
  `true_answer` varchar(100) DEFAULT NULL,
  `rank_of_topic` int(11) DEFAULT NULL,
  `rank_of_all` int(11) DEFAULT NULL,
  `diff_type` int(11) DEFAULT NULL COMMENT '0/ease 1/difficulty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`id`, `topic_id`, `type_id`, `content`, `image`, `answer1`, `answer2`, `answer3`, `answer4`, `true_answer`, `rank_of_topic`, `rank_of_all`, `diff_type`) VALUES
(1, 1, 1, 'What unit is used for the volume of a solid?', 'images/blank.PNG', 'cm²', 'cm³', 'g/cm³', 'kg', 'B', NULL, NULL, NULL),
(2, 1, 1, 'A jogger is running around an athletics track. The stopwatch says 1 minute 20 seconds after the first lap, and 3 minutes 10 seconds after the second. How long did it take the jogger to complete the second lap?', 'images/blank.PNG', '130 s', '210 s', '190 s', '110 s', 'D', NULL, NULL, NULL),
(3, 1, 1, 'What is the name given to the device used to measure very small distances, such as the thickness of a piece of paper? ', '\r\nimages/blank.PNG', 'A micrometer', 'A manometer', 'A digital balance', 'A microruler', 'A', NULL, NULL, NULL),
(4, 1, 2, 'The prefix ‘kilo’ means multiply by 1000 units. State the prefix meaning multiply by 1 000 000.', 'images/blank.PNG', NULL, NULL, NULL, NULL, 'Mega', NULL, NULL, NULL),
(5, 1, 2, 'Complete the following sentence: The measure 0.6 kJ is the same as ___ joules.', 'images/blank.PNG', NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL),
(6, 1, 1, 'Which distance-time graphs represent a stationary object?', 'images/question6.PNG', 'Graphs A and C', 'Graphs B and C', 'Graphs A, B and C', 'Graphs B, C and D', 'A', NULL, NULL, NULL),
(7, 1, 1, 'What is represented by a flat, horizontal line on a speed–time graph?', 'images/blank.PNG', 'Constant deceleration', 'The distance travelled', 'Constant speed', 'Constant acceleration', 'C', NULL, NULL, NULL),
(8, 1, 2, 'A paper cup falls from a window near the top of a very tall building. It falls downwards at  constant speed of 2.4 m/s. Complete the following sentence: The cup will have fallen ___ metres in 30 seconds.', 'images/blank.PNG', NULL, NULL, NULL, NULL, '72', NULL, NULL, NULL),
(9, 1, 2, 'A helicopter accelerates on take off at 3 m/s2. If it statrts at rest, how fast is it travelling after 9 seconds? (with units', 'images/blank.PNG', NULL, NULL, NULL, NULL, '27 m/s\r\n', NULL, NULL, NULL),
(10, 1, 2, 'This speed–time graph shows a bus speeding up after picking up passengers. Question: What is the distance travelled by the bus in the first 20 seconds? (with unit)', 'images/question10.PNG', NULL, NULL, NULL, NULL, '60m', NULL, NULL, NULL),
(11, 2, 1, 'What are the correct units for mass and weight?', 'images/blank.PNG', 'mass (kg), weight (N)', 'mass (N), weight (kg)', 'mass (N), weight (N)', 'mass (kg), weight (kg)', 'A', NULL, NULL, NULL),
(12, 2, 1, 'What is the correct equation for calculating the weight of an object?', 'images/blank.PNG', 'weight = mass × velocity\r\n', 'weight = mass / gravitational field strength\r\n', 'weight = mass × gravitational field strength\r\n', 'weight = mass/velocity\r\n', 'C', NULL, NULL, NULL),
(13, 2, 1, 'A planet is discovered in a different Solar System with a value of g = 15 N/kg. Complete the following sentence: Mass is a property that resists changes in ______. What is the mass of a rock on the planet if the recorded weight is 300 N?', 'images/blank.PNG', '20 g\r\n', '4500 kg\r\n', '4500 g\r\n', '20 kg\r\n\r\n', 'D\r\n', NULL, NULL, NULL),
(14, 2, 1, 'A mixture of argon and helium are placed in a closed container. The mass of argon is ten times that of helium. Which statement is true?\r\n', 'images/blank.PNG\r\n', 'Helium atoms cannot be moved by larger, slower moving argon atoms.\r\n', 'If helium atoms move fast enough, they can move the larger argon atoms.\r\n', 'Helium atoms can only be moved by larger argon atoms.\r\n', 'Larger argon atoms cannot be moved by smaller helium atoms.\r\n', 'B', NULL, NULL, NULL),
(15, 2, 2, 'What is the weight of a 0.8 kg hammer on the Moon? (Assume g = 1.6 N/kg on the Moon.)\r\n', 'images/blank.PNG\r\n', '', '', '', '', '128N\r\n', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
