-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 06:31 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `state`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(1, 'Sindhudurg'),
(2, 'Ratnagiri'),
(3, 'Raigad'),
(4, 'Mumbai Suburban '),
(5, 'Thane'),
(6, 'Nashik '),
(7, 'Nandurbar'),
(8, 'Dhule'),
(9, 'Buldhana'),
(10, 'Akola'),
(11, 'Washim'),
(12, 'Amravati'),
(13, 'Wardha'),
(14, 'Nagpur'),
(15, 'Bhandara'),
(16, 'Gondia'),
(17, 'Chandrapur'),
(18, 'Yavatmal'),
(19, 'Nanded'),
(20, 'Hingoli'),
(21, 'Parbhani'),
(22, 'Jalna'),
(23, 'Aurangabad'),
(24, 'Beed'),
(25, 'Latur'),
(26, 'Osmanabad'),
(27, 'Solapur'),
(28, 'Ahmednagar'),
(29, 'Pune'),
(30, 'Satara'),
(31, 'Sangli'),
(32, 'Kolhapur');

-- --------------------------------------------------------

--
-- Table structure for table `taluka`
--

CREATE TABLE `taluka` (
  `id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `taluka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taluka`
--

INSERT INTO `taluka` (`id`, `dist_id`, `taluka`) VALUES
(1, 1, 'Kankavli'),
(2, 1, 'Vaibhavwadi'),
(3, 1, 'Malwan'),
(4, 1, 'Sawantwadi'),
(5, 1, 'Vengurla'),
(6, 1, 'Kudal'),
(7, 1, 'Dodamarg'),
(8, 1, 'devgad'),
(9, 2, 'Ratnagiri'),
(10, 2, 'Sangameshwar'),
(11, 2, 'Lanja'),
(12, 2, 'Rajapur'),
(13, 2, 'Chiplun'),
(14, 2, 'Guhagar'),
(15, 2, 'Dapoli'),
(16, 2, 'Mandangad'),
(17, 2, 'Khed'),
(18, 3, 'Pen'),
(19, 3, 'Alibag'),
(20, 3, 'Murud'),
(21, 3, 'Panvel'),
(22, 3, 'Uran'),
(23, 3, 'Karjat'),
(24, 3, 'Khalapur'),
(25, 3, 'Mangaon'),
(26, 3, 'Tala'),
(27, 3, 'Roha'),
(28, 3, 'Sudhagad'),
(29, 3, 'Mahad'),
(30, 3, 'Poladpur'),
(31, 3, 'Shrivardhan'),
(32, 3, 'Mhasla'),
(33, 4, 'Kurla'),
(34, 4, 'Andheri'),
(35, 4, 'Borivali'),
(36, 5, 'Thane'),
(37, 5, 'Kalyan'),
(38, 5, 'Murbad'),
(39, 5, 'Dahanu'),
(40, 5, 'Palghar'),
(41, 5, 'Talasari'),
(42, 5, 'Jawhar'),
(43, 5, 'Mokhada'),
(44, 5, 'Vada'),
(45, 5, 'Vikramgad'),
(46, 5, 'Vasai'),
(47, 5, 'Bhiwandi'),
(48, 5, 'Shahapur'),
(49, 5, 'Ulhasnagar'),
(50, 5, 'Ambarnath'),
(51, 6, 'Nashik'),
(52, 6, 'Igatpuri'),
(53, 6, 'Dindori'),
(54, 6, 'Peint'),
(55, 6, 'Trimbakeshwar'),
(56, 6, 'Kalwan'),
(57, 6, 'Deola'),
(58, 6, 'Surgana'),
(59, 6, 'Baglan/ ( Satana )'),
(60, 6, 'Malegaon'),
(61, 6, 'Municipal '),
(62, 6, 'Corporation'),
(63, 6, 'Nandgaon'),
(64, 6, 'Chandwad'),
(65, 6, 'Niphad'),
(66, 6, 'Sinnar'),
(67, 6, 'Yeola'),
(68, 7, 'Nandurbar'),
(69, 7, 'Navapur'),
(70, 7, 'Shahada'),
(71, 7, 'Talode'),
(72, 7, 'Akkalkuwa'),
(73, 7, 'Akrani'),
(74, 8, 'Dhule'),
(75, 8, 'Sakri'),
(76, 8, 'Sindkheda'),
(77, 8, 'Shirpur'),
(78, 8, 'Jalgaon'),
(79, 8, 'Jamner'),
(80, 8, 'Erandol'),
(81, 8, 'Dharangaon'),
(82, 8, 'Bhusawal'),
(83, 8, 'Raver'),
(84, 8, 'Muktainagar '),
(85, 8, 'Bodwad '),
(86, 8, 'Yawal'),
(87, 8, 'Amalner'),
(88, 8, 'Parola'),
(89, 8, 'Chopda'),
(90, 8, 'Pachora  '),
(91, 8, 'Bhadgaon  '),
(92, 8, 'Chalisgaon  '),
(93, 8, 'Bhadgaon  '),
(94, 8, 'Chalisgaon  '),
(95, 9, 'Buldhana  '),
(96, 9, 'Chikhli  '),
(97, 9, 'Deulgaon Raja  '),
(98, 9, 'Jalgaon Jamod  '),
(99, 9, 'Sangrampur  '),
(100, 9, 'Malkapur  '),
(101, 9, 'Motala  '),
(102, 9, 'Nandura  '),
(103, 9, 'Khamgaon  '),
(104, 9, 'Shegaon  '),
(105, 9, 'Mehkar  '),
(106, 9, 'Sindkhed Raja  '),
(107, 9, 'Lonar  '),
(108, 10, 'Akola'),
(109, 10, 'Akot  '),
(110, 10, 'Telhara  '),
(111, 10, 'Balapur  '),
(112, 10, 'Patur  '),
(113, 10, 'Murtajapur  '),
(114, 10, 'Barshitakli  '),
(115, 11, 'Washim  '),
(116, 11, 'Malegaon  '),
(117, 11, 'Risod  '),
(118, 11, 'Mangrulpir  '),
(119, 11, 'Karanja  '),
(120, 11, 'Manora  '),
(121, 12, 'Amravati'),
(122, 12, 'Bhatukali  '),
(123, 12, 'Nandgaon '),
(124, 12, 'Khandeshwar'),
(125, 12, 'Dharni, Amravati  '),
(126, 12, 'Chikhaldara  '),
(127, 12, 'Achalpur  '),
(128, 12, 'Chandurbazar  '),
(129, 12, 'Morshi  '),
(130, 12, 'Warud  '),
(131, 12, 'Daryapur  '),
(132, 12, 'Anjangaon Surji  '),
(133, 12, 'Chandur  '),
(134, 12, 'Dhamangaon  '),
(135, 12, 'Tiosa  '),
(136, 13, 'Wardha  '),
(137, 13, 'Deoli  '),
(138, 13, 'Seloo  '),
(139, 13, 'Arvi  '),
(140, 13, 'Ashti  '),
(141, 13, 'Karanja  '),
(142, 13, 'Hinganghat  '),
(143, 13, 'Samudrapur  '),
(144, 14, 'Nagpur Urban'),
(145, 14, 'Nagpur Rural'),
(146, 14, 'Kamptee  '),
(147, 14, 'Hingna  '),
(148, 14, 'Katol  '),
(149, 14, 'Narkhed  '),
(150, 14, 'Savner  '),
(151, 14, 'Kalameshwar  '),
(152, 14, 'Ramtek  '),
(153, 14, 'Mouda  '),
(154, 14, 'Parseoni  '),
(155, 14, 'Umred  '),
(156, 14, 'Kuhi  '),
(157, 14, 'Bhiwapur  '),
(158, 15, 'Bhandara  '),
(159, 15, 'Tumsar  '),
(160, 15, 'Pauni  '),
(161, 15, 'Mohadi  '),
(162, 15, 'Sakoli  '),
(163, 15, 'Lakhni  '),
(164, 15, 'Lakhandur  '),
(165, 16, 'Gondia  '),
(166, 16, 'Tirora  '),
(167, 16, 'Goregaon  '),
(168, 16, 'Arjuni Morgaon  '),
(169, 16, 'Amgaon  '),
(170, 16, 'Salekasa  '),
(171, 16, 'Sadak Arjuni  '),
(172, 16, 'Deori  '),
(173, 16, 'Gadchiroli  '),
(174, 16, 'Dhanora'),
(175, 16, 'Chamorshi'),
(176, 16, 'Mulchera'),
(177, 16, 'Desaiganj (Vadasa)  '),
(178, 16, 'Armori'),
(179, 16, 'Kurkheda'),
(180, 16, 'Korchi'),
(181, 16, 'Aheri'),
(182, 16, 'Etapalli'),
(183, 16, 'Bhamragad'),
(184, 16, 'Sironcha'),
(185, 17, 'Chandrapur'),
(186, 17, 'Saoli  '),
(187, 17, 'Mul  '),
(188, 17, 'Ballarpur  '),
(189, 17, 'Pombhurna  '),
(190, 17, 'Gondpimpri  '),
(191, 17, 'Warora  '),
(192, 17, 'Chimur  '),
(193, 17, 'Bhadravati  '),
(194, 17, 'Brahmapuri  '),
(195, 17, 'Nagbhid  '),
(196, 17, 'Sindewahi  '),
(197, 17, 'Rajura  '),
(198, 17, 'Korpana  '),
(199, 17, 'Jivati  '),
(200, 18, 'Yavatmal  '),
(201, 18, 'Arni  '),
(202, 18, 'Babhulgaon  '),
(203, 18, 'Kalamb  '),
(204, 18, 'Darwha  '),
(205, 18, 'Digras  '),
(206, 18, 'Ner  '),
(207, 18, 'Pusad  '),
(208, 18, 'Umarkhed  '),
(209, 18, 'Mahagaon  '),
(210, 18, 'Kelapur  '),
(211, 18, 'Ralegaon  '),
(212, 18, 'Ghatanji  '),
(213, 18, 'Maregaon  '),
(214, 18, 'Zari Jamani  '),
(215, 18, 'Wani  '),
(216, 19, 'Nanded'),
(217, 19, 'Ardhapur  '),
(218, 19, 'Mudkhed  '),
(219, 19, 'Bhokar  '),
(220, 19, 'Umri  '),
(221, 19, 'Loha  '),
(222, 19, 'Kandhar  '),
(223, 19, 'Kinwat  '),
(224, 19, 'Himayatnagar  '),
(225, 19, 'Hadgaon  '),
(226, 19, 'Mahur  '),
(227, 19, 'Deglur  '),
(228, 19, 'Mukhed  '),
(229, 19, 'Dharmabad  '),
(230, 19, 'Biloli  '),
(231, 19, 'Naigaon'),
(232, 20, 'Hingoli  '),
(233, 20, 'Sengaon  '),
(234, 20, 'Kalamnuri  '),
(235, 20, 'Basmath  '),
(236, 20, 'Aundha Nagnath  '),
(237, 21, 'Parbhani  '),
(238, 21, 'Sonpeth  '),
(239, 21, 'Gangakhed  '),
(240, 21, 'Paalam  '),
(241, 21, 'Purna  '),
(242, 21, 'Sailu  '),
(243, 21, 'Jintur  '),
(244, 21, 'Manwath  '),
(245, 21, 'Pathri  '),
(246, 22, 'Jalna  '),
(247, 22, 'Bhokardan  '),
(248, 22, 'Jafrabad  '),
(249, 22, 'Badnapur  '),
(250, 22, 'Ambad  '),
(251, 22, 'Ghansawangi  '),
(252, 22, 'Partur  '),
(253, 22, 'Mantha  '),
(254, 23, 'Aurangabad'),
(255, 23, 'Kannad  '),
(256, 23, 'Soegaon  '),
(257, 23, 'Sillod  '),
(258, 23, 'Phulambri  '),
(259, 23, 'Khuldabad  '),
(260, 23, 'Vaijapur  '),
(261, 23, 'Gangapur  '),
(262, 23, 'Paithan  '),
(263, 24, 'Beed  '),
(264, 24, 'Ashti  '),
(265, 24, 'Patoda  '),
(266, 24, 'Shirur Kasar  '),
(267, 24, 'Georai  '),
(268, 24, 'Manjalgaon  '),
(269, 24, 'Wadwani  '),
(270, 24, 'Kaij  '),
(271, 24, 'Dharur  '),
(272, 24, 'Parli  '),
(273, 24, 'Ambejogai  '),
(274, 25, 'Latur  '),
(275, 25, 'Renapur  '),
(276, 25, 'Ahmadpur  '),
(277, 25, 'Jalkot  '),
(278, 25, 'Chakur  '),
(279, 25, 'Shirur Anantpal  '),
(280, 25, 'Ausa  '),
(281, 25, 'Nilanga  '),
(282, 25, 'Deoni  '),
(283, 25, 'Udgir  '),
(284, 26, 'Osmanabad  '),
(285, 26, 'Tuljapur  '),
(286, 26, 'Lohara  '),
(287, 26, 'Umarga  '),
(288, 26, 'Bhum  '),
(289, 26, 'Paranda  '),
(290, 26, 'Washi  '),
(291, 26, 'Kalamb  '),
(292, 27, 'Solapur North'),
(293, 27, 'Solapur South'),
(294, 27, 'Akkalkot  '),
(295, 27, 'Barshi  '),
(296, 27, 'Madha  '),
(297, 27, 'Karmala  '),
(298, 27, 'Mohol  '),
(299, 27, 'Pandharpur  '),
(300, 27, 'Malshiras  '),
(301, 27, 'Sangole  '),
(302, 27, 'Mangalvedhe  '),
(303, 28, 'Nagar'),
(304, 28, 'Shevgaon  '),
(305, 28, 'Pathardi  '),
(306, 28, 'Parner  '),
(307, 28, 'Sangamner  '),
(308, 28, 'Kopargaon  '),
(309, 28, 'Akole  '),
(310, 28, 'Shrirampur  '),
(311, 28, 'Shrirampur  '),
(312, 28, 'Rahata  '),
(313, 28, 'Rahuri  '),
(314, 28, 'Shrigonda  '),
(315, 28, 'Karjat  '),
(316, 28, 'Jamkhed  '),
(317, 29, 'Pune City'),
(318, 29, 'Haveli  '),
(319, 29, 'Khed  '),
(320, 29, 'Junnar  '),
(321, 29, 'Ambegaon  '),
(322, 29, 'Maval  '),
(323, 29, 'Mulshi  '),
(324, 29, 'Shirur  '),
(325, 29, 'Purandhar  '),
(326, 29, 'Velhe  '),
(327, 29, 'Bhor  '),
(328, 29, 'Baramati  '),
(329, 29, 'Indapur  '),
(330, 29, 'Daund  '),
(331, 30, 'Satara  '),
(332, 30, 'Jaoli  '),
(333, 30, 'Koregaon  '),
(334, 30, 'Wai  '),
(335, 30, 'Mahabaleshwar  '),
(336, 30, 'Khandala  '),
(337, 30, 'Phaltan  '),
(338, 30, 'Maan  '),
(339, 30, 'Khatav'),
(340, 30, 'Patan  '),
(341, 30, 'Karad  '),
(342, 31, 'Miraj'),
(343, 31, 'Kavathe-Mahankal  '),
(344, 31, 'Tasgaon  '),
(345, 31, 'Jat  '),
(346, 31, 'Walwa - Islampur  '),
(347, 31, 'Shirala  '),
(348, 31, 'Khanapur Vita  '),
(349, 31, 'Atpadi  '),
(350, 31, 'Palus  '),
(351, 31, 'Kadegaon  '),
(352, 32, 'Karvir'),
(353, 32, 'Panhala  '),
(354, 32, 'Shahuwadi  '),
(355, 32, 'Kagal  '),
(356, 32, 'Hatkanangale  '),
(357, 32, 'Shirol  '),
(358, 32, 'Radhanagari  '),
(359, 32, 'Gaganbawada  '),
(360, 32, 'Bhudargad  '),
(361, 32, 'Gadhinglaj  '),
(362, 32, 'Chandgad  '),
(363, 32, 'Ajra  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taluka`
--
ALTER TABLE `taluka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `taluka`
--
ALTER TABLE `taluka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
