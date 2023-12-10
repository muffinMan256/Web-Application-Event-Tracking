-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 05:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be20_cr6_bigeventssassuandrei`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `name`, `date`, `time`, `description`, `image`, `capacity`, `contact`, `phone`, `location`, `street`, `number`, `zip`, `city`, `url`, `type`) VALUES
(21, 'test30', '2023-11-29', '05:43:00', 'sadasdasd', 'https://cdn.pixabay.com/photo/2017/11/04/17/26/christmas-cookies-2918172_1280.jpg', 2313, 'asdasd@test22', 6546565, 'asdasd', 'test 1', 2, 1234, 'test 1', 'http://asdas', 'Food Festival'),
(22, 'test31', '2023-11-06', '02:55:00', 'sadasdasdasd', 'https://cdn.pixabay.com/photo/2018/03/10/12/00/teamwork-3213924_640.jpg', 2313, 'asdasd@test22', 6546565, 'asdasd', 'test 1', 2, 1234, 'test 1', 'asdas', 'Conferece'),
(25, 'test55', '2023-11-28', '16:56:00', 'asdasdas', 'https://cdn.pixabay.com/photo/2017/11/24/10/43/ticket-2974645_1280.jpg', 55, 'test55@a.com', 555555, 'test55', 'test55', 555, 5555, 'test55', 'test55', 'Theater'),
(26, 'test31', '2023-11-28', '18:36:00', 'asdasdasd', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg', 2313, 'asdasd@test22', 6546565, 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg', 'test 1', 2, 1234, 'test 1', 'asdas', 'Music Event'),
(27, 'Art and Innovation Expo', '2023-12-20', '14:00:00', 'An exhibition showcasing the intersection of art and technology.', 'https://cdn.pixabay.com/photo/2021/08/04/13/06/software-developer-6521720_640.jpg', 80, 'ArtTech Collective', 555, 'Innovation Center', 'Art Street', 345, 54321, 'City 6', 'http://event6.com', 'Tech Event'),
(28, 'Soccer Championship', '2023-12-21', '16:30:00', 'Witness the thrilling finale of the international soccer championship.', 'https://cdn.pixabay.com/photo/2014/01/24/13/32/marathon-250987_640.jpg', 120, 'Soccer Federation', 789, 'Stadium Arena', 'Soccer Avenue', 567, 87654, 'City 7', 'http://event7.com', 'Sport Event'),
(29, 'Shakespearean Play: \"Hamlet\"', '2023-12-22', '19:00:00', 'A classic Shakespearean tragedy performed by renowned actors.', 'https://cdn.pixabay.com/photo/2017/11/24/10/43/ticket-2974645_1280.jpg', 150, 'Shakespeare Theater Company', 321, 'Globe Theater', 'Drama Street', 789, 23456, 'City 8', 'http://event8.com', 'Theater'),
(30, 'International Business Summit', '2023-12-23', '10:00:00', 'Explore the latest trends and insights in the world of business.', 'https://cdn.pixabay.com/photo/2018/03/10/12/00/teamwork-3213924_640.jpg', 200, 'Global Business Forum', 111, 'Business Convention Center', 'Commerce Street', 345, 87654, 'City 9', 'http://event9.com', 'Conference'),
(31, 'Street Food Festival', '2023-12-24', '18:30:00', 'A gastronomic journey featuring the best street food vendors in town.', 'https://cdn.pixabay.com/photo/2017/11/04/17/26/christmas-cookies-2918172_1280.jpg', 100, 'Foodie Events', 999, 'City Park', 'Food Street', 101, 23456, 'City 10', 'http://event10.com', 'Food Festival'),
(32, 'AI and Robotics Expo', '2023-12-25', '12:00:00', 'Experience the future with cutting-edge AI and robotics innovations.', 'https://cdn.pixabay.com/photo/2021/08/04/13/06/software-developer-6521720_640.jpg', 120, 'Tech Innovators', 777, 'Tech Expo Center', 'Robotic Avenue', 202, 54321, 'City 11', 'http://event11.com', 'Tech Event'),
(33, 'Basketball Tournament', '2023-12-26', '15:45:00', 'Cheer for your favorite teams in an intense basketball showdown.', 'https://cdn.pixabay.com/photo/2014/01/24/13/32/marathon-250987_640.jpg', 90, 'Basketball Association', 444, 'Basketball Arena', 'Hoops Street', 303, 87654, 'City 12', 'http://event12.com', 'Sport Event'),
(34, 'Musical: \"Les Misérables\"', '2023-12-27', '20:15:00', 'A captivating musical adaptation of Victor Hugo\'s timeless masterpiece.', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg', 180, 'Broadway Productions', 666, 'Grand Opera House', 'Music Street', 404, 23456, 'City 13', 'http://event13.com', 'Music Event'),
(35, 'Tech Startup Summit', '2023-12-28', '11:30:00', 'Connect with and learn from successful entrepreneurs in the tech startup ecosystem.', 'https://cdn.pixabay.com/photo/2021/08/04/13/06/software-developer-6521720_640.jpg', 150, 'Startup Hub', 222, 'Innovation Hub', 'Startup Street', 505, 54321, 'City 14', 'http://event14.com', 'Tech Event'),
(36, 'Golf Championship', '2023-12-29', '14:45:00', 'Watch the top golfers compete for the prestigious championship title.', 'https://cdn.pixabay.com/photo/2014/01/24/13/32/marathon-250987_640.jpg', 80, 'Golf Association', 888, 'Golf Course', 'Fairway Street', 606, 87654, 'City 15', 'http://event15.com', 'Sport Event'),
(37, 'Comedy Show: \"Laugh-a-Palooza\"', '2023-12-30', '21:30:00', 'Get ready for an evening filled with laughter and entertainment.', 'https://cdn.pixabay.com/photo/2015/12/09/17/12/popcorn-1085072_640.jpg', 120, 'Comedy Central', 123, 'Comedy Club', 'Joke Street', 707, 23456, 'City 16', 'http://event16.com', 'Other'),
(39, 'Virtual Reality Expo', '2024-01-02', '13:30:00', 'Immerse yourself in the world of virtual reality and explore groundbreaking VR applications.', 'https://cdn.pixabay.com/photo/2021/08/04/13/06/software-developer-6521720_640.jpg', 100, 'VR Innovations', 777, 'Virtual Reality Center', 'VR Street', 909, 87654, 'City 18', 'http://event18.com', 'Tech Event'),
(40, 'Marathon for a Cause', '2024-01-03', '08:00:00', 'Run for charity and make a positive impact in the community.', 'https://cdn.pixabay.com/photo/2014/01/24/13/32/marathon-250987_640.jpg', 150, 'Charity Foundation', 444, 'City Park', 'Run Street', 1010, 23456, 'City 19', 'http://event19.com', 'Sport Event'),
(41, 'Jazz Festival', '2024-01-04', '19:45:00', 'Enjoy a night of smooth jazz performances under the starry sky.', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg', 120, 'Jazz Society', 999, 'Outdoor Jazz Pavilion', 'Jazz Street', 1111, 54321, 'City 20', 'http://event20.com', 'Music Event'),
(42, 'test1', '2023-11-28', '18:05:00', 'asdasdasd', 'https://cdn.pixabay.com/photo/2015/12/09/17/12/popcorn-1085072_640.jpg', 21312222, 'test1@test', 3432432, 'asdasd', 'asdasd', 555, 5555, 'test55', 'asf', 'Theater');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
