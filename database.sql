-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2018 at 05:51 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getevent_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_comment`
--

CREATE TABLE `event_comment` (
  `comment_order` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE `event_detail` (
  `event_id` int(11) NOT NULL,
  `event_name` text CHARACTER SET utf8 NOT NULL COMMENT 'be a primary',
  `user_id` int(11) NOT NULL,
  `event_size` int(11) NOT NULL,
  `event_category` text CHARACTER SET utf8 NOT NULL,
  `event_type` varchar(4) CHARACTER SET utf8 NOT NULL,
  `event_price` int(11) NOT NULL,
  `event_location` text CHARACTER SET utf8 NOT NULL,
  `event_date` date NOT NULL,
  `event_start` time NOT NULL,
  `event_end` time NOT NULL,
  `event_invitation` text CHARACTER SET utf8 NOT NULL,
  `event_poster` text CHARACTER SET utf8,
  `event_video` text CHARACTER SET utf8,
  `event_detail` text CHARACTER SET utf8 NOT NULL,
  `evaluation` text CHARACTER SET utf8 NOT NULL,
  `preCondition` text NOT NULL,
  `event_seat` int(11) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_detail`
--

INSERT INTO `event_detail` (`event_id`, `event_name`, `user_id`, `event_size`, `event_category`, `event_type`, `event_price`, `event_location`, `event_date`, `event_start`, `event_end`, `event_invitation`, `event_poster`, `event_video`, `event_detail`, `evaluation`, `preCondition`, `event_seat`, `lat`, `lng`) VALUES
(177, 'Pedobear', 28, 2, 'education', 'free', 0, 'Tokyu Department Store, Wang Mai, Pathum Wan, Bangkok, Thailand', '2018-06-29', '20:00:00', '22:00:00', 'NEWCOMER STREAM', '../Poster/5aa7e6d021f23.png', '', 'PEDOOOOOOOOOOOOOOOOOOO', '', '', 0, '13.7456542', '100.52991309999993'),
(178, 'Dudesweet Party of 1997', 30, 50, 'business', 'paid', 150, 'Whiteline, Silom 8 Alley, Suriya Wong, Bang Rak, Bangkok, Thailand ', '2018-03-31', '20:00:00', '22:30:00', 'WITH LIVE CONCERT FROM THE LEGENDARY \"STONE METAL FIRE\" à¸«à¸´à¸™ à¹€à¸«à¸¥à¹‡à¸ à¹„à¸Ÿ Plus two opening acts: Nirvana and Richard Marx', '../Poster/5aa7feda6508e.jpg', '', 'à¸‡à¸²à¸™à¸›à¸£à¸°à¸ˆà¸³à¸›à¸µà¸‚à¸­à¸‡ Dudesweet à¸›à¸²à¸£à¹Œà¸•à¸µà¹‰ 90s à¸ˆà¸±à¸”à¸«à¸™à¸±à¸ à¹€à¸à¹‡à¸šà¸—à¸¸à¸à¹à¸™à¸§à¹€à¸žà¸¥à¸‡à¸—à¸µà¹ˆà¹€à¸‚à¸²à¸„à¸¥à¸±à¹ˆà¸‡à¹† à¸à¸±à¸™à¸•à¸­à¸™à¸¢à¸¸à¸„ 90s à¹à¸¥à¸°à¸‡à¸²à¸™à¸™à¸µà¹‰à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¹à¸„à¹ˆà¸¢à¹‰à¸­à¸™à¹€à¸›à¸´à¸”à¹€à¸žà¸¥à¸‡ 90s à¹à¸•à¹ˆà¹€à¸£à¸²à¸¢à¸±à¸‡à¸¢à¹‰à¸­à¸™à¸žà¸¤à¸•à¸´à¸à¸£à¸£à¸¡à¸à¸²à¸£à¸›à¸²à¸£à¹Œà¸•à¸µà¹‰à¹à¸šà¸šà¸¢à¸¸à¸„ 90s à¸”à¹‰à¸§à¸¢ à¸›à¸²à¸£à¹Œà¸•à¸µà¹‰à¸™à¸µà¹‰à¸ˆà¸¶à¸‡à¸«à¹‰à¸²à¸¡à¸™à¸³à¸¡à¸·à¸­à¸–à¸·à¸­à¸—à¸µà¹ˆà¸–à¹ˆà¸²à¸¢à¸£à¸¹à¸›à¹„à¸”à¹‰à¹€à¸‚à¹‰à¸²à¸‡à¸²à¸™ à¹‚à¸”à¸¢à¹€à¸£à¸²à¸ˆà¸°à¸¡à¸µà¸„à¸™à¸„à¸­à¸¢à¸£à¸±à¸šà¸à¸²à¸à¸¡à¸·à¸­à¸–à¸·à¸­à¸—à¸µà¹ˆà¸«à¸™à¹‰à¸²à¸›à¸£à¸°à¸•à¸¹à¸•à¸­à¸™à¸•à¸£à¸§à¸ˆà¸•à¸±à¹‹à¸§/à¸ˆà¹ˆà¸²à¸¢à¸„à¹ˆà¸²à¹€à¸‚à¹‰à¸² à¹€à¸¡à¸·à¹ˆà¸­à¸ˆà¹ˆà¸²à¸¢à¹€à¸‡à¸´à¸™à¹à¸¥à¹‰à¸§ à¸„à¸¸à¸“à¸ˆà¸°à¹„à¸”à¹‰à¸£à¸±à¸š wrist band à¸—à¸µà¹ˆà¸¡à¸µà¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚ à¸­à¸¢à¹ˆà¸²à¸—à¸³à¸«à¸²à¸¢! à¸žà¸­à¸•à¸­à¸™à¸à¸¥à¸±à¸šà¸à¹‡à¸Šà¸¹à¸‚à¹‰à¸­à¸¡à¸·à¸­à¹ƒà¸«à¹‰à¹€à¸‚à¸²à¸”à¸¹ à¹à¸¥à¹‰à¸§à¹€à¸‚à¸²à¸ˆà¸°à¸„à¹‰à¸™à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸„à¸·à¸™à¸„à¸¸à¸“ à¸­à¸¢à¹ˆà¸²à¸¥à¸·à¸¡à¹ƒà¸ªà¹ˆà¸£à¸«à¸±à¸ªà¸¡à¸·à¸­à¸–à¸·à¸­à¸‚à¸­à¸‡à¸„à¸¸à¸“à¹ƒà¸«à¹‰à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢ à¹€à¸žà¸£à¸²à¸°à¸•à¸­à¸™à¹€à¸­à¸²à¸„à¸·à¸™à¸ˆà¸°à¸•à¹‰à¸­à¸‡à¸à¸”à¸£à¸«à¸±à¸ªà¹à¸ªà¸”à¸‡à¸„à¸§à¸²à¸¡à¹€à¸›à¹‡à¸™à¹€à¸ˆà¹‰à¸²à¸‚à¸­à¸‡à¸”à¹‰à¸§à¸¢ à¹€à¸£à¸²à¸ˆà¸°à¸”à¸¹à¹à¸¥à¸¡à¸·à¸­à¸–à¸·à¸­à¸‚à¸­à¸‡à¸„à¸¸à¸“à¸­à¸¢à¹ˆà¸²à¸‡à¸›à¸¥à¸­à¸”à¸ à¸±à¸¢', '', '', 0, '13.7273651', '100.53040409999994'),
(179, 'Thaibreak Festival 2018', 30, 250, 'community', 'free', 0, ' Ko Mak, Ko Kut District, Trat, Thailand ', '2018-06-25', '10:00:00', '20:00:00', 'Thaibreak celebrates its 20th anniversary this year', '../Poster/5aa7ff58265ce.png', '', 'Thaibreak celebrates its 20th anniversary this year on the beautiful island of Koh Mak. To mark this very special occasion, we will host an exclusive festival for 500 friends from around the world, who share our vision of love, respect, and fun times together. Expect 3 days and 4 nights filled with exceptional electronic music, beach and boat parties, breathtaking sunsets, intimate afterhours, delicious food, relaxing massages, swim and sun.', '', '', 0, '11.822702', '102.47818729999995'),
(180, 'Escape 56 Feat. Marvin & Guy (Life & Death / IT)', 30, 135, 'business', 'free', 0, ' Nineteens Up Bar, Silom 19 Alley, Silom, Bang Rak, Bangkok, Thailand ', '2018-05-13', '20:00:00', '23:00:00', 'Escape 56 return with Marvin & Guy (Life & Death) (Italy)', '../Poster/5aa7ffb83368f.jpg', '', 'Marvin & Guy, the duo that has been connecting the dots between flourishing synthesizer notes, thundering kick drums and uplifting arpeggios to crisp precision, since its establishment back in 2011. With their music being picked up by high-ranking taste makers around the globe, and releases on Hivern Discs, Life and Death, Permanent Vacation and Correspondant, to name a few, their back-catalogue blows a surprisingly welcomed breath of fresh air true the underground electronic music scale, and we love every bit of it', '', '', 0, '13.7230287', '100.52100010000004'),
(181, 'à¹€à¸¥à¸´à¸à¸à¸±à¸™à¹€à¸«à¸­à¸° #1', 30, 50, 'education', 'free', 0, ' THINK CAFE, Bang Ramat, Taling Chan, Bangkok, Thailand ', '2018-03-14', '13:00:00', '17:00:00', 'à¸­à¸¢à¸²à¸à¸—à¸³ Viral VDO... Data à¹€à¸›à¹‡à¸™à¹€à¸£à¸·à¹ˆà¸­à¸‡à¸™à¹ˆà¸²à¸›à¸§à¸”à¸«à¸±à¸§... à¸ˆà¸°à¸¢à¸´à¸‡à¹à¸­à¸” Facebook à¸¢à¸±à¸‡à¹„à¸‡à¹ƒà¸«à¹‰à¸¡à¸µà¸„à¸™à¹„à¸¥à¸„à¹Œà¹€à¸¢à¸­à¸°à¹† à¸ªà¸·à¹ˆà¸­à¹€à¸à¹ˆà¸²à¸¢à¸±à¸‡à¹„à¸‡à¸à¹‡à¹„à¸¡à¹ˆà¸¡à¸µà¸—à¸²à¸‡à¸£à¸­à¸”...', '../Poster/5aa8000f68e86.jpg', '', 'à¸‡à¸²à¸™à¹€à¸ªà¸§à¸™à¸²à¸™à¸µà¹‰à¹€à¸«à¸¡à¸²à¸°à¸à¸±à¸š..\r\n- à¸™à¸±à¸à¸à¸²à¸£à¸•à¸¥à¸²à¸”à¸«à¸£à¸·à¸­à¸„à¸™à¸—à¸³ agency à¸—à¸¸à¸à¸£à¸¸à¹ˆà¸™à¸—à¸¸à¸à¸§à¸±à¸¢\r\n- à¸„à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¹€à¸£à¸´à¹ˆà¸¡à¸˜à¸¸à¸£à¸à¸´à¸ˆà¸‚à¸­à¸‡à¸•à¸±à¸§à¹€à¸­à¸‡ à¹à¸•à¹ˆà¹„à¸¡à¹ˆà¸£à¸¹à¹‰à¸ˆà¸°à¹€à¸£à¸´à¹ˆà¸¡à¸•à¸£à¸‡à¹„à¸«à¸™ à¸«à¸£à¸·à¸­à¹€à¸£à¸´à¹ˆà¸¡à¸¡à¸²à¸ªà¸±à¸à¸žà¸±à¸à¹à¸¥à¹‰à¸§à¹à¸•à¹ˆà¸¢à¸±à¸‡à¸ˆà¸±à¸šà¸ˆà¸¸à¸”à¹„à¸¡à¹ˆà¸–à¸¹à¸\r\n- à¸„à¸™à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¹à¸™à¹ˆà¹ƒà¸ˆà¸§à¹ˆà¸²à¸™à¸´à¹ˆà¸‡à¸—à¸µà¹ˆà¸•à¸±à¸§à¹€à¸­à¸‡à¸—à¸³à¸­à¸¢à¸¹à¹ˆà¸—à¸¸à¸à¸§à¸±à¸™à¸™à¸µà¹‰à¸„à¸§à¸£à¸šà¸­à¸à¹€à¸¥à¸´à¸à¸¡à¸±à¹‰à¸¢\r\n- à¸„à¸™à¸—à¸µà¹ˆà¸–à¸¹à¸à¸šà¸­à¸à¹€à¸¥à¸´à¸à¸¡à¸²à¸•à¸¥à¸­à¸” à¸­à¸¢à¸²à¸à¸¥à¸­à¸‡à¹€à¸›à¹‡à¸™à¸à¹ˆà¸²à¸¢à¸šà¸­à¸à¹€à¸¥à¸´à¸à¸šà¹‰à¸²à¸‡\r\nà¸ˆà¸°à¹€à¸•à¸£à¸µà¸¢à¸¡à¸•à¸±à¸§à¸¡à¸²à¸šà¸­à¸ \"à¹€à¸¥à¸´à¸\"...à¸•à¹‰à¸­à¸‡à¸—à¸³à¸•à¸±à¸§à¸¢à¸±à¸‡à¹„à¸‡\r\n- à¸‡à¸²à¸™à¸ˆà¸°à¸¡à¸µà¸‚à¸¶à¹‰à¸™à¹ƒà¸™à¸§à¸±à¸™à¸­à¸²à¸—à¸´à¸•à¸¢à¹Œà¸—à¸µà¹ˆ 18 à¸¡à¸µà¸™à¸²à¸„à¸¡ 2561 à¹€à¸§à¸¥à¸² 9:00 - 12:00 à¸™.\r\n- à¸„à¸™à¸—à¸µà¹ˆà¸¡à¸²à¸£à¹ˆà¸§à¸¡à¸‡à¸²à¸™à¸ˆà¸°à¹„à¸”à¹‰à¸„à¸¹à¸›à¸­à¸‡à¸ªà¸³à¸«à¸£à¸±à¸šà¹à¸¥à¸à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸”à¸·à¹ˆà¸¡ à¹à¸¥à¸°à¸„à¸¹à¸›à¸­à¸‡à¸ªà¹ˆà¸§à¸™à¸¥à¸”à¸„à¹ˆà¸²à¸­à¸²à¸«à¸²à¸£à¹ƒà¸™à¹‚à¸„à¸£à¸‡à¸à¸²à¸£ The Bloc 10%\r\n- à¸ªà¸–à¸²à¸™à¸—à¸µà¹ˆà¸„à¸·à¸­ Think Cafe à¸£à¸²à¸Šà¸žà¸¤à¸à¸©à¹Œ à¹ƒà¸à¸¥à¹‰à¸ªà¸–à¸²à¸™à¸µà¸£à¸–à¹„à¸Ÿà¸Ÿà¹‰à¸² BTS à¸šà¸²à¸‡à¸«à¸§à¹‰à¸²à¹à¸¥à¸° The Circle\r\n\r\nà¸™à¸±à¹ˆà¸‡à¸£à¸–à¸¡à¸²à¸šà¸­à¸à¹€à¸¥à¸´à¸à¸•à¹‰à¸­à¸‡à¸—à¸³à¸¢à¸±à¸‡à¹„à¸‡?\r\nà¸à¸²à¸£à¹€à¸”à¸´à¸™à¸—à¸²à¸‡à¸¡à¸²à¸—à¸µà¹ˆ The BLOC (à¸­à¸¢à¸¹à¹ˆà¹€à¸¢à¸·à¹‰à¸­à¸‡à¸à¸±à¸š Food Villa) à¸ªà¸²à¸¡à¸²à¸£à¸–à¸™à¸±à¹ˆà¸‡à¸£à¸–à¹„à¸Ÿà¸Ÿà¹‰à¸²à¸¡à¸²à¸¥à¸‡à¸—à¸µà¹ˆà¸ªà¸–à¸²à¸™à¸µà¸šà¸²à¸‡à¸«à¸§à¹‰à¸² à¹à¸¥à¹‰à¸§à¹€à¸£à¸µà¸¢à¸à¹à¸—à¹‡à¸à¸‹à¸µà¹ˆ à¸šà¸­à¸à¸§à¹ˆà¸²à¹„à¸› The Bloc cafe à¸ªà¸–à¸²à¸™à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸–à¸±à¸”à¸ˆà¸²à¸à¸£à¹‰à¸²à¸™à¸­à¸²à¸«à¸²à¸£à¸à¸¸à¹‰à¸‡à¹€à¸•à¹‰à¸™', '', '', 0, '13.768314', '100.44457499999999'),
(182, 'Design Your Life (à¸Šà¸µà¸§à¸´à¸•à¸­à¸­à¸à¹à¸šà¸šà¹„à¸”à¹‰)', 30, 100, 'education', 'free', 0, ' Bang Na Residence, Sanphawut Road, Bang Na, Bangkok, Thailand ', '2018-03-24', '13:00:00', '18:00:00', 'â€œ à¸ªà¸±à¸¡à¸¡à¸™à¸² Design Your Life + Workshop â€œ  à¹€à¸™à¸·à¹‰à¸­à¸«à¸² Premium à¸ªà¸¸à¸”à¹† à¸à¸±à¸šà¸ à¸²à¸£à¸à¸´à¸ˆà¸­à¸­à¸à¹à¸šà¸šà¸Šà¸µà¸§à¸´à¸• 5 à¸¡à¸´à¸•à¸´ à¸ à¸²à¸¢à¹ƒà¸™ 2 à¸§à¸±à¸™  à¸ˆà¸°à¹€à¸à¸´à¸”à¸­à¸°à¹„à¸£à¸‚à¸¶à¹‰à¸™à¸–à¹‰à¸²à¸žà¸£à¸¸à¹ˆà¸‡à¸™à¸µà¹‰à¸„à¸¸à¸“à¸¥à¸·à¸¡à¸•à¸²à¸•à¸·à¹ˆà¸™à¸¡à¸²à¹à¸¥à¹‰à¸§à¸žà¸šà¸§à¹ˆà¸²  â€œ à¸„à¸¸à¸“à¸à¸³à¸¥à¸±à¸‡à¹ƒà¸Šà¹‰à¸Šà¸µà¸§à¸´à¸•à¸­à¸¢à¸¹à¹ˆ à¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆà¸–à¸¹à¸à¸Šà¸µà¸§à¸´à¸•à¹ƒà¸Šà¹‰ â€', '../Poster/5aa800b945bce.jpg', '', 'à¸«à¸¥à¸²à¸¢à¸„à¸™à¸‚à¸¢à¸±à¸™à¸¡à¸²à¸à¹† à¸—à¸¸à¹ˆà¸¡à¹€à¸—à¹€à¸§à¸¥à¸²à¸„à¸£à¸¶à¹ˆà¸‡à¸Šà¸µà¸§à¸´à¸• à¸—à¸´à¹‰à¸‡à¸„à¸§à¸²à¸¡à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œ à¸¢à¸­à¸¡à¸—à¸³à¸¥à¸²à¸¢à¸ªà¸¸à¸‚à¸ à¸²à¸ž\r\n\r\n\r\nà¹€à¸žà¸µà¸¢à¸‡à¹€à¸žà¸·à¹ˆà¸­à¹à¸¥à¸à¸à¸±à¸šà¸ªà¸´à¹ˆà¸‡à¹€à¸”à¸µà¸¢à¸§ à¸™à¸±à¹ˆà¸™à¸„à¸·à¸­ â€œ à¹€à¸‡à¸´à¸™ â€œ à¹‚à¸”à¸¢à¸«à¸§à¸±à¸‡à¸§à¹ˆà¸²à¸¡à¸±à¸™à¸ˆà¸°à¸Šà¹ˆà¸§à¸¢à¹€à¸•à¸´à¸¡à¹€à¸•à¹‡à¸¡à¸„à¸§à¸²à¸¡à¸ªà¸¸à¸‚à¹ƒà¸«à¹‰à¹€à¸£à¸²à¹„à¸”à¹‰\r\n\r\n \r\n\r\nà¸œà¸¡à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸šà¸­à¸à¸§à¹ˆà¸² â€œ à¹€à¸‡à¸´à¸™à¹„à¸¡à¹ˆà¸”à¸µ â€\r\n\r\nà¹à¸•à¹ˆà¸ªà¸´à¹ˆà¸‡à¸—à¸µà¹ˆà¸œà¸¡à¸ˆà¸°à¸šà¸­à¸à¸„à¸·à¸­ à¹€à¸‡à¸´à¸™à¹€à¸›à¹‡à¸™à¹€à¸žà¸µà¸¢à¸‡ 1 à¸¡à¸´à¸•à¸´à¸‚à¸­à¸‡à¸„à¸§à¸²à¸¡à¸ªà¸¸à¸‚à¹€à¸—à¹ˆà¸²à¸™à¸±à¹‰à¸™\r\n\r\nà¸„à¸§à¸²à¸¡à¸ªà¸¸à¸‚à¸—à¸µà¹ˆà¸ªà¸¡à¸šà¸¹à¸£à¸“à¹Œà¹à¸šà¸šà¸‚à¸­à¸‡à¸Šà¸µà¸§à¸´à¸•à¸•à¹‰à¸­à¸‡à¸¡à¸µà¸„à¸£à¸šà¸—à¸±à¹‰à¸‡ 5 à¸¡à¸´à¸•à¸´\r\n\r\n\r\n\r\n1.     à¹€à¸‡à¸´à¸™\r\n\r\n          2.     à¸„à¸§à¸²à¸¡à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œ\r\n\r\n    3.     à¸ªà¸¸à¸‚à¸ à¸²à¸ž\r\n\r\n            4.     à¸„à¸§à¸²à¸¡à¸£à¸¹à¹‰à¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡\r\n\r\n                           5.     à¸­à¸´à¸ªà¸£à¸ à¸²à¸žà¹ƒà¸™à¸à¸²à¸£à¸­à¸­à¸à¹à¸šà¸šà¸Šà¸µà¸§à¸´à¸•\r\n\r\n \r\n\r\nà¸„à¸¸à¸“à¸¥à¸­à¸‡à¸™à¸¶à¸à¸ à¸²à¸žà¸”à¸¹à¸ªà¸´ à¸¡à¸±à¸™à¸ˆà¸°à¸ªà¸¸à¸”à¸¢à¸­à¸”à¹à¸„à¹ˆà¹„à¸«à¸™à¸–à¹‰à¸²à¸„à¸¸à¸“à¸¡à¸µà¸„à¸£à¸šà¸—à¸±à¹‰à¸‡ 5 à¸¡à¸´à¸•à¸´\r\n\r\nà¹à¸¥à¸°à¸œà¸¡à¸­à¸¢à¸²à¸à¸šà¸­à¸à¸„à¸¸à¸“à¸§à¹ˆà¸²\r\n\r\nâ€œ à¸„à¸™à¸›à¹ˆà¸§à¸¢à¹ƒà¸à¸¥à¹‰à¸•à¸²à¸¢à¸ªà¹ˆà¸§à¸™à¹ƒà¸«à¸à¹ˆ à¹„à¸¡à¹ˆà¹€à¸„à¸¢à¹€à¸ªà¸µà¸¢à¸”à¸²à¸¢à¸ªà¸´à¹ˆà¸‡à¸—à¸µà¹ˆà¹€à¸„à¹‰à¸²à¸—à¸³à¸œà¸´à¸”à¸žà¸¥à¸²à¸”\r\n\r\nà¹à¸•à¹ˆà¹€à¸„à¹‰à¸²à¹€à¸ªà¸µà¸¢à¸”à¸²à¸¢à¹ƒà¸™à¸ªà¸´à¹ˆà¸‡à¸—à¸µà¹ˆà¹€à¸„à¹‰à¸²à¸¢à¸±à¸‡à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸—à¸³ â€\r\n\r\n \r\n\r\nà¸Šà¸µà¸§à¸´à¸•à¸‚à¸­à¸‡à¸„à¸¸à¸“à¸¡à¸µà¸„à¹ˆà¸²à¹€à¸—à¹ˆà¸²à¹„à¸«à¸£à¹ˆ ? à¸„à¸¸à¸“à¹€à¸¥à¸·à¸­à¸à¹€à¸­à¸‡à¹„à¸”à¹‰à¸„à¸£à¸±à¸š\r\n\r\nà¸§à¹ˆà¸²à¸¡à¸±à¸™à¸„à¸¸à¹‰à¸¡à¸„à¹ˆà¸²à¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆà¸à¸±à¸šà¸à¸²à¸£à¹€à¸£à¸µà¸¢à¸™à¸£à¸¹à¹‰à¹ƒà¸™à¸ªà¸±à¸¡à¸¡à¸™à¸²à¸™à¸µà¹‰\r\n\r\n \r\n\r\nà¸„à¸§à¸²à¸¡à¸ªà¸¸à¸‚à¹à¸¥à¸°à¸„à¸§à¸²à¸¡à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¸—à¸µà¹ˆ à¸­.à¸Šà¸²à¸à¸¡à¸µà¹ƒà¸™à¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™ à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™à¸¡à¸²à¸ˆà¸²à¸\r\n\r\nâ€œ à¸à¸²à¸£à¸­à¸­à¸à¹à¸šà¸šà¸Šà¸µà¸§à¸´à¸•à¸•à¸±à¸§à¹€à¸­à¸‡ â€\r\n\r\n \r\n\r\nà¸„à¸­à¸£à¹Œà¸ªà¸™à¸µà¹‰à¸–à¸¹à¸à¸­à¸­à¸à¹à¸šà¸šà¹à¸¥à¸°à¸à¸¥à¸±à¹ˆà¸™à¸¡à¸²à¸ˆà¸²à¸à¸›à¸£à¸°à¸ªà¸šà¸à¸²à¸£à¸“à¹Œà¸•à¸£à¸‡\r\n\r\nà¹‚à¸”à¸¢à¸ˆà¸¸à¸”à¹€à¸”à¹ˆà¸™à¸„à¸·à¸­ à¹€à¸£à¸²à¸ˆà¸°à¹ƒà¸Šà¹‰à¸ªà¸¡à¸²à¸˜à¸´à¸™à¸³ !! à¹ƒà¸™à¸à¸²à¸£à¸­à¸­à¸à¹à¸šà¸šà¸Šà¸µà¸§à¸´à¸•\r\n\r\n(à¸ªà¸¡à¸²à¸˜à¸´à¹€à¸›à¹‡à¸™à¸¨à¸²à¸ªà¸•à¸£à¹Œà¸ªà¸²à¸à¸¥ à¹„à¸¡à¹ˆà¸‚à¸¶à¹‰à¸™à¸à¸±à¸šà¸¨à¸²à¸ªà¸™à¸²à¹ƒà¸”à¹€à¸›à¹‡à¸™à¸«à¸¥à¸±à¸)\r\n\r\n\r\n\r\n\r\n\r\nà¸œà¸¡à¸žà¸´à¸ªà¸¹à¸ˆà¸™à¹Œà¹à¸¥à¹‰à¸§ à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸«à¹‡à¸™à¹à¸¥à¹‰à¸§ à¹à¸¥à¸°à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡à¸Šà¸µà¸§à¸´à¸•à¸„à¸™à¸¡à¸²à¹à¸¥à¹‰à¸§à¸™à¸±à¸šà¹à¸ªà¸™à¸„à¸™\r\n\r\nà¹à¸¥à¹‰à¸§à¸—à¸³à¹„à¸¡à¸Šà¸µà¸§à¸´à¸•à¸„à¸¸à¸“à¸­à¸µà¸ 1 à¸„à¸™ à¸œà¸¡à¸ˆà¸°à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹„à¸¡à¹ˆà¹„à¸”à¹‰\r\n\r\n \r\n\r\n \r\n\r\nà¹€à¸à¸´à¸”à¸¡à¸²à¸„à¸£à¸±à¹‰à¸‡à¹€à¸”à¸µà¸¢à¸§ à¸–à¹‰à¸²à¹„à¸¡à¹ˆà¹ƒà¸Šà¹‰à¸Šà¸µà¸§à¸´à¸•à¹ƒà¸«à¹‰à¹€à¸•à¹‡à¸¡à¸—à¸µà¹ˆ à¸„à¸¸à¸“à¸ˆà¸°à¹€à¸à¸´à¸”à¸¡à¸²à¸—à¸³à¹„à¸¡ !!\r\n\r\n \r\n\r\nà¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸„à¸­à¸£à¹Œà¸ª\r\n\r\n \r\n\r\n=================\r\n\r\n \r\n\r\nà¸ªà¸±à¸¡à¸¡à¸™à¸² Design Your Life (à¸Šà¸µà¸§à¸´à¸•à¸­à¸­à¸à¹à¸šà¸šà¹„à¸”à¹‰)\r\n\r\n2 à¸§à¸±à¸™à¹€à¸•à¹‡à¸¡à¸­à¸´à¹ˆà¸¡ 19 â€“ 20 à¸¡à¸µà¸™à¸²à¸„à¸¡ 2561\r\n\r\n', '', '', 0, '13.6748627', '100.59909730000004'),
(183, 'AUTOMACH 2018 à¸‡à¸²à¸™à¸ªà¸±à¸¡à¸¡à¸™à¸²à¹à¸¥à¸°à¸ˆà¸±à¸”à¹à¸ªà¸”à¸‡à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸£à¸°à¸šà¸šà¸­à¸±à¸•à¹‚à¸™à¸¡à¸±à¸•à¸´à¹ƒà¸«à¸à¹ˆà¸—à¸µà¹ˆà¸ªà¸¸à¸”à¹ƒà¸™à¸ à¸²à¸„à¸•à¸°à¸§à¸±à¸™à¸­à¸­à¸', 30, 65, 'science', 'free', 0, ' Pattaya Exhibition And Convention Hall (PEACH) Pattaya City, Bang Lamung District, Chon Buri, Thailand ', '2018-03-23', '14:00:00', '16:30:00', 'à¹€à¸¡à¸·à¹ˆà¸­à¸¢à¸¸à¸„à¸‚à¸­à¸‡à¸£à¸°à¸šà¸šà¸­à¸±à¸•à¹‚à¸™à¸¡à¸±à¸•à¸´à¸¡à¸²à¹€à¸£à¹‡à¸§à¸à¸§à¹ˆà¸²à¸—à¸µà¹ˆà¸„à¸´à¸” à¸žà¸£à¹‰à¸­à¸¡à¸à¸±à¸šà¹‚à¸„à¸£à¸‡à¸à¸²à¸£ EEC à¸—à¸µà¹ˆà¸ªà¸¸à¸”à¸ˆà¸°à¸£à¹‰à¸­à¸™à¹à¸£à¸‡ à¸‡à¸²à¸™à¸™à¸µà¹‰à¸ˆà¸¶à¸‡à¸žà¸¥à¸²à¸”à¹„à¸¡à¹ˆà¹„à¸”à¹‰...à¹€à¸žà¸·à¹ˆà¸­à¸Šà¸²à¸§à¸­à¸¸à¸•à¸ªà¸²à¸«à¸à¸£à¸£à¸¡à¸ à¸²à¸„à¸•à¸°à¸§à¸±à¸™à¸­à¸­à¸à¹‚à¸”à¸¢à¹€à¸‰à¸žà¸²à¸°', '../Poster/5aa80116dd1bc.png', '', 'à¸žà¸šà¸à¸±à¸šà¸‹à¸±à¸žà¸žà¸¥à¸²à¸¢à¸”à¹‰à¸²à¸™à¸£à¸°à¸šà¸šà¸­à¸±à¸•à¹‚à¸™à¸¡à¸±à¸•à¸´à¸ªà¸³à¸«à¸£à¸±à¸š Smart Factory à¸—à¸±à¹‰à¸‡à¹‚à¸£à¸šà¸­à¸• à¹à¸‚à¸™à¸à¸¥\r\nà¸£à¸°à¸šà¸šà¸¥à¸³à¹€à¸¥à¸µà¸¢à¸‡à¸­à¸±à¸ˆà¸‰à¸£à¸´à¸¢à¸° à¹€à¸‹à¹‡à¸™à¹€à¸‹à¸­à¸£à¹Œ à¹‚à¸¥à¸ˆà¸´à¸ªà¸•à¸´à¸à¸ªà¹Œ IT for manufacturing à¸¯à¸¥à¸¯\r\nà¸£à¸§à¸¡à¸–à¸¶à¸‡à¹‚à¸‹à¸™ Smart Supplies à¸—à¸µà¹ˆà¸ˆà¸±à¸”à¹€à¸•à¸£à¸µà¸¢à¸¡à¹‚à¸›à¸£à¹‚à¸¡à¸Šà¸±à¹ˆà¸™à¸ªà¸³à¸«à¸£à¸±à¸šà¸œà¸¹à¹‰à¸šà¸£à¸´à¸«à¸²à¸£à¹à¸¥à¸°à¸à¹ˆà¸²à¸¢à¸ˆà¸±à¸”à¸‹à¸·à¹‰à¸­à¹‚à¸£à¸‡à¸‡à¸²à¸™à¸­à¸¸à¸•à¸ªà¸²à¸«à¸à¸£à¸£à¸¡\r\n\r\n\r\nà¸ªà¸±à¸¡à¸¡à¸™à¸²à¸„à¸§à¸²à¸¡à¸£à¸¹à¹‰à¸à¸§à¹ˆà¸² 30 à¸«à¸±à¸§à¸‚à¹‰à¸­ à¸—à¸±à¹‰à¸‡à¸”à¹‰à¸²à¸™à¸£à¸°à¸šà¸šà¸­à¸±à¸•à¹‚à¸™à¸¡à¸±à¸•à¸´, à¸à¸²à¸£à¹€à¸žà¸´à¹ˆà¸¡à¸œà¸¥à¸œà¸¥à¸´à¸•, Preventive Maintenance,\r\nà¸¡à¸²à¸•à¸£à¸à¸²à¸£à¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™à¸à¸²à¸£à¸¥à¸‡à¸—à¸¸à¸™à¹ƒà¸™ EEC à¹à¸¥à¸°à¸£à¸°à¸šà¸šà¸­à¸±à¸•à¹‚à¸™à¸¡à¸±à¸•à¸´, à¸„à¸§à¸²à¸¡à¸à¹‰à¸²à¸§à¸«à¸™à¹‰à¸²à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸«à¸¸à¹ˆà¸™à¸¢à¸™à¸•à¹Œ à¸¯à¸¥à¸¯\r\nà¸”à¸¹à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸•à¸´à¸¡à¹„à¸”à¹‰à¸—à¸µà¹ˆ Conference Program', '', '', 0, '12.924285', '100.86207999999999');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox_support`
--

CREATE TABLE `mailbox_support` (
  `mail_id` int(11) NOT NULL,
  `user_mail` varchar(30) NOT NULL,
  `mail_title` text NOT NULL,
  `mail_detail` text NOT NULL,
  `mail_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailbox_user`
--

CREATE TABLE `mailbox_user` (
  `mail_id` int(11) NOT NULL,
  `mail_title` text NOT NULL,
  `mail_detail` text NOT NULL,
  `mail_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_status`) VALUES
(28, 'jutinapas@gmail.com', '$2y$10$SmtS8dDcgPywcbwpA6RX9eLFTpv1ukmu3JNjp8dWz1u8W3oJ8YeN6', 'a'),
(29, 'user@hotmail.com', '$2y$10$Lve2QnimIDTfpTmkZgP/geYP.a08oaJUI0orJVJ4VK12reGmNFCja', 'u'),
(30, 'power-control@hotmail.com', '$2y$10$ZVCmcC5Ar3zI.aPxenbo4.lEq/LAdauHaMBhKAj/kyxcYq249wYLy', 'o'),
(33, 'user3@ku.th', '$2y$10$fSyRL2r.fRwQVgcZJwTb.ewlA0nwYRnQpTcQuz8zb7dBN2c9Dt82u', 'u'),
(34, 'user4@ku.th', '$2y$10$Q1.RvwOe.QtZtauetMBhMu2.g6Bwt2qSAi5mAxCw0x4LPn4KoweC.', 'u'),
(35, 'user1@ku.th', '$2y$10$GiFnuDLQnDIKhjea0nMSu.kl44idP4ZU4nLzUrPBI0wjq/vC.aJEG', 'u'),
(36, 'user2@ku.th', '$2y$10$DOQFgijC65HM19LlSIO/R.932rOUJQPuVuUXMEKN6uV.2ORDeYPdW', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `userevent`
--

CREATE TABLE `userevent` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_status` varchar(1) NOT NULL DEFAULT 'W',
  `user_payment` varchar(1) NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userevent`
--

INSERT INTO `userevent` (`user_id`, `event_id`, `user_status`, `user_payment`) VALUES
(35, 177, 'W', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `user_image` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cardnumber` varchar(16) DEFAULT NULL,
  `holdername` varchar(40) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`user_id`, `user_firstname`, `user_lastname`, `phonenumber`, `birthday`, `gender`, `user_image`, `address`, `cardnumber`, `holdername`, `month`, `year`, `cvv`) VALUES
(28, 'Jutinapas', 'Klangcharoenkul', '', '2001-08-25', 1, '', '', NULL, NULL, NULL, NULL, NULL),
(29, 'Hello', 'World', '085331109', '2018-03-25', 1, '', '', NULL, NULL, NULL, NULL, NULL),
(30, 'Com', 'Company', '', '2018-06-14', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(33, 'user3', 'user3', '', '2001-11-07', 1, '', '', NULL, NULL, NULL, NULL, NULL),
(34, 'user4', 'user4', '', '1996-03-16', 1, '', '', NULL, NULL, NULL, NULL, NULL),
(35, 'Jutinapas', 'Klangcharoenkul', '', '1998-09-19', 1, '', '', NULL, NULL, NULL, NULL, NULL),
(36, 'User2', 'User2', '', '1995-10-17', 1, '', '', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_comment`
--
ALTER TABLE `event_comment`
  ADD PRIMARY KEY (`comment_order`);

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `condition` (`event_id`);

--
-- Indexes for table `mailbox_support`
--
ALTER TABLE `mailbox_support`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `mailbox_user`
--
ALTER TABLE `mailbox_user`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userevent`
--
ALTER TABLE `userevent`
  ADD PRIMARY KEY (`user_id`,`event_id`) USING BTREE;

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_comment`
--
ALTER TABLE `event_comment`
  MODIFY `comment_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `mailbox_support`
--
ALTER TABLE `mailbox_support`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mailbox_user`
--
ALTER TABLE `mailbox_user`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
