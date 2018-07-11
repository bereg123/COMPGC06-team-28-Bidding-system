-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2018 at 06:34 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bidding`
--

-- --------------------------------------------------------

--
-- Table structure for table `biddinghistory`
--

DROP TABLE IF EXISTS `biddinghistory`;
CREATE TABLE IF NOT EXISTS `biddinghistory` (
  `username` varchar(30) NOT NULL,
  `itemid` int(8) NOT NULL,
  `biddingprice` int(20) NOT NULL,
  `biddingdate` datetime NOT NULL,
  PRIMARY KEY (`biddingdate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biddinghistory`
--

INSERT INTO `biddinghistory` (`username`, `itemid`, `biddingprice`, `biddingdate`) VALUES
('3', 2, 60, '2018-03-15 22:09:13'),
('1', 17, 60, '2018-03-16 00:22:40'),
('1', 4, 100, '2018-03-16 00:23:05'),
('1', 6, 2100, '2018-03-16 00:23:23'),
('1', 12, 80, '2018-03-16 00:23:51'),
('3', 17, 70, '2018-03-16 00:24:13'),
('30', 17, 71, '2018-03-16 00:24:47'),
('1', 17, 72, '2018-03-16 00:25:11'),
('30', 17, 73, '2018-03-16 00:25:33'),
('2', 17, 74, '2018-03-16 00:25:59'),
('1', 17, 75, '2018-03-16 00:26:15'),
('3', 17, 80, '2018-03-16 00:26:42'),
('1', 5, 150, '2018-03-16 00:27:45'),
('1', 13, 498, '2018-03-16 00:48:37'),
('31', 17, 85, '2018-03-16 01:43:15'),
('30', 20, 600, '2018-03-16 02:18:08'),
('30', 21, 900, '2018-03-16 02:20:38'),
('30', 6, 2180, '2018-03-16 02:22:14'),
('31', 22, 1000, '2018-03-16 02:36:24'),
('31', 6, 2300, '2018-03-16 02:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `userid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `score` int(5) NOT NULL,
  `message` text NOT NULL,
  `reviewdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `itemid`, `score`, `message`, `reviewdate`) VALUES
(30, 6, 5, 'Looks cool XD', '2018-03-16'),
(1, 6, 1, 'oh well', '2018-03-16'),
(31, 6, 3, 'this is not that good', '2018-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{\"admin\": 1}');

-- --------------------------------------------------------

--
-- Table structure for table `selling`
--

DROP TABLE IF EXISTS `selling`;
CREATE TABLE IF NOT EXISTS `selling` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL,
  `startingprice` int(11) NOT NULL,
  `reserveprice` int(11) NOT NULL,
  `currentprice` int(11) NOT NULL,
  `postdate` datetime NOT NULL,
  `biddingenddate` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `bidderid` int(30) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `viewing` int(20) NOT NULL,
  `confirm` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selling`
--

INSERT INTO `selling` (`itemid`, `itemname`, `category`, `startingprice`, `reserveprice`, `currentprice`, `postdate`, `biddingenddate`, `userid`, `bidderid`, `description`, `viewing`, `confirm`) VALUES
(17, 'harry potter', 'Literature', 50, 70, 85, '2018-03-16 00:05:59', '2018-07-13 09:00:00', 4, 31, 'Goodbook', 31, 0),
(16, 'perfume', 'Beauty', 999, 999, 999, '2018-03-16 00:02:56', '2018-04-20 09:00:00', 4, 0, 'this is a perfume', 1, 0),
(4, 'cloth 1', 'Clothes', 99, 9999999, 100, '2018-03-15 21:32:51', '2018-07-26 09:00:00', 4, 1, 'Idc', 4, 0),
(5, 'clothes 2', 'Clothes', 99, 109, 150, '2018-03-15 21:33:19', '2018-04-19 09:00:00', 4, 1, 'a cloth', 4, 0),
(6, 'alienware m15', 'Electronic device', 2000, 3000, 2300, '2018-03-15 21:34:54', '2018-06-14 09:00:00', 4, 31, 'Dell Gaming laptops and PCs are engineered with sharper graphics and faster processors for superior visual gameplay thatÂ´s intense at every level.', 25, 0),
(7, 'chicken', 'Food', 20, 30, 20, '2018-03-15 21:36:33', '2018-10-19 09:00:00', 4, 0, 'super chicken meat', 0, 0),
(8, 'cake', 'Food', 6000, 9000, 6000, '2018-03-15 21:37:03', '2018-04-14 09:00:00', 4, 0, 'magic cake', 0, 0),
(9, 'fork', 'Kitchen', 5, 10, 5, '2018-03-15 21:37:29', '2018-03-29 09:00:00', 4, 0, 'nice fork', 0, 0),
(10, 'foil paper', 'Kitchen', 3, 4, 3, '2018-03-15 21:38:11', '2018-03-29 09:00:00', 4, 0, 'nice foil paper', 0, 0),
(11, 'sofa', 'Furniture', 5, 20, 5, '2018-03-15 21:38:36', '2018-03-28 09:00:00', 4, 0, 'I hate sofa', 0, 0),
(12, 'ed shreen music album (signed)', 'Music', 50, 60, 80, '2018-03-15 21:39:15', '2018-10-26 09:00:00', 4, 1, 'everyone loves him', 2, 0),
(13, 'pen', 'Stationery', 425, 999, 498, '2018-03-15 21:39:51', '2018-07-12 09:00:00', 4, 1, 'I have a pen. do you have a pineapple?', 2, 0),
(14, 'basketball', 'Sports', 50, 60, 50, '2018-03-15 21:41:39', '2018-07-12 09:00:00', 4, 0, 'ball', 0, 0),
(15, 'iphone 5', 'Electronic device', 500, 600, 500, '2018-03-15 21:58:36', '2018-07-19 09:00:00', 1, 0, 'we are old school', 0, 0),
(20, 'hololens', 'Electronic device', 300, 400, 600, '2018-03-12 02:13:03', '2018-03-15 11:00:00', 31, 30, 'dsssdsd', 2, 0),
(21, 'ps4', 'Electronic device', 599, 6000, 900, '2018-03-07 02:16:15', '2018-03-14 09:00:00', 31, 30, 'PlayStation 4 (PS4) is a line of eighth-generation home video game consoles developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 during a press conference on February 20, 2013, it was launched on November 15 in North America, November 29 in Europe, South ', 3, 0),
(19, 'macbook air', 'Electronic device', 8000, 79999, 8000, '2018-03-16 02:00:19', '2018-05-04 09:00:00', 31, 0, 'MacBook Air lasts up to an incredible 12 hours between charges. So from your morning coffee till your evening commute, you can work unplugged. When itâ€™s time to kick back and relax, you can get up to 12 hours of iTunes movie playback. And with up to 30 days of standby time, you can go away for weeks and pick up right where you left off.*', 8, 0),
(22, 'oculus rift', 'Electronic device', 560, 697, 1000, '2018-03-07 02:35:40', '2018-03-14 09:00:00', 1, 31, 'The Oculus Rift is a virtual reality system that completely immerses you inside virtual worlds. Oculus Rift is available now.', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `username`, `password`, `name`, `email`, `joined`, `group`) VALUES
(1, 'hongyi', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'hongyi', 'hongyi.gongyang@gmail.com', '2018-03-15 23:45:46', 1),
(2, 'chi', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 'chi', 'testchizhimeng@yeah.net', '2018-03-15 23:46:54', 1),
(3, 'trump', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', 'trump', 'hongyi.gongyang.14@ucl.ac.uk', '2018-03-15 23:48:46', 1),
(4, 'danqi', '4cc8f4d609b717356701c57a03e737e5ac8fe885da8c7163d3de47e01849c635', 'adam', 'adamhe2326@gmail.com', '2018-03-15 23:49:35', 1),
(28, 'adam1', '1c7e99700d516bf1706d1402d3308eb897aa037b5c8f59d3189e39847242b181', 'adam', 'adamhe@gmail.com', '2018-03-15 23:58:08', 1),
(29, 'adamhe', '110903c2e40fd2e5548123771bca68f902b1ffce5a29a4e4d2fefae2fe7e15cb', 'adam', 'adamhe2326@gmail.com', '2018-03-16 00:04:31', 1),
(30, 'bereg', 'e985dddb234ea1fb4e82a60f38113b15078a8b3a98b454c644d894f3286cebfd', 'bereg', 'b.a@ucl.ac.uk', '2018-03-16 00:09:49', 1),
(31, 'spongebob', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 'spongebob1', 'sb@gmail.com', '2018-03-16 00:43:47', 1),
(32, 'compgc06', '50407a624145ba785d28f2ca377b365a96a0c83f669776636bcd9b48678c5b78', 'Team28', 'team28@ucl.ac.uk', '2018-03-16 05:29:34', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
