-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 08:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `userdb` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'systemmanager',
  `phongban_id` int(11) DEFAULT NULL,
  `chucvu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `ten`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `userdb`, `phongban_id`, `chucvu_id`) VALUES
(2, 'Superadmin', 'Superadmin', '0ckck3xNg_vymfAqT2xKKvV0CxlAu4U4', '$2y$13$cm.7rP8xHnkiAZA0HLgHFeymh5AshXoECLVrnl89sKUVcwgakw6L.', NULL, 'anlai1990@gmail.com', 10, 1499411862, 1505529851, 'ubnd', 0, 0),
(4, 'Hoàng Văn Thuận', 'thuanhv', 'kpBbpWe6294WLaCG9jGc1j5_0m9r37bX', '$2y$13$iwXMlQ7lGh5bQkrL4huXIOgY1CM7zQppi9KLqouQEF/.wOHJXzO3S', NULL, 'thuan1@gmail.com', 10, 0, 0, 'ubndminhduc', 1, 1),
(5, 'Trịnh Linh Tâm', 'tamlt', 'W_fyV2xUtRnZS6cERQSRBoTqUaTn7iG1', '$2y$13$vYMCYqjxwxrUrLwzWsDshu5hcH/tr8UJhMMp5Ylai8ueGq/fRtUgC', NULL, 'a@b.com', 10, 0, 0, 'ubndminhduc', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name_vi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decription` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name_vi`, `image`, `ord`, `active`, `name_en`, `decription`) VALUES
(2, 'Tháng 06/2019', '/images/album/1583832619-201906145d037b317277f1.jpg', NULL, 1, NULL, NULL),
(3, 'Tháng 07/2020', '/images/album/1583895619-samtech20190628-5d1628314eb003.jpg', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `thumb` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anhsanpham`
--

INSERT INTO `anhsanpham` (`id`, `image`, `thumb`, `ord`, `default`, `product_id`) VALUES
(3, '/images/product/1507178000-58ff030e525fc1.png', '/images/product/thumb/1507178000-58ff030e525fc1.png', NULL, 1, 7),
(6, '/images/product/1507178777-58ff03209233a1.png', '/images/product/thumb/1507178777-58ff03209233a1.png', NULL, 1, 10),
(7, '/images/product/1507179066-598aea8144e781.png', '/images/product/thumb/1507179066-598aea8144e781.png', NULL, 1, 11),
(8, '/images/product/1507180460-594753e452c181.png', '/images/product/thumb/1507180460-594753e452c181.png', NULL, 1, 1),
(9, '/images/product/1507180497-598ae9433e7bb1.png', '/images/product/thumb/1507180497-598ae9433e7bb1.png', NULL, 1, 12),
(10, '/images/product/1507181004-58ff035293ace1.png', '/images/product/thumb/1507181004-58ff035293ace1.png', NULL, 1, 14),
(11, '/images/product/1507181145-5912812e73bb41.jpg', '/images/product/thumb/1507181145-5912812e73bb41.jpg', NULL, 1, 15),
(12, '/images/product/1507182091-598ae39be8be01.png', '/images/product/thumb/1507182091-598ae39be8be01.png', NULL, 1, 13),
(15, '/images/product/1507184170-58cf452ea0f211.png', '/images/product/thumb/1507184170-58cf452ea0f211.png', NULL, 1, 18),
(16, '/images/product/1507184273-58cf551a2e7fc1.png', '/images/product/thumb/1507184273-58cf551a2e7fc1.png', NULL, 1, 19),
(17, '/images/product/1507184999-581da622e3a951.jpg', '/images/product/thumb/1507184999-581da622e3a951.jpg', NULL, 1, 21),
(18, '/images/product/1507185108-58cb9823549901.png', '/images/product/thumb/1507185108-58cb9823549901.png', NULL, 1, 22),
(19, '/images/product/1507185191-58ca4c128a92a1.png', '/images/product/thumb/1507185191-58ca4c128a92a1.png', NULL, 1, 4),
(21, '/images/product/1507186197-593e1574f21861.png', '/images/product/thumb/1507186197-593e1574f21861.png', NULL, 1, 24),
(22, '/images/product/1507186283-58241fa01bef81.jpg', '/images/product/thumb/1507186283-58241fa01bef81.jpg', NULL, 1, 25),
(23, '/images/product/1507280936-58ca39928e6171.png', '/images/product/thumb/1507280936-58ca39928e6171.png', NULL, 1, 26),
(24, '/images/product/1507281208-598aeb634b9461.png', '/images/product/thumb/1507281208-598aeb634b9461.png', NULL, 1, 27),
(26, '/images/product/1507282164-582421fa066021.jpg', '/images/product/thumb/1507282164-582421fa066021.jpg', NULL, 1, 29),
(27, '/images/product/1507282910-5824220324b071.jpg', '/images/product/thumb/1507282910-5824220324b071.jpg', NULL, 1, 30),
(28, '/images/product/1507283245-5817264812ba41.jpg', '/images/product/thumb/1507283245-5817264812ba41.jpg', NULL, 1, 31),
(29, '/images/product/1507337922-5817266d3d3d91.jpg', '/images/product/thumb/1507337922-5817266d3d3d91.jpg', NULL, 1, 32),
(30, '/images/product/1507338389-581726a8762aa1.jpg', '/images/product/thumb/1507338389-581726a8762aa1.jpg', NULL, 1, 33),
(31, '/images/product/1507338670-581c55ff852171.jpg', '/images/product/thumb/1507338670-581c55ff852171.jpg', NULL, 1, 34),
(38, '/images/product/1507340226-592b8a1ac2a111.jpg', '/images/product/thumb/1507340226-592b8a1ac2a111.jpg', NULL, 1, 41),
(39, '/images/product/1507340342-592b87cb5e2741.jpg', '/images/product/thumb/1507340342-592b87cb5e2741.jpg', NULL, 1, 42),
(40, '/images/product/1507340481-592b897e8b04b1.jpg', '/images/product/thumb/1507340481-592b897e8b04b1.jpg', NULL, 1, 43),
(41, '/images/product/1507340604-592b8c5f1257f1.jpg', '/images/product/thumb/1507340604-592b8c5f1257f1.jpg', NULL, 1, 44),
(42, '/images/product/1507340732-592b8cef516891.jpg', '/images/product/thumb/1507340732-592b8cef516891.jpg', NULL, 1, 45),
(43, '/images/product/1507340845-592b8d8502c521.jpg', '/images/product/thumb/1507340845-592b8d8502c521.jpg', NULL, 1, 46),
(44, '/images/product/1507341104-58adce921b28a1.jpg', '/images/product/thumb/1507341104-58adce921b28a1.jpg', NULL, 1, 47),
(45, '/images/product/1507341279-58c8b4566accb1.jpg', '/images/product/thumb/1507341279-58c8b4566accb1.jpg', NULL, 1, 48),
(46, '/images/product/1507341421-59507b2ca1dd61.jpg', '/images/product/thumb/1507341421-59507b2ca1dd61.jpg', NULL, 1, 49),
(47, '/images/product/1507341523-58adcb0543b3a1.jpg', '/images/product/thumb/1507341523-58adcb0543b3a1.jpg', NULL, 1, 50),
(48, '/images/product/1507341683-58c61ac5daa921.jpg', '/images/product/thumb/1507341683-58c61ac5daa921.jpg', NULL, 1, 51),
(49, '/images/product/1507341799-58c64cdf0062c1.jpg', '/images/product/thumb/1507341799-58c64cdf0062c1.jpg', NULL, 1, 52),
(50, '/images/product/1507341933-58c64eafa2d9a1.jpg', '/images/product/thumb/1507341933-58c64eafa2d9a1.jpg', NULL, 1, 53),
(51, '/images/product/1507342048-58c7af2c76c2b1.jpg', '/images/product/thumb/1507342048-58c7af2c76c2b1.jpg', NULL, 1, 54),
(52, '/images/product/1507342157-58ca03043d5371.jpg', '/images/product/thumb/1507342157-58ca03043d5371.jpg', NULL, 1, 55),
(53, '/images/product/1507342255-58cf7ff9ed4941.jpg', '/images/product/thumb/1507342255-58cf7ff9ed4941.jpg', NULL, 1, 56),
(54, '/images/product/1507342389-58cf867cdb01e1.jpg', '/images/product/thumb/1507342389-58cf867cdb01e1.jpg', NULL, 1, 57),
(55, '/images/product/1507342485-595c9ef9335431.jpg', '/images/product/thumb/1507342485-595c9ef9335431.jpg', NULL, 1, 58),
(56, '/images/product/1507342621-59814d6ead24d1.jpg', '/images/product/thumb/1507342621-59814d6ead24d1.jpg', NULL, 1, 59),
(57, '/images/product/1507342796-58add999a29ed1.jpg', '/images/product/thumb/1507342796-58add999a29ed1.jpg', NULL, 1, 60),
(58, '/images/product/1507342935-58ae9dcee57711.jpg', '/images/product/thumb/1507342935-58ae9dcee57711.jpg', NULL, 1, 61),
(59, '/images/product/1507343141-58c608e89d4f61.png', '/images/product/thumb/1507343141-58c608e89d4f61.png', NULL, 1, 62),
(60, '/images/product/1507343284-58c651cd3fce51.jpg', '/images/product/thumb/1507343284-58c651cd3fce51.jpg', NULL, 1, 63),
(61, '/images/product/1507343427-58c617cb0464a1.jpg', '/images/product/thumb/1507343427-58c617cb0464a1.jpg', NULL, 1, 64),
(62, '/images/product/1507343563-58c6191b0664f1.jpg', '/images/product/thumb/1507343563-58c6191b0664f1.jpg', NULL, 1, 65),
(63, '/images/product/1507343719-58d1e425b5dd21.png', '/images/product/thumb/1507343719-58d1e425b5dd21.png', NULL, 1, 66),
(64, '/images/product/1507344194-58d1e525d22801.jpg', '/images/product/thumb/1507344194-58d1e525d22801.jpg', NULL, 1, 69),
(65, '/images/product/1507344453-58d1e5ed970661.jpg', '/images/product/thumb/1507344453-58d1e5ed970661.jpg', NULL, 1, 70),
(66, '/images/product/1507345009-58d1e6aa0a96c1.jpg', '/images/product/thumb/1507345009-58d1e6aa0a96c1.jpg', NULL, 1, 71),
(67, '/images/product/1507345189-58d1e74c9d9ec1.jpg', '/images/product/thumb/1507345189-58d1e74c9d9ec1.jpg', NULL, 1, 72),
(68, '/images/product/1507345391-58d1e7e4a38fd1.jpg', '/images/product/thumb/1507345391-58d1e7e4a38fd1.jpg', NULL, 1, 73),
(69, '/images/product/1507345839-5991602d7dbc31.jpg', '/images/product/thumb/1507345839-5991602d7dbc31.jpg', NULL, 1, 74),
(70, '/images/product/1507345970-59956ba86af0e1.jpg', '/images/product/thumb/1507345970-59956ba86af0e1.jpg', NULL, 1, 75),
(71, '/images/product/1507346182-59957260f13b01.jpg', '/images/product/thumb/1507346182-59957260f13b01.jpg', NULL, 1, 76),
(72, '/images/product/1507346311-599573d7c421c1.jpg', '/images/product/thumb/1507346311-599573d7c421c1.jpg', NULL, 1, 77),
(73, '/images/product/1507346437-599575528e5e51.jpg', '/images/product/thumb/1507346437-599575528e5e51.jpg', NULL, 1, 78),
(74, '/images/product/1507346592-599575ddbd8681.jpg', '/images/product/thumb/1507346592-599575ddbd8681.jpg', NULL, 1, 79),
(75, '/images/product/1507346698-59c63575b3ee81.jpg', '/images/product/thumb/1507346698-59c63575b3ee81.jpg', NULL, 1, 80),
(76, '/images/product/1507346814-59c6348f4525c1.jpg', '/images/product/thumb/1507346814-59c6348f4525c1.jpg', NULL, 1, 81),
(77, '/images/product/1507346946-59c60ee998bd21.jpg', '/images/product/thumb/1507346946-59c60ee998bd21.jpg', NULL, 1, 82),
(78, '/images/product/1507347066-59c60e952dbad1.jpg', '/images/product/thumb/1507347066-59c60e952dbad1.jpg', NULL, 1, 83),
(79, '/images/product/1507347184-59c60c58196be1.jpg', '/images/product/thumb/1507347184-59c60c58196be1.jpg', NULL, 1, 84),
(80, '/images/product/1507347312-59c6267a1b2eb1.jpg', '/images/product/thumb/1507347312-59c6267a1b2eb1.jpg', NULL, 1, 85),
(81, '/images/product/1507347574-598ae2a0293581.jpg', '/images/product/thumb/1507347574-598ae2a0293581.jpg', NULL, 1, 86),
(82, '/images/product/1507347695-59c610df69a771.jpg', '/images/product/thumb/1507347695-59c610df69a771.jpg', NULL, 1, 87),
(83, '/images/product/1507347850-598ae1d05c7301.jpg', '/images/product/thumb/1507347850-598ae1d05c7301.jpg', NULL, 1, 88),
(84, '/images/product/1507347993-59c610649ff031.jpg', '/images/product/thumb/1507347993-59c610649ff031.jpg', NULL, 1, 89),
(85, '/images/product/1507447809-598adda5bc3711.jpg', '/images/product/thumb/1507447809-598adda5bc3711.jpg', NULL, 1, 90),
(86, '/images/product/1507447934-59c6100cd96bf1.jpg', '/images/product/thumb/1507447934-59c6100cd96bf1.jpg', NULL, 1, 91),
(87, '/images/product/1507448026-598adc65615c61.jpg', '/images/product/thumb/1507448026-598adc65615c61.jpg', NULL, 1, 92),
(88, '/images/product/1507448106-59c60fa17b7401.jpg', '/images/product/thumb/1507448106-59c60fa17b7401.jpg', NULL, 1, 93),
(89, '/images/product/1507448220-598ad81c188ef1.jpg', '/images/product/thumb/1507448220-598ad81c188ef1.jpg', NULL, 1, 94),
(90, '/images/product/1507448299-59c60f41d03191.jpg', '/images/product/thumb/1507448299-59c60f41d03191.jpg', NULL, 1, 95),
(91, '/images/product/1507448395-59a7b32b186af1.jpg', '/images/product/thumb/1507448395-59a7b32b186af1.jpg', NULL, 1, 96),
(92, '/images/product/1507448513-59a61e9f03cf51.jpg', '/images/product/thumb/1507448513-59a61e9f03cf51.jpg', NULL, 1, 97),
(93, '/images/product/1530238796-1.png', '/images/product/thumb/1530238796-1.png', NULL, 1, 6),
(94, '/images/product/1530239068-2.png', '/images/product/thumb/1530239068-2.png', NULL, 1, 2),
(95, '/images/product/1530244820-3.png', '/images/product/thumb/1530244820-3.png', NULL, 1, 16),
(96, '/images/product/1530245025-4.png', '/images/product/thumb/1530245025-4.png', NULL, 1, 17),
(97, '/images/product/1530255717-1.png', '/images/product/thumb/1530255717-1.png', NULL, 1, 98),
(98, '/images/product/1530256087-2.png', '/images/product/thumb/1530256087-2.png', NULL, 1, 99),
(99, '/images/product/1530256448-3.png', '/images/product/thumb/1530256448-3.png', NULL, 1, 100),
(101, '/images/product/1530263641-1.png', '/images/product/thumb/1530263641-1.png', NULL, 1, 9),
(102, '/images/product/1530342222-2.png', '/images/product/thumb/1530342222-2.png', NULL, 1, 23),
(103, '/images/product/1530501779-1.jpg', '/images/product/thumb/1530501779-1.jpg', NULL, 1, 101),
(104, '/images/product/1530502025-2.jpg', '/images/product/thumb/1530502025-2.jpg', NULL, 1, 102),
(105, '/images/product/1530502935-3.jpg', '/images/product/thumb/1530502935-3.jpg', NULL, 1, 103),
(106, '/images/product/1530503199-4.jpg', '/images/product/thumb/1530503199-4.jpg', NULL, 1, 104),
(107, '/images/product/1530503800-5.jpg', '/images/product/thumb/1530503800-5.jpg', NULL, 1, 105),
(108, '/images/product/1530585323-4.jpg', '/images/product/thumb/1530585323-4.jpg', NULL, 1, 107),
(109, '/images/product/1530587156-5.jpg', '/images/product/thumb/1530587156-5.jpg', NULL, 1, 108);

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`user_id`, `created_at`, `item_name`) VALUES
('1', 1492650879, 'admin'),
('107', 1514879523, 'nhanvien'),
('108', 1514888138, 'nhanvien'),
('109', 1514888227, 'nhanvien'),
('110', 1514888258, 'nhanvien'),
('111', 1514888275, 'nhanvien'),
('112', 1514888395, 'nhanvien'),
('113', 1514888472, 'nhanvien'),
('114', 1515036569, 'nhanvien'),
('116', 1515384607, 'nhanvien'),
('118', 1515473202, 'nhanvien'),
('120', 1515477442, 'nhanvien'),
('121', 1515477488, 'nhanvien'),
('123', 1515486730, 'nhanvien'),
('124', 1515486731, 'nhanvien'),
('125', 1515486731, 'nhanvien'),
('127', 1515486732, 'nhanvien'),
('128', 1515486733, 'nhanvien'),
('129', 1515486734, 'nhanvien'),
('130', 1515486734, 'nhanvien'),
('132', 1515486735, 'nhanvien'),
('133', 1515486736, 'nhanvien'),
('134', 1515486736, 'nhanvien'),
('135', 1515486737, 'nhanvien'),
('137', 1515486738, 'nhanvien'),
('139', 1515486739, 'nhanvien'),
('140', 1515486740, 'nhanvien'),
('141', 1515486740, 'nhanvien'),
('143', 1515486741, 'nhanvien'),
('145', 1515486742, 'nhanvien'),
('146', 1515486743, 'nhanvien'),
('147', 1515486743, 'nhanvien'),
('149', 1515486744, 'nhanvien'),
('150', 1515486745, 'nhanvien'),
('152', 1515486746, 'nhanvien'),
('154', 1515486747, 'nhanvien'),
('157', 1515486749, 'nhanvien'),
('160', 1515486751, 'nhanvien'),
('163', 1516783864, 'nhanvien'),
('164', 1519284436, 'nhanvien'),
('166', 1519866635, 'nhanvien'),
('167', 1521463374, 'nhanvien'),
('169', 1536185567, 'nhanvien'),
('170', 1536628629, 'admin'),
('171', 1537492158, 'nhanvien'),
('172', 1546676557, 'nhanvien'),
('173', 1547027328, 'nhanvien'),
('174', 1547027411, 'nhanvien'),
('175', 1547027452, 'nhanvien'),
('176', 1547027505, 'nhanvien'),
('177', 1547027522, 'nhanvien'),
('178', 1547027552, 'nhanvien'),
('179', 1547027586, 'nhanvien'),
('180', 1547030290, 'nhanvien'),
('2', 1501141315, 'superadmin'),
('3', 1582608696, 'admin'),
('4', 1583376920, 'nhanvien'),
('5', 1583383596, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `data`, `created_at`, `updated_at`, `rule_name`) VALUES
('admin', 1, NULL, NULL, 1492635897, 1492635897, NULL),
('admin/bulkdelete', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('admin/create', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('admin/delete', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('admin/excel', 2, 'new auth', NULL, 1516006533, 1516006533, NULL),
('admin/index', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('admin/update', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('admin/upload', 2, 'new auth', NULL, 1515485030, 1515485030, NULL),
('admin/view', 2, 'new auth', NULL, 1505786768, 1505786768, NULL),
('album/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/updateactive', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/updateord', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('album/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsach/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('anhsanpham/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/updatetrangthai', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('bill/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/updateactive', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/updatehome', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/updateord', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('brand/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/bulkdelete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/create', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/delete', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/index', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/update', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/updateactive', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/updatehome', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/updateord', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catnew/updateparent', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catnew/updateposition', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catnew/view', 2, 'new auth', NULL, 1583220151, 1583220151, NULL),
('catproduct/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/capnhat', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/cattree', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/deletecat', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/taomoi', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updatehome', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updatemenu', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updateord', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updateparent', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/updatett', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('catproduct/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('chucvu/bulkdelete', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('chucvu/create', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('chucvu/delete', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('chucvu/index', 2, 'new auth', NULL, 1583357859, 1583357859, NULL),
('chucvu/update', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('chucvu/view', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('code/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('code/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/updateord', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('comment/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('configure/bulkdelete', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/create', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/delete', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/imageconfig', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/index', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/luuconfig', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/update', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('configure/view', 2, 'new auth', NULL, 1517892623, 1517892623, NULL),
('congvanhanhchinh/bulkdelete', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('congvanhanhchinh/create', 2, 'new auth', NULL, 1583999395, 1583999395, NULL),
('congvanhanhchinh/delete', 2, 'new auth', NULL, 1583999395, 1583999395, NULL),
('congvanhanhchinh/index', 2, 'new auth', NULL, 1583999395, 1583999395, NULL),
('congvanhanhchinh/update', 2, 'new auth', NULL, 1583999395, 1583999395, NULL),
('congvanhanhchinh/view', 2, 'new auth', NULL, 1583999395, 1583999395, NULL),
('contact/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('contact/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('contact/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('contact/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('contact/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('contact/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('coquanbanhanh/bulkdelete', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('coquanbanhanh/create', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('coquanbanhanh/delete', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('coquanbanhanh/index', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('coquanbanhanh/update', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('coquanbanhanh/view', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('dienthoai/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('dienthoai/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('dienthoai/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('dienthoai/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('dienthoai/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('dienthoai/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('grproduct/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('language/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('linhvucvanban/bulkdelete', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('linhvucvanban/create', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('linhvucvanban/delete', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('linhvucvanban/index', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('linhvucvanban/update', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('linhvucvanban/view', 2, 'new auth', NULL, 1583999396, 1583999396, NULL),
('link/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('link/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('link/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('link/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('link/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('link/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('loaivanban/bulkdelete', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivanban/create', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivanban/delete', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivanban/index', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivanban/update', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivanban/view', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('loaivbhc/bulkdelete', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('loaivbhc/create', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('loaivbhc/delete', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('loaivbhc/index', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('loaivbhc/update', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('loaivbhc/view', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('log/bulkdelete', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('log/create', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('log/delete', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('log/index', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('log/update', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('log/view', 2, 'new auth', NULL, 1515205123, 1515205123, NULL),
('menu/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/deletemenu', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/updateord', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('menu/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/bulkdelete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/create', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/delete', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/index', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/newpost', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/news_post', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('news/update', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/updateactive', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/updateforeign', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('news/updatehome', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('news/updatehot', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('news/updatenews', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('news/view', 2, 'new auth', NULL, 1583220152, 1583220152, NULL),
('nhanvien', 1, NULL, NULL, 1492635897, 1492635897, NULL),
('office/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/updateactive', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/updateord', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('office/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/new_page', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/newform', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/newpage', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/updateactive', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/updateord', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('page/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/changepositon', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/updateactive', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/updateord', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('partner/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phieuxuat/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('phongban/bulkdelete', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('phongban/create', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('phongban/delete', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('phongban/index', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('phongban/update', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('phongban/view', 2, 'new auth', NULL, 1583357860, 1583357860, NULL),
('picture/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/updatehome', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/updateord', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('picture/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/addnewrow', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/bindproperties', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/defaultimg', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/newform', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/updateactive', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/updatehome', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/updatehot', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/updatenew', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/updateord', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('product/xoaanh', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/bulkdelete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/create', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/delete', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/update', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('properties/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('propertiesvalue/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('propertiesvalue/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('propertiesvalue/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('propertiesvalue/index', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('propertiesvalue/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('propertiesvalue/view', 2, 'new auth', NULL, 1583220153, 1583220153, NULL),
('rbac/authorization', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/bulkdelete', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/create', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/delete', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/deleterole', 2, 'new auth', NULL, 1583823836, 1583823836, NULL),
('rbac/index', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/newrole', 2, 'new auth', NULL, 1506047754, 1506047754, NULL),
('rbac/signup', 2, 'new', NULL, NULL, NULL, NULL),
('rbac/thongbao', 2, 'new auth', NULL, 1500281137, 1500281137, NULL),
('rbac/update', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/update_permission', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/user_role', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('rbac/view', 2, 'new auth', NULL, 1493992511, 1493992511, NULL),
('shipping/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('shipping/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('shipping/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('shipping/index', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('shipping/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('shipping/view', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/index', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/updateactive', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/updateord', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/updateposition', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('slides/view', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('superadmin', 1, NULL, NULL, 1499411976, 1499411976, NULL),
('tags/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('tags/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('tags/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('tags/index', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('tags/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('tags/view', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/index', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('user/view', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('vanban/bulkdelete', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/capnhattiendo', 2, 'new auth', NULL, 1583832748, 1583832748, NULL),
('vanban/create', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/createvanbandi', 2, 'new auth', NULL, 1583823836, 1583823836, NULL),
('vanban/delete', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/hoanthanhvanbanden', 2, 'new auth', NULL, 1583830710, 1583830710, NULL),
('vanban/hoanthanhvanbandi', 2, 'new auth', NULL, 1583999398, 1583999398, NULL),
('vanban/huyhoanthanhvanbanden', 2, 'new auth', NULL, 1583999397, 1583999397, NULL),
('vanban/index', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/update', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/view', 2, 'new auth', NULL, 1583357861, 1583357861, NULL),
('vanban/viewvanbandi', 2, 'new auth', NULL, 1583823836, 1583823836, NULL),
('video/bulkdelete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('video/create', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('video/delete', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('video/index', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('video/update', 2, 'new auth', NULL, 1583220154, 1583220154, NULL),
('video/view', 2, 'new auth', NULL, 1583220154, 1583220154, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'admin/bulkdelete'),
('admin', 'admin/create'),
('admin', 'admin/delete'),
('admin', 'admin/index'),
('admin', 'admin/update'),
('admin', 'admin/view'),
('admin', 'album/bulkdelete'),
('admin', 'album/create'),
('admin', 'album/delete'),
('admin', 'album/index'),
('admin', 'album/update'),
('admin', 'album/updateactive'),
('admin', 'album/updateord'),
('admin', 'album/view'),
('admin', 'anhsach/bulkdelete'),
('admin', 'anhsach/create'),
('admin', 'anhsach/delete'),
('admin', 'anhsach/index'),
('admin', 'anhsach/update'),
('admin', 'anhsach/view'),
('admin', 'anhsanpham/bulkdelete'),
('admin', 'anhsanpham/create'),
('admin', 'anhsanpham/delete'),
('admin', 'anhsanpham/index'),
('admin', 'anhsanpham/update'),
('admin', 'anhsanpham/view'),
('admin', 'configure/bulkdelete'),
('admin', 'configure/create'),
('admin', 'configure/delete'),
('admin', 'configure/imageconfig'),
('admin', 'configure/index'),
('admin', 'configure/luuconfig'),
('admin', 'configure/update'),
('admin', 'configure/view'),
('admin', 'loaivanban/bulkdelete'),
('admin', 'loaivanban/create'),
('admin', 'loaivanban/delete'),
('admin', 'loaivanban/index'),
('admin', 'loaivanban/update'),
('admin', 'loaivanban/view'),
('admin', 'log/bulkdelete'),
('admin', 'log/create'),
('admin', 'log/delete'),
('admin', 'log/index'),
('admin', 'log/update'),
('admin', 'log/view'),
('admin', 'nhanvien'),
('admin', 'rbac/authorization'),
('admin', 'rbac/bulkdelete'),
('admin', 'rbac/create'),
('admin', 'rbac/delete'),
('admin', 'rbac/index'),
('admin', 'rbac/newrole'),
('admin', 'rbac/signup'),
('admin', 'rbac/thongbao'),
('admin', 'rbac/update'),
('admin', 'rbac/update_permission'),
('admin', 'rbac/user_role'),
('admin', 'rbac/view'),
('admin', 'slides/bulkdelete'),
('admin', 'slides/create'),
('admin', 'slides/delete'),
('admin', 'slides/index'),
('admin', 'slides/update'),
('admin', 'slides/updateactive'),
('admin', 'slides/updateord'),
('admin', 'slides/updateposition'),
('admin', 'slides/view'),
('admin', 'vanban/capnhattiendo'),
('admin', 'vanban/createvanbandi'),
('admin', 'vanban/hoanthanhvanbanden'),
('admin', 'vanban/view'),
('admin', 'vanban/viewvanbandi'),
('nhanvien', 'log/index'),
('nhanvien', 'vanban/capnhattiendo'),
('nhanvien', 'vanban/createvanbandi'),
('nhanvien', 'vanban/hoanthanhvanbanden'),
('nhanvien', 'vanban/view'),
('nhanvien', 'vanban/viewvanbandi'),
('superadmin', 'admin/bulkdelete'),
('superadmin', 'admin/create'),
('superadmin', 'admin/delete'),
('superadmin', 'admin/excel'),
('superadmin', 'admin/index'),
('superadmin', 'admin/update'),
('superadmin', 'admin/upload'),
('superadmin', 'admin/view'),
('superadmin', 'album/bulkdelete'),
('superadmin', 'album/create'),
('superadmin', 'album/delete'),
('superadmin', 'album/index'),
('superadmin', 'album/update'),
('superadmin', 'album/updateactive'),
('superadmin', 'album/updateord'),
('superadmin', 'album/view'),
('superadmin', 'anhsach/bulkdelete'),
('superadmin', 'anhsach/create'),
('superadmin', 'anhsach/delete'),
('superadmin', 'anhsach/index'),
('superadmin', 'anhsach/update'),
('superadmin', 'anhsach/view'),
('superadmin', 'anhsanpham/bulkdelete'),
('superadmin', 'anhsanpham/create'),
('superadmin', 'anhsanpham/delete'),
('superadmin', 'anhsanpham/index'),
('superadmin', 'anhsanpham/update'),
('superadmin', 'anhsanpham/view'),
('superadmin', 'bill/bulkdelete'),
('superadmin', 'bill/create'),
('superadmin', 'bill/delete'),
('superadmin', 'bill/index'),
('superadmin', 'bill/update'),
('superadmin', 'bill/updatetrangthai'),
('superadmin', 'bill/view'),
('superadmin', 'brand/bulkdelete'),
('superadmin', 'brand/create'),
('superadmin', 'brand/delete'),
('superadmin', 'brand/index'),
('superadmin', 'brand/update'),
('superadmin', 'brand/updateactive'),
('superadmin', 'brand/updatehome'),
('superadmin', 'brand/updateord'),
('superadmin', 'brand/view'),
('superadmin', 'catnew/bulkdelete'),
('superadmin', 'catnew/create'),
('superadmin', 'catnew/delete'),
('superadmin', 'catnew/index'),
('superadmin', 'catnew/update'),
('superadmin', 'catnew/updateactive'),
('superadmin', 'catnew/updatehome'),
('superadmin', 'catnew/updateord'),
('superadmin', 'catnew/updateparent'),
('superadmin', 'catnew/updateposition'),
('superadmin', 'catnew/view'),
('superadmin', 'catproduct/bulkdelete'),
('superadmin', 'catproduct/capnhat'),
('superadmin', 'catproduct/cattree'),
('superadmin', 'catproduct/create'),
('superadmin', 'catproduct/delete'),
('superadmin', 'catproduct/deletecat'),
('superadmin', 'catproduct/index'),
('superadmin', 'catproduct/taomoi'),
('superadmin', 'catproduct/update'),
('superadmin', 'catproduct/updateactive'),
('superadmin', 'catproduct/updatehome'),
('superadmin', 'catproduct/updatemenu'),
('superadmin', 'catproduct/updateord'),
('superadmin', 'catproduct/updateparent'),
('superadmin', 'catproduct/updatett'),
('superadmin', 'catproduct/view'),
('superadmin', 'chucvu/bulkdelete'),
('superadmin', 'chucvu/create'),
('superadmin', 'chucvu/delete'),
('superadmin', 'chucvu/index'),
('superadmin', 'chucvu/update'),
('superadmin', 'chucvu/view'),
('superadmin', 'code/bulkdelete'),
('superadmin', 'code/create'),
('superadmin', 'code/delete'),
('superadmin', 'code/index'),
('superadmin', 'code/update'),
('superadmin', 'code/updateactive'),
('superadmin', 'code/view'),
('superadmin', 'comment/bulkdelete'),
('superadmin', 'comment/create'),
('superadmin', 'comment/delete'),
('superadmin', 'comment/index'),
('superadmin', 'comment/update'),
('superadmin', 'comment/updateactive'),
('superadmin', 'comment/updateord'),
('superadmin', 'comment/view'),
('superadmin', 'configure/bulkdelete'),
('superadmin', 'configure/create'),
('superadmin', 'configure/delete'),
('superadmin', 'configure/imageconfig'),
('superadmin', 'configure/index'),
('superadmin', 'configure/luuconfig'),
('superadmin', 'configure/update'),
('superadmin', 'configure/view'),
('superadmin', 'congvanhanhchinh/bulkdelete'),
('superadmin', 'congvanhanhchinh/create'),
('superadmin', 'congvanhanhchinh/delete'),
('superadmin', 'congvanhanhchinh/index'),
('superadmin', 'congvanhanhchinh/update'),
('superadmin', 'congvanhanhchinh/view'),
('superadmin', 'contact/bulkdelete'),
('superadmin', 'contact/create'),
('superadmin', 'contact/delete'),
('superadmin', 'contact/index'),
('superadmin', 'contact/update'),
('superadmin', 'contact/view'),
('superadmin', 'coquanbanhanh/bulkdelete'),
('superadmin', 'coquanbanhanh/create'),
('superadmin', 'coquanbanhanh/delete'),
('superadmin', 'coquanbanhanh/index'),
('superadmin', 'coquanbanhanh/update'),
('superadmin', 'coquanbanhanh/view'),
('superadmin', 'dienthoai/bulkdelete'),
('superadmin', 'dienthoai/create'),
('superadmin', 'dienthoai/delete'),
('superadmin', 'dienthoai/index'),
('superadmin', 'dienthoai/update'),
('superadmin', 'dienthoai/view'),
('superadmin', 'grproduct/bulkdelete'),
('superadmin', 'grproduct/create'),
('superadmin', 'grproduct/delete'),
('superadmin', 'grproduct/index'),
('superadmin', 'grproduct/update'),
('superadmin', 'grproduct/updateactive'),
('superadmin', 'grproduct/view'),
('superadmin', 'language/bulkdelete'),
('superadmin', 'language/create'),
('superadmin', 'language/delete'),
('superadmin', 'language/index'),
('superadmin', 'language/update'),
('superadmin', 'language/view'),
('superadmin', 'linhvucvanban/bulkdelete'),
('superadmin', 'linhvucvanban/create'),
('superadmin', 'linhvucvanban/delete'),
('superadmin', 'linhvucvanban/index'),
('superadmin', 'linhvucvanban/update'),
('superadmin', 'linhvucvanban/view'),
('superadmin', 'link/bulkdelete'),
('superadmin', 'link/create'),
('superadmin', 'link/delete'),
('superadmin', 'link/index'),
('superadmin', 'link/update'),
('superadmin', 'link/view'),
('superadmin', 'loaivanban/bulkdelete'),
('superadmin', 'loaivanban/create'),
('superadmin', 'loaivanban/delete'),
('superadmin', 'loaivanban/index'),
('superadmin', 'loaivanban/update'),
('superadmin', 'loaivanban/view'),
('superadmin', 'loaivbhc/bulkdelete'),
('superadmin', 'loaivbhc/create'),
('superadmin', 'loaivbhc/delete'),
('superadmin', 'loaivbhc/index'),
('superadmin', 'loaivbhc/update'),
('superadmin', 'loaivbhc/view'),
('superadmin', 'log/bulkdelete'),
('superadmin', 'log/create'),
('superadmin', 'log/delete'),
('superadmin', 'log/index'),
('superadmin', 'log/update'),
('superadmin', 'log/view'),
('superadmin', 'menu/bulkdelete'),
('superadmin', 'menu/create'),
('superadmin', 'menu/delete'),
('superadmin', 'menu/deletemenu'),
('superadmin', 'menu/index'),
('superadmin', 'menu/update'),
('superadmin', 'menu/updateactive'),
('superadmin', 'menu/updateord'),
('superadmin', 'menu/view'),
('superadmin', 'news/bulkdelete'),
('superadmin', 'news/create'),
('superadmin', 'news/delete'),
('superadmin', 'news/index'),
('superadmin', 'news/newpost'),
('superadmin', 'news/news_post'),
('superadmin', 'news/update'),
('superadmin', 'news/updateactive'),
('superadmin', 'news/updateforeign'),
('superadmin', 'news/updatehome'),
('superadmin', 'news/updatehot'),
('superadmin', 'news/updatenews'),
('superadmin', 'news/view'),
('superadmin', 'office/bulkdelete'),
('superadmin', 'office/create'),
('superadmin', 'office/delete'),
('superadmin', 'office/index'),
('superadmin', 'office/update'),
('superadmin', 'office/updateactive'),
('superadmin', 'office/updateord'),
('superadmin', 'office/view'),
('superadmin', 'page/bulkdelete'),
('superadmin', 'page/create'),
('superadmin', 'page/delete'),
('superadmin', 'page/index'),
('superadmin', 'page/new_page'),
('superadmin', 'page/newform'),
('superadmin', 'page/newpage'),
('superadmin', 'page/update'),
('superadmin', 'page/updateactive'),
('superadmin', 'page/updateord'),
('superadmin', 'page/view'),
('superadmin', 'partner/bulkdelete'),
('superadmin', 'partner/changepositon'),
('superadmin', 'partner/create'),
('superadmin', 'partner/delete'),
('superadmin', 'partner/index'),
('superadmin', 'partner/update'),
('superadmin', 'partner/updateactive'),
('superadmin', 'partner/updateord'),
('superadmin', 'partner/view'),
('superadmin', 'phieuxuat/bulkdelete'),
('superadmin', 'phieuxuat/create'),
('superadmin', 'phieuxuat/delete'),
('superadmin', 'phieuxuat/index'),
('superadmin', 'phieuxuat/update'),
('superadmin', 'phieuxuat/view'),
('superadmin', 'phongban/bulkdelete'),
('superadmin', 'phongban/create'),
('superadmin', 'phongban/delete'),
('superadmin', 'phongban/index'),
('superadmin', 'phongban/update'),
('superadmin', 'phongban/view'),
('superadmin', 'picture/bulkdelete'),
('superadmin', 'picture/create'),
('superadmin', 'picture/delete'),
('superadmin', 'picture/index'),
('superadmin', 'picture/update'),
('superadmin', 'picture/updatehome'),
('superadmin', 'picture/updateord'),
('superadmin', 'picture/view'),
('superadmin', 'product/addnewrow'),
('superadmin', 'product/bindproperties'),
('superadmin', 'product/bulkdelete'),
('superadmin', 'product/create'),
('superadmin', 'product/defaultimg'),
('superadmin', 'product/delete'),
('superadmin', 'product/index'),
('superadmin', 'product/newform'),
('superadmin', 'product/update'),
('superadmin', 'product/updateactive'),
('superadmin', 'product/updatehome'),
('superadmin', 'product/updatehot'),
('superadmin', 'product/updatenew'),
('superadmin', 'product/updateord'),
('superadmin', 'product/view'),
('superadmin', 'product/xoaanh'),
('superadmin', 'properties/bulkdelete'),
('superadmin', 'properties/create'),
('superadmin', 'properties/delete'),
('superadmin', 'properties/index'),
('superadmin', 'properties/update'),
('superadmin', 'properties/view'),
('superadmin', 'propertiesvalue/bulkdelete'),
('superadmin', 'propertiesvalue/create'),
('superadmin', 'propertiesvalue/delete'),
('superadmin', 'propertiesvalue/index'),
('superadmin', 'propertiesvalue/update'),
('superadmin', 'propertiesvalue/view'),
('superadmin', 'rbac/authorization'),
('superadmin', 'rbac/bulkdelete'),
('superadmin', 'rbac/create'),
('superadmin', 'rbac/delete'),
('superadmin', 'rbac/deleterole'),
('superadmin', 'rbac/index'),
('superadmin', 'rbac/newrole'),
('superadmin', 'rbac/signup'),
('superadmin', 'rbac/thongbao'),
('superadmin', 'rbac/update'),
('superadmin', 'rbac/update_permission'),
('superadmin', 'rbac/user_role'),
('superadmin', 'rbac/view'),
('superadmin', 'shipping/bulkdelete'),
('superadmin', 'shipping/create'),
('superadmin', 'shipping/delete'),
('superadmin', 'shipping/index'),
('superadmin', 'shipping/update'),
('superadmin', 'shipping/view'),
('superadmin', 'slides/bulkdelete'),
('superadmin', 'slides/create'),
('superadmin', 'slides/delete'),
('superadmin', 'slides/index'),
('superadmin', 'slides/update'),
('superadmin', 'slides/updateactive'),
('superadmin', 'slides/updateord'),
('superadmin', 'slides/updateposition'),
('superadmin', 'slides/view'),
('superadmin', 'tags/bulkdelete'),
('superadmin', 'tags/create'),
('superadmin', 'tags/delete'),
('superadmin', 'tags/index'),
('superadmin', 'tags/update'),
('superadmin', 'tags/view'),
('superadmin', 'user/bulkdelete'),
('superadmin', 'user/create'),
('superadmin', 'user/delete'),
('superadmin', 'user/index'),
('superadmin', 'user/update'),
('superadmin', 'user/view'),
('superadmin', 'vanban/bulkdelete'),
('superadmin', 'vanban/capnhattiendo'),
('superadmin', 'vanban/create'),
('superadmin', 'vanban/createvanbandi'),
('superadmin', 'vanban/delete'),
('superadmin', 'vanban/hoanthanhvanbanden'),
('superadmin', 'vanban/hoanthanhvanbandi'),
('superadmin', 'vanban/huyhoanthanhvanbanden'),
('superadmin', 'vanban/index'),
('superadmin', 'vanban/update'),
('superadmin', 'vanban/view'),
('superadmin', 'vanban/viewvanbandi'),
('superadmin', 'video/bulkdelete'),
('superadmin', 'video/create'),
('superadmin', 'video/delete'),
('superadmin', 'video/index'),
('superadmin', 'video/update'),
('superadmin', 'video/view');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `std` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `order_time` datetime NOT NULL,
  `total` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `shipping_fee` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_product`
--

CREATE TABLE `bill_product` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `thongso` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `seo_keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`, `url`, `description`, `ord`, `active`, `home`, `seo_title`, `seo_desc`, `seo_keyword`, `lang_id`) VALUES
(1, 'ViettelTelecom', '', 'vietteltelecom', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catnew`
--

CREATE TABLE `catnew` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `ord` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `seo_keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catnew`
--

INSERT INTO `catnew` (`id`, `url`, `name`, `position`, `active`, `home`, `ord`, `seo_title`, `seo_desc`, `seo_keyword`, `lang_id`, `parent`) VALUES
(1, 'tin-tuc', 'Tin tức', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, -1),
(29, 'doanh-nghiep', 'Doanh nghiệp', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, -1),
(30, 'doan-thanh-nien', 'Đoàn Thanh niên', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1),
(31, 'hoi-lien-hiep-phu-nu', 'Hội Liên hiệp Phụ nữ', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1),
(32, 'hoi-cuu-chien-binh', 'Hội Cựu chiến binh', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1),
(33, 'hoi-nong-dan', 'Hội Nông dân', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1),
(34, 'hoi-chu-thap-do', 'Hội Chữ thập đỏ', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1),
(35, 'hoi-thanh-nien-xung-phong', 'Hội Thanh niên xung phong', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, -1);

-- --------------------------------------------------------

--
-- Table structure for table `catproduct`
--

CREATE TABLE `catproduct` (
  `id` int(11) NOT NULL COMMENT 'Mã',
  `url` text COLLATE utf8_unicode_ci COMMENT 'Đường dẫn',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `small_icon` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `brief` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `seo_keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `menustyle` smallint(6) NOT NULL DEFAULT '0',
  `background` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catproduct`
--

INSERT INTO `catproduct` (`id`, `url`, `name`, `image`, `small_icon`, `description`, `ord`, `brief`, `home`, `active`, `seo_title`, `seo_desc`, `seo_keyword`, `lang_id`, `parent`, `menustyle`, `background`, `menu`) VALUES
(1, 'internet---truyen-hinh', 'Internet - Truyền hình', '', '', '', 3, NULL, 0, 1, '', '', '', NULL, -1, 0, '', 0),
(2, 'internet-toc-do-cao', 'Internet tốc độ cao', '', '', '', 5, NULL, 1, 1, '', '', '', NULL, 1, 0, NULL, 0),
(3, 'truyen-hinh', 'Truyền Hình', '', '', '', 6, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, 0),
(4, 'combo', 'Combo', '', '', '', 7, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, 0),
(6, 'goi-data', 'Gói data', '', '', '', 0, NULL, 0, 1, NULL, NULL, NULL, NULL, -1, 0, NULL, 0),
(7, 'goi-3g-4g-di-dong', 'Gói 3G 4G di động', '/images/catproduct/1507190723-viettel-cung-cap-mang-4g-tu-thang-10-gia-nhu-3g1.jpg', '', '', 2, NULL, 1, 1, '', '', '', NULL, 6, 0, NULL, 0),
(8, 'goi-data-di-dong', 'Gói data di động', '/images/catproduct/1507190934-viettel-cung-cap-mang-4g-tu-thang-10-gia-nhu-3g1.jpg', '', '', 3, NULL, 1, 1, '', '', '', NULL, 6, 0, NULL, 0),
(9, 'goi-data-dcom', 'Gói data Dcom', '/images/catproduct/1507190951-viettel-cung-cap-mang-4g-tu-thang-10-gia-nhu-3g1.jpg', '', '', 4, NULL, 0, 1, '', '', '', NULL, 6, 0, NULL, 0),
(11, 'dich-vu-gtgt', 'Dịch vụ GTGT', '', '', '', 2, NULL, 0, 1, '', '', '', NULL, -1, 0, NULL, 0),
(12, 'goi-giai-tri', 'Gói giải trí', '', '', '', 4, NULL, 0, 1, NULL, NULL, NULL, NULL, 11, 0, NULL, 0),
(13, 'goi-tien-ich-gtgt', 'Gói tiện ích GTGT', '', '', '', 5, NULL, 0, 1, NULL, NULL, NULL, NULL, 11, 0, NULL, 0),
(14, 'di-dong-tra-sau', 'Di Động Trả Sau', '', '', '', 1, NULL, 1, 1, NULL, NULL, NULL, NULL, -1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên chức vụ',
  `isnhanvanban` bit(1) NOT NULL COMMENT 'Nhận văn bản chuyển tới phòng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`id`, `ten`, `isnhanvanban`) VALUES
(1, 'Bí thư', b'1'),
(2, 'Phó Bí thư', b'0'),
(3, 'Văn phòng Đảng ủy', b'0'),
(4, 'Chủ tịch', b'0'),
(5, 'Phó Chủ tịch', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `cond` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordvalue` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ord` tinyint(4) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commentvanban`
--

CREATE TABLE `commentvanban` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoicomment` int(11) NOT NULL,
  `ngaycomment` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vanbandi_id` int(11) NOT NULL,
  `commentvanban_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentvanban`
--

INSERT INTO `commentvanban` (`id`, `comment`, `nguoicomment`, `ngaycomment`, `vanbandi_id`, `commentvanban_id`) VALUES
(1, 'Test Comment', 2, '2020-03-10 12:37:18', 1, NULL),
(2, '@thuhoithuhoi@', 2, '2020-03-10 12:41:25', 1, NULL),
(3, '@thuhoithuhoi@', 2, '2020-03-10 12:42:12', 1, NULL),
(4, '@thuhoithuhoi@', 2, '2020-03-10 12:48:20', 1, 2),
(5, '@thuhoithuhoi@', 2, '2020-03-10 13:05:26', 1, 2),
(6, '@thuhoithuhoi@', 2, '2020-03-10 13:05:52', 1, 2),
(7, 'test 5', 2, '2020-03-10 13:06:30', 1, NULL),
(8, '@thuhoithuhoi@', 2, '2020-03-10 13:07:56', 1, 2),
(9, 'test 6', 2, '2020-03-10 13:08:18', 1, 2),
(10, 'test 6', 2, '2020-03-10 13:09:13', 1, 3),
(11, 'test 7', 2, '2020-03-10 13:10:05', 1, 3),
(12, 'chat vao cuối bài', 2, '2020-03-10 13:10:26', 1, NULL),
(13, 'trả lời', 2, '2020-03-10 13:10:34', 1, 3),
(14, 'test', 2, '2020-03-10 13:11:19', 1, NULL),
(15, 'test', 2, '2020-03-10 13:12:04', 1, NULL),
(16, 'test', 2, '2020-03-10 13:12:27', 1, NULL),
(17, 'aaaaa', 2, '2020-03-10 13:12:33', 1, NULL),
(18, 'aaaaa', 2, '2020-03-10 13:12:51', 1, NULL),
(19, 'aaaaaa', 2, '2020-03-10 13:13:12', 1, NULL),
(20, 'ádasdsadsadsa', 2, '2020-03-10 13:13:33', 1, NULL),
(21, 'Test comment của Tâm', 5, '2020-03-10 14:04:57', 1, 1),
(22, 'tao sắp xong rôi', 4, '2020-03-10 16:39:18', 1, 1),
(23, 'Hiếu', 4, '2020-03-10 17:55:07', 1, NULL),
(24, 'Sếp Thuận nhận xét', 4, '2020-03-10 20:48:01', 1, NULL),
(25, '@thuhoithuhoi@', 4, '2020-03-10 22:05:39', 2, NULL),
(26, 'tôi abc xyz', 4, '2020-03-10 22:05:56', 2, 25),
(27, 'Sếp Thuận nói: get highhh', 4, '2020-03-11 01:01:21', 1, 1),
(28, 'test', 2, '2020-03-12 14:48:10', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configure`
--

CREATE TABLE `configure` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `label` text COLLATE utf8_unicode_ci,
  `nhom` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configure`
--

INSERT INTO `configure` (`id`, `name`, `value`, `label`, `nhom`) VALUES
(1, 'post_per_page', '8', 'Số bài viết trên một trang', 'Cấu hình hiển thị'),
(2, 'product_per_page', '15', 'Số sản phẩm trên một trang', 'Cấu hình hiển thị'),
(3, 'product_involve', '15', 'Số sản phẩm liên quan', 'Cấu hình hiển thị'),
(4, 'product_highlight', '15', 'Số sản phẩm nổi bật', 'Cấu hình hiển thị'),
(5, 'product_best_selling', '15', 'Số sản phẩm bán chạy', 'Cấu hình hiển thị'),
(6, 'product_home_page', '15', 'Số sản phẩm hiện trang chủ', 'Cấu hình hiển thị'),
(7, 'news_involve', '15', 'Số tin tức nổi bật', 'Cấu hình hiển thị'),
(8, 'news_lastest', '1', 'Số tin tức mới nhất', 'Cấu hình hiển thị'),
(9, 'money_prefix', '', 'Tiền tố tiền tệ', 'Cấu hình chức năng'),
(10, 'money_suffix', '₫', 'Hậu tố tiền tệ', 'Cấu hình chức năng'),
(11, 'money_replace', 'Hết hàng', 'Chuỗi thay thế giá', 'Cấu hình chức năng'),
(12, 'company_name', 'KARION Team', 'Tên đơn vị/doanh nghiệp', 'Cấu hình mail'),
(13, 'company_email', '', 'Email', 'Cấu hình mail'),
(14, 'company_password', '', 'Password', 'Cấu hình mail'),
(15, 'company_mailhost', 'smtp.gmail.com', 'Host mail', 'Cấu hình mail'),
(16, 'facebook_sdk', '', 'Mã theo dõi Facebook SKD', 'Cấu hình mạng xã hội'),
(17, 'facebook_appid', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'ID App Facebook', 'Cấu hình mạng xã hội'),
(18, 'facebook_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết trang facebook', 'Cấu hình mạng xã hội'),
(19, 'google_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết trang google plus', 'Cấu hình mạng xã hội'),
(20, 'twitter_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết trang twitter', 'Cấu hình mạng xã hội'),
(21, 'youtube_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết trang youtube', 'Cấu hình mạng xã hội'),
(22, 'chat_box', '', 'Hộp chat online', 'Hộp chat online'),
(23, 'contact_cname', 'Phường Minh Đức', 'Tên công ty', 'Cấu hình liên hệ'),
(24, 'contact_slogan1', 'Chào mừng đến với website chính thức của UBND phường Minh Đức', 'Câu chào mừng', 'Cấu hình liên hệ'),
(25, 'contact_slogan2', '', 'Câu chào mừng 2', 'Cấu hình liên hệ'),
(26, 'contact_address', 'Km số 16, Tổ dân phố Nguyễn Huệ, Minh Đức, Đồ Sơn, Hải Phòng', 'Địa chỉ', 'Cấu hình liên hệ'),
(27, 'contact_address2', 'phuongminhduc.vn', 'Địa chỉ 2', 'Cấu hình liên hệ'),
(28, 'contact_email', 'ubndminhduc@gmail.com', 'Email', 'Cấu hình liên hệ'),
(29, 'contact_phone', '0225.3562.012', 'Điện thoại', 'Cấu hình liên hệ'),
(30, 'contact_fax', '0225.3562.012', 'Fax', 'Cấu hình liên hệ'),
(31, 'contact_hotline', '0225.3562.012', 'Hotline', 'Cấu hình liên hệ'),
(32, 'local_position', '', 'Vị trí', 'Local'),
(33, 'favicon', '/images/favicon/250px-Emblem_of_Vietnam.svg.png', 'Favicon', 'Local'),
(34, 'contact_logo', '/images/logo/250px-Emblem_of_Vietnam.svg.png', 'Logo', 'Local'),
(35, 'contact_logo_footer', '/images/logo/250px-Emblem_of_Vietnam.svg.png', 'Logo', 'Local'),
(36, 'ad_news', '', 'Banner quảng cáo trang tin tức', 'Local'),
(37, 'ad_news_link', '', 'Liên kết Banner quảng cáo trang tin tức', 'Local'),
(38, 'footer_certificate', 'Đã đăng ký chất lượng tại Karion Team', 'Chứng chỉ', 'Cấu hình footer'),
(39, 'pinterest_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết pinterest', 'Cấu hình mạng xã hội'),
(40, 'VAT', '', 'VAT', 'Cấu hình chức năng'),
(41, 'rss_link', 'https://www.facebook.com/ViettelHaiPhongBusinessSolutions/', 'Liên kết trang rss', 'Cấu hình mạng xã hội'),
(42, 'page_banner', '', 'Banner quảng cáo trang page', 'Local'),
(43, 'page_banner_link', '', 'Liên kết banner trang page', 'Local'),
(44, 'footer_facebook', 'Đã đăng ký chất lượng tại Karion Team', 'footer facebook', 'Cấu hình footer'),
(45, 'company_address', '14/594 Thiên Lôi', 'Địa chỉ', 'Cấu hình mail'),
(46, 'company_phone', '01678125686', 'SĐT', 'Cấu hình mail'),
(47, 'company_position', '14/594 Thiên Lôi', 'Vị trí', 'Cấu hình mail'),
(48, 'company_ceo', 'AnPham', 'CEO', 'Cấu hình mail');

-- --------------------------------------------------------

--
-- Table structure for table `congvanhanhchinh`
--

CREATE TABLE `congvanhanhchinh` (
  `id` int(11) NOT NULL,
  `sokyhieu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaybanhanh` date NOT NULL,
  `ngayhieuluc` date NOT NULL,
  `nguoiky` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trichyeu` text COLLATE utf8mb4_unicode_ci,
  `active` bit(1) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaivbhc_id` int(11) NOT NULL,
  `coquanbanhanh_id` int(11) NOT NULL,
  `Linhvucvanban_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `congvanhanhchinh`
--

INSERT INTO `congvanhanhchinh` (`id`, `sokyhieu`, `ngaybanhanh`, `ngayhieuluc`, `nguoiky`, `trichyeu`, `active`, `link`, `loaivbhc_id`, `coquanbanhanh_id`, `Linhvucvanban_id`) VALUES
(8, '1663/UBND-KTĐN', '2020-03-11', '2020-03-11', 'Phạm Hưng Hùng', 'Công văn về việc tạm hoãn đi công tác nước ngoài', b'1', '\\congvan\\02 _PHP can_ban_php.pdf', 2, 2, 2),
(9, '1666/UBND-VX', '2020-03-11', '2020-03-11', 'Trần Huy Kiên', 'Công văn về việc dạy học trên truyền hình đối với học sinh lớp 9 và lớp 12 trong thời gian học sinh nghỉ học do dịch bệnh COVID-19', b'1', '\\congvan\\di-1666-UBND-VX.signed.pdf', 4, 1, 6),
(10, '68/KH-UBND', '2020-03-09', '2020-03-09', 'Nguyễn Xuân Bình', 'Kế hoạch triển khai một số nhiệm vụ trọng tâm công tác thi đua, khen thưởng năm 2020', b'1', '\\congvan\\di-68-KH-UBND.signed.pdf', 2, 2, 3),
(11, '1129/UBND-MT', '2020-02-21', '2020-02-21', 'Trần Huy Kiên', 'Công văn về việc tăng cường biện pháp quản lý chất thải để phòng, chống dịch bệnh Covid-19 (do virut Corona chủng mới gây ra)', b'1', '\\congvan\\di-1129-UBND-MT.signed.pdf', 4, 1, 9),
(12, '1076/CTr-BCĐ', '2017-03-06', '2017-03-06', 'Lê Khắc Nam', 'Chương trình công tác Vì sự tiến bộ của Phụ nữ thành phố năm 2017', b'1', '\\congvan\\di-1076-CTr-BCD vì sự tiến bộ của phụ nữ.2017.pdf', 5, 2, 14),
(13, '94/TB-UBND', '2020-02-24', '2020-02-24', 'Trần Huy Kiên', 'Thông báo về việc thay đổi thời gian tổ chức tiếp công dân định kỳ tháng 02 năm 2020', b'1', '\\congvan\\di-94-TB-UBND.signed.pdf', 3, 3, 25);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address1` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_bcc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_content` text COLLATE utf8_unicode_ci,
  `about_image` text COLLATE utf8_unicode_ci,
  `about_url` text COLLATE utf8_unicode_ci,
  `footer` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `logo` text COLLATE utf8_unicode_ci,
  `logo_footer` text COLLATE utf8_unicode_ci,
  `site_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_desc` text COLLATE utf8_unicode_ci,
  `site_keyword` text COLLATE utf8_unicode_ci,
  `payment` text COLLATE utf8_unicode_ci,
  `gift` text COLLATE utf8_unicode_ci,
  `lang_id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coquanbanhanh`
--

CREATE TABLE `coquanbanhanh` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coquanbanhanh`
--

INSERT INTO `coquanbanhanh` (`id`, `ten`, `ghichu`) VALUES
(1, 'Đảng Ủy', 'ĐU'),
(2, 'Uỷ ban nhân dân (UBND)', 'UBND'),
(3, 'Hội đồng nhân dân (HĐND)', 'HĐND');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(2, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryaddress`
--

CREATE TABLE `deliveryaddress` (
  `id` int(11) NOT NULL,
  `city` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `macdinh` int(4) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL,
  `postcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_properties`
--

CREATE TABLE `detail_properties` (
  `id` int(11) NOT NULL,
  `properties_id` int(11) NOT NULL,
  `catproduct_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dienthoai`
--

CREATE TABLE `dienthoai` (
  `id` int(11) NOT NULL,
  `hang` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hãng sản xuất',
  `ten` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên điện thoại'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dienthoai`
--

INSERT INTO `dienthoai` (`id`, `hang`, `ten`) VALUES
(6, 'Apple', 'iPhone 6 (A1586, A1549)'),
(7, 'Apple', 'iPhone 6 Plus (A1522)'),
(8, 'Apple', 'iPad Air WiFi+Cellular (A1475)'),
(9, 'Apple', 'iPad (4th generation) WiFi + Cellular'),
(10, 'Apple', 'iPad Air 2 WifFi+Celluler (A1567)'),
(11, 'Apple', 'iPad Mini WiFi+Cellular (MM) (A1455)'),
(12, 'Samsung', 'SM-N910C Galaxy Note 4'),
(13, 'Samsung', 'SM-N9005 Galaxy Note 3'),
(14, 'Samsung', 'SM-G920F Galaxy S6'),
(15, 'Samsung', 'SHV-E250S Galaxy Note II'),
(16, 'Samsung', 'GT-I9505 Galaxy S4'),
(17, 'Samsung', 'SHV-E210K galaxy S3 LTE'),
(18, 'Samsung', 'SM-G925F Galaxy S6 edge'),
(19, 'Samsung', 'SM-T705 galaxy Tab S 8.4'),
(20, 'Samsung', 'A310'),
(21, 'Samsung', 'A510'),
(22, 'Samsung', 'A510'),
(23, 'Samsung', 'A710'),
(24, 'Samsung', 'SSA910'),
(25, 'Samsung', 'J200'),
(26, 'Samsung', 'J510'),
(27, 'Samsung', 'J710'),
(28, 'Samsung', 'SSG570'),
(29, 'Samsung', 'G610'),
(30, 'Samsung', 'SSN920'),
(31, 'Samsung', 'G920F'),
(32, 'Samsung', 'G925F'),
(33, 'Samsung', 'G928'),
(34, 'Samsung', 'G930F'),
(35, 'Samsung', 'G935F'),
(36, 'HTC', 'One'),
(37, 'HTC', 'One (M8) Dual SIM'),
(38, 'HTC', 'One (M8) (0P6B110)'),
(39, 'HTC', 'One SV'),
(40, 'HTC', 'DESIRE 628'),
(41, 'HTC', 'ONE E9'),
(42, 'Sony', 'D6653 Xperia Z3'),
(43, 'Sony', 'C6903 Xperia Z1'),
(44, 'Sony', 'D6503 Xperia Z2'),
(45, 'Sony', 'XPERIAX'),
(46, 'Sony', 'XPERIAXA'),
(47, 'Sony', 'XPERIAXAULTRA'),
(48, 'Blackberry', 'Q5'),
(49, 'Blackberry', 'Q10'),
(50, 'Blackberry', 'Z10'),
(51, 'Blackberry', 'Z30'),
(52, 'Blackberry', 'Passport (SQW100-1)'),
(53, 'Blackberry', 'Classic (SQC100-3)'),
(54, 'LG', 'F180K Optiums G'),
(55, 'LG', 'F240S Optimus G Pro'),
(56, 'LG', 'E975 Optimus G'),
(57, 'ASUS', 'Zenfone 2'),
(58, 'ASUS', 'Zenfone 3'),
(59, 'ASUS', 'Zenfone 3MAX'),
(60, 'HUAWEL', 'GR5'),
(61, 'HUAWEL', 'GR52017'),
(62, 'HUAWEL', 'GR5MINI'),
(63, 'HUAWEL', 'Y5II'),
(64, 'HUAWEL', 'Y6II'),
(65, 'HUAWEL', 'Y6PRO'),
(66, 'HUAWEL', 'Y6SCALE'),
(67, 'HUAWEL', 'ALICE'),
(68, 'HUAWEL', 'P9'),
(69, 'Lenovo', 'A2010'),
(70, 'Lenovo', 'A2020'),
(71, 'Lenovo', 'A7010'),
(72, 'Lenovo', 'VIBEP1'),
(73, 'Lenovo', 'P1MA40'),
(74, 'Microsoft', 'LUMIA550'),
(75, 'Microsoft', 'LUMIA650'),
(76, 'Microsoft', 'LUMIA950'),
(77, 'Microsoft', 'LUMIA950XL'),
(78, 'OppO', 'F1S Plus'),
(79, 'OppO', 'F1S'),
(80, 'LG', 'F240K Optimus G Pro');

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `id` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`id`, `keyword`, `text`) VALUES
(1, 'ubndminhduc', 'Quản trị hệ thống'),
(2, 'minhducdb', 'UBND Minh Đức');

-- --------------------------------------------------------

--
-- Table structure for table `filedinhkem`
--

CREATE TABLE `filedinhkem` (
  `id` int(11) NOT NULL,
  `ten` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `vanban_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filedinhkem`
--

INSERT INTO `filedinhkem` (`id`, `ten`, `link`, `ghichu`, `vanban_id`) VALUES
(1, 'CongNhatTemplate.xlsx', '/attachment/1583388706congnhattemplate.xlsx', NULL, 1),
(2, 'DanhSachCongNhat.xlsx', '/attachment/1583388706danhsachcongnhat.xlsx', NULL, 1),
(3, 'fancybox-master.zip', '/attachment/1583852686fancybox-master.zip', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grproctag`
--

CREATE TABLE `grproctag` (
  `id` int(11) NOT NULL,
  `tag` varchar(200) NOT NULL,
  `grproduct_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grproduct`
--

CREATE TABLE `grproduct` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linhvucvanban`
--

CREATE TABLE `linhvucvanban` (
  `id` int(11) NOT NULL,
  `ten` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linhvucvanban`
--

INSERT INTO `linhvucvanban` (`id`, `ten`, `ghichu`) VALUES
(1, 'Địa chính', ''),
(2, 'Tài chính', ''),
(3, 'Văn hóa - Thể thao & Du lịch', ''),
(4, 'Quân sự', ''),
(5, 'Y tế', ''),
(6, 'Giáo dục', ''),
(7, 'Công an', '\r\n'),
(8, 'Lao động - Thương binh và Xã hội', ''),
(9, 'Tài nguyên và Môi trường', ''),
(10, 'Công thương', ''),
(11, 'Ngoại vụ', ''),
(12, 'Thanh tra', ''),
(13, 'Doanh nghiệp', ''),
(14, 'Thông tin và Truyền thông', ''),
(15, 'Giáo dục đào tạo', ''),
(16, 'Nông nghiệp và PTNT', ''),
(17, 'Tư pháp', ''),
(18, 'Giao thông vận tải', ''),
(19, 'Phòng cháy chữa cháy', '\r\n'),
(20, 'Văn hóa - Thể thao & Du lịch', ''),
(21, 'Kế hoạch và Đầu tư', ''),
(22, 'Quốc phòng', ''),
(23, 'Xây dựng', ''),
(24, 'Khoa học và Công nghệ', ''),
(25, 'Nội vụ', '');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `lang_id` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaivanban`
--

CREATE TABLE `loaivanban` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên loại',
  `kyhieu` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaivanban`
--

INSERT INTO `loaivanban` (`id`, `ten`, `kyhieu`, `soluong`) VALUES
(1, 'Công văn', 'CV', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loaivbhc`
--

CREATE TABLE `loaivbhc` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaivbhc`
--

INSERT INTO `loaivbhc` (`id`, `ten`, `ghichu`) VALUES
(1, 'Lịch công tác', ''),
(2, 'Văn bản chỉ đạo', ''),
(3, 'Thông báo - Kết luận', ''),
(4, 'Công văn - Giấy mời', ''),
(5, 'Chương trình hành động', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `time` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `loai` text COLLATE utf8_unicode_ci NOT NULL,
  `banghi` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `new_tab` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menustyle` smallint(6) NOT NULL DEFAULT '0',
  `background` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `type`, `link`, `parent`, `ord`, `new_tab`, `active`, `symbol`, `menustyle`, `background`, `background1`, `lang_id`) VALUES
(1, 'Thông tin cần biết', NULL, 'bottom', '', NULL, 0, 0, 1, '', 0, '', '', NULL),
(2, 'Chính sách vận chuyển', NULL, 'bottom', '', 1, 2, 0, 1, '', 0, '', '', NULL),
(3, 'Chính sách bảo mật', NULL, 'bottom', '', 1, 3, 0, 1, '', 0, '', '', NULL),
(4, 'Hướng dẫn đổi hàng', NULL, 'bottom', '', 1, 4, 0, 1, '', 0, '', '', NULL),
(5, 'Phí vận chuyển', NULL, 'bottom', '', 1, 5, 0, 1, '', 0, '', '', NULL),
(6, 'Phương thức thanh toán', NULL, 'bottom', '', 1, 6, 0, 1, '', 0, '', '', NULL),
(7, 'Liên hệ', NULL, 'bottom', '', 1, 7, 0, 1, '', 0, '', '', NULL),
(8, 'Giới thiệu', NULL, 'bottom', '', 1, 8, 0, 1, '', 0, '', '', NULL),
(55, 'Trang chủ', NULL, 'top', '/', NULL, 0, 0, 1, '', 0, '', '', NULL),
(56, 'Hệ thống chính trị', NULL, 'top', '/', NULL, 1, 0, 1, '', 0, '', '', NULL),
(60, 'Đảng Uỷ', NULL, 'top', '', 56, 3, 0, 1, NULL, 0, NULL, NULL, NULL),
(61, 'Hội đồng nhân dân', NULL, 'top', '', 56, 4, 0, 1, NULL, 0, NULL, NULL, NULL),
(62, 'Ủy ban nhân dân', NULL, 'top', '', 56, 5, 0, 1, NULL, 0, NULL, NULL, NULL),
(63, 'Uỷ ban Mặt trận Tổ quốc', NULL, 'top', '/', 56, 6, 0, 1, NULL, 0, NULL, NULL, NULL),
(64, 'Đoàn thanh niên', NULL, 'top', '/doan-thanh-nien-l30.html', 56, 7, 0, 1, NULL, 0, NULL, NULL, NULL),
(65, 'Hội Liên hiệp Phụ nữ', NULL, 'top', '/hoi-lien-hiep-phu-nu-l31.html', 56, 8, 0, 1, NULL, 0, NULL, NULL, NULL),
(66, 'Hội Cựu chiến binh', NULL, 'top', '/hoi-cuu-chien-binh-l32.html', 56, 9, 0, 1, NULL, 0, NULL, NULL, NULL),
(67, 'Hội Nông dân', NULL, 'top', '/hoi-nong-dan-l33.html', 56, 10, 0, 1, NULL, 0, NULL, NULL, NULL),
(68, 'Hội Chữ thập đỏ', NULL, 'top', '/hoi-chu-thap-do-l34.html', 63, 8, 0, 1, NULL, 0, NULL, NULL, NULL),
(69, 'Hội Thanh niên xung phong ', NULL, 'top', '/hoi-thanh-nien-xung-phong-l35.html', 63, 9, 0, 1, NULL, 0, NULL, NULL, NULL),
(70, 'An sinh xã hội', NULL, 'top', '/an-sinh-xa-hoi-b25.html', NULL, 3, 1, 1, NULL, 0, NULL, NULL, NULL),
(71, 'Doanh nghiệp', NULL, 'top', '/doanh-nghiep-l29.html', NULL, 2, 0, 1, NULL, 0, NULL, NULL, NULL),
(72, 'Liên hệ', NULL, 'top', '/lien-he.html', NULL, 5, 0, 1, NULL, 0, NULL, NULL, NULL),
(73, 'Lịch công tác', NULL, 'top', '/lich-cong-tac-vb1.html', 60, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(74, 'Lịch công tác', NULL, 'top', '/lich-cong-tac-vb1.html', 61, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(75, 'Lịch công tác', NULL, 'top', '/lich-cong-tac-vb1.html', 62, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(76, 'Văn bản chỉ đạo', NULL, 'top', '/van-ban-chi-dao-vb2.html', 60, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(77, 'Văn bản chỉ đạo', NULL, 'top', '/van-ban-chi-dao-vb2.html', 61, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(78, 'Văn bản chỉ đạo', NULL, 'top', '/van-ban-chi-dao-vb2.html', 62, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(79, 'Chương trình hành động', NULL, 'top', '/chuong-trinh-hanh-dong-vb5.html', 60, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(80, 'Chương trình hành động', NULL, 'top', '/chuong-trinh-hanh-dong-vb5.html', 61, NULL, 0, 1, NULL, 0, NULL, NULL, NULL),
(81, 'Chương trình hành động', NULL, 'top', '/chuong-trinh-hanh-dong-vb5.html', 62, NULL, 0, 1, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1491532361),
('m130524_201442_init', 1491532373),
('m140506_102106_rbac_init', 1491555340);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `brief` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `posted_date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` tinyint(1) DEFAULT NULL,
  `cat_new_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `url`, `brief`, `content`, `posted_date`, `hot`, `home`, `active`, `luotxem`, `tags`, `seo_title`, `seo_keyword`, `seo_desc`, `lang_id`, `cat_new_id`) VALUES
(294, 'Thành lập và bổ nhiệm nhân sự Trung tâm Dịch vụ du lịch và Quản lý DTLSĐS', '/images/news/1583449768Cong bo 1 IMG_4850.jpg', 'thanh-lap-va-bo-nhiem-nhan-su-trung-tam-dich-vu-du-lich-va-quan-ly-dtlsds', '', '<p style=\"text-align:justify\">Quận Đồ Sơn tổ chức Hội nghị c&ocirc;ng bố c&aacute;c Quyết định về th&agrave;nh lập v&agrave; bổ nhiệm nh&acirc;n sự Trung t&acirc;m Dịch vụ du lịch v&agrave; Quản l&yacute; di t&iacute;ch lịch sử Đồ Sơn. Chiều ng&agrave;y 31/01/2020, Ủy ban nh&acirc;n d&acirc;n quận Đồ Sơn đ&atilde; tổ chức Hội nghị c&ocirc;ng bố c&aacute;c Quyết định về th&agrave;nh lập v&agrave; bổ nhiệm nh&acirc;n sự Trung t&acirc;m Dịch vụ du lịch v&agrave; Quản l&yacute; di t&iacute;ch lịch sử Đồ Sơn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://www.haiphong.gov.vn/PortalFolders/ImageUploads/QDS/167/N%C4%83m%202020/Cong%20bo%201%20IMG_4850.jpg\" style=\"height:312px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://www.haiphong.gov.vn/PortalFolders/ImageUploads/QDS/167/N%C4%83m%202020/Cong%20bo%202_IMG_4859.jpg\" style=\"height:394px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://www.haiphong.gov.vn/PortalFolders/ImageUploads/QDS/167/N%C4%83m%202020/Cong%20bo%203_IMG_4864.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tại Hội nghị, Ủy ban nh&acirc;n d&acirc;n quận đ&atilde; c&ocirc;ng bố Quyết định số 127/QĐ-UBND, ng&agrave;y 16/01/2020 &ldquo;Về việc s&aacute;p nhập Trung t&acirc;m Dịch vụ v&agrave; Ph&aacute;t triển Du lịch Đồ Sơn với Ban quản l&yacute; c&aacute;c di t&iacute;ch lịch sử quận Đồ Sơn để th&agrave;nh lập Trung t&acirc;m Dịch vụ du lịch v&agrave; Quản l&yacute; di t&iacute;ch lịch sử Đồ Sơn&rdquo; của Ủy ban nh&acirc;n d&acirc;n th&agrave;nh phố Hải Ph&ograve;ng; theo đ&oacute; s&aacute;p nhập Trung t&acirc;m Dịch vụ v&agrave; Ph&aacute;t triển Du lịch Đồ Sơn với Ban quản l&yacute; c&aacute;c di t&iacute;ch lịch sử quận Đồ Sơn để th&agrave;nh lập Trung t&acirc;m Dịch vụ du lịch v&agrave; Quản l&yacute; di t&iacute;ch lịch sử Đồ Sơn hoạt động kể từ ng&agrave;y 01/02/2020; đồng thời Ủy ban nh&acirc;n d&acirc;n quận cũng c&ocirc;ng bố c&aacute;c Quyết định về chức danh Gi&aacute;m đốc; ph&oacute; Gi&aacute;m đốc Trung t&acirc;m Dịch vụ du lịch v&agrave; Quản l&yacute; di t&iacute;ch lịch sử Đồ Sơn. Theo đ&oacute; đồng ch&iacute; Lưu Thị Thu Huyền được bổ nhiệm giữ chức Gi&aacute;m đốc; đồng ch&iacute; B&ugrave;i Đức Duy v&agrave; đồng ch&iacute; L&ecirc; Ho&agrave;ng Anh được bổ nhiệm giữ chức ph&oacute; Gi&aacute;m đốc Trung t&acirc;m kể từ ng&agrave;y 01 th&aacute;ng 02 năm 2020.</p>\r\n', '5/3/2020', 0, 1, 1, 1996, '', 'Quận Đồ Sơn tổ chức Hội nghị công bố các Quyết định về thành lập và bổ nhiệm nhân sự Trung tâm Dịch vụ du lịch và Quản lý di tích lịch sử Đồ Sơn.', '', 'Quận Đồ Sơn tổ chức Hội nghị công bố các Quyết định về thành lập và bổ nhiệm nhân sự Trung t', NULL, 1),
(295, 'CAQ Đồ Sơn: Triển khai các biện pháp phòng, chống dịch bệnh do virus Corona', '/images/news/1583450823NGAN_7429_-_Copy1580883948[1].jpg', 'caq-do-son-trien-khai-cac-bien-phap-phong-chong-dich-benh-do-virus-corona', '', '<p style=\"text-align:justify\">Theo đ&oacute;, Ban chỉ huy CAQ đ&atilde; y&ecirc;u cầu c&ocirc;ng an c&aacute;c phường, c&aacute;c đội trực thuộc thực hiện nghi&ecirc;m t&uacute;c, chủ động biện ph&aacute;p ph&ograve;ng, chống dịch; chuẩn bị sẵn s&agrave;ng lực lượng, phương tiện để ứng ph&oacute; kịp thời, hiệu quả. C&aacute;c CBCS khi tiếp x&uacute;c với c&ocirc;ng d&acirc;n phải đeo khẩu trang v&agrave; c&aacute;c dụng cụ bảo hộ khi l&agrave;m nhiệm vụ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" CAQ Đồ Sơn triển khai các biện pháp phòng, chống dịch virus Corona\" src=\"http://www.haiphong.gov.vn/PortalFolders/ImageUploads/QDS/167/N%C4%83m%202020/NGAN_7429_-_Copy1580883948.jpg\" style=\"height:343px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><em>CAQ Đồ Sơn triển khai c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch virus Corona</em></span></p>\r\n\r\n<p>Trong trường hợp c&ocirc;ng d&acirc;n đến l&agrave;m việc chưa c&oacute; khẩu trang, c&aacute;c CBCS phải ph&aacute;t khẩu trang cho c&ocirc;ng d&acirc;n để đảm bảo cho c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch được an to&agrave;n. Qua đ&oacute;, tuy&ecirc;n truyền tới nh&acirc;n d&acirc;n c&aacute;c khuyến c&aacute;o, hướng dẫn của Bộ y tế về c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch.</p>\r\n\r\n<p>Lực lượng CAP, an ninh, QLHC về TTXH phải h&agrave;ng ng&agrave;y, h&agrave;ng giờ cập nhật to&agrave;n bộ th&ocirc;ng tin kh&aacute;ch du lịch đến Đồ Sơn, đặc biệt l&agrave; người c&oacute; quốc tịch Trung Quốc; l&agrave;m tốt c&ocirc;ng t&aacute;c quản l&yacute; tạm tr&uacute;, tạm vắng tr&ecirc;n địa b&agrave;n; th&ocirc;ng tin đến c&aacute;c cơ sở kinh doanh dịch vụ lưu tr&uacute;, nh&agrave; nghỉ, c&aacute;c qu&aacute;n karaoke tr&ecirc;n địa b&agrave;n chấp h&agrave;nh nghi&ecirc;m chỉnh c&aacute;c quy định, văn bản của nh&agrave; nước về c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch; kịp thời b&aacute;o c&aacute;o đến cơ sở y tế c&aacute;c trường hợp c&oacute; dấu hiệu nghi nhiễm bệnh&hellip;</p>\r\n\r\n<p>B&ecirc;n cạnh c&ocirc;ng t&aacute;c chủ động ph&ograve;ng, chống dịch bệnh, Ban chỉ huy CAQ cũng chỉ đạo c&ocirc;ng an c&aacute;c phường, c&aacute;c đội li&ecirc;n quan chủ động điều tra, x&aacute;c minh, l&agrave;m r&otilde; c&aacute;c vụ việc che dấu hoặc đưa tin sai sự thật về virus Corona nhằm g&acirc;y t&acirc;m l&yacute; hoang mang trong quần ch&uacute;ng nh&acirc;n d&acirc;n.</p>\r\n', '6/3/2020', 0, 1, 1, 570, '', 'CAQ Đồ Sơn: Triển khai các biện pháp phòng, chống dịch bệnh do virus Corona', '', 'Theo đ&oacute;, Ban chỉ huy CAQ đ&atilde; y&ecirc;u cầu c&ocirc;ng an c&aacute;c phường, c&aacute;c đội trực thuộc thực hiện nghi&ecirc;', NULL, 1),
(296, 'Phường Minh Đức - Nét mới trong phong trào Toàn dân bảo vệ ANTQ', '/images/news/1584067417NGAN_80051566271002[1].jpg', 'phuong-minh-duc---net-moi-trong-phong-trao-toan-dan-bao-ve-antq', 'Nội dung tóm tắt', '<p style=\"text-align:justify\">Trước hết, đ&oacute; l&agrave; m&ocirc; h&igrave;nh &ldquo;Vận động đảm bảo ANTT trong c&ocirc;ng t&aacute;c GPMB thực hiện dự &aacute;n ph&aacute;t triển kinh tế - x&atilde; hội&rdquo;, gồm 5 tổ vận động với 65 th&agrave;nh vi&ecirc;n phụ tr&aacute;ch 5 tổ d&acirc;n phố c&oacute; dự &aacute;n đi qua. Bằng sự v&agrave;o cuộc quyết liệt của cả hệ thống ch&iacute;nh trị, gần 100 hội nghị; hơn 160 lượt vận động, h&ograve;a giải c&aacute;c hộ gia đ&igrave;nh cũng như phối hợp giải quyết c&aacute;c m&acirc;u thuẫn tranh chấp, kiến nghị của người d&acirc;n, đến nay 100% c&aacute;c hộ tr&ecirc;n địa b&agrave;n đ&atilde; đồng thuận nhận tiền chi trả đền b&ugrave; GPMB. C&ugrave;ng với &ldquo;Vận động bảo đảm ANTT trong c&ocirc;ng t&aacute;c Giải ph&oacute;ng mặt bằng thực hiện c&aacute;c dự &aacute;n ph&aacute;t triển kinh tế - x&atilde; hội&rdquo;, m&ocirc; h&igrave;nh &ldquo;Hệ thống Camera an ninh&rdquo; được triển khai từ th&aacute;ng 12-2018 cũng đ&atilde; được đ&aacute;nh gi&aacute; l&agrave; một m&ocirc; h&igrave;nh mang lại hiệu quả cao trong phong tr&agrave;o To&agrave;n d&acirc;n bảo vệ ANTQ của địa phương.<br />\r\n<br />\r\nVới 32 mắt camera được lắp đặt tr&ecirc;n tại c&aacute;c vị tr&iacute; trọng điểm, c&aacute;c cửa ng&otilde; ra v&agrave;o tr&ecirc;n địa b&agrave;n, mọi di biến động của c&aacute;c đối tượng lạ mặt, c&oacute; biểu hiện nghi vấn đều kh&ocirc;ng qua được &ldquo;mắt thần&rdquo; của lực lượng c&ocirc;ng an. Chỉ trong 6 th&aacute;ng đầu năm, khi hệ thống camera An ninh đi v&agrave;o hoạt động, CAP Minh Đức đ&atilde; nhanh ch&oacute;ng kh&aacute;m ph&aacute; 5 vụ trộm cắp t&agrave;i sản, thu giữ v&agrave; trao trả cho người bị hại nhiều t&agrave;i sản c&oacute; gi&aacute; trị như tivi, xe m&aacute;y, xe đạp điện&hellip; đồng thời, ph&ograve;ng ngừa kh&ocirc;ng để nạn trộm cắp, mất ANTT tr&ecirc;n địa b&agrave;n ph&aacute;t sinh.<br />\r\n<br />\r\nTrung t&aacute; Nguyễn Thanh T&ugrave;ng - Trưởng CAP Minh Đức cho biết, x&aacute;c định c&ocirc;ng t&aacute;c x&acirc;y dựng phong tr&agrave;o To&agrave;n d&acirc;n bảo vệ ANTQ l&agrave; nhiệm vụ trọng t&acirc;m, những năm qua, đơn vị đ&atilde; phối hợp chặt chẽ với c&aacute;c ban, ng&agrave;nh, đo&agrave;n thể l&agrave;m tốt c&ocirc;ng t&aacute;c vận động quần ch&uacute;ng, gi&uacute;p mọi người c&agrave;ng hiểu r&otilde; hơn tr&aacute;ch nhiệm trong giữ g&igrave;n ANTT. Nhờ đ&oacute;, người d&acirc;n trong phường ng&agrave;y c&agrave;ng tự gi&aacute;c đấu tranh, tố gi&aacute;c mọi h&agrave;nh vi hoạt động của tội phạm; cung cấp cho lực lượng c&ocirc;ng an h&agrave;ng trăm nguồn tin c&oacute; gi&aacute; trị, phục vụ ph&ograve;ng ngừa, trấn &aacute;p tội phạm. Chỉ t&iacute;nh trong 8 th&aacute;ng năm 2019, nhờ nguồn tin cung cấp từ quần ch&uacute;ng nh&acirc;n d&acirc;n, CAP Minh Đức đ&atilde; bắt 16 vụ phạm ph&aacute;p. Trong đ&oacute; c&oacute; 8 vụ cờ bạc; 5 vụ trộm cắp t&agrave;i sản; 3 vụ mua, b&aacute;n, t&agrave;ng trữ ma t&uacute;y&hellip;<br />\r\n<br />\r\nMặt kh&aacute;c, tr&ecirc;n địa b&agrave;n phường hiện nay c&ograve;n xuất hiện nhiều m&ocirc; h&igrave;nh quần ch&uacute;ng bảo vệ an ninh, trật tự như: &ldquo;Tổ d&acirc;n phố kh&ocirc;ng c&oacute; tội phạm, tện nạn x&atilde; hội&rdquo;, &ldquo;Tổ an ninh tự quản khu vực nu&ocirc;i trồng thủy sản&rdquo;, &ldquo;Tiếng kẻng an ninh&rdquo;&hellip;; c&aacute;c c&acirc;u lạc bộ như &ldquo;Phụ nữ với ph&aacute;p luật&rdquo;, &ldquo;N&ocirc;ng d&acirc;n với ph&aacute;p luật&rdquo;, cuộc vận động &ldquo;5 kh&ocirc;ng, 3 sạch&rdquo;&hellip; đ&atilde; v&agrave; đang g&oacute;p phần quan trọng trong bảo vệ an ninh quốc gia; ph&ograve;ng ngừa, đấu tranh, ngăn chặn c&aacute;c hoạt động tội phạm, tệ nạn x&atilde; hội, giữ vững ANCT, TTATXH, phục vụ c&oacute; hiệu quả nhiệm vụ ph&aacute;t triển kinh tế - x&atilde; hội của địa phương.</p>\r\n\r\n<p style=\"text-align:right\"><br />\r\nTheo Hải Ng&acirc;n-ANHP.VN</p>\r\n', '6/3/2020', 0, 1, 1, 309, '', 'Phường Minh Đức (Đồ Sơn): Nét mới trong phong trào Toàn dân bảo vệ ANTQ', '', 'Trước hết, đó là mô hình “Vận động đảm bảo ANTT trong công tác GPMB thực hiện dự á', NULL, 29),
(297, 'Phường Minh Đức - Chung tay tiêu thụ thịt lợn an toàn', '/images/news/158406574520190513_5cd8e6992a499[1].jpg', 'phuong-minh-duc---chung-tay-tieu-thu-thit-lon-an-toan', 'Chiều 10-5, phường Minh Đức (quận Đồ Sơn) phối hợp cùng các hộ chăn nuôi trên địa bàn khai trương “quầy bán thịt lợn an toàn” tại điểm Cổng làng Nghĩa Phương, thuộc TDP Nghĩa Phương. Đây là hoạt động nhằm hỗ trợ các hộ chăn nuôi tiêu thụ lợn thương p', '<p style=\"text-align:center\"><img alt=\"\" src=\"https://i0.wp.com/thanhphohaiphong.gov.vn/wp-content/uploads/2019/05/20190513_5cd8e6992a499.jpg?ssl=1\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Điểm b&aacute;n thịt lợn an to&agrave;n tại khu vực cổng l&agrave;ng Nghĩa Phương, phường Minh Đức, quận Đồ Sơn</em></p>\r\n\r\n<p style=\"text-align:justify\">Theo đ&oacute;, UBND phường Minh Đức sẽ hỗ trợ c&aacute;c hộ chăn nu&ocirc;i chi ph&iacute; giết mổ. Thịt lợn được kiểm dịch đảm bảo vệ sinh an to&agrave;n thực phẩm theo đ&uacute;ng quy tr&igrave;nh giết mổ.</p>\r\n\r\n<p style=\"text-align:justify\">Đồng thời, UBND phường cũng k&ecirc;u gọi c&aacute;c hộ d&acirc;n, cơ quan, doanh nghiệp ủng hộ mua thịt lợn sạch với số lượng lớn. Gi&aacute; thịt lợn được b&aacute;n ra dao động từ 50.000 &ndash; 80.000 đồng/kg.</p>\r\n\r\n<p style=\"text-align:justify\">Chỉ trong một buổi chiều mở b&aacute;n, địa phương đ&atilde; hỗ trợ hộ d&acirc;n ti&ecirc;u thụ được khoảng 3,5 tạ thịt lợn sạch. Trong những ng&agrave;y tiếp theo, địa phương tiếp tục mở th&ecirc;m c&aacute;c quầy thịt lợn an to&agrave;n tại 3 điểm tr&ecirc;n địa b&agrave;n v&agrave; dự kiến chương tr&igrave;nh sẽ diễn ra đến hết th&aacute;ng 5-2019.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>NP</strong></p>\r\n', '13/3/2020', 1, 1, 1, 901, '', 'Phường Minh Đức (Đồ Sơn): Chung tay tiêu thụ thịt lợn an toàn', '', '\r\nĐiểm bán thịt lợn an toàn tại khu vực cổng làng Nghĩa Phương, phường Minh Đức, quận Đồ Sơn\r\n\r\nTheo đ&o', NULL, 1),
(298, 'Diễn tập chiến đấu phòng thủ năm 2019', '/images/news/158406672520190614_5d037b317277f[1].jpg', 'dien-tap-chien-dau-phong-thu-nam-2019', 'Sáng 13-6, phường Minh Đức tổ chức diễn tập chiến đấu phòng thủ năm 2019. Cuộc diễn tập nhằm nâng cao năng lực lãnh đạo của cấp ủy Đảng, chỉ đạo điều hành của chính quyền và các ban, ngành, đoàn thể làm tham mưu trong tác chiến khu vực phòng thủ của ', '<p style=\"text-align:center\"><img alt=\"\" src=\"https://i2.wp.com/thanhphohaiphong.gov.vn/wp-content/uploads/2019/06/20190614_5d037b317277f.jpg?ssl=1\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Cuộc diễn tập diễn ra đ&uacute;ng kế hoạch v&agrave; bảo đảm an to&agrave;n tuyệt đối về người, vũ kh&iacute; trang bị</em></p>\r\n\r\n<p style=\"text-align:justify\">Cuộc diễn tập gồm 2 giai đoạn trong t&aacute;c chiến khu vực ph&ograve;ng thủ. Nội dung cuộc diễn tập đ&atilde; thể hiện sự thống nhất cao về nguy&ecirc;n tắc &ldquo;Đảng l&atilde;nh đạo; ch&iacute;nh quyền điều h&agrave;nh; c&aacute;c ban, ng&agrave;nh, đo&agrave;n thể l&agrave;m tham mưu&rdquo;; trong đ&oacute;, lực lượng C&ocirc;ng an, Qu&acirc;n sự l&agrave;m n&ograve;ng cốt.</p>\r\n\r\n<p style=\"text-align:justify\">Đồng thời, ph&aacute;t huy được sức mạnh tổng hợp của cả hệ thống ch&iacute;nh trị trong l&atilde;nh đạo, chỉ đạo, điều h&agrave;nh v&agrave; triển khai thực hiện chuyển địa phương v&agrave;o c&aacute;c trạng th&aacute;i về quốc ph&ograve;ng, xử l&yacute; c&aacute;c t&igrave;nh huống đột xuất, bất ngờ, bảo vệ khu vực phong thủ.</p>\r\n\r\n<p style=\"text-align:justify\">Cuộc diễn tập được thực hiện đ&uacute;ng nội dung, kế hoạch v&agrave; bảo đảm an to&agrave;n tuyệt đối về người, vũ kh&iacute; trang bị; g&oacute;p phần x&acirc;y dựng nền quốc ph&ograve;ng to&agrave;n d&acirc;n, thế trận quốc ph&ograve;ng to&agrave;n d&acirc;n gắn với thế trận an ninh nh&acirc;n d&acirc;n tr&ecirc;n địa b&agrave;n ng&agrave;y c&agrave;ng vững chắc.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>NP</strong></p>\r\n', '13/3/2020', 0, 1, 1, 0, '', 'Diễn tập chiến đấu phòng thủ năm 2019', '', '\r\n\r\nCuộc diễn tập diễn ra đ&uacute;ng kế hoạch v&agrave; bảo đảm an to&agrave;n tuyệt đối về người, vũ kh&iacute; trang bị\r\n\r', NULL, 1),
(299, 'Mô hình đảm bảo ANTT trong GPMB: Đẩy nhanh tiến độ thực hiện dự án trọng điểm', '/images/news/1584067100NGAN_781532682955[1].JPG', 'mo-hinh-dam-bao-antt-trong-gpmb-day-nhanh-tien-do-thuc-hien-du-an-trong-diem', 'Tình hình ANTT trên địa bàn ổn đinh, 185/ 254 hộ gia đình, cá nhân, tổ chức đã đồng thuận phương án bồi thường GPMB giai đoạn I Dự án xây dựng tuyến đường bộ ven biển đi qua. Đó là kết quả đáng ghi nhận tại phường Minh Đức, quận Đồ Sơn trong gần 1 nă', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://media.anhp.vn:8081/files/nganpham/NGAN_781532682955.JPG\" style=\"height:563px; width:750px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>C&aacute;c c&aacute; nh&acirc;n c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong c&ocirc;ng t&aacute;c đảm bảo ANTT tr&ecirc;n địa b&agrave;n phường Minh Đức năm 2017</em></p>\r\n\r\n<p style=\"text-align:justify\">Phường Minh Đức c&oacute; tổng diện t&iacute;ch đất tự nhi&ecirc;n l&agrave; 533,2922 ha nằm ở ph&iacute;a Bắc quận Đồ Sơn. Với gần 6.000 nh&acirc;n khẩu, người d&acirc;n nơi đ&acirc;y chủ yếu sống bằng sản xuất n&ocirc;ng nghiệp, phi n&ocirc;ng nghiệp v&agrave; dịch vụ, nu&ocirc;i trồng thủy sản. Điều kiện kinh tế, đời sống của b&agrave; con gặp nhiều kh&oacute; khăn, cơ sở hạ tầng c&ograve;n thấp k&eacute;m.</p>\r\n\r\n<p style=\"text-align:justify\">Thời gian qua, c&ugrave;ng với sự ph&aacute;t triển của quận v&agrave; th&agrave;nh phố, phường Minh Đức dần chuyển m&igrave;nh với nhiều dự &aacute;n ph&aacute;t triển KT - XH được đầu tư, x&acirc;y dựng. Đặc biệt, năm 2017, Dự &aacute;n quốc gia đầu tư x&acirc;y dựng tuyến đường bộ ven biển đi qua địa b&agrave;n phường Minh Đức với chiều d&agrave;i 2,9km, diện t&iacute;ch đất phải thu hồi l&agrave; 148.451,7 m2 của 274 hộ gia đ&igrave;nh, c&aacute; nh&acirc;n, tổ chức đ&atilde; được triển khai.</p>\r\n\r\n<p style=\"text-align:justify\">X&aacute;c định đ&acirc;y l&agrave; dự &aacute;n trọng điểm, c&oacute; t&aacute;c động lớn đến ANTT v&agrave; KT-XH kh&ocirc;ng chỉ ri&ecirc;ng đối với địa phương, phường Minh Đức đ&atilde; ban h&agrave;nh nghị quyết chuy&ecirc;n đề ri&ecirc;ng về c&ocirc;ng t&aacute;c GPMB bằng sự v&agrave;o cuộc của cả hệ thống ch&iacute;nh trị.</p>\r\n\r\n<p style=\"text-align:justify\">Về cơ bản, phần lớn c&aacute;c hộ d&acirc;n đều nhất tr&iacute;, phối hợp tốt với c&aacute;c cơ quan chức năng trong c&ocirc;ng t&aacute;c kiểm k&ecirc; t&agrave;i sản, vật kiến tr&uacute;c, c&acirc;y cối phục vụ phương &aacute;n bồi thường hỗ trợ, t&aacute;i định cư thực hiện Dự &aacute;n.</p>\r\n\r\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n, thời điểm đ&oacute;, c&ocirc;ng t&aacute;c GPMB kh&ocirc;ng tr&aacute;nh khỏi gặp trở ngại như chưa c&oacute; phương &aacute;n đền b&ugrave; v&agrave; t&aacute;i định cư ch&iacute;nh thức cho c&aacute;c hộ d&acirc;n thuộc diện giải tỏa, ch&iacute;nh s&aacute;ch bồi thường, t&aacute;i định cư c&ograve;n một số bất cập khiến số &iacute;t người d&acirc;n chưa đồng thuận. Một số hộ chưa c&oacute; căn cứ đầy đủ để x&aacute;c định về nguồn gốc sử dụng đất, g&acirc;y kh&oacute; khăn trong việc tuy&ecirc;n truyền, vận động nh&acirc;n d&acirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">B&ecirc;n cạnh đ&oacute;, việc thu hồi đất để GPMB thực hiện Dự &aacute;n cũng t&aacute;c động mạnh đến quyền lợi v&agrave; nghĩa vụ cũng như t&acirc;m tư, t&igrave;nh cảm của b&agrave; con; ph&aacute;t sinh nhiều t&igrave;nh huống phức tạm ảnh hưởng đến ANTT như: m&acirc;u thuẫn, tranh chấp, đơn thư khiếu kiện k&eacute;o d&agrave;i, ngăn cản thi c&ocirc;ng cưỡng chế, chống người thi h&agrave;nh c&ocirc;ng vụ.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, một số đối tượng xấu c&ograve;n lợi dụng những sơ hở, thiếu s&oacute;t trong qu&aacute; tr&igrave;nh triển khai thực hiện dự &aacute;n để chống đối k&iacute;ch động người d&acirc;n, chia rẽ đo&agrave;n kết, g&acirc;y ra c&aacute;c vụ việc vi phạm ph&aacute;p luật&hellip;</p>\r\n\r\n<p style=\"text-align:justify\">Trước t&igrave;nh h&igrave;nh thực tế tr&ecirc;n, th&aacute;ng 8-2017, CAP Minh Đức đ&atilde; tham mưu cho Đảng ủy, UBND phường x&acirc;y dựng th&agrave;nh c&ocirc;ng m&ocirc; h&igrave;nh d&acirc;n vận kh&eacute;o &ldquo;Vận động đảm bảo ANTT trong c&ocirc;ng t&aacute;c GPMB thực hiện dự &aacute;n ph&aacute;t triển KT - XH&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Theo đ&oacute;, CAP đ&atilde; phối hợp với UBND phường x&acirc;y dựng 5 tổ vận động tuy&ecirc;n truyền nh&acirc;n d&acirc;n thuộc 5 tổ d&acirc;n phố c&oacute; Dự &aacute;n trọng điểm đi qua;&nbsp; đồng thời huy động được một số quần ch&uacute;ng ưu t&uacute; tham gia.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, CBCS đơn vị trực tiếp xuống cơ sở, vận động, giải th&iacute;ch gi&uacute;p người d&acirc;n hiểu v&agrave; tự nguyện b&agrave;n giao mặt bằng, phục vụ thực hiện Dự &aacute;n. Ri&ecirc;ng lực lượng CSKV thực hiện nghi&ecirc;m t&uacute;c c&aacute;c mặt c&ocirc;ng t&aacute;c nghiệp vụ, nắm bắt t&igrave;nh h&igrave;nh địa phương, kịp thời ngăn chặn kh&ocirc;ng để c&aacute;c đội tượng phản động, cơ hội ch&iacute;nh trị hoạt động, giải quyết tốt những m&acirc;u thuẫn trong nội bộ nh&acirc;n d&acirc;n.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://media.anhp.vn:8081/files/nganpham/NGAN_771532682955.JPG\" style=\"height:563px; width:750px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>C&aacute;c c&aacute; nh&acirc;n c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong c&ocirc;ng t&aacute;c đảm bảo ANTT tr&ecirc;n địa b&agrave;n phường Minh Đức năm 2017</em></p>\r\n\r\n<p style=\"text-align:justify\">Trung t&aacute; Nguyễn Thanh T&ugrave;ng &ndash; Trưởng CAP Minh Đức cho biết, c&ocirc;ng t&aacute;c thu hồi đất, GPMB l&agrave; nhiệm vụ ch&iacute;nh trị trọng t&acirc;m của địa phương song cũng đặt ra th&aacute;ch thức rất lớn trong c&ocirc;ng t&aacute;c đảm bảo ANTT. M&ocirc; h&igrave;nh &ldquo;Vận động đảm bảo ANTT trong c&ocirc;ng t&aacute;c GPMB thực hiện dự &aacute;n ph&aacute;t triển KT - XH&rdquo; l&agrave; m&ocirc; h&igrave;nh hết sức thiết thực, hiệu quả v&agrave; được coi l&agrave; nh&acirc;n tố cốt l&otilde;i của phong tr&agrave;o &ldquo;To&agrave;n d&acirc;n bảo vệ ANTQ&rdquo; tr&ecirc;n địa b&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;Cũng theo Trung t&aacute; Nguyễn Thanh T&ugrave;ng, sau gần một năm đi v&agrave;o hoạt động, m&ocirc; h&igrave;nh tr&ecirc;n đ&atilde; được người d&acirc;n trong phường hết sức ủng hộ. Dưới sự tham mưu của lực lượng C&ocirc;ng an, UBND phường đ&atilde; tổ chức hơn 70 hội nghị tuy&ecirc;n truyền, phổ biến ph&aacute;p luật v&agrave; c&aacute;c vấn đề li&ecirc;n quan đến GPMB Dự &aacute;n tuyến đường bộ ven biển tới quần ch&uacute;ng nh&acirc;n d&acirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">Trong thời điểm kiểm k&ecirc; giai đoạn 1 Dự &aacute;n, UBND phường c&ugrave;ng lực lượng CAP phường c&ograve;n tiến h&agrave;nh hơn 100 lượt vận động c&aacute;c hộ d&acirc;n, thực hiện hơn 40 cuộc đối thoại trực tiếp giải quyết c&aacute;c kiến nghị, thắc mắc trong nh&acirc;n d&acirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">Nhờ l&agrave;m tốt c&ocirc;ng t&aacute;c d&acirc;n vận, cũng như lu&ocirc;n b&aacute;m s&aacute;t v&agrave;o chủ trương của Nh&agrave; nước, đặc biệt l&agrave; lợi &iacute;ch kinh tế khi Dự &aacute;n ho&agrave;n th&agrave;nh v&agrave; đưa v&agrave;o sử dụng, trong qu&aacute; tr&igrave;nh triển khai m&ocirc; h&igrave;nh, phường Minh Đức đ&atilde; xuất hiện rất nhiều tấm gương ti&ecirc;u biểu của quần ch&uacute;ng như gia đ&igrave;nh &ocirc;ng Lưu Xu&acirc;n Ngũ, ở tổ d&acirc;n phố Nguyễn Huệ, gia đ&igrave;nh &ocirc;ng Ngũ đ&atilde; chấp h&agrave;nh di dời c&ocirc;ng tr&igrave;nh nh&agrave; 2 tầng mặt đường 353 c&oacute; diện t&iacute;ch 150 m2; gia đ&igrave;nh &ocirc;ng Nguyễn Quang Cường, ở tổ d&acirc;n phố Ng&ocirc; Quyền, đ&atilde; đồng thuận với phương &aacute;n GPMB ngay từ đầu, b&agrave;n giao to&agrave;n bộ diện t&iacute;ch 2000 m2 đất nu&ocirc;i trồng thủy sản, đất n&ocirc;ng nghiệp; hộ &ocirc;ng Nguyễn Văn Hu&acirc;n, ở tổ d&acirc;n phố Quang Trung, đ&atilde; tự nguyện giao khoảng 850 m2 mặt bằng v&agrave; vật kiến tr&uacute;c phục vụ Dự &aacute;n.</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng những di dời sớm nhất, c&aacute;c hộ gia đ&igrave;nh tr&ecirc;n c&ograve;n tham gia vận động c&aacute;c hộ kh&aacute;c chấp h&agrave;nh chủ trương của nh&agrave; nước trong c&ocirc;ng t&aacute;c GPMB.</p>\r\n\r\n<p style=\"text-align:justify\">Đến thời điểm hiện tại, hầu hết người d&acirc;n thuộc địa b&agrave;n phường Minh Đức c&oacute; Dự &aacute;n đi qua đ&atilde; đồng thuận với phương &aacute;n, chủ trương của nh&agrave; nước. C&ocirc;ng t&aacute;c GPMB giai đoạn I của Dự &aacute;n đ&atilde; ho&agrave;n th&agrave;nh, 183 hộ gia đ&igrave;nh, c&aacute; nh&acirc;n v&agrave; 2 tổ chức đ&atilde; đồng thuận phương &aacute;n bồi thường, với tổng kinh ph&iacute; 85.044.858.247 đồng. Qua c&ocirc;ng t&aacute;c tuy&ecirc;n truyền, vận động, đến nay đ&atilde; c&oacute; 27 hộ đồng thuận cho Nh&agrave; nước thu hồi đất trước thời hạn.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute; thể n&oacute;i, m&ocirc; h&igrave;nh d&acirc;n vận kh&eacute;o &ldquo;Vận động đảm bảo ANTT trong c&ocirc;ng t&aacute;c GPMB thực hiện dự &aacute;n ph&aacute;t triển KT - XH&rdquo; tại phường Minh Đức, quận Đồ Sơn đ&atilde; thực sự ph&aacute;t huy hiệu quả hết sức t&iacute;ch cực trong thời điểm hiện nay. M&ocirc; h&igrave;nh cần được sơ kết, r&uacute;t kinh nghiệm v&agrave; nh&acirc;n rộng tại c&aacute;c địa b&agrave;n &nbsp;kh&aacute;c c&oacute; Dự &aacute;n trọng điểm về kinh tế - x&atilde; hội của th&agrave;nh phố.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hải Ng&acirc;n</strong></p>\r\n', '13/3/2020', 0, 1, 1, 0, '', 'Mô hình đảm bảo ANTT trong GPMB: Đẩy nhanh tiến độ thực hiện dự án trọng điểm', '', '\r\n\r\nC&aacute;c c&aacute; nh&acirc;n c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong c&ocirc;ng t&aacute;c đảm bảo ANTT tr&ecirc;n địa b&agrave', NULL, 1),
(300, 'Tập huấn hướng dẫn khai báo trực tuyến sức khỏe toàn dân', '/images/news/1584076463132260803157453579_Hp[1].jpg', 'tap-huan-huong-dan-khai-bao-truc-tuyen-suc-khoe-toan-dan', 'Ngày 12/2, tại các địa phương trên địa bàn thành phố Hải Phòng, Lễ giao nhận quân đã diễn ra đảm bảo nhanh gọn, chặt chẽ, an toàn. Các tân binh đều phấn khởi, tự hào sẵn sàng lên đường thực hiện nghĩa vụ thiêng liêng với Tổ quốc.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://doanthanhnien.vn/Content/uploads/images/132260803157453579_Hp.jpg\" style=\"height:501px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Thanh ni&ecirc;n Hải ph&ograve;ng hăng h&aacute;i l&ecirc;n đường nhập ngũ</em></p>\r\n\r\n<p style=\"text-align:justify\">Năm 2020, th&agrave;nh phố Hải Ph&ograve;ng được Thủ tướng Ch&iacute;nh phủ giao tuyển chọn, gọi 2.500 c&ocirc;ng d&acirc;n nhập ngũ v&agrave; 253 c&ocirc;ng d&acirc;n thực hiện nghĩa vụ tham gia c&ocirc;ng an nh&acirc;n d&acirc;n. Căn cứ chỉ ti&ecirc;u tuyển chọn, gọi c&ocirc;ng d&acirc;n nhập ngũ v&agrave; thực hiện nghĩa vụ tham gia c&ocirc;ng an nh&acirc;n d&acirc;n của th&agrave;nh phố, c&aacute;c cấp bộ Đo&agrave;n phối hợp c&ugrave;ng c&aacute;c ng&agrave;nh hướng dẫn, triển khai tổ chức thực hiện đảm bảo d&acirc;n chủ, c&ocirc;ng khai, đ&uacute;ng luật.</p>\r\n\r\n<p style=\"text-align:justify\">S&aacute;ng 11/2, đồng ch&iacute; L&ecirc; Văn Th&agrave;nh, Ủy vi&ecirc;n Trung ương Đảng, B&iacute; thư Th&agrave;nh ủy, Chủ tịch HĐND th&agrave;nh phố v&agrave; đồng ch&iacute; Chuẩn đ&ocirc; đốc Nguyễn Trọng B&igrave;nh, Ph&oacute; Tổng Tham mưu trưởng Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam dự Lễ giao nhận qu&acirc;n tại huyện Vĩnh Bảo, động vi&ecirc;n c&aacute;c t&acirc;n binh tiếp tục ph&aacute;t huy tinh thần, tr&aacute;ch nhiệm, kh&ocirc;ng ngừng n&acirc;ng cao bản lĩnh ch&iacute;nh trị vững v&agrave;ng, đạo đức c&aacute;ch mạng, t&iacute;ch cực tu dưỡng, r&egrave;n luyện, ho&agrave;n th&agrave;nh tốt nhiệm vụ được giao.</p>\r\n\r\n<p style=\"text-align:justify\">Năm nay, huyện Vĩnh Bảo c&oacute; 305 c&ocirc;ng d&acirc;n ưu t&uacute; nhập ngũ thực hiện nghĩa vụ qu&acirc;n sự tại c&aacute;c đơn vị gồm: Sư đo&agrave;n 395, Lữ đo&agrave;n 603, Qu&acirc;n khu 3, Sư đo&agrave;n 363 v&agrave; 365 Ph&ograve;ng kh&ocirc;ng - Kh&ocirc;ng qu&acirc;n, Trung đo&agrave;n 50 Bộ Chỉ huy qu&acirc;n sự th&agrave;nh phố Hải Ph&ograve;ng, V&ugrave;ng 1 Hải qu&acirc;n, Bộ đội bi&ecirc;n ph&ograve;ng Hải Ph&ograve;ng v&agrave; 5 c&ocirc;ng d&acirc;n tham gia thực hiện nghĩa vụ C&ocirc;ng an nh&acirc;n d&acirc;n tại C&ocirc;ng an th&agrave;nh phố.</p>\r\n\r\n<p style=\"text-align:justify\">C&ocirc;ng t&aacute;c tuyển qu&acirc;n đ&atilde; được hội đồng nghĩa vụ qu&acirc;n sự huyện trực tiếp lựa chọn v&agrave; quyết định danh s&aacute;ch t&acirc;n binh theo chỉ ti&ecirc;u số lượng được giao. C&aacute;c c&ocirc;ng d&acirc;n được gọi nhập ngũ c&oacute; đủ ti&ecirc;u chuẩn về phẩm chất ch&iacute;nh trị, tr&igrave;nh độ văn h&oacute;a, sức khỏe, phấn khởi quyết t&acirc;m ho&agrave;n th&agrave;nh tốt nhiệm vụ được giao.</p>\r\n\r\n<p style=\"text-align:justify\">C&ugrave;ng với huyện Vĩnh Bảo, Đo&agrave;n Thanh ni&ecirc;n c&aacute;c Quận, Huyện đo&agrave;n đồng loạt phối hợp với c&aacute;c ng&agrave;nh li&ecirc;n quan tổ chức tiễn qu&acirc;n nh&acirc;n l&ecirc;n đường nhập ngũ với kh&ocirc;ng kh&iacute; s&ocirc;i nổi, vui tươi, an to&agrave;n.</p>\r\n\r\n<p style=\"text-align:right\"><em>Thu Hằng, TĐ Hải Ph&ograve;ng-BA</em></p>\r\n', '13/3/2020', 0, 1, 1, 77, '', 'Tập huấn hướng dẫn khai báo trực tuyến sức khỏe toàn dân', '', '\r\n\r\nThanh ni&ecirc;n Hải ph&ograve;ng hăng h&aacute;i l&ecirc;n đường nhập ngũ\r\n\r\nNăm 2020, th&agrave;nh phố Hải Ph&ograve;ng được Thủ ', NULL, 30),
(301, 'Tích cực chung tay phòng, chống dịch COVID-19', '/images/news/1584076541132261418651434717_hpkt[1].jpg', 'tich-cuc-chung-tay-phong-chong-dich-covid-19', 'Cùng với cả nước, tuổi trẻ thành phố Hải Phòng chung tay phòng chống dịch viêm đường hô hấp cấp do chủng mới của virus Corona gây ra (nay gọi là COVID-19), các cấp bộ Đoàn trên địa bàn đồng loạt ra quân tuyên truyền và phát khẩu trang miễn phí phòng ', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://doanthanhnien.vn/Content/uploads/images/132261418651434717_hpkt.jpg\" style=\"height:434px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>ĐVTN ra qu&acirc;n ph&aacute;t khẩu trang miễn ph&iacute; cho nh&acirc;n d&acirc;n tr&ecirc;n địa b&agrave;n Th&agrave;nh phố</em></p>\r\n\r\n<p style=\"text-align:justify\">Trước diễn biến phức tạp của dịch bệnh nCoV, những ng&agrave;y qua, tuổi trẻ Hải Ph&ograve;ng đ&atilde; c&oacute; nhiều hoạt động hết sức thiết thực nhằm ph&aacute;t huy vai tr&ograve; xung k&iacute;ch t&igrave;nh nguyện của thanh ni&ecirc;n trong việc chung tay ph&ograve;ng, chống dịch bệnh, bảo vệ sức khỏe cộng đồng.</p>\r\n\r\n<p style=\"text-align:justify\">Cụ thể, Ban Thường vụ Th&agrave;nh đo&agrave;n đ&atilde; ban h&agrave;nh C&ocirc;ng văn số 2997 ng&agrave;y 31/01/2020 về tăng cường c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch bệnh vi&ecirc;m đường h&ocirc; hấp cấp do chủng virus Corona. Theo đ&oacute;, y&ecirc;u cầu c&aacute;c Quận, Huyện đo&agrave;n, Đo&agrave;n trực thuộc v&agrave; c&aacute;c đơn vị sự nghiệp trực thuộc Th&agrave;nh đo&agrave;n tuy&ecirc;n truyền, vận động đến đ&ocirc;ng đảo đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n v&agrave; nh&acirc;n d&acirc;n về diễn biến của dịch bệnh vi&ecirc;m đường h&ocirc; hấp cấp do chủng mới của virus Corona (nay gọi l&agrave; COVID-19) g&acirc;y ra v&agrave; c&aacute;c biện ph&aacute;p ph&ograve;ng chống dịch bệnh tại cộng đồng.</p>\r\n\r\n<p style=\"text-align:justify\">Theo đ&oacute; c&aacute;c cấp bộ Đo&agrave;n đ&atilde; ra qu&acirc;n tuy&ecirc;n truyền tr&ecirc;n loa ph&aacute;t thanh, mạng x&atilde; hội Facebook, Zalo, ph&aacute;t tờ rơi, &aacute;p ph&iacute;ch c&oacute; nội dung về tuy&ecirc;n truyền ph&ograve;ng, chống virus COVID-19, từ đ&oacute; tạo hiệu ứng t&iacute;ch cực trong đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n v&agrave; nh&acirc;n d&acirc;n, hiểu đ&uacute;ng, hiểu đủ, tr&aacute;nh hoang mang hoặc chủ quan. B&ecirc;n cạnh đ&oacute;, tận dụng c&aacute;c nguồn lực x&atilde; hội ho&aacute;, tuổi trẻ th&agrave;nh phố đ&atilde; ra quan ph&aacute;t miễn ph&iacute; gần 30.000 khẩu trang tới&nbsp; đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n, v&agrave; nh&acirc;n d&acirc;n tr&ecirc;n địa b&agrave;n th&agrave;nh phố.</p>\r\n\r\n<p style=\"text-align:justify\">Thực hiện sự chỉ đạo của Thủ tướng Ch&iacute;nh phủ về &ldquo;chống dịch như chống giặc&rdquo; v&agrave; Th&agrave;nh ủy Hải Ph&ograve;ng, trong những ng&agrave;y tới tuổi trẻ th&agrave;nh phố Hải Ph&ograve;ng tiếp tục tổ chức c&aacute;c đợt dọn vệ sinh, tuy&ecirc;n truyền v&agrave; vận động c&aacute;c nguồn x&atilde; hội ho&aacute; để mua khẩu trang, nước s&aacute;t khuẩn để ph&aacute;t miễn ph&iacute; tới người d&acirc;n nhằm ph&ograve;ng chống dịch hiệu quả.</p>\r\n\r\n<p style=\"text-align:right\">Thu Hằng, TĐ Hải Ph&ograve;ng-BA</p>\r\n', '13/3/2020', 0, 1, 1, 0, '', 'Tích cực chung tay phòng, chống dịch COVID-19', '', '\r\n\r\nĐVTN ra qu&acirc;n ph&aacute;t khẩu trang miễn ph&iacute; cho nh&acirc;n d&acirc;n tr&ecirc;n địa b&agrave;n Th&agrave;nh phố\r\n\r\nTrước di??', NULL, 30),
(302, 'Thanh niên Hải Phòng tình nguyện, sáng tạo vì cộng đồng', '/images/news/1584076626132275972969169595_Hp[1].jpg', 'thanh-nien-hai-phong-tinh-nguyen-sang-tao-vi-cong-dong', 'Hưởng ứng Tháng Thanh niên 2020, căn cứ tình hình thực tế, Thành đoàn Hải Phòng chỉ đạo Quận đoàn Ngô Quyền đăng cai cấp thành phố tổ chức các hoạt động thiết thực hưởng ứng Tháng Thanh niên 2020.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://doanthanhnien.vn/Content/uploads/images/132275972969169595_Hp.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>ĐTN th&agrave;nh phố HP ra qu&acirc;n x&oacute;a điểm đen về m&ocirc;i trường, thực hiện m&ocirc; h&igrave;nh đổi r&aacute;c lấy c&acirc;y, ph&aacute;t khẩu trang, nước rửa s&aacute;t khuẩn miễn ph&iacute;</em></p>\r\n\r\n<p style=\"text-align:justify\">Đồng thời, Ban thường vụ Th&agrave;nh đo&agrave;n đ&atilde; chỉ đạo 100% c&aacute;c Quận, Huyện đo&agrave;n, Đo&agrave;n trực thuộc ra qu&acirc;n hưởng ứng &ldquo;Ng&agrave;y Chủ nhật xanh to&agrave;n quốc&rdquo;, x&oacute;a điểm đen về vệ sinh m&ocirc;i trường v&agrave; tặng khẩu trang, nước xịt khuẩn miễn ph&iacute; để ph&ograve;ng, chống dịch SASR-CoV-2.</p>\r\n\r\n<p style=\"text-align:justify\">Trước t&igrave;nh h&igrave;nh diễn biến bức phức tạp của dịch bệnh vi&ecirc;m đường h&ocirc; hấp cấp do chủng virus mới Corona (SASR-CoV-2), Ban Thường vụ Th&agrave;nh đo&agrave;n chỉ đạo c&aacute;c Quận, Huyện đo&agrave;n, Đo&agrave;n trực thuộc chủ động điều chỉnh nội dung v&agrave; phương thức hoạt động của c&aacute;c cấp bộ Đo&agrave;n trong Th&aacute;nh Thanh ni&ecirc;n 2020 ph&ugrave; hợp với t&igrave;nh h&igrave;nh dịch bệnh SASR-CoV-2, theo đ&oacute; thay v&igrave; c&aacute;c tổ chức c&aacute;c Lễ Ph&aacute;t động tập trung đ&ocirc;ng người, c&aacute;c Quận, Huyện đo&agrave;n, Đo&agrave;n trực thuộc tổ chức ra qu&acirc;n c&aacute;c hoạt động thiết thực hưởng ứng Th&aacute;ng Thanh ni&ecirc;n 2020.</p>\r\n\r\n<p style=\"text-align:justify\">Ng&agrave;y 1/3, ng&agrave;y Chủ nhật đầu ti&ecirc;n của Th&aacute;ng Thanh ni&ecirc;n năm 2020, c&ugrave;ng với sự chỉ đạo từ Th&agrave;nh đo&agrave;n tất cả cơ sở Đo&agrave;n trực thuộc đ&atilde; tổ chức ra qu&acirc;n đồng loạt &ldquo;Ng&agrave;y chủ nhật xanh&rdquo;. Theo đ&oacute;, Th&agrave;nh đo&agrave;n Chỉ đạo Quận đo&agrave;n Ng&ocirc; Quyền đăng cai cấp th&agrave;nh phố tổ chức thực hiện những c&ocirc;ng tr&igrave;nh, phần việc thiết thực, &yacute; nghĩa để bảo vệ m&ocirc;i trường v&agrave; ph&ograve;ng, chống dịch bệnh SASR-CoV-2 như: X&oacute;a điểm đen về r&aacute;c thải tại phường Đ&ocirc;ng Kh&ecirc;; tặng khẩu trang v&agrave; nước rửa tay s&aacute;t khuẩn miễn ph&iacute;; ra qu&acirc;n &quot;M&ocirc; h&igrave;nh Tắt m&aacute;y chờ t&agrave;u&quot;; ra mắt m&ocirc; h&igrave;nh &quot;Th&ugrave;ng r&aacute;c t&aacute;i chế&quot; giảm thiểu r&aacute;c thải nhựa, vật liệu l&agrave;m n&ecirc;n c&aacute;c m&ocirc; h&igrave;nh l&agrave; chai lọ nhựa thu được từ hoạt động đổi r&aacute;c thải nhựa lấy c&acirc;y xanh; ra mắt m&ocirc; h&igrave;nh &quot;Tủ thuốc thanh ni&ecirc;n&quot; tại Ga Hải Ph&ograve;ng; diễu h&agrave;nh tuy&ecirc;n truyền về ATGT với chủ đề: &quot;Đ&atilde; uống rượu bia - Kh&ocirc;ng l&aacute;i xe&quot;; triển khai c&aacute;c hoạt động hưởng ứng &quot;Ng&agrave;y chủ nhật xanh&quot; đồng loạt tr&ecirc;n địa b&agrave;n to&agrave;n quận.</p>\r\n\r\n<p style=\"text-align:justify\">C&ugrave;ng ng&agrave;y, tr&ecirc;n địa b&agrave;n th&agrave;nh phố 100% c&aacute;c Quận, Huyện đo&agrave;n, Đo&agrave;n trực thuộc đều tổ chức nhiều hoạt động cụ thể, thiết thực, ti&ecirc;u biểu như: tổ chức ra qu&acirc;n dọn vệ sinh, khử tr&ugrave;ng, thu gom, xử l&yacute; r&aacute;c thải, vệ sinh c&aacute;c tuyến đường, tẩy x&oacute;a quảng c&aacute;o tr&ecirc;n cột điện, trồng c&acirc;y xanh; ph&aacute;t quang bụi rậm, thu gom r&aacute;c thải tại c&aacute;c điểm đen &ocirc; nhiễm m&ocirc;i trường tại địa phương; ph&aacute;t khẩu trang, nước s&aacute;t khuẩn miễn ph&iacute;, thực hiện m&ocirc; h&igrave;nh đổi r&aacute;c lấy c&acirc;y, triển khai c&aacute;c m&ocirc; h&igrave;nh: cột điện nở hoa, &Aacute;nh điện nghĩa t&igrave;nh, khởi c&ocirc;ng nh&agrave; nh&acirc;n &aacute;i, nh&agrave; khăn qu&agrave;ng đỏ, trao tặng s&acirc;n chơi, x&oacute;a quảng c&aacute;o rao vặt tr&aacute;i ph&eacute;p, trồng c&acirc;y xanh, v..v....</p>\r\n\r\n<p style=\"text-align:justify\">Đ&acirc;y l&agrave; hoạt động thiết thực v&agrave; &yacute; nghĩa hưởng ứng &ldquo;Ng&agrave;y chủ nhật xanh&rdquo; to&agrave;n quốc lần thứ nhất; ph&aacute;t huy cao độ vai tr&ograve; xung k&iacute;ch, t&igrave;nh nguyện của thanh ni&ecirc;n trong Th&aacute;ng Thanh ni&ecirc;n, tham gia x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, x&acirc;y dựng đ&ocirc; thị văn minh, bảo vệ m&ocirc;i trường v&agrave; ph&ograve;ng, chống dịch bệnh vi&ecirc;m đường h&ocirc; hấp cấp do chủng virus mới Corona (SASR-CoV-2).</p>\r\n\r\n<p style=\"text-align:right\">Thu Hằng, TĐ Hải Ph&ograve;ng-BA</p>\r\n', '13/3/2020', 0, 1, 1, 0, '', 'Thanh niên Hải Phòng tình nguyện, sáng tạo vì cộng đồng', '', '\r\n\r\nĐTN th&agrave;nh phố HP ra qu&acirc;n x&oacute;a điểm đen về m&ocirc;i trường, thực hiện m&ocirc; h&igrave;nh đổi r&aacute;c lấy c&', NULL, 30),
(303, 'Tập huấn hướng dẫn khai báo trực tuyến sức khỏe toàn dân', '/images/news/1584076701132283854508791203_hp[1].jpg', 'tap-huan-huong-dan-khai-bao-truc-tuyen-suc-khoe-toan-dan', 'Chiều ngày 10/3, Thành đoàn Hải Phòng tổ chức Hội nghị Tập huấn hướng dẫn khai báo sức khỏe toàn dân cho đội ngũ cán bộ Đoàn chủ chốt.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://doanthanhnien.vn/Content/uploads/images/132283854508791203_hp.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>ĐVTN thực h&agrave;nh khai b&aacute;o sức khỏe to&agrave;n d&acirc;n ngay tại hội nghị tập huấn</em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Hiện nay, dịch COVID-19 đang diễn biến ng&agrave;y c&agrave;ng phức tạp tr&ecirc;n thế giới v&agrave; Việt Nam, theo thống k&ecirc; của Bộ Y tế, t&iacute;nh đến thời điểm hiện tại, Hải Ph&ograve;ng chưa ghi nhận trường hợp n&agrave;o dương t&iacute;nh với nCoV. Thực hiện sự chỉ đạo của Trưởng Ban Chỉ đạo quốc gia ph&ograve;ng chống dịch COVID-19 về việc thực hiện khai b&aacute;o y tế to&agrave;n d&acirc;n, nhằm kịp thời th&ocirc;ng tin về t&igrave;nh h&igrave;nh sức khỏe của đo&agrave;n vi&ecirc;n thanh ni&ecirc;n theo hướng dẫn của cơ quan y tế, Ban Thường vụ Th&agrave;nh đo&agrave;n tổ chức Hội nghị Hướng dẫn khai b&aacute;o sức khỏe y tế to&agrave;n d&acirc;n cho c&aacute;n bộ đo&agrave;n chủ chốt.</p>\r\n\r\n<p style=\"text-align:justify\">Tại Hội nghị, c&aacute;c đại biểu được B&aacute;c sĩ Nguyễn Quang Ch&iacute;nh &ndash; Gi&aacute;m đốc Trung t&acirc;m Truyền th&ocirc;ng Gi&aacute;o dục sức khỏe th&agrave;nh phố trực tiếp th&ocirc;ng tin về t&igrave;nh h&igrave;nh dịch Covid-19 tr&ecirc;n thế giới, tại Việt Nam v&agrave; Hải Ph&ograve;ng v&agrave; hướng dẫn đội ngũ c&aacute;n bộ đo&agrave;n c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch Covid-19 sao cho khoa học, hiệu quả như: th&ocirc;ng tin về con đường, cơ chế Covid-19 l&acirc;y lan như thế n&agrave;o; đặc điểm của bệnh; c&aacute;c biện ph&aacute;p y tế ph&ograve;ng chống dịch...</p>\r\n\r\n<p style=\"text-align:justify\">Ngay sau phần hướng dẫn đội ngũ c&aacute;n bộ đo&agrave;n c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch Covid-19, c&aacute;c đại biểu được hướng dẫn sử dụng ứng dụng điện thoại khai b&aacute;o y tế to&agrave;n d&acirc;n ph&ograve;ng chống dịch Covid-19. Cụ thể l&agrave; khai b&aacute;o về th&ocirc;ng tin c&aacute; nh&acirc;n, lịch tr&igrave;nh đi lại của c&aacute; nh&acirc;n, c&aacute;c vấn đề về sức khỏe, bệnh l&yacute;... Qua đ&oacute; g&oacute;p phần kịp thời th&ocirc;ng tin về sức khỏe của đo&agrave;n vi&ecirc;n thanh ni&ecirc;n theo hướng dẫn của cơ quan y tế. Dựa v&agrave;o th&ocirc;ng tin mỗi c&aacute; nh&acirc;n tự khai b&aacute;o tr&ecirc;n, phần mềm điện tử sẽ tự thống k&ecirc;, s&agrave;ng lọc để ph&aacute;t hiện sớm c&aacute;c trường hợp nghi nhiễm bệnh để c&oacute; biện ph&aacute;p c&aacute;ch ly, ph&ograve;ng chống dịch kịp thời, hiệu quả, tr&aacute;nh l&acirc;y lan ra diện rộng.</p>\r\n\r\n<p style=\"text-align:justify\">Th&agrave;nh đo&agrave;n Hải Ph&ograve;ng l&agrave; đơn vị ti&ecirc;n phong của th&agrave;nh phố triển khai tập huấn hướng dẫn khai b&aacute;o sức khỏe to&agrave;n d&acirc;n. B&ecirc;n cạnh Hội nghị Tập huấn, Th&agrave;nh đo&agrave;n Hải Ph&ograve;ng cũng cho ph&aacute;t h&agrave;nh video hướng dẫn khai b&aacute;o trực tuyến sức khỏe to&agrave;n d&acirc;n để đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n c&oacute; thể dễ d&agrave;ng nắm bắt, thực hiện, g&oacute;p sức c&ugrave;ng cả hệ thống ch&iacute;nh trị th&agrave;nh phố đẩy l&ugrave;i dịch bệnh Covid-19.</p>\r\n\r\n<p style=\"text-align:right\">Thu Hằng, TĐ Hải Ph&ograve;ng</p>\r\n', '13/3/2020', 0, 1, 1, 0, '', 'Tập huấn hướng dẫn khai báo trực tuyến sức khỏe toàn dân', '', '\r\n\r\nĐVTN thực h&agrave;nh khai b&aacute;o sức khỏe to&agrave;n d&acirc;n ngay tại hội nghị tập huấn\r\n\r\n&nbsp;\r\n\r\nHiện nay, dịch COVID-1', NULL, 30),
(304, 'Lễ truyền thông vận động Hiến máu tình nguyện và phòng chống dịch bệnh viêm đường hô hấp cấp do chủng mới của virus corona (nCoV)', '/images/news/158407702587959712_1124078027926719_5607332318940233728_n[1].jpg', 'le-truyen-thong-van-dong-hien-mau-tinh-nguyen-va-phong-chong-dich-benh-viem-duong-ho-hap-cap-do-chung-moi-cua-virus-corona-ncov', 'Sáng ngày 05/03/2020 Hội Chữ thập đỏ Hải Phòng tổ chức Lễ truyền thông vận động Hiến máu tình nguyện và phòng chống dịch bệnh viêm đường hô hấp cấp do chủng mới của virus corona (nCoV) tại xã Đại Hợp huyện Kiến Thụy, Hải Phòng.', '<p style=\"text-align:justify\">Tới dự buổi lễ c&oacute; đồng ch&iacute; Cao Thị Phượng &ndash; Chủ tịch Hội Chữ thập đỏ Hải Ph&ograve;ng, đồng ch&iacute; B&ugrave;i Mạnh Ph&uacute;c &ndash; Ph&oacute; Chủ tịch Hội Chữ thập đỏ Hải Ph&ograve;ng &ndash; Giảng vi&ecirc;n, Thường trực Hội Chữ thập đỏ huyện Kiến Thụy, Thường trực Hội Chữ thập đỏ x&atilde; Đại Hợp, l&atilde;nh đạo c&aacute;c ban, ng&agrave;nh, đo&agrave;n thể x&atilde; Đại Hợp c&ugrave;ng đ&ocirc;ng đảo b&agrave; con nh&acirc;n d&acirc;n x&atilde; Đại Hợp đến dự.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://haiphongredcross.org.vn/PortalFolders/ImageUploads/hpredcross/2208/87959712_1124078027926719_5607332318940233728_n.jpg\" style=\"height:525px; width:700px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://haiphongredcross.org.vn/PortalFolders/ImageUploads/hpredcross/2208/87458049_1124077591260096_8517190052302815232_n.jpg\" style=\"height:525px; width:700px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tại buổi lễ,&nbsp; Hội Chữ thập đỏ Hải Ph&ograve;ng đ&atilde; tổ chức truyền th&ocirc;ng&nbsp;k&ecirc;u gọi người d&acirc;n tham gia hiến m&aacute;u t&igrave;nh nguyện, nhằm cung cấp một lượng m&aacute;u lớn phục vụ cho cấp cứu v&agrave; điều trị sau tết, nhất l&agrave; trong t&igrave;nh trạng dịch vi&ecirc;m phổi do virus corona (nCoV) g&acirc;y ra,&nbsp; dịch bệnh corona xảy ra v&agrave;o đ&uacute;ng thời điểm lượng m&aacute;u dự trữ đang ở giới hạn rất thấp, n&ecirc;n ảnh hưởng lớn đến c&ocirc;ng t&aacute;c vận động, thu thập m&aacute;u của c&aacute;c cơ sở tiếp nhận hiến m&aacute;u nh&acirc;n đạo do người d&acirc;n e ngại tập trung nơi đ&ocirc;ng người.Đồng thời , Hội Chữ thập đỏ th&agrave;nh phố cũng tuy&ecirc;n truyền n&acirc;ng cao nhận thức do người d&acirc;n về c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch bệnh. Ngay sau buổi lễ, Hội Chữ thập đỏ Hải Ph&ograve;ng đ&atilde; ph&aacute;t miễn ph&iacute; cho người d&acirc;n 250 khẩu trang y tế th&ocirc;ng thường cho người d&acirc;n x&atilde; Đại Hợp.</p>\r\n\r\n<p style=\"text-align:right\">Ban Tuy&ecirc;n huấn TTN</p>\r\n', '13/3/2020', 0, 1, 1, 170, '', 'Lễ truyền thông vận động Hiến máu tình nguyện và phòng chống dịch bệnh viêm đường hô hấp cấp do chủng mới của virus corona (nCoV)', '', 'Tới dự buổi lễ c&oacute; đồng ch&iacute; Cao Thị Phượng &ndash; Chủ tịch Hội Chữ thập đỏ Hải Ph&ograve;ng, đồng ch&iacute;', NULL, 34),
(305, 'Ngày hội hiến máu của cán bộ, công chức, viên chức, người lao động các sở, ban ngành, đoàn thể thành phố năm 2019', '/images/news/158407722174682751_2580929472023939_86751158193881088_n[1].jpg', 'ngay-hoi-hien-mau-cua-can-bo-cong-chuc-vien-chuc-nguoi-lao-dong-cac-so-ban-nganh-doan-the-thanh-pho-nam-2019', 'Sáng ngày 30 tháng 11 năm 2019, Hội Chữ thập đỏ thành phố (cơ quan Thường trực ban chỉ đạo vận động hiến máu tình nguyện thành phố) phối hợp với Sở Khoa học & Công nghệ Hải Phòng tổ chức Ngày hội hiến máu của cán bộ, công chức, viên chức,...', '<p style=\"text-align:justify\">Đến dự khai mạc c&oacute; đồng ch&iacute; L&ecirc; Khắc Nam - Ủy vi&ecirc;n ban thường vụ Th&agrave;nh ủy - Ph&oacute; Chủ tịch Ủy ban nh&acirc;n d&acirc;n th&agrave;nh phố - Trưởng ban chỉ đạo vận động hiến m&aacute;u t&igrave;nh nguyện th&agrave;nh phố , đồng ch&iacute; Cao Thị Phượng - Chủ tịch Hội Chữ thập đỏ Hải Ph&ograve;ng - Ph&oacute; Ban thường trực ban chỉ đạo c&ugrave;ng l&atilde;nh đạo c&aacute;c sở, ban ng&agrave;nh, đo&agrave;n thể th&agrave;nh phố.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://haiphongredcross.org.vn/PortalFolders/ImageUploads/hpredcross/2208/74682751_2580929472023939_86751158193881088_n.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Ph&aacute;t biểu khai mạc đồng ch&iacute; L&ecirc; Khắc Nam-Ph&oacute; Chủ tịch Ủy ban nh&acirc;n d&acirc;n th&agrave;nh phố - Trưởng ban chỉ đạo nhiệt liệt biểu dương v&agrave; ghi nhận t&iacute;ch cực sự tham gia của c&aacute;c ban ng&agrave;nh th&agrave;nh phố v&agrave; c&ocirc;ng t&aacute;c chỉ đạo t&iacute;ch cực của c&aacute;c đồng ch&iacute; l&atilde;nh đạo c&aacute;c sở, ng&agrave;nh v&agrave; đặc biệt biểu dương đội ngũ c&aacute;n bộ c&ocirc;ng chức vi&ecirc;n chức người lao động đ&atilde; c&oacute; mặt trong sự kiện hiến m&aacute;u ng&agrave;y h&ocirc;m nay. Sự kiện n&agrave;y đ&atilde; thu h&uacute;t đ&ocirc;ng đảo c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức v&agrave; người lao động c&aacute;c sở ng&agrave;nh, đo&agrave;n thể tham gia; đặc biệt c&oacute; c&aacute;c đồng ch&iacute; l&atilde;nh đạo chủ chốt của Sở NN &ndash; PTNT, Ngoại vụ, Khoa học &amp; C&ocirc;ng nghệ, UBMTTQVN th&agrave;nh phố, Hội N&ocirc;ng d&acirc;n TP&hellip; Kết quả cuối ng&agrave;y thu được 310 đơn vị m&aacute;u.</p>\r\n\r\n<p style=\"text-align:right\">Ban Tuy&ecirc;n huấn Thanh thiếu ni&ecirc;n</p>\r\n', '13/3/2020', 0, 1, 1, 4, '', ' Trang Chủ » HIẾN MÁU NHÂN ĐẠO - HIẾN MÁU CỨU NGƯỜI ... Ngày hội hiến máu của cán bộ, công chức, viên chức, người lao động các sở, ban ngành, đoàn thể thành phố năm 2019', '', 'Đến dự khai mạc có đồng chí Lê Khắc Nam - Ủy viên ban thường vụ Thành ủy - Phó Chủ tịch Ủ', NULL, 34);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userlist` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activeuserlist` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vanbandiid` int(11) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sendinguser` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userlist`, `activeuserlist`, `vanbandiid`, `type`, `sendinguser`, `time`) VALUES
(4, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Cập nhật tiến độ công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 20:47:50'),
(5, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Đăng bình luận văn bản  <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 20:48:01'),
(6, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Cập nhật tiến độ công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:09:21'),
(7, '[\"2\"]', '[\"2\"]', 1, 'Hoàn thành việc được giao <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:09:38'),
(8, '[\"4\"]', '[\"4\"]', 1, 'Hủy kết quả hoàn thành công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:11:00'),
(9, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Cập nhật tiến độ công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:51:43'),
(10, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Cập nhật tiến độ công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:51:53'),
(11, '[\"2\"]', '[\"2\"]', 1, 'Hoàn thành việc được giao <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:52:50'),
(12, '[\"4\"]', '[\"4\"]', 1, 'Hủy kết quả hoàn thành công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:53:24'),
(13, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Cập nhật tiến độ công việc <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:54:04'),
(14, '[\"2\"]', '[\"2\"]', 1, 'Hoàn thành việc được giao <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-10 21:54:31'),
(15, '[\"4\",\"5\"]', '[\"4\"]', 1, 'Hoàn thành văn bản <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:54:38'),
(16, '[\"4\",\"5\"]', '[\"4\"]', 1, 'Hoàn thành văn bản <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:56:42'),
(17, '[\"4\",\"5\"]', '[\"4\"]', 1, 'Hoàn thành văn bản <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:57:36'),
(18, '[\"4\",\"5\"]', '[\"4\"]', 1, 'Hoàn thành văn bản <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 21:57:57'),
(19, '[\"4\",\"5\"]', '[\"4\"]', 1, 'Hoàn thành văn bản <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-10 22:01:13'),
(20, '[\"4\",\"5\"]', '[\"4\"]', 2, 'Đăng bình luận văn bản  <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=2\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Công văn Nguyễn Trường Thịnh</a>', 4, '2020-03-10 22:05:39'),
(21, '[\"4\",\"5\"]', '[\"4\"]', 2, 'Đăng bình luận văn bản  <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=2\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Công văn Nguyễn Trường Thịnh</a>', 4, '2020-03-10 22:05:56'),
(22, '[\"2\",\"5\"]', '[\"2\"]', 1, 'Đăng bình luận văn bản  <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 4, '2020-03-11 01:01:21'),
(23, '[\"2\",\"4\",\"5\"]', '[\"2\"]', 1, 'Đăng bình luận văn bản  <a title=\"Xem\" href=\"/admin/vanban/viewvanbandi?id=1\" role=\"modal-remote\" data-toggle=\"tooltip\" data-pjax=\"0\">Van bản test</a>', 2, '2020-03-12 14:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `seo_keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `product` text COLLATE utf8_unicode_ci,
  `ord` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `url`, `content`, `seo_title`, `seo_desc`, `seo_keyword`, `active`, `product`, `ord`, `lang_id`) VALUES
(25, 'An sinh xã hội', '/an-sinh-xa-hoi-b25.html', '<h2 style=\"text-align:center\">Danh s&aacute;ch hộ ngh&egrave;o - cận ngh&egrave;o, hộ gia đ&igrave;nh kh&oacute; khăn</h2>\r\n\r\n<h2 style=\"text-align:center\">tr&ecirc;n địa b&agrave;n phường Minh Đức - Đồ Sơn</h2>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" bordercolor=\"#ccc\" cellpadding=\"5\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>STT</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Họ v&agrave; t&ecirc;n</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Diện ch&iacute;nh s&aacute;ch</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Ho&agrave;n cảnh hộ gia đ&igrave;nh</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Bảo trợ</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">1</span></span></p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Cụ Nguyễn Thị A</span></span></p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Hộ ngh&egrave;o</span></span></p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Cụ l&agrave; người gi&agrave; neo đơn, sống một m&igrave;nh kh&ocirc;ng c&oacute; nh&agrave; cửa v&agrave; thu nhập.</span></span></p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:justify\"><span style=\"color:#00ff00\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Được ủy ban kh&aacute;nh th&agrave;nh nh&agrave; t&igrave;nh nghĩa.</span></span></span></p>\r\n\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:justify\">&nbsp;</p>\r\n\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:justify\"><span style=\"color:#00ff00\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Được doanh nghiệp bảo trợ 1tr/th&aacute;ng hỗ trợ sinh hoạt.</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2</span></span></p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Nguyễn Thị H</span></span></p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Hộ cận ngh&egrave;o</span></span></p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Cụ l&agrave; người c&oacute; c&ocirc;ng với c&aacute;ch mạng, l&agrave; mẹ Việt Nam anh h&ugrave;ng.</span></span></p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:justify\"><span style=\"color:#ff0000\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Chưa được bảo trợ</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">3</span></span></p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">4</span></span></p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:99.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:92.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:177.2pt\">\r\n			<p style=\"margin-left:8.55pt; margin-right:8.4pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:5.0cm\">\r\n			<p style=\"margin-left:8.75pt; margin-right:8.45pt; text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '', '', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `image`, `url`, `position`, `ord`, `active`, `lang_id`) VALUES
(1, 'ViettelIDC', '/images/partner/1506598291-logo.png', 'https://viettelidc.com.vn/', 1, 1, 1, NULL),
(2, 'Viettel Post', '/images/partner/1506598832-393763423308449eb9f40539a4f9e4a07d78ca1logo1.png', 'https://www.viettelpost.com.vn/', 1, 2, 1, NULL),
(3, 'Viettel Store', '/images/partner/1506598916-5af11ebb9022.png', 'https://viettelstore.vn/', 1, 3, 1, NULL),
(4, 'Banner 4G', '/images/partner/1538984665-tr.png', '/di-dong-tra-sau-b19.html', 2, 1, 1, NULL),
(5, 'Internet kênh truyền riêng Leased Line', '/images/partner/1509518306-2015061212222640.jpg', '/dich-vu-kenh-truyen-rieng-leased-line-viettel-b3.html', 2, 2, 1, NULL),
(6, 'SMS Brandname', '/images/partner/1509518207-xanh1.jpg.pagespeed.ic.gd0qg1faxg.jpg', '/dich-vu-tin-nhan-thuong-hieu-sms-brandname-b5.html', 2, 3, 1, NULL),
(7, 'NextTv - Truyền hình thế hệ mới', '/images/partner/1506670378-next-tv1.jpg', '', 2, 4, 1, NULL),
(8, 'Phần mềm quản lý', '/images/partner/1506670693-phan-mem-shop-one-11.jpg', '', 2, 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên phòng ban'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`id`, `ten`) VALUES
(1, 'Đảng Ủy'),
(2, 'Hội đồng nhân dân'),
(3, 'Uỷ ban nhân dân');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `posted_date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `name`, `image`, `posted_date`, `home`, `ord`, `album_id`) VALUES
(18, '1', '/images/picture/1583832683-201905115cd67f60ce4841.jpg', '2020-03-10 14:06:22', 1, NULL, 2),
(19, '2', '/images/picture/1583832709-201905115cd67f61045dc1.jpg', '2020-03-10 14:06:32', 1, NULL, 2),
(20, 'Mô hình “Camera an ninh” phường Minh Đức - Đồ Sơn: đảm bảo ANTT trên địa bàn', '/images/picture/1583895649-samtech20190628-5d1628314eb001.jpg', '2020-03-11 10:00:49', 0, NULL, 3),
(21, 'Hệ thống camera an ninh', '/images/picture/1583895678-samtech20190628-5d162831211f21.jpg', '2020-03-11 10:01:18', 0, NULL, 3),
(22, 'Camera an ninh', '/images/picture/1583895737-samtech20190628-5d162830c6e25-e8281d8f-f9c8-4d8c-b7d2-33bf9aeb31b51.jpg', '2020-03-11 10:02:17', 0, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8_unicode_ci,
  `decription` text COLLATE utf8_unicode_ci,
  `retail` double DEFAULT NULL,
  `sale` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `home` tinyint(4) DEFAULT NULL,
  `hot` tinyint(4) DEFAULT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `seo_keyword` text COLLATE utf8_unicode_ci,
  `cat_product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `new` tinyint(4) DEFAULT NULL,
  `tag` text COLLATE utf8_unicode_ci COMMENT 'Tag',
  `cuphap` text COLLATE utf8_unicode_ci,
  `kieudangky` int(4) DEFAULT NULL,
  `philapdat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kieuthanhtoan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `url`, `code`, `brief`, `decription`, `retail`, `sale`, `status`, `ord`, `home`, `hot`, `luotxem`, `active`, `seo_title`, `seo_desc`, `seo_keyword`, `cat_product_id`, `brand_id`, `new`, `tag`, `cuphap`, `kieudangky`, `philapdat`, `kieuthanhtoan`) VALUES
(1, 'Net1', 'net1', '15 Mbps/Không cam kết', '<p>- Miễn ph&iacute; lắp đặt + Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>-&nbsp;<strong>Giảm đến 34%</strong>&nbsp;gi&aacute; cước so với gi&aacute; ni&ecirc;m yết.&nbsp;</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng l&agrave;&nbsp;<strong>165.000đ&nbsp;</strong></p>\r\n\r\n<p><em>-</em>&nbsp;Phạm vi &aacute;p dụng:&nbsp;<strong>Hải Ph&ograve;ng</strong></p>\r\n\r\n<p><strong>- Miễn ph&iacute; h&ograve;a mạng khi đ&oacute;ng trước&nbsp;cước 6, 8, 12 th&aacute;ng</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Tặng từ 1 đến 3 th&aacute;ng cước khi đ&oacute;ng trước cước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n', 'https://shop.viettel.vn/cdbr/net1/haiphong', 250000, 165000, 1, 1, 0, 0, 12654, 0, '', '', '', 2, 1, 0, '1 tháng', '18008168', 1, '500000', '2'),
(2, 'Mimax90', 'mimax90', '5GB lưu lượng', '<p>G&oacute;i cước data trọn g&oacute;i. Sử dụng tr&ecirc;n cả mạng 3G/4G.</p>\r\n\r\n<p>Với&nbsp;<strong>90.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>5GB</strong>&nbsp;lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y (đối với TB trả trước) hoặc theo chu kỳ th&aacute;ng (đối với TB trả sau)</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n kh&ocirc;ng bị gi&aacute;n đoạn qu&aacute; tr&igrave;nh truy cập trong suốt thời gian sử dụng.</p>\r\n\r\n<p>Dịch vụ tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Để hủy g&oacute;i cước 3G soạn tin theo c&uacute; ph&aacute;p: HUY gửi 191 rồi đợi tin nhắn tổng đ&agrave;i gửi về v&agrave; soạn Y gửi 191 để x&aacute;c nhận.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX90/haiphong', 90000, 90000, 1, 1, 1, 1, 9875, 1, '', '', '', 7, 1, 0, '30 ngày', 'MIMAX90 gửi 191', 2, NULL, '1'),
(4, 'FUN', 'fun', 'Hơn 158 kênh với 25 kênh HD', '<p>-&nbsp;&nbsp;&nbsp; Ph&iacute; lắp đặt chỉ c&ograve;n 250.000 đồng đổi với KH đ&oacute;ng trước 3 th&aacute;ng cước.<br />\r\n-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị đầu thu HD si&ecirc;u n&eacute;t trị gi&aacute; 1.200.000 đồng.<br />\r\n-&nbsp;&nbsp; &nbsp;Cước thu&ecirc; bao: Chỉ từ 77.000đ/th&aacute;ng.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;Miễn ph&iacute; lắp đặt + Tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước (đối với KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n).<br />\r\n-&nbsp;&nbsp;&nbsp; Gi&aacute; cước KM &aacute;p dụng li&ecirc;n tục trong 24 th&aacute;ng từ th&aacute;ng nghiệm thu, sau thời gian tr&ecirc;n &aacute;p dụng theo gi&aacute; cước tại thời điểm mới</p>\r\n', 'https://shop.viettel.vn/cdbr/fun', 110000, 77000, 1, 8, 1, 1, 4161, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(6, 'Mimax70', 'mimax70', '3GB lưu lượng', '<p>G&oacute;i cước data trọn g&oacute;i. Sử dụng tr&ecirc;n cả mạng 3G/4G.</p>\r\n\r\n<p>Với&nbsp;<strong>70.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>3GB</strong>&nbsp;lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y (đối với TB trả trước) hoặc theo chu kỳ th&aacute;ng (đối với TB trả sau).</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX70/haiphong', 70000, 70000, 1, 2, 1, 1, 1445, 1, '', '', '', 7, 1, 0, '30 ngày', 'MIMAX70 gửi 191', 2, NULL, '1'),
(7, '4G0', '4g0', 'Giá theo MB sử dụng', '<p>L&agrave; g&oacute;i cước 4G trả tiền theo lưu lượng sử dụng (Pay as you go) d&ugrave;ng cho TB trả trước, trả sau đang sử dụng sim 4G v&agrave; m&aacute;y 4G.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng truy cập sẽ trả ph&iacute; theo gi&aacute; cước ni&ecirc;m yết l&agrave;: 60đ/Mb (t&iacute;nh theo Block 50Kb+50Kb).</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sử dụng tới ngưỡng 10GB trong th&aacute;ng, hệ thống thực hiện tạm dừng dịch vụ 4G của kh&aacute;ch h&agrave;ng v&agrave; nhắn tin th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4G0/haiphong', 60, 60, 1, 3, 1, 1, 5546, 1, '', '', '', 7, 1, 0, 'MB', '4G0 gửi 191', 2, NULL, '1'),
(9, 'TOMD10', 'tomd10', '200MB lưu lượng', '<p>L&agrave; g&oacute;i cước 4G kh&ocirc;ng giới hạn thời gian sử dụng của g&oacute;i cước ( chỉ cần trong v&ograve;ng 60 ng&agrave;y KH c&oacute; ph&aacute;t sinh lưu lượng data tr&ecirc;n di động. Hết lưu lượng, kh&aacute;ch h&agrave;ng mua lại ch&iacute;nh g&oacute;i cước để tiếp tục sử dụng.</p>\r\n', 'https://shop.viettel.vn/data/haiphong', 10000, 10000, 1, 5, 0, 0, 5665, 0, '', '', '', 7, 1, 0, 'MB', 'TOMD10 gửi 191', 2, NULL, '1'),
(10, '4G40', '4g40', '1GB lưu lượng', '<p>L&agrave; g&oacute;i cước 4G giới hạn lưu lượng, d&ugrave;ng cho TB trả trước, trả sau đang sử dụng sim 4G v&agrave; m&aacute;y 4G.</p>\r\n\r\n<p>Với&nbsp;<strong>40.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;<strong>&nbsp;1GB</strong>&nbsp;lưu lượng, sử dụng trong 30 ng&agrave;y (với thu&ecirc; bao trả trước) v&agrave; theo chu kỳ th&aacute;ng (với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sử dụng hết lưu lượng g&oacute;i, hệ thống ngừng truy cập. Kh&aacute;ch h&agrave;ng muốn sử dụng tiếp dịch vụ, c&oacute; thể mua lại ch&iacute;nh g&oacute;i đ&oacute; hoặc mua g&oacute;i 4G kh&aacute;c hoặc đăng k&yacute; g&oacute;i mua th&ecirc;m tương ứng g&oacute;i cước 4G đang sử dụng.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Để sử dụng lại ch&iacute;nh g&oacute;i 4G đang sử dụng - Kh&aacute;ch h&agrave;ng thực hiện nhắn tin hủy g&oacute;i cước đang sử dụng v&agrave; thực hiện đăng k&yacute; lại.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4G40/haiphong', 40000, 40000, 1, 6, 0, 0, 5642, 0, '', '', '', 7, 1, 0, '30 ngày', '4G40 gửi 191', 2, NULL, '1'),
(11, 'Net2', 'net2', '20Mbps + 256Kbps Quốc tế', '<p>- Miễn ph&iacute; lắp đặt +&nbsp;Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng&nbsp;trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>- Giảm đến 40% gi&aacute; cước so với gi&aacute; ni&ecirc;m yết</p>\r\n\r\n<p>- Cước theo th&aacute;ng<strong>&nbsp;180.000đ/th&aacute;ng</strong></p>\r\n\r\n<p>-&nbsp;Tốc độ 20Mbps rất ph&ugrave; hợp với kh&aacute;ch h&agrave;ng hộ gia đ&igrave;nh</p>\r\n\r\n<p><em>-</em>&nbsp;Phạm vi &aacute;p dụng:&nbsp;<strong>61 Tỉnh th&agrave;nh (Kh&ocirc;ng &aacute;p dụng cho H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh)</strong></p>\r\n\r\n<p>- Để lắp đặt gọi&nbsp;<em><strong>18008168&nbsp;&nbsp;</strong></em>hoặc bấm ph&iacute;m&nbsp;<em><strong>đăng k&yacute;</strong></em></p>\r\n', 'https://shop.viettel.vn/cdbr/net2-2', 300000, 180000, 1, 2, 1, 1, 11520, 1, '', '', '', 2, 1, 0, '1 tháng', '18008168', 1, '500000', '2'),
(12, 'Net3', 'net3', '25Mbps + 256Kbps Quốc tế', '<p>-&nbsp;Miễn ph&iacute; lắp đặt đối với kh&aacute;ch h&agrave;ng đ&oacute;ng trước 3 th&aacute;ng</p>\r\n\r\n<p>- Miễn ph&iacute; lắp đặt + Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>- Giảm đến 43% gi&aacute; cước so với gi&aacute; ni&ecirc;m yết</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng l&agrave;&nbsp;<strong>200.000đ</strong></p>\r\n\r\n<p>- Phạm vi &aacute;p dụng:<strong>&nbsp;<strong>61 Tỉnh th&agrave;nh (Kh&ocirc;ng &aacute;p dụng cho H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh)</strong></strong></p>\r\n\r\n<p>- Để lắp đặt gọi&nbsp;<strong>18008168</strong>&nbsp;hoặc bấm ph&iacute;m&nbsp;<strong>đăng k&yacute;</strong></p>\r\n', 'https://shop.viettel.vn/cdbr/net3-2', 350000, 200000, 1, 3, 1, 1, 15211, 1, '', '', '', 2, 1, 0, '1 tháng', '18008168', 1, '250000', '2'),
(13, 'Net4', 'net4', '30Mbps + 256Kbps Quốc tế', '<p>-&nbsp; Miễn ph&iacute; lắp đặt đối với kh&aacute;ch h&agrave;ng đ&oacute;ng trước 3 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước so với gi&aacute; ni&ecirc;m yết</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng l&agrave;&nbsp;<strong>220.000đ</strong></p>\r\n\r\n<p><em>-</em>&nbsp;Phạm vi &aacute;p dụng:<strong>&nbsp;<strong>61 Tỉnh th&agrave;nh (Kh&ocirc;ng &aacute;p dụng cho H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh)</strong></strong></p>\r\n\r\n<p>- Để lắp đặt gọi&nbsp;<strong>18008168</strong>&nbsp;hoặc bấm ph&iacute;m<strong>&nbsp;đăng k&yacute;</strong></p>\r\n', 'https://shop.viettel.vn/cdbr/net4-2', 400000, 220000, 1, 5, 1, 1, 16116, 1, '', '', '', 2, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(14, '4G70', '4g70', '2GB lưu lượng', '<p>L&agrave; g&oacute;i cước 4G giới hạn lưu lượng, d&ugrave;ng cho TB trả trước, trả sau đang sử dụng sim 4G v&agrave; m&aacute;y 4G.</p>\r\n\r\n<p>Với&nbsp;<strong>70.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;<strong>&nbsp;2GB</strong>&nbsp;lưu lượng, sử dụng trong 30 ng&agrave;y (với thu&ecirc; bao trả trước) v&agrave; theo chu kỳ th&aacute;ng (với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sử dụng hết lưu lượng g&oacute;i, hệ thống ngừng truy cập. Kh&aacute;ch h&agrave;ng muốn sử dụng tiếp dịch vụ, c&oacute; thể mua lại ch&iacute;nh g&oacute;i đ&oacute; hoặc mua g&oacute;i 4G kh&aacute;c hoặc đăng k&yacute; g&oacute;i mua th&ecirc;m tương ứng g&oacute;i cước 4G đang sử dụng.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Để sử dụng lại ch&iacute;nh g&oacute;i 4G đang sử dụng - Kh&aacute;ch h&agrave;ng thực hiện nhắn tin hủy g&oacute;i cước đang sử dụng v&agrave; thực hiện đăng k&yacute; lại.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4G70/haiphong', 70000, 70000, 1, 7, 0, 0, 21321, 0, '', '', '', 7, 1, 0, '30 ngày', '4G70 gửi 191', 2, NULL, '1'),
(15, '4G90', '4g90', '3GB dung lượng', '<p>L&agrave; g&oacute;i cước 4G giới hạn lưu lượng, d&ugrave;ng cho TB trả trước, trả sau đang sử dụng sim 4G v&agrave; m&aacute;y 4G.</p>\r\n\r\n<p>Với&nbsp;<strong>90.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;<strong>&nbsp;3 GB</strong>&nbsp;lưu lượng, sử dụng trong 30 ng&agrave;y (với thu&ecirc; bao trả trước) v&agrave; theo chu kỳ th&aacute;ng (với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sử dụng hết lưu lượng g&oacute;i, hệ thống ngừng truy cập. Kh&aacute;ch h&agrave;ng muốn sử dụng tiếp dịch vụ, c&oacute; thể mua lại ch&iacute;nh g&oacute;i đ&oacute; hoặc mua g&oacute;i 4G kh&aacute;c hoặc đăng k&yacute; g&oacute;i mua th&ecirc;m tương ứng g&oacute;i cước 4G đang sử dụng.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Để sử dụng lại ch&iacute;nh g&oacute;i 4G đang sử dụng - Kh&aacute;ch h&agrave;ng thực hiện nhắn tin hủy g&oacute;i cước đang sử dụng v&agrave; thực hiện đăng k&yacute; lại.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4G90/haiphong', 90000, 90000, 1, 8, 0, 0, 21321, 0, '', '', '', 7, 1, 0, '30 ngày', '4G90 gửi 191', 2, NULL, '1'),
(16, 'Mimax125', 'mimax125', '8GB  lưu lượng', '<p>G&oacute;i cước data trọn g&oacute;i. Sử dụng tr&ecirc;n cả mạng 3G/4G.</p>\r\n\r\n<p>Với&nbsp;<strong>125.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>8GB</strong>&nbsp;lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y (đối với TB trả trước) hoặc theo chu kỳ th&aacute;ng (đối với TB trả sau).</p>\r\n\r\n<p>&nbsp;Hủy g&oacute;i cước: soạn HUY gửi 191<br />\r\n- C&uacute; ph&aacute;p kiểm tra lưu lượng: KTTK gửi 191</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX125/haiphong', 125000, 125000, 1, 9, 1, 1, 15698, 1, '', '', '', 7, 1, 1, '30 ngày', 'MIMAX125 gửi 191', 2, NULL, '1'),
(17, 'MIMAX200', 'mimax200', '15GB  lưu lượng', '<p>G&oacute;i cước data trọn g&oacute;i. Sử dụng tr&ecirc;n cả mạng 3G/4G.</p>\r\n\r\n<p>Với&nbsp;<strong>200.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>15GB</strong>&nbsp;lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y (đối với TB trả trước) hoặc theo chu kỳ th&aacute;ng (đối với TB trả sau).</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n kh&ocirc;ng bị gi&aacute;n đoạn qu&aacute; tr&igrave;nh truy cập trong suốt thời gian sử dụng</p>\r\n\r\n<p>Dịch vụ tự động gia hạn h&agrave;ng th&aacute;ng.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX200', 200000, 200000, 1, 10, 1, 0, 15489, 1, '', '', '', 7, 1, 0, '30 ngày', 'MIMAX200 gửi 191', 2, NULL, '1'),
(18, 'Family1', 'family1', '160 kênh truyền hình, với 26 kênh HD độ nét cao. ', '<p>-&nbsp;&nbsp;&nbsp; Miễn ph&iacute; lắp đặt khi Kh&aacute;ch h&agrave;ng thanh to&aacute;n trước 18 th&aacute;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị (đầu thu HD si&ecirc;u n&eacute;t): Trị gi&aacute; 1.200.000 đồng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n: được tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Hơn 160 k&ecirc;nh truyền h&igrave;nh, với 26 k&ecirc;nh HD độ n&eacute;t cao,&nbsp;đặc biệt c&oacute; th&ecirc;m c&aacute;c k&ecirc;nh thể thao TV, b&oacute;ng đ&aacute; TV, Tin tức thể thao..<strong>tường thuật trực tiếp Ngoại hạng Anh, c&uacute;p C1, B&oacute;ng đ&aacute; Đức</strong>... C&aacute;c k&ecirc;nh phim truyện hấp dẫn như D-Drama; Phim Việt&hellip;</p>\r\n', 'https://shop.viettel.vn/cdbr/family1-1', 143000, 90000, 1, 1, 1, 1, 12365, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '1200000', '2'),
(19, 'Family2', 'family2', '190 kênh truyền hình, với 55  kênh HD đặc sắc', '<p>-&nbsp;&nbsp;&nbsp; Miễn ph&iacute; lắp đặt khi Kh&aacute;ch h&agrave;ng thanh to&aacute;n trước 18 th&aacute;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị (đầu thu HD si&ecirc;u n&eacute;t): Trị gi&aacute; 1.200.000 đồng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n: được tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Hơn 190 k&ecirc;nh truyền h&igrave;nh, với 55 k&ecirc;nh HD đặc sắc,đặc biệt c&oacute; th&ecirc;m c&aacute;c k&ecirc;nh thể thao TV, b&oacute;ng đ&aacute; TV, Tin tức thể thao..<strong>tường thuật trực tiếp Ngoại hạng Anh, c&uacute;p C1, B&oacute;ng đ&aacute; Đức</strong>... C&aacute;c k&ecirc;nh phim truyện hấp dẫn như D-Drama; Phim Việt&hellip;</p>\r\n', 'https://shop.viettel.vn/cdbr/family2-1', 176000, 120000, 1, 2, 1, 1, 23136, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '1200000', '2'),
(20, 'Family3', 'family3', '160 kênh truyền hình, với 26 kênh HD độ nét cao', '<p>-&nbsp;&nbsp; &nbsp;Miễn ph&iacute; lắp đặt khi Kh&aacute;ch h&agrave;ng thanh to&aacute;n trước 18 th&aacute;ng.<br />\r\n-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị (đầu thu HD si&ecirc;u n&eacute;t): Trị gi&aacute; 1.200.000 đồng.<br />\r\n-&nbsp;&nbsp;&nbsp; KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n: được tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;Hơn 160 k&ecirc;nh truyền h&igrave;nh, với 26 k&ecirc;nh HD độ n&eacute;t cao. 15.000 nội dung giải tr&iacute; (Phim, Nhạc, Thiếu nhi, H&agrave;i d&acirc;n gian).</p>\r\n', 'https://shop.viettel.vn/cdbr/family3-1', 160000, 120000, 1, 3, 1, 1, 12313, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '1200000', '2'),
(21, 'Flexi', 'flexi', '150 kênh Truyền hình được chọn lọc', '<p>-&nbsp;&nbsp;&nbsp; Ph&iacute; lắp đặt chỉ c&ograve;n 1.000.000đ (KH đ&oacute;ng trước 3 th&aacute;ng cước) v&agrave; 600.000 (KH đ&oacute;ng trước 6 th&aacute;ng cước)<br />\r\n-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị (đầu thu HD si&ecirc;u n&eacute;t): Trị gi&aacute; 1.200.000 đồng.<br />\r\n-&nbsp;&nbsp;&nbsp; KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n: được tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước<br />\r\n-&nbsp;&nbsp;&nbsp; Gi&aacute; cước KM &aacute;p dụng li&ecirc;n tục trong 24 th&aacute;ng từ th&aacute;ng nghiệm thu, sau thời gian tr&ecirc;n &aacute;p dụng theo gi&aacute;&nbsp;</p>\r\n', 'https://shop.viettel.vn/cdbr/flexi', 110000, 77000, 1, 4, 1, 1, 3216, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '1200000', '2'),
(22, 'Eco', 'eco', '160 kênh truyền hình, với 26 kênh HD độ nét cao', '<p>-&nbsp;&nbsp;&nbsp;&nbsp;Ph&iacute; lắp đặt chỉ c&ograve;n 250.000 đồng đổi với KH đ&oacute;ng trước 3 th&aacute;ng cước.<br />\r\n-&nbsp;&nbsp;&nbsp; Cho mượn thiết bị đầu thu HD si&ecirc;u n&eacute;t trị gi&aacute; 1.200.000 đồng.<br />\r\n-&nbsp;&nbsp; &nbsp;Cước thu&ecirc; bao: Chỉ 90.000đ/th&aacute;ng.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;Miễn ph&iacute; lắp đặt + Tặng th&ecirc;m từ 1 đến 3 th&aacute;ng cước (đối với KH đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n).<br />\r\n-&nbsp;&nbsp;&nbsp; Gi&aacute; cước KM &aacute;p dụng li&ecirc;n tục trong 24 th&aacute;ng từ th&aacute;ng nghiệm thu, sau thời gian tr&ecirc;n &aacute;p dụng theo gi&aacute; cước tại thời điểm mới</p>\r\n', 'https://shop.viettel.vn/cdbr/eco-1', 143000, 90000, 1, 5, 1, 1, 77846, 1, '', '', '', 3, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(23, 'MimaxSV', 'mimaxsv', '3 GB data', '<p>L&agrave; g&oacute;i cước 3G trọn g&oacute;i &aacute;p dụng cho c&aacute;c thu&ecirc; bao học sinh, sinh vi&ecirc;n. Với 50.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 3GB lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y. Hết lưu lượng tốc độ cao sẽ chuyển sang tốc độ thấp kh&ocirc;ng mất ph&iacute;. G&oacute;i cước gia hạn sau 30 ng&agrave;y.</p>\r\n\r\n<p>Lưu &yacute;:&nbsp;Chỉ &aacute;p dụng cho thu&ecirc; bao học sinh, sinh vi&ecirc;n.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAXSV', 50000, 50000, 1, 1, 1, 1, 23165, 1, '', '', '', 7, 1, 0, '30 ngày', 'MIMAXSV gửi 191', 2, NULL, '1'),
(24, 'Mimin', 'mimin', '75đ/50KB', '<p>L&agrave; g&oacute;i Mobile Internet kh&ocirc;ng t&iacute;nh ph&iacute; đăng k&yacute; v&agrave; kh&ocirc;ng cước thu&ecirc; bao</p>\r\n\r\n<p>Lưu lượng miễn ph&iacute;:&nbsp;<strong>0 MB</strong>. Kh&aacute;ch h&agrave;ng truy cập sẽ trả ph&iacute; theo gi&aacute; cước ni&ecirc;m yết l&agrave;:&nbsp;<strong>75đ/50KB</strong></p>\r\n\r\n<p>Ph&iacute; đăng k&yacute;/gia hạn:&nbsp;<strong>0đ/lần</strong></p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMIN/haiphong', 75, 75, 1, 2, 0, 0, 31548, 0, '', '', '', 7, 1, 0, '1 tháng', 'MIMIN gửi 191', 2, NULL, '1'),
(25, 'Mimax', 'mimax', '600MB  lưu lượng', '<p>L&agrave; g&oacute;i cước 3G trọn g&oacute;i.</p>\r\n\r\n<p>Với&nbsp;<strong>70.000đ</strong>&nbsp;Qu&yacute; kh&aacute;ch sẽ c&oacute;<strong>&nbsp;600MB</strong>&nbsp;lưu lượng tốc độ cao, sử dụng trong 30 ng&agrave;y. Hết lưu lượng tốc độ cao sẽ chuyển sang tốc độ th&ocirc;ng thường kh&ocirc;ng t&iacute;nh ph&iacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX/haiphong', 70000, 70000, 1, 3, 0, 0, 12687, 0, '', '', '', 7, 1, 0, '30 ngày', 'MIMAX gửi 191', 2, NULL, '1'),
(26, 'NET5', 'net5', '35Mbps + 256Kbps Quốc tế', '<p>-&nbsp;Miễn ph&iacute; lắp đặt đối với kh&aacute;ch h&agrave;ng đ&oacute;ng trước 3 th&aacute;ng trở l&ecirc;n.</p>\r\n\r\n<p>- Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước so với gi&aacute; ni&ecirc;m yết</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng l&agrave;&nbsp;<strong>250.000đ</strong></p>\r\n', 'https://shop.viettel.vn/cdbr/net5-1', 450000, 250000, 1, 6, 1, 1, 62626, 1, '', '', '', 2, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(27, 'NET6', 'net6', '40Mbps + 512Kbps Quốc tế', '<p>-&nbsp;Miễn ph&iacute; lắp đặt đối với kh&aacute;ch h&agrave;ng đ&oacute;ng trước 3 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Miễn ph&iacute; lắp đặt + Tặng từ 1 đến 3 th&aacute;ng cước khi kh&aacute;ch h&agrave;ng đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n</p>\r\n\r\n<p>- Trang bị Modem Wifi</p>\r\n\r\n<p>- Giảm đến 37% gi&aacute; cước so với gi&aacute; ni&ecirc;m yết</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng l&agrave;&nbsp;<strong>350.000đ</strong></p>\r\n', 'https://shop.viettel.vn/cdbr/net6-1', 550000, 350000, 1, 7, 1, 1, 459, 1, '', '', '', 2, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(29, 'Dmax', 'dmax', '1.5GB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G trọn g&oacute;i.</strong></p>\r\n\r\n<p>Với 120.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>1.5GB lưu lượng tốc độ cao</strong>, sử dụng trong 30 ng&agrave;y. Hết lưu lượng tốc độ cao sẽ chuyển sang tốc độ thường.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/DMAX/haiphong', 120000, 120000, 1, 5, 0, 0, 1279, 0, '', '', '', 8, 1, 0, '1 tháng', 'DMAX gửi 191', 2, NULL, '1'),
(30, 'Dmax200', 'dmax200', '3GB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G trọn g&oacute;i.</strong></p>\r\n\r\n<p>Với 200.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>3GB lưu lượng tốc độ cao</strong>, sử dụng trong 30 ng&agrave;y. Hết lưu lượng tốc độ cao sẽ chuyển sang tốc độ b&igrave;nh thường.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/DMAX200/haiphong', 200000, 200000, 1, 6, 0, 0, 3267, 0, '', '', '', 8, 1, 0, '1 tháng', 'DMAX200 gửi 191', 2, NULL, '1'),
(31, 'Mi10', 'mi10', '50MB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G giới hạn lưu lượng.</strong></p>\r\n\r\n<p>Với 10.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 50MB miễn ph&iacute; sử dụng trong 30 ng&agrave;y. Hết dung lượng miễn ph&iacute; sẽ t&iacute;nh ph&iacute; 25đ/50Kb.</p>\r\n\r\n<p>Để hủy g&oacute;i cước 3G soạn tin theo c&uacute; ph&aacute;p: HUY gửi 191 rồi đợi tin nhắn tổng đ&agrave;i gửi về v&agrave; soạn Y gửi 191 để x&aacute;c nhận.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MI10/haiphong', 10000, 10000, 1, 7, 0, 0, 12146, 0, '', '', '', 8, 1, 0, '1 tháng', 'MI10 gửi 191', 2, NULL, '1'),
(32, 'Mi30', 'mi30', '200MB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G giới hạn lưu lượng.</strong></p>\r\n\r\n<p>Với 30.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 200MB miễn ph&iacute; sử dụng trong 30 ng&agrave;y. Hết dung lượng miễn ph&iacute; sẽ t&iacute;nh ph&iacute; 25đ/50Kb.</p>\r\n\r\n<p>Để hủy g&oacute;i cước 3G soạn tin theo c&uacute; ph&aacute;p: HUY gửi 191 rồi đợi tin nhắn tổng đ&agrave;i gửi về v&agrave; soạn Y gửi 191 để x&aacute;c nhận.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MI30/haiphong', 30000, 30000, 1, 8, 0, 0, 435667, 0, '', '', '', 8, 1, 0, '1 tháng', 'MI30 gửi 191', 2, NULL, '1'),
(33, 'Mi50', 'mi50', '450MB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G giới hạn lưu lượng</strong>.</p>\r\n\r\n<p>Với 50.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 450MB miễn ph&iacute; sử dụng trong 30 ng&agrave;y. Hết dung lượng miễn ph&iacute; sẽ t&iacute;nh ph&iacute; 25đ/50Kb.</p>\r\n\r\n<p>Để hủy g&oacute;i cước 3G soạn tin theo c&uacute; ph&aacute;p: HUY gửi 191 rồi đợi tin nhắn tổng đ&agrave;i gửi về v&agrave; soạn Y gửi 191 để x&aacute;c nhận.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MI50/haiphong', 50000, 50000, 1, 9, 0, 0, 4474, 0, '', '', '', 8, 1, 0, '1 tháng', 'MI50 gửi 191', 2, NULL, '1'),
(34, 'Mimax1.5', 'mimax1.5', '1.5GB  lưu lượng', '<p><strong>L&agrave; g&oacute;i cước 3G giới hạn lưu lượng</strong></p>\r\n\r\n<p>Với&nbsp;<strong>70,000</strong>đ Qu&yacute; kh&aacute;ch sẽ c&oacute;&nbsp;<strong>1.5</strong>GB data 3G tốc độ cao sử dụng trong 30 ng&agrave;y (với thu&ecirc; bao trả trước) v&agrave; theo chu kỳ th&aacute;ng (với thu&ecirc; bao trả sau). Kh&aacute;ch h&agrave;ng sử dụng hết lưu lượng g&oacute;i, hệ thống ngừng truy cập. Kh&aacute;ch h&agrave;ng muốn sử dụng tiếp dịch vụ, c&oacute; thể mua lại ch&iacute;nh g&oacute;i đ&oacute; hoặc mua g&oacute;i Mobile Internet kh&aacute;c hoặc đăng k&yacute; g&oacute;i mua th&ecirc;m tương ứng g&oacute;i cước Mobile Internet đang sử dụng.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/MIMAX15/haiphong', 70000, 70000, 1, 10, 0, 0, NULL, 0, '', '', '', 8, 1, 0, '1 tháng', 'MIMAX1.5 gửi 191', 2, NULL, '1'),
(41, '4G Youtube (tháng)', '4g-youtube-thang', '30GB  lưu lượng', '<p>L&agrave; g&oacute;i cước hỗ trợ kh&aacute;ch h&agrave;ng c&aacute;c t&iacute;nh năng xem/ chia sẻ/ download/ upload phim hoặc clip với tốc độ cao tr&ecirc;n trang web/ứng dụng YouTube.com.</p>\r\n\r\n<p>Với 100.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 30GB truy cập Youtube (đối với thu&ecirc; bao trả trước), hoặc truy cập Youtube thoải m&aacute;i, kh&ocirc;ng giới hạn dung lượng truy cập (đối với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời hạn sử dụng: Hết 24h ng&agrave;y thứ 30 ng&agrave;y t&iacute;nh từ thời điểm đăng k&yacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GYT30/haiphong', 100000, 100000, 1, 3, 0, 0, 5267, 0, NULL, NULL, NULL, 10, 1, 0, '30 ngày', '4GYT30 gửi 191', 2, NULL, '1'),
(42, '4G Youtube (ngày)', '4g-youtube-ngay', '3GB  lưu lượng', '<p>L&agrave; g&oacute;i cước hỗ trợ kh&aacute;ch h&agrave;ng c&aacute;c t&iacute;nh năng xem/ chia sẻ/ download/ upload phim hoặc clip với tốc độ cao tr&ecirc;n trang web/ứng dụng YouTube.com.</p>\r\n\r\n<p>Với 10.000đ Qu&yacute; kh&aacute;ch sẽ được c&oacute; 3GB truy cập Youtube (đối với thu&ecirc; bao trả trước), hoặc truy cập Youtube thoải m&aacute;i, kh&ocirc;ng giới hạn dung lượng truy cập (đối với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời hạn sử dụng: Từ thời điểm đăng k&yacute; đến 24h của ng&agrave;y đăng k&yacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GYT1/haiphong', 10000, 10000, 1, 1, 0, 0, 56262, 0, NULL, NULL, NULL, 10, 1, 0, '1 ngày', '4GYT1 gửi 191', 2, NULL, '1'),
(43, '4G Youtube (tuần)', '4g-youtube-tuan', '9GB  lưu lượng', '<p>L&agrave; g&oacute;i cước hỗ trợ kh&aacute;ch h&agrave;ng c&aacute;c t&iacute;nh năng xem/ chia sẻ/ download/ upload phim hoặc clip với tốc độ cao tr&ecirc;n trang web/ứng dụng YouTube.com.</p>\r\n\r\n<p>Với 30.000đ Qu&yacute; kh&aacute;ch sẽ c&oacute; 9GB truy cập Youtube (đối với thu&ecirc; bao trả trước), hoặc truy cập Youtube thoải m&aacute;i, kh&ocirc;ng giới hạn dung lượng truy cập (đối với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời hạn sử dụng: Hết 24h ng&agrave;y thứ 7 ng&agrave;y t&iacute;nh từ thời điểm đăng k&yacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GYT7/haiphong', 30000, 30000, 1, 2, 0, 0, 25337, 0, '', '', '', 10, 1, 0, '7 ngày', '4GYT7 gửi 191', 2, NULL, '1'),
(44, '4G Facebook (ngày)', '4g-facebook-ngay', 'không giới hạn  lưu lượng', '<p>Với 3.000đ/ng&agrave;y Qu&yacute; kh&aacute;ch sẽ được truy cập Facebook thoải m&aacute;i, kh&ocirc;ng giới hạn lưu lượng.</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời gian sử dụng: từ thời điểm đăng k&yacute; đến 24h của ng&agrave;y đăng k&yacute;</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GFB1/haiphong', 3000, 3000, 1, 4, 0, 0, 8910, 0, NULL, NULL, NULL, 10, 1, 0, '1 ngày', '4GFB1 gửi 191', 2, NULL, '1'),
(45, '4G Facebook (tuần)', '4g-facebook-tuan', 'không giới hạn ', '<p>Với 15.000đ/7 ng&agrave;y Qu&yacute; kh&aacute;ch sẽ được truy cập Facebook thoải m&aacute;i, kh&ocirc;ng giới hạn lưu lượng.</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời gian sử dụng: hết 24h ng&agrave;y thứ 7 ng&agrave;y t&iacute;nh từ thời điểm đăng k&yacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GFB7/haiphong', 15000, 15000, 1, 5, 0, 0, 26812, 0, NULL, NULL, NULL, 10, 1, 0, '7 ngày', '4GFB7 gửi 191', 2, NULL, '1'),
(46, '4G Facebook (tháng)', '4g-facebook-thang', '20GB  lưu lượng', '<p>Với 30.000đ Qu&yacute; kh&aacute;ch sẽ được c&oacute; 20GB truy cập Facebook (đối với thu&ecirc; bao trả trước), hoặc truy cập Facebook thoải m&aacute;i, kh&ocirc;ng giới hạn dung lượng truy cập (đối với thu&ecirc; bao trả sau).</p>\r\n\r\n<p>G&oacute;i cước tự động gia hạn khi hết chu kỳ.</p>\r\n\r\n<p>Thời gian sử dụng: hết 24h ng&agrave;y thứ 30 ng&agrave;y t&iacute;nh từ thời điểm đăng k&yacute;.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/4GFB30/haiphong', 30000, 30000, 1, 6, 0, 0, 5379, 0, NULL, NULL, NULL, 10, 1, 0, '30 ngày', '4GFB30 gửi 191', 2, NULL, '1'),
(47, 'MobiTV', 'mobitv', '3.000đ/ngày', '<p>MobiTV l&agrave; dịch vụ xem Tivi online, B&oacute;ng Đ&aacute; trực tiếp, Clip hot, Phim HD&hellip; HO&Agrave;N TO&Agrave;N MIỄN PH&Iacute; 3G/4G TỐC ĐỘ CAO.<br />\r\n<strong>- Lợi &iacute;ch khi sử dụng dịch vụ:</strong></p>\r\n\r\n<p>+&nbsp; Miễn ph&iacute; data 3G/4G tất cả nội dung khi xem tr&ecirc;n MobiTV</p>\r\n\r\n<p>+ Xem c&aacute;c k&ecirc;nh truyền h&igrave;nh đặc sắc trong nước v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p>+ Xem c&aacute;c Video theo y&ecirc;u cầu với nội dung phong ph&uacute; thuộc c&aacute;c lĩnh vực kh&aacute;c nhau như ca nhạc, thời sự, h&agrave;i hước, thể thao, tin n&oacute;ng v&agrave; Phim đặc sắc &hellip;</p>\r\n\r\n<p><strong>- Đối tượng &amp; điều kiện sử dụng:</strong></p>\r\n\r\n<p>+ Thu&ecirc; bao di động của Viettel hoạt đ&ocirc;̣ng 2 chi&ecirc;̀u.</p>\r\n\r\n<p>+ Thu&ecirc; bao đăng k&yacute; g&oacute;i Mobile Internet bất kỳ của Viettel, hoặc thiết bị di động sử dụng c&oacute; kết nối Wifi.</p>\r\n\r\n<p>+ Thiết bị di động c&oacute; hỗ trợ 3G/4G v&agrave; hỗ trợ streaming (rtsp), tiện &iacute;ch Realplayer.</p>\r\n\r\n<p>+ Để đăng k&yacute; soạn DK gửi 1331&nbsp;<br />\r\n(G&oacute;i VIP ng&agrave;y, 3.000đ/ng&agrave;y, gia hạn theo ng&agrave;y).</p>\r\n\r\n<p>Chi tiết truy cập&nbsp;<a href=\"http://mobitv.vn/\">http://mobitv.vn</a>&nbsp;để biết th&ecirc;m th&ocirc;ng tin.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/mobitv/haiphong', 3000, 3000, 1, 1, 1, 1, 64464, 1, '', '', '', 12, 1, 0, '1 ngày', ' DKP gửi 1331', 2, NULL, '1'),
(48, 'Videohay', 'videohay', '3.000đ/Ngày', '<p><strong>Video hay l&agrave; dịch vụ</strong>&nbsp;cung cấp video giải tr&iacute; tổng hợp, hỗ trợ kh&aacute;ch h&agrave;ng xem phim, video, nghe radio.</p>\r\n\r\n<p><strong>Dịch vụ ho&agrave;n to&agrave;n miễn ph&iacute; Data tốc độ cao 3G/4G</strong></p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/videohay/haiphong', 3000, 3000, 1, 2, 1, 1, 3743, 1, '', '', '', 12, 1, 0, '1 ngày', 'DK gửi 9066', 2, NULL, '1'),
(49, 'Cổng phim 5DMax', 'cong-phim-5dmax', '12.000đ/Tuần', '<p><strong>5Dmax</strong>&nbsp;l&agrave; dịch vụ xem phim trực tuyến c&oacute; bản quyền. Với 5Dmax&nbsp;<strong>kh&ocirc;ng giới hạn lưu lượng data 3G/4G&nbsp;</strong>khi xem to&agrave;n bộ: Phim h&agrave;nh động Hollywood, phim V&otilde; thuật kinh điển, phim Việt chiếu rạp, phim Bom tấn ch&acirc;u &Aacute;&hellip; tại&nbsp;<a href=\"http://5dmax.vn/\">http://5dmax.vn</a></p>\r\n\r\n<p>Tải ứng dụng tr&ecirc;n&nbsp;Google Play hoặc App Store&nbsp;(G&otilde; t&igrave;m kiếm&nbsp;<strong>5dmax</strong>)</p>\r\n\r\n<p><strong>Đăng k&yacute; dịch vụ:</strong></p>\r\n\r\n<p>+ Soạn tin:&nbsp;<strong>DK1</strong>&nbsp;gửi&nbsp;<strong>9545</strong>&nbsp;(3.000đ/ng&agrave;y)</p>\r\n\r\n<p>+ Soạn tin:&nbsp;<strong>DK7</strong>&nbsp;gửi&nbsp;<strong>9545</strong>&nbsp;(G&oacute;i tuần, 12.000đ/tuần)</p>\r\n\r\n<p>+ Soạn tin:&nbsp;<strong>DK30</strong>&nbsp;gửi&nbsp;<strong>9545</strong>&nbsp;(G&oacute;i th&aacute;ng, 50.000đ/th&aacute;ng)</p>\r\n\r\n<p>Chi tiết dịch vụ gọi 198 (miễn ph&iacute;)</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/cong-phim-5dmax/haiphong', 12000, 12000, 1, 3, 1, 1, 23567, 1, '', '', '', 12, 1, 0, '7 ngày', ' DK7 gửi 9545', 2, NULL, '1'),
(50, 'Nhạc chờ - Imuzik', 'nhac-cho---imuzik', '9.000đ/tháng', '<p>Dịch vụ&nbsp;<strong>IMUZIK nhạc chờ</strong>&nbsp;gi&uacute;p bạn&nbsp;c&agrave;i đặt c&aacute;c bản nhạc, ca kh&uacute;c hoặc những &acirc;m thanh độc đ&aacute;o để người gọi đến được thưởng thức trong khi chờ người nghe nhấc m&aacute;y. Với kho &acirc;m nhạc sống động, đa sắc m&agrave;u bao gồm đầy đủ c&aacute;c thể loại &acirc;m nhạc trong v&agrave; ngo&agrave;i nước: nhạc trẻ, nhạc c&aacute;ch mạng, nhạc Pop, Rock, nhạc phim&hellip; kh&aacute;ch h&agrave;ng dễ d&agrave;ng lựa chọn phong c&aacute;ch &acirc;m nhạc cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p><strong>T&iacute;nh năng, lợi &iacute;ch dịch vụ</strong></p>\r\n\r\n<ul>\r\n	<li>T&iacute;nh năng Sao ch&eacute;p bản nhạc chờ - Copy RBT ưu việt, d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng&nbsp;IMUZIK của Viettel, cho ph&eacute;p thu&ecirc; bao IMUZIK sao ch&eacute;p bất kỳ bản nhạc chu&ocirc;ng chờ n&agrave;o của một thu&ecirc; bao IMUZIK kh&aacute;c.</li>\r\n</ul>\r\n\r\n<p>Để sử dụng t&iacute;nh năng n&agrave;y:</p>\r\n\r\n<p>- Thao t&aacute;c trực tiếp tr&ecirc;n b&agrave;n ph&iacute;m điện thoại: Khi gọi điện thoại tới một thu&ecirc; bao IMUZIK, để sao ch&eacute;p bản nhạc chu&ocirc;ng chờ đang nghe, thao t&aacute;c:&nbsp;<strong>Nhấn tổ hợp ph&iacute;m 1 v&agrave; ph&iacute;m 0 tr&ecirc;n b&agrave;n ph&iacute;m điện thoại.</strong>&nbsp;Hoặc truy cập website dịch vụ&nbsp;<a href=\"http://imuzik.com.vn/\">http://imuzik.com.vn/</a>&nbsp;hoặc gọi số điện thoại&nbsp;<strong>1221</strong>&nbsp;v&agrave; l&agrave;m theo hướng dẫn.</p>\r\n\r\n<ul>\r\n	<li>T&iacute;nh năng c&agrave;i đặt theo nh&oacute;m gọi đến</li>\r\n	<li>\r\n	<p>&nbsp;T&iacute;nh năng n&agrave;y l&agrave; &quot;chiếc cầu nối&quot; gi&uacute;p kh&aacute;ch h&agrave;ng thể hiện được t&acirc;m tư, t&igrave;nh cảm v&agrave; c&aacute; t&iacute;nh với một hoặc một nh&oacute;m số điện thoại đặc biệt khi gọi đến số điện thoại của m&igrave;nh.</p>\r\n\r\n	<p>&nbsp; + Để c&agrave;i đặt ri&ecirc;ng cho một hoặc một nh&oacute;m số điện thoại đặc biệt, truy cập website http://Imuzik.com.vn, đăng nhập v&agrave; l&agrave;m theo hướng dẫn.</p>\r\n\r\n	<p>- Kh&aacute;ch h&agrave;ng được ho&agrave; m&igrave;nh v&agrave;o một cộng đồng &acirc;m nhạc lớn nhất Việt Nam với h&agrave;ng chục triệu th&agrave;nh vi&ecirc;n đang sử dụng Imuzik tại cổng th&ocirc;ng tin &acirc;m nhạc&nbsp;<a href=\"http://imuzik.com.vn/\">http://imuzik.com.vn</a>.</p>\r\n\r\n	<p>- Thỏa sức lựa chọn trong gần 1 triệu ca kh&uacute;c, bản nhạc trong nước v&agrave; quốc tế li&ecirc;n tục được chọn lọc v&agrave; cập nhật do 8.000 nhạc sỹ s&aacute;ng t&aacute;c v&agrave; 15.000 ca sỹ trong v&agrave; ngo&agrave;i nước tr&igrave;nh b&agrave;y.</p>\r\n\r\n	<p>- Cập nhật thường xuy&ecirc;n th&ocirc;ng tin về &acirc;m nhạc, c&oacute; cơ hội được giao lưu với những ca sĩ đang được giới trẻ h&acirc;m mộ, y&ecirc;u th&iacute;ch, được b&igrave;nh chọn từ nhiều giải thưởng, cuộc thi &acirc;m nhạc.</p>\r\n\r\n	<p>- Kh&aacute;ch h&agrave;ng được cập nhật những bản nhạc hay nhất qua tin nhắn h&agrave;ng th&aacute;ng v&agrave; ngay sau khi đăng k&yacute; th&agrave;nh c&ocirc;ng dịch vụ.</p>\r\n\r\n	<p><strong>Đối tượng, điều kiện sử dụng</strong></p>\r\n\r\n	<p>- Tất cả c&aacute;c thu&ecirc; bao di động, homephone của Viettel đang hoạt động 2 chiều.</p>\r\n\r\n	<p><strong>Chi tiết hỗ trợ</strong></p>\r\n\r\n	<p>- Li&ecirc;n hệ: 1221 (300 đ/ph&uacute;t).</p>\r\n\r\n	<p>- Truy cập:&nbsp;<a href=\"http://imuzik.com.vn/\">http://imuzik.com.vn</a></p>\r\n\r\n	<p>- Tổng đ&agrave;i: 18008098/198 (miễn ph&iacute;).</p>\r\n\r\n	<p>- Hệ thống cửa h&agrave;ng giao dịch trực tiếp của Viettel tr&ecirc;n to&agrave;n quốc.</p>\r\n	</li>\r\n</ul>\r\n', 'https://shop.viettel.vn/dich-vu-vas/nhac-cho-imuzik/haiphong', 9000, 9000, 1, 4, 1, 1, 2782, 1, '', '', '', 12, 1, 0, '1 tháng', 'DK gửi 1221', 2, NULL, '1'),
(51, 'Alome', 'alome', '2.000đ/Ngày', '<p><strong>Alome&nbsp;</strong>l&agrave; t&ocirc;̉ng đ&agrave;i IVR v&ecirc;̀ &acirc;m nhạc, truy&ecirc;̣n phong ph&uacute; v&agrave; đa dạng gi&uacute;p cho thu&ecirc; bao Viettel c&oacute; th&ecirc;̉ thưởng thức c&aacute;c b&agrave;i h&aacute;t, bản nhạc hay t&aacute;c phẩm văn học,&hellip; y&ecirc;u th&iacute;ch b&acirc;́t cứ l&uacute;c n&agrave;o v&agrave; b&acirc;́t cứ nơi đ&acirc;u m&agrave; kh&ocirc;ng phụ thu&ocirc;̣c v&agrave;o d&ograve;ng m&aacute;y đang sử dụng.<br />\r\n<strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong><br />\r\n- Nghe nhạc: Nghe c&aacute;c b&agrave;i h&aacute;t theo lựa chọn (thể loại, ca sỹ, nhạc sỹ&hellip;) hoặc theo đề xuất của dịch vụ (b&agrave;i h&aacute;t hot, mới&hellip;).<br />\r\n- Nghe truyện: Nghe truyện theo lựa chọn, truyện theo y&ecirc;u cầu&hellip;<br />\r\n- Kết quả trắc nghiệm chi&ecirc;m tinh: Nghe kết quả trắc nghiệm chi&ecirc;m tinh (horoscope) sau khi nhập ng&agrave;y th&aacute;ng sinh của m&igrave;nh.<br />\r\n- Nghe th&ocirc;ng tin thời tiết, thời sự, bản tin n&ocirc;ng nghiệp&hellip;<br />\r\n<strong>&nbsp;Đối tượng &amp; điều kiện sử dụng</strong><br />\r\n- Thu&ecirc; bao di đ&ocirc;̣ng Viettel trả trước, trả sau đang hoạt đ&ocirc;̣ng 2 chi&ecirc;̀u.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/alome/haiphong', 2000, 2000, 1, 4, 1, 1, 35372, 1, '', '', '', 12, 1, 0, '1 ngày', 'DK gửi 1288', 2, NULL, '1'),
(52, 'Musiczone', 'musiczone', '3.000đ/Ngày', '<p>Cổng &acirc;m nhạc Musiczone, bao gồm c&aacute;c trang nhạc số: zingmp3, nhaccuatui, nhac.vn, nơi m&agrave; người d&ugrave;ng được chọn c&aacute;c trang nghe nhạc ph&ugrave; hợp với bản th&acirc;n. Ngo&agrave;i ra khi đăng k&yacute; dịch vụ kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; data 3G/4G khi nghe nhạc.&nbsp;</p>\r\n\r\n<p>Đăng k&yacute; g&oacute;i ng&agrave;y, soạn tin&nbsp;<strong>V1</strong>&nbsp;gửi&nbsp;<strong>5282</strong>&nbsp;(3.000đ/ng&agrave;y)</p>\r\n\r\n<p>hoặc truy cập&nbsp;<a href=\"http://musiczone.viettel.vn/\">http://musiczone.viettel.vn</a></p>\r\n\r\n<p>C&aacute;c t&iacute;nh năng nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Nghe/xem c&aacute;c nội dung hay nhất</li>\r\n	<li>Ho&agrave;n to&agrave;n miễn ph&iacute; Data 3G/4G d&agrave;nh cho kh&aacute;ch h&agrave;ng&nbsp;Viettel đăng k&yacute; g&oacute;i cước Data trọn g&oacute;i của dịch vụ.</li>\r\n</ul>\r\n', 'https://shop.viettel.vn/dich-vu-vas/musiczone/haiphong', 3000, 3000, 1, 6, 1, 1, 15925, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'V1 gửi 5282', 2, NULL, '1'),
(53, 'Tổng đài 1060', 'tong-dai-1060', '2.000đ/Ngày', '<p>Tổng đ&agrave;i giải tr&iacute; 1060 l&agrave; tổng đ&agrave;i tự động, cung cấp nội dung li&ecirc;n quan đến c&aacute;c chủ đề như &acirc;m nhạc, s&aacute;ch, truyện, t&igrave;nh y&ecirc;u, giới t&iacute;nh, kết quả xổ số, ... Kh&aacute;ch h&agrave;ng gọi đến Tổng đ&agrave;i giải tr&iacute; 1060 sẽ được thưởng thức c&aacute;c b&agrave;i h&aacute;t được y&ecirc;u th&iacute;ch nhất, những c&acirc;u truyện hấp dẫn, cập nhật th&ocirc;ng tin kết quả xổ số một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p><br />\r\n- Đăng k&yacute;:&nbsp;Soạn&nbsp;<strong>DKV</strong>&nbsp;hoặc&nbsp;<strong>DKX</strong>&nbsp;gửi&nbsp;<strong>9068</strong>&nbsp;hoặc gọi&nbsp;<strong>1060</strong>&nbsp;v&agrave; l&agrave;m theo hướng dẫn</p>\r\n\r\n<p>- Cước dịch vụ:<br />\r\n+ Đăng k&yacute; thu&ecirc; bao ng&agrave;y: Gi&aacute; cước l&agrave; 2.000 đ/ng&agrave;y. Kh&aacute;ch h&agrave;ng được miễn ph&iacute; 20 ph&uacute;t đầu, từ ph&uacute;t thứ 21 gi&aacute; cước sẽ được t&iacute;nh 40 đ/ph&uacute;t.<br />\r\n+ Kh&ocirc;ng đăng k&yacute; thu&ecirc; bao ng&agrave;y: Gi&aacute; cước l&agrave; 1.000 đ/ph&uacute;t (Block t&iacute;nh cước 1 ph&uacute;t + 1 ph&uacute;t).<br />\r\n-&nbsp;Đối tượng&nbsp;sử dụng:&nbsp;sử dụng:&nbsp;Di động, điện thoại kh&ocirc;ng d&acirc;y Homephone v&agrave; điện thoại cố định PSTN.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/tong-dai-1060/haiphong', 2000, 2000, 1, 7, 1, 1, 2836, 1, '', '', '', 12, 1, 0, '1 ngày', 'DKV gửi 9068', 2, NULL, '1'),
(54, 'Keeng', 'keeng', '10.000đ/Tuần', '<p>Keeng l&agrave; dịch vụ mạng x&atilde; hội &acirc;m nhạc nghe v&agrave; tải nhạc số chất lượng cao lớn nhất tr&ecirc;n nhiều h&igrave;nh thức: wap/app/website. Khi đăng k&yacute; dịch vụ kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; data khi nghe nhạc, xem video.&nbsp;Ngo&agrave;i ra trong l&uacute;c nghe nhạc, bạn vẫn c&oacute; thể bắt chuyện với c&aacute;c bạn kh&aacute;c&nbsp;c&ugrave;ng gu &acirc;m nhạc với m&igrave;nh, cực kỳ th&uacute; vị.</p>\r\n\r\n<p>C&aacute;c t&iacute;nh năng nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Nghe v&agrave; tải nhạc số online</li>\r\n	<li>Xem MV nhạc chất lượng cao</li>\r\n	<li>Ho&agrave;n to&agrave;n miễn ph&iacute; Data 3G/4G d&agrave;nh cho kh&aacute;ch h&agrave;ng Viettel khi đăng k&yacute; g&oacute;i cước Data trọn g&oacute;i của dịch vụ.</li>\r\n</ul>\r\n\r\n<p>Chi tiết truy cập&nbsp;<a href=\"http://keeng.vn/\">http://keeng.vn/</a></p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/keeng/haiphong', 10000, 10000, 1, 8, 1, 1, 53682, 1, '', '', '', 12, 1, 0, '7 ngày', 'KE gửi 5005', 2, NULL, '1'),
(55, 'Xổ số', 'xo-so', '2.000đ/Ngày', '<p>Dịch vụ Thống k&ecirc; v&agrave; Kết quả xổ số cung cấp kết quả xổ số theo miền v&agrave; thống k&ecirc; c&aacute;c cặp số về nhiều nhất, &iacute;t nhất... h&agrave;ng ng&agrave;y</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/xo-so/haiphong', 2000, 2000, 1, 9, 1, 1, 5279, 1, '', '', '', 12, 1, 0, '1 ngày', 'SOI MB gửi 5055', 2, NULL, '1'),
(56, 'Imkara', 'imkara', '500đ/Ngày', '<p><strong>1. M&ocirc; tả dịch vụ</strong><br />\r\nDịch vụ Imkara (T&ecirc;n tiếng Việt: H&aacute;t karaoke tr&ecirc;n di động) l&agrave; dịch vụ cho ph&eacute;p kh&aacute;ch h&agrave;ng d&ugrave;ng di động trả trước, trả sau Viettel được h&aacute;t karaoke kh&ocirc;ng giới hạn tr&ecirc;n di động. Chi tiết tại&nbsp;<a href=\"http://imkara.vn/\">http://imkara.vn/</a>.</p>\r\n\r\n<p><strong>2. T&iacute;nh năng dịch vụ</strong><br />\r\n- Khi kh&aacute;ch h&agrave;ng chưa đăng k&yacute; dịch vụ: 1 thu&ecirc; bao khi tải app Imuzik Karaoke sẽ được h&aacute;t v&agrave; thu &acirc;m 10 b&agrave;i miễn ph&iacute;. Kh&aacute;ch h&agrave;ng cũng c&oacute; thể chia sẻ bản thu l&ecirc;n mạng x&atilde; hội hoặc lưu lại trong bộ sưu tập<br />\r\n- Khi kh&aacute;ch h&agrave;ng đăng k&yacute; dịch vụ: Được h&aacute;t v&agrave; thu &acirc;m tất cả c&aacute;c b&agrave;i h&aacute;t c&oacute; tr&ecirc;n hệ thống. Kh&aacute;ch h&agrave;ng cũng c&oacute; thể chia sẻ bản thu l&ecirc;n mạng x&atilde; hội hoặc lưu lại trong bộ sưu tập.</p>\r\n\r\n<p><strong>3. Điều kiện sử dụng</strong><br />\r\n- Thu&ecirc; bao trả trước, trả sau Viettel đang hoạt động 2 chiều.<br />\r\n- Nằm trong danh s&aacute;ch c&aacute;c thu&ecirc; bao được ph&eacute;p sử dụng dịch vụ m&agrave; Viettel quy định.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/imkara/haiphong', 500, 500, 1, 10, 1, 1, 63871, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'DK1 gửi 5285', 2, NULL, '1'),
(57, 'Topup Reward', 'topup-reward', '1.000đ/Ngày', '<p>Dịch vụ Topup Reward (nạp Thẻ Tr&uacute;ng Qu&agrave;) l&agrave; dịch vụ cung cấp c&aacute;c c&acirc;u hỏi kiến thức tổng hợp h&agrave;ng ng&agrave;y gi&uacute;p kh&aacute;ch h&agrave;ng (thu&ecirc; bao trả trước) n&acirc;ng cao tri thức, mở rộng sự hiểu biết, kh&aacute;m ph&aacute; kho t&agrave;ng kiến thức phong ph&uacute;, to&agrave;n diện. H&agrave;ng ng&agrave;y, kh&aacute;ch h&agrave;ng của chương tr&igrave;nh tất cả g&oacute;i cước đều được nhận 5 c&acirc;u hỏi về kiến thức tổng hợp to&agrave;n diện về c&aacute;c lĩnh vực văn h&oacute;a, giải tr&iacute;, x&atilde; hội, lịch sử... nhằm n&acirc;ng cao kiến thức, hiểu biết chung. C&aacute;c kh&aacute;ch h&agrave;ng tham gia t&iacute;ch cực v&agrave; t&iacute;ch lũy điểm số cao c&ograve;n được tham gia quay số tr&uacute;ng thưởng c&aacute;c giải thưởng c&oacute; gi&aacute; trị của chương tr&igrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, trong thời gian diễn ra chương tr&igrave;nh, nếu kh&aacute;ch h&agrave;ng nạp tiền v&agrave;o t&agrave;i khoản di động trả trước cũng sẽ được cộng th&ecirc;m điểm t&iacute;ch lũy tương ứng với gi&aacute; trị thẻ nạp trong tr&ograve; chơi funquiz.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/topup-reward/haiphong', 1000, 1000, 1, 11, 1, 1, 5398, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'DKA gửi 800', 2, NULL, '1'),
(58, 'Siêu hài', 'sieu-hai', '10.000đ/Tuần', '<p>Dịch vụ xem video h&agrave;i đặc sắc miễn 100% cước 3G/4G tr&ecirc;n wap&nbsp;<a href=\"http://sieuhai.tv/\">http://sieuhai.tv</a>.</p>\r\n\r\n<p>- Để đăng k&yacute; g&oacute;i ng&agrave;y, soạn tin:HA gửi 5005 (2.000đ/ng&agrave;y).</p>\r\n\r\n<p>- Để đăng k&yacute; g&oacute;i tuần, soạn tin HA7 gửi 5005 (10.000đ/tuần)</p>\r\n\r\n<p>Chi tiết soan HD HAI gửi 5005 hoặc gọi 198 (miễn ph&iacute;) hoặc truy cập&nbsp;<a href=\"http://sieuhai.tv/\">http://sieuhai.tv</a></p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/sieu-hai/haiphong', 10000, 10000, 1, 12, 1, 1, 5383, 1, '', '', '', 12, 1, 0, '7 ngày', 'HA7 gửi 5005', 2, NULL, '1'),
(59, 'Mạng xã hội Myclip', 'mang-xa-hoi-myclip', '3.000đ/Ngày', '<p>MYCLIP:&nbsp;<strong>L&agrave; mạng x&atilde; hội Video</strong>, nơi cho ph&eacute;p cộng đồng đăng tải, chia sẻ, b&igrave;nh luận những video clip đặc sắc, hấp dẫn mỗi ng&agrave;y.</p>\r\n\r\n<p>1.&nbsp;<strong>C&aacute;c t&iacute;nh năng của dịch vụ</strong></p>\r\n\r\n<p>- Lu&ocirc;n tốc độ cao;</p>\r\n\r\n<p>- Đăng tải video ho&agrave;n to&agrave;n miễn ph&iacute; data;</p>\r\n\r\n<p>- Tham gia chia sẻ, b&igrave;nh luận tr&ecirc;n cộng đồng mạng x&atilde; hội với h&agrave;ng chục triệu kh&aacute;ch h&agrave;ng Viettel;</p>\r\n\r\n<p>2.&nbsp;<strong>Điều kiện sử dụng:</strong></p>\r\n\r\n<p>To&agrave;n bộ người d&ugrave;ng c&oacute; kết nối internet, c&oacute; sử dụng thiết bị kết nối được internet như điện thoại, tablet, laptop, PC. (Thiết bị c&oacute; hỗ trợ Media Player).</p>\r\n\r\n<p>Để sử dụng nhanh v&agrave; thuận tiện hơn bạn h&atilde;y truy cập&nbsp;<a href=\"http://myclip.vn/\">http://myclip.vn/</a>&nbsp; hoặc tải App MyClip tr&ecirc;n c&aacute;c chợ ứng dụng (Android v&agrave; App Store) qua thiết bị di động.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/mang-xa-hoi-myclip/haiphong', 3000, 3000, 1, 13, 1, 1, 5368, 1, '', '', '', 12, 1, 0, '1 ngày', 'DK gửi 9062', 2, NULL, '1'),
(60, 'MCA', 'mca', '5.500đ/tháng', '<p>MCA l&agrave; dịch vụ th&ocirc;ng b&aacute;o cuộc gọi nhỡ th&ocirc;ng qua bản tin SMS, gi&uacute;p kh&aacute;ch h&agrave;ng biết được c&aacute;c số thu&ecirc; bao gọi đến thu&ecirc; bao của m&igrave;nh trong thời gian tắt m&aacute;y, m&aacute;y hết pin&hellip; Đặc biệt từ ng&agrave;y 16/11/2015 Viettel bổ sung ứng dụng MCA (MCA Client) cho ph&eacute;p c&aacute;c thu&ecirc; bao c&oacute; điện thoại sử dụng hệ điều h&agrave;nh IOS v&agrave; Androi tải về để sử dụng dịch vụ MCA một c&aacute;ch tiện lợi hơn.</p>\r\n\r\n<p><strong>Lợi &iacute;ch dịch vụ</strong></p>\r\n\r\n<p>Viettel cung cấp 2 g&oacute;i cước dịch vụ Th&ocirc;ng b&aacute;o cuộc gọi nhỡ với c&aacute;c t&iacute;nh năng chi tiết như sau:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:452px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>G&oacute;i MCA cơ bản</strong></p>\r\n			</td>\r\n			<td><strong>&nbsp;G&oacute;i MCA n&acirc;ng cao (MCAplus)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>- Th&ocirc;ng b&aacute;o cuộc gọi nhỡ trong 20 giờ trở về trước thời điểm bật m&aacute;y, gi&uacute;p thu&ecirc; bao gọi biết th&ocirc;ng tin v&agrave; li&ecirc;n lạc lại với người gọi đến.&nbsp;</p>\r\n\r\n			<p>- Nhận bản tin b&aacute;o nhỡ qua Email v&agrave; qua 1 số điện thoại kh&aacute;c.</p>\r\n\r\n			<p>- T&iacute;nh năng t&iacute;ch hợp với danh bạ điện thoại, cho ph&eacute;p b&ocirc;̉ sung th&ecirc;m th&ocirc;ng tin người gọi v&agrave;o n&ocirc;̣i dung bản tin b&aacute;o cuộc gọi nhỡ.-</p>\r\n\r\n			<p>- Thiết lập thời gian ngừng nhận bản tin b&aacute;o lỡ.</p>\r\n			</td>\r\n			<td>\r\n			<p>- Th&ocirc;ng b&aacute;o cuộc gọi nhỡ trong 20 giờ trở về trước thời điểm bật m&aacute;y, gi&uacute;p thu&ecirc; bao gọi biết th&ocirc;ng tin v&agrave; li&ecirc;n lạc lại với người gọi đến.&nbsp;</p>\r\n\r\n			<p>- Nhận bản tin b&aacute;o nhỡ qua Email v&agrave; qua 1 số điện thoại kh&aacute;c.</p>\r\n\r\n			<p>- T&iacute;nh năng t&iacute;ch hợp với danh bạ điện thoại, cho ph&eacute;p b&ocirc;̉ sung th&ecirc;m th&ocirc;ng tin người gọi v&agrave;o n&ocirc;̣i dung bản tin b&aacute;o cuộc gọi nhỡ.</p>\r\n\r\n			<p>- Thiết lập thời gian ngừng nhận bản tin b&aacute;o lỡ.</p>\r\n\r\n			<p>- Trả lời tự động cuộc gọi khi tắt m&aacute;y, hết pin hoặc khi c&oacute; nhu cầu.</p>\r\n\r\n			<p>- Nhận tin nhắn thoại do thu&ecirc; bao kh&aacute;c gửi đến khi tắt m&aacute;y hết pin</p>\r\n\r\n			<p>- Th&ocirc;ng b&aacute;o tin nhắn nhỡ khi tắt m&aacute;y/hết pin.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ưu điểm của Client</strong>&nbsp;so với c&aacute;ch sử dụng SMS th&ocirc;ng thường: Kh&ocirc;ng phải thực hiện t&iacute;nh năng đồng bộ danh bạ bằng tay theo từng số v&agrave; chỉ cần 1 thao t&aacute;c tr&ecirc;n application sẽ cho ph&eacute;p đồng bộ to&agrave;n bộ danh bạ tr&ecirc;n điện thoại. Sau khi đồng bộ tin nhắn trả về sẽ bao gồm số điện thoại số gọi lỡ v&agrave; t&ecirc;n người gọi lỡ theo theo t&ecirc;n tr&ecirc;n danh bạ (chi tiết hướng dẫn sử dụng ở mục Hướng dẫn sử dụng).</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/mca/haiphong', 5500, 5500, 1, 1, 1, 1, 4272, 1, '', '', '', 13, 1, 0, '1 tháng', ' DKC gửi 193', 2, NULL, '1');
INSERT INTO `product` (`id`, `name`, `url`, `code`, `brief`, `decription`, `retail`, `sale`, `status`, `ord`, `home`, `hot`, `luotxem`, `active`, `seo_title`, `seo_desc`, `seo_keyword`, `cat_product_id`, `brand_id`, `new`, `tag`, `cuphap`, `kieudangky`, `philapdat`, `kieuthanhtoan`) VALUES
(61, 'All Blocking', 'all-blocking', '7.000đ/tháng', '<p>Dịch vụ gi&uacute;p kh&aacute;ch h&agrave;ng chặn cuộc&nbsp;gọi, tin nhắn đến của 1 hoặc nhiều số điện thoại kh&aacute;c nhau theo danh s&aacute;ch cần chặn (Black List) m&agrave; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute;. Danh s&aacute;ch điện thoại Blacklist c&oacute; thể l&agrave; thu&ecirc; bao di động v&agrave; cố định nội mạng, ngoại mạng hoặc quốc tế (trừ c&aacute;c đầu số ngắn, số ngắn &lt; 9 chữ số)</p>\r\n\r\n<p>- Đăng k&yacute; dịch vụ,&nbsp;soạn:&nbsp;<strong>DK</strong>&nbsp;gửi&nbsp;<strong>909</strong>&nbsp;(7.000đ/th&aacute;ng)</p>\r\n\r\n<p>-&nbsp; Hủy dịch vụ: Soạn&nbsp;<strong>HUY</strong>&nbsp;gửi&nbsp;<strong>909</strong></p>\r\n\r\n<p>Chi tiết li&ecirc;n hệ: 198 (miễn ph&iacute;).</p>\r\n\r\n<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong></p>\r\n\r\n<p>-&nbsp; Hỗ trợ kh&aacute;ch h&agrave;ng chặn/nhận cuộc gọi, tin nhắn theo danh s&aacute;ch</p>\r\n\r\n<p>-&nbsp; Kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn sử dụng qua 1 trong 2 h&igrave;nh thức: Nhắn tin hoặc Ứng dụng chống l&agrave;m phiền.</p>\r\n\r\n<p><strong>Đối tượng &amp; điều kiện sử dụng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:452px\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n			<p><strong>&nbsp;Thao t&aacute;c</strong></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p><strong>Điều kiện</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thu&ecirc; bao trả trước</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Thu&ecirc; bao trả sau</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đăng k&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Hoạt động 2 chiều.<br />\r\n			Tổng số tiền trong t&agrave;i khoản gốc&nbsp;<strong>&ge;</strong>&nbsp;cước đăng k&yacute; th&aacute;ng đầu ti&ecirc;n.</p>\r\n			</td>\r\n			<td>\r\n			<p>Hoạt động 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuyển đổi sang dịch vụ kh&aacute;c</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động 2 chiều.</p>\r\n\r\n			<p>Tổng số tiền trong t&agrave;i khoản gốc&nbsp;<strong>&ge;&nbsp;</strong>ph&iacute; chuyển đổi.</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Th&ecirc;m mới thu&ecirc; bao v&agrave;o Black list</p>\r\n			</td>\r\n			<td>\r\n			<p>Tổng số tiền trong t&agrave;i khoản gốc&nbsp;<strong>&ge;&nbsp;</strong>ph&iacute; th&ecirc;m mới.</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>X&oacute;a thu&ecirc; bao khỏi Black list</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động &iacute;t nhất 1 chiều.</p>\r\n\r\n			<p>Đ&atilde; đăng k&yacute; dịch vụ.</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Điều kiện hủy dịch vụ</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động &iacute;t nhất 1 chiều.</p>\r\n\r\n			<p>Đ&atilde; đăng k&yacute; dịch vụ.</p>\r\n			</td>\r\n			<td>\r\n			<p>Đang hoạt động 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'https://shop.viettel.vn/dich-vu-vas/all-blocking/haiphong', 7000, 7000, 1, 2, 1, 1, 4248, 1, '', '', '', 13, 1, 0, '1 tháng', 'DK gửi 909', 2, NULL, '1'),
(62, 'Isign', 'isign', '6.000đ/Tháng', '<p>Chữ k&yacute; cuộc gọi -&nbsp;<strong>iSign</strong>&nbsp;l&agrave; dịch vụ cho ph&eacute;p c&aacute;c thu&ecirc; bao di động của Viettel tự tạo th&ocirc;ng điệp v&agrave; gi&uacute;p hiển thị th&ocirc;ng điệp n&agrave;y tr&ecirc;n m&agrave;n h&igrave;nh điện thoại của thu&ecirc; bao gọi đến hoặc thu&ecirc; bao nhận cuộc gọi.<br />\r\n<strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong><br />\r\n- Hiển thị &quot;tin nhắn chờ&quot; đồng thời với cuộc gọi đến một c&aacute;ch độc đ&aacute;o, mang đậm dấu ấn c&aacute; nh&acirc;n.<br />\r\n- Cho ph&eacute;p người d&ugrave;ng tạo chữ k&yacute; ri&ecirc;ng cho một thu&ecirc; bao, tạo chữ k&yacute; chung cho một nh&oacute;m thu&ecirc; bao, copy chữ k&yacute; hay, đặt chữ k&yacute; theo ng&agrave;y/ theo khung giờ, theo d&otilde;i lịch sử dụng chữ k&yacute;.<br />\r\n<strong>Đối tượng &amp; điều kiện sử dụng</strong><br />\r\n- Thu&ecirc; bao di động Viettel hoạt động 2 chiều</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/isign/haiphong', 6000, 6000, 1, 3, 1, 1, 72894, 1, '', '', '', 13, 1, 0, '1 tháng', 'Soạn DK gửi 9002', 2, NULL, '1'),
(63, 'Auto SMS', 'auto-sms', '500đ/Ngày', '<p><strong>AutoSMS</strong>&nbsp;l&agrave; dịch vụ từ chối cuộc gọi lịch sự bằng c&aacute;ch tự động gửi tin nhắn b&aacute;o bận đến số m&aacute;y của người gọi đến để th&ocirc;ng b&aacute;o l&yacute; do chủ thu&ecirc; bao kh&ocirc;ng thể nghe m&aacute;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong></p>\r\n\r\n<p>- Dịch vụ Tin nhắn b&aacute;o bận tự động &ndash; Auto SMS gi&uacute;p Qu&yacute; kh&aacute;ch từ chối cuộc gọi trong những trường hợp sau:</p>\r\n\r\n<p>&nbsp; + Từ chối cuộc gọi đến.</p>\r\n\r\n<p>&nbsp; + Kh&ocirc;ng thể nghe m&aacute;y khi c&oacute; cuộc gọi đến.</p>\r\n\r\n<p>&nbsp; + Điện thoại đang nhận cuộc gọi đến hoặc c&oacute; cuộc gọi đi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng &amp; điều kiện sử dụng</strong></p>\r\n\r\n<p>- Thu&ecirc; bao di đ&ocirc;̣ng Viettel hoạt đ&ocirc;̣ng 2 chi&ecirc;̀u.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/auto-sms/haiphong', 500, 500, 1, 4, 1, 1, 4267, 1, '', '', '', 13, 1, 0, '1 ngày', 'DK1 gửi 9126', 2, NULL, '1'),
(64, 'SMS Plus', 'sms-plus', '0đ/Ngày', '<p><strong>SMS Plus:</strong>&nbsp;L&agrave; nh&oacute;m t&iacute;nh năng dịch vụ Tin nhắn tiện &iacute;ch. Dịch vụ cho ph&eacute;p kh&aacute;ch h&agrave;ng thực hiện : Chuyển tiếp tin nhắn, trả lời tin nhắn tự động, Chữ k&yacute; k&egrave;m tin nhắn.</p>\r\n\r\n<p><strong>Định nghĩa c&aacute;c t&iacute;nh năng nh&oacute;m DV SMS Plus:</strong></p>\r\n\r\n<ul>\r\n	<li><em>DV Chuyển tiếp tin nhắn - SMS Forward</em>: T&iacute;nh năng n&agrave;y cho phép người sử dụng chuy&ecirc;̉n ti&ecirc;́p tin nhắn tới 01 thu&ecirc; bao khác.</li>\r\n	<li><em>DV Tin nhắn trả lời tự động - SMS Autoreply</em>: Khách hàng có th&ecirc;̉ cài đặt tin nhắn tự đ&ocirc;̣ng trả lời trong trường hợp có tin nhắn đ&ecirc;́n nhưng kh&ocirc;ng th&ecirc;̉ nh&acirc;̣n được tin nhắn (hết pin/tắt m&aacute;y/ngo&agrave;i v&ugrave;ng phủ s&oacute;ng)</li>\r\n	<li><em>DV Chữ k&yacute; tin nhắn - SMS Sign</em>: T&iacute;nh năng tạo chữ k&yacute; tin nhắn gi&uacute;p kh&aacute;ch h&agrave;ng gửi một tin nhắn tới thu&ecirc; bao/nh&oacute;m thu&ecirc; bao kh&aacute;c, hệ thống sẽ th&ecirc;m chữ k&yacute; c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng v&agrave;o cuối nội dung tin nhắn theo thiết lập của kh&aacute;ch h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c t&iacute;nh năng của dịch vụ</strong></p>\r\n\r\n<p>- T&iacute;nh năng chuyển tiếp tin nhắn</p>\r\n\r\n<p>- T&iacute;nh năng tin nhắn trả lời tự động</p>\r\n\r\n<p>- T&iacute;nh năng chữ k&yacute; k&egrave;m tin nhắn</p>\r\n\r\n<p><strong>Đối tượng v&agrave; điều kiện sử dụng</strong></p>\r\n\r\n<p>Thu&ecirc; bao di động Viettel trả trước&nbsp;v&agrave; trả sau đang hoạt động 2 chiều.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/sms-plus/haiphong', 0, 0, 1, 5, 1, 1, 5257, 1, '', '', '', 13, 1, 0, '1 ngày', 'DKA gửi 9595', 2, NULL, '1'),
(65, 'Busy SMS', 'busy-sms', '5.000đ/Tháng', '<p>Busy SMS l&agrave; dịch vụ tin nhắn b&aacute;o bận, gi&uacute;p kh&aacute;ch h&agrave;ng đăng k&yacute; thời gian (giờ/ng&agrave;y/th&aacute;ng), để trong khoảng thời gian đ&oacute;, kh&aacute;ch h&agrave;ng kh&ocirc;ng bị l&agrave;m phiền bởi những cuộc gọi kh&ocirc;ng cần thiết ngo&agrave;i &yacute; muốn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Lợi &iacute;ch khi sử dụng</strong></p>\r\n\r\n<ul>\r\n	<li>Kết hợp với t&iacute;nh năng whitelist, kh&aacute;ch h&agrave;ng c&oacute; thể nhận SMS th&ocirc;ng b&aacute;o c&oacute; cuộc gọi từ những thu&ecirc; bao c&oacute; trong danh s&aacute;ch whitelist ngay lập tức.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng c&oacute; thể c&agrave;i đặt thời gian điện thoại b&aacute;o bận (kh&ocirc;ng nhận cuộc gọi) v&agrave;o khoảng thời gian cố định.</li>\r\n	<li>Đặt chế độ phản hồi th&ocirc;ng tin cho thu&ecirc; bao gọi tới trong thời gian bận, th&ocirc;ng tin phản hồi c&oacute; thể qua tin nhắn hoặc lời thoại được soạn sẵn.</li>\r\n	<li>Lập danh s&aacute;ch c&aacute;c số điện thoại được gửi tin nhắn th&ocirc;ng b&aacute;o ngay lập tức khi gọi trong khoảng thời gian bận bằng tiện &iacute;ch whitelist của dịch vụ.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Đối tượng &amp; điều kiện sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Thu&ecirc; bao di động Viettel( trả trước v&agrave; trả sau) đang hoạt đ&ocirc;̣ng 2 chi&ecirc;̀u.</li>\r\n	<li>Thu&ecirc; bao nhận th&ocirc;ng b&aacute;o bận: thu&ecirc; bao nội mạng Viettel.</li>\r\n</ul>\r\n', 'https://shop.viettel.vn/dich-vu-vas/busy-sms/haiphong', 5000, 5000, 1, 6, 0, 0, 3147, 0, '', '', '', 13, 1, 0, '1 tháng', 'DK gửi 3400', 2, NULL, '1'),
(66, 'Ứng tiền tự động', 'ung-tien-tu-dong', 'Cước dịch vụ: 15% tiền ứng.', '<p>Dịch vụ Ứng tiền tự động (Airtime Credit) l&agrave; dịch vụ cho ph&eacute;p thu&ecirc; bao di động Viettel trả trước khi hết tiền c&oacute; thể ứng trước một khoản tiền v&agrave;o t&agrave;i khoản gốc để thực hiện c&aacute;c giao dịch như cuộc gọi thoại, nhắn tin, truy cập internet&hellip;</p>\r\n\r\n<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; Được ứng trước 1 khoản tiền khi t&agrave;i khoản gốc dưới mức ngưỡng của hệ thống cho ph&eacute;p, tr&aacute;nh c&aacute;c trường hợp bị gi&aacute;n đoạn trong qu&aacute; tr&igrave;nh sử dụng dịch vụ.</p>\r\n\r\n<p>-&nbsp;&nbsp; Được ứng với số tiền lớn hơn dịch vụ ứng tiền truyền thống qua *911#.</p>\r\n\r\n<p><strong>Đối tượng</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; Đối tượng: Thu&ecirc; bao Di động, D-com trả trước.</p>\r\n\r\n<p><strong>Điều kiện sử dụng</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; Thu&ecirc; bao đang hoạt động 2 chiều.</p>\r\n\r\n<p>-&nbsp;&nbsp; Thu&ecirc; bao đ&atilde; hoạt động tối thiểu 90 ng&agrave;y kể từ ng&agrave;y k&iacute;ch hoạt.</p>\r\n\r\n<p>-&nbsp;&nbsp; Mức ti&ecirc;u d&ugrave;ng t&agrave;i khoản gốc trung b&igrave;nh 3 th&aacute;ng liền kề gần nhất tối thiểu l&agrave; 50.000 đ/th&aacute;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp; Thu&ecirc; bao chưa ứng hết hạn mức cho ph&eacute;p theo quy định.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/ung-tien-tu-dong/haiphong', NULL, NULL, 1, 7, 0, 0, 2426, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', 'UT gửi 9118', 2, NULL, '1'),
(69, 'I-Share', 'i-share', 'Mức chuyển < 50.000đ/lần', '<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong><br />\r\n- Kh&ocirc;ng cước đăng k&yacute;.<br />\r\n- Kh&ocirc;ng cước thu&ecirc; bao th&aacute;ng.<br />\r\n- Sử dụng thuận tiện, đơn giản.</p>\r\n\r\n<p><strong>Đối tượng v&agrave; điều kiện sử dụng</strong><br />\r\n<em>- Thu&ecirc; bao chuyển tiền:</em><br />\r\n&nbsp; &nbsp;+ Thu&ecirc; bao di động trả trước, đang hoạt động 2 chiều v&agrave; c&oacute; thời gian hoạt động &gt;= 6 th&aacute;ng (180 ng&agrave;y) t&iacute;nh từ ng&agrave;y k&iacute;ch hoạt thu&ecirc; bao đến ng&agrave;y sử dụng dịch vụ I-Share.<br />\r\n&nbsp; &nbsp;+ Thu&ecirc; bao đang hoạt động cả 2 chiều tại thời điểm chuyển tiền.<br />\r\n&nbsp; &nbsp;+ T&agrave;i khoản gốc của thu&ecirc; bao chuyển tiền phải lớn hơn số tiền y&ecirc;u cầu chuyển v&agrave; ph&iacute; dịch vụ<br />\r\n&nbsp; &nbsp;+ Thu&ecirc; bao chuyển tiền kh&ocirc;ng bị trừ ng&agrave;y sử dụng sau khi đ&atilde; bị trừ tiền.</p>\r\n\r\n<p><em>- Thu&ecirc; bao nhận tiền:</em><br />\r\n&nbsp; &nbsp;+ Thu&ecirc; bao trả trước đang hoạt động 2 chiều tại thời điểm nhận tiền.<br />\r\n&nbsp; &nbsp;+ Thu&ecirc; bao hoạt động một chiều được cộng tiền nhưng kh&ocirc;ng được cộng ng&agrave;y sử dụng</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/i-share/haiphong', NULL, NULL, 1, 8, 0, 0, 425, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', 'HD gửi 136', 2, NULL, '1'),
(70, 'Call Forward', 'call-forward', '', '<p>&nbsp;<strong>Call Forward</strong>&nbsp;l&agrave; dịch vụ chuyển tiếp cuộc gọi cho ph&eacute;p thu&ecirc; bao di động Viettel thực hiện chuyển hướng cuộc gọi đến một số điện thoại kh&aacute;c c&oacute; thể l&agrave; thu&ecirc; bao di động, cố định nội mạng hoặc ngoại mạng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong></p>\r\n\r\n<p>- Hỗ trợ kh&aacute;ch h&agrave;ng chuyển cuộc gọi sang số m&aacute;y kh&aacute;c trong trường hợp kh&ocirc;ng trả lời, m&aacute;y bận, tắt m&aacute;y, hết pin, ngo&agrave;i v&ugrave;ng phủ s&oacute;ng.</p>\r\n\r\n<p>- Hỗ trợ kh&aacute;ch h&agrave;ng chuyển to&agrave;n bộ cuộc gọi đến một thu&ecirc; bao kh&aacute;c trong trường hợp kh&aacute;ch h&agrave;ng qu&ecirc;n m&aacute;y bằng c&aacute;ch nhắn tin chuyển hướng từ một thu&ecirc; bao di động kh&aacute;c của Viettel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng &amp; điều kiện sử dụng</strong></p>\r\n\r\n<p>- Số thu&ecirc; bao chuyển cuộc gọi l&agrave; thu&ecirc; bao di động hoạt động 2 chiều của Viettel.</p>\r\n\r\n<p>- Số thu&ecirc; bao nhận chuyển cuộc gọi l&agrave; thu&ecirc; bao di động, cố định Viettel hoặc l&agrave; thu&ecirc; bao di động, cố định ngoại mạng.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/call-forward/haiphong', NULL, NULL, 1, 9, 0, 0, 7663, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', 'HD gửi 1322', 2, NULL, '1'),
(71, 'Collect Call', 'collect-call', 'Đăng ký và duy trì dịch vụ: Miễn phí', '<p><strong>1.&nbsp;&nbsp;M&ocirc; tả dịch vụ</strong><br />\r\nDịch vụ Collect Call (T&ecirc;n tiếng Việt: Người nghe trả tiền) l&agrave; dịch vụ cho ph&eacute;p thu&ecirc; bao di động Viettel hết tiền trong t&agrave;i khoản hoặc kh&ocirc;ng muốn trả ph&iacute; cho dịch vụ thoại vẫn c&oacute; thể thực hiện gọi tới một số điện thoại kh&aacute;c. Trong đ&oacute;, thu&ecirc; bao nhận cuộc gọi sẽ trả tiền hộ thu&ecirc; bao thực hiện cuộc gọi.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;C&aacute;c t&iacute;nh năng của dịch vụ</strong><br />\r\n- Cho ph&eacute;p thu&ecirc; bao nghe (thu&ecirc; bao B) trả tiền cho thu&ecirc; bao gọi (thu&ecirc; bao A).<br />\r\n- Thiết lập thời gian trả ph&iacute; cuộc gọi: Thu&ecirc; bao B c&oacute; thể c&agrave;i đặt số ng&agrave;y trả ph&iacute; cuộc gọi cho thu&ecirc; bao A (mỗi ng&agrave;y tương đương 24h).<br />\r\n- Giới hạn mức tiền chấp nhận chi trả: Thu&ecirc; bao B c&oacute; thể c&agrave;i đặt số tiền chi trả hộ ph&iacute; cuộc gọi h&agrave;ng th&aacute;ng cho thu&ecirc; bao A.<br />\r\n- Blacklist: Thu&ecirc; bao B thiết lập danh s&aacute;ch (th&ecirc;m/ x&oacute;a) c&aacute;c số điện thoại trong danh s&aacute;ch từ chối nhận y&ecirc;u cầu trả ph&iacute; cuộc gọi.<br />\r\n- Hủy dịch vụ: Thu&ecirc; bao B c&oacute; thể hủy dịch vụ trả ph&iacute; cuộc gọi của thu&ecirc; bao A.<br />\r\n- Từ chối nhận tin y&ecirc;u cầu trả hộ ph&iacute; cuộc gọi: Cho ph&eacute;p thu&ecirc; bao B từ chối nhận y&ecirc;u cầu Collect Call từ tất cả c&aacute;c thu&ecirc; bao kh&aacute;c.<br />\r\n- Tra cứu th&ocirc;ng tin sử dụng dịch vụ: Thu&ecirc; bao A v&agrave; B c&oacute; thể tra cứu đang được thu&ecirc; bao n&agrave;o trả ph&iacute; hộ hoặc đang trả ph&iacute; cho thu&ecirc; bao n&agrave;o.</p>\r\n\r\n<p><strong>3. Đối tượng v&agrave; điều kiện sử dụng</strong></p>\r\n\r\n<p>Đối tượng v&agrave; điều kiện sử dụng<br />\r\n- &nbsp;Thu&ecirc; bao A v&agrave; thu&ecirc; bao B thu&ecirc; bao trả trước của Viettel.<br />\r\n- &nbsp;Mỗi thu&ecirc; bao kh&ocirc;ng được gửi qu&aacute; 10 y&ecirc;u cầu Collect Call trong 24h, c&oacute; thể gửi nhiều y&ecirc;u cầu tới 01 thu&ecirc; bao. Mỗi y&ecirc;u cầu c&oacute; hiệu lực x&aacute;c nhận trong v&ograve;ng 24h kể từ thời điểm nhắn tin.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/collect-call/haiphong', NULL, NULL, 1, 10, 0, 0, 3722, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', 'HD gửi 9107', 2, NULL, '1'),
(72, 'Call Plus', 'call-plus', '', '<p>Dịch vụ Gọi kh&ocirc;ng gi&aacute;n đoạn (Call Plus) th&ocirc;ng qua tổng đ&agrave;i 1530 l&agrave; dịch vụ tiện &iacute;ch thoại cho ph&eacute;p thu&ecirc; bao di động Viettel trả trước khi hết tiền trong t&agrave;i khoản vẫn được tiếp tục thực hiện c&aacute;c cuộc gọi để duy tr&igrave; li&ecirc;n lạc với người th&acirc;n, bạn b&egrave;&hellip; . Cuộc gọi n&agrave;y KH&Ocirc;NG BỊ TRỪ TIỀN tại thời điểm gọi m&agrave; sẽ được trừ trong lần nạp tiền kế tiếp.</p>\r\n\r\n<p><strong>Lợi &iacute;ch khi sử dụng dịch vụ</strong><br />\r\n-&nbsp;&nbsp;&nbsp;Thực hiện c&aacute;c cuộc gọi nội mạng, ngoại mạng với tổng thời gian tối đa l&agrave; 5 ph&uacute;t.<br />\r\n-&nbsp;&nbsp;&nbsp;Hạn mức thời gian đ&agrave;m thoại của thu&ecirc; bao l&agrave; kh&aacute;c nhau theo nhu cầu c&aacute; nh&acirc;n v&agrave; đ&aacute;nh gi&aacute; cho ph&eacute;p của hệ thống.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng ph&iacute; duy tr&igrave;, kh&ocirc;ng ph&iacute; đăng k&yacute;.<br />\r\n<strong>Đối tượng</strong><br />\r\n-&nbsp;&nbsp;&nbsp;Đối tượng: Thu&ecirc; bao Di động trả trước.<br />\r\n<strong>Điều kiện sử dụng</strong><br />\r\n-&nbsp; Thu&ecirc; bao đang hoạt động 2 chiều</p>\r\n\r\n<p>-&nbsp; Thu&ecirc; bao kh&ocirc;ng nợ cước dịch vụ Call Plus</p>\r\n\r\n<p>-&nbsp;Thu&ecirc; bao chưa sử dụng hết số ph&uacute;t gọi cho ph&eacute;p.</p>\r\n\r\n<p>-&nbsp; T&agrave;i khoản gốc &lt;1000đ</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/call-plus/haiphong', NULL, NULL, 1, 11, 0, 0, 13168, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', 'HD gửi 1530', 2, NULL, '1'),
(73, 'Call Me Back', 'call-me-back', '', '<p><strong>Call me back</strong>: L&agrave; dịch vụ cho ph&eacute;p kh&aacute;ch h&agrave;ng l&agrave; thu&ecirc; bao trả trước (A) của Viettel (hoạt động 2 chiều hoặc bị chặn 1 chiều kh&ocirc;ng đủ khả năng thiết lập cuộc gọi) c&oacute; thể gửi một tin nhắn tới một thu&ecirc; bao kh&aacute;c (B)&nbsp;l&agrave; c&aacute;c thu&ecirc; bao di động trong v&agrave; ngo&agrave;i mạng (trong nước)&nbsp;với nội dung y&ecirc;u cầu thu&ecirc; bao (B) gọi lại cho m&igrave;nh.</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/call-me-back/haiphong', NULL, NULL, 1, 12, 0, 0, 2561, 0, NULL, NULL, NULL, 13, 1, 0, '1 tháng', ' 098xxxxxxx_Nội dung cần nhắn gửi 9119', 2, NULL, '1'),
(74, 'NET1 + Flexi', 'net1--flexi', '15Mbps + Flexi (160 kênh)', '<p>&nbsp;Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 40% gi&aacute; cước&nbsp;cước th&aacute;ng khi mua g&oacute;i combo so với mua g&oacute;i ri&ecirc;ng lẻ.</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng 215.000/th&aacute;ng</p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net1-flexi', 360000, 215000, 1, 1, 1, 1, 2526, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(75, 'NET2 + Flexi', 'net2--flexi', '20Mbps + Flexi (160 kênh)', '<p>Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 44% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>230.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net2-flexi-1', 410000, 230000, 1, 2, 1, 1, 25261, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(76, 'NET3 + Flexi', 'net3--flexi', 'Tốc độ 25Mbps + Flexi (160 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 46% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>250.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net3-flexi-1', 460000, 250000, 1, 3, 1, 1, 2527, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(77, 'NET4 + Flexi', 'net4--flexi', '30Mbps + Flexi (180 kênh)', '<p>&nbsp;Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 47% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>270.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net4-flexi-1', 510000, 270000, 1, 4, 1, 1, 42616, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(78, 'NET5 + Flexi', 'net5--flexi', 'Tốc độ 35Mbps + Flexi (180 kênh)', '<p>&nbsp;Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 47% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>300.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net5-flexi-1', 560000, 300000, 1, 5, 1, 1, 42425, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(79, 'NET6 + Flexi', 'net6--flexi', '40Mbps + Flexi (180 kênh)', '<p>Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 38% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>400.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net6-flexi-1', 660000, 400000, 1, 6, 1, 1, 5226, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(80, 'NET1 + Family2', 'net1--family2', 'Tốc độ 15Mbps + Family2 (190 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)<br />\r\n<br />\r\n- Trang bị Modem Wifi, đầu thu HD - Giảm đến 39% gi&aacute; cước - Cước h&agrave;ng th&aacute;ng 260.000/th&aacute;ng - Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a - KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n\r\n<p>-&nbsp;&nbsp; Phạm vi &aacute;p dụng:&nbsp;<strong>Hải Ph&ograve;ng (Trừ Quận Hồng B&agrave;ng, L&ecirc; Ch&acirc;n, Ng&ocirc; Quyền, Hải An)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'https://shop.viettel.vn/cdbr/net1-family2-1', 426000, 260000, 1, 7, 1, 1, 5353, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(81, 'NET1 + Family2', 'net1--family2', 'Tốc độ 15Mbps + Family2 (190 kênh)', '<p>Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)<br />\r\n- Trang bị Modem Wifi, đầu thu HD<br />\r\n- Giảm đến 35% gi&aacute; cước<br />\r\n- Cước h&agrave;ng th&aacute;ng 260.000/th&aacute;ng<br />\r\n- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a<br />\r\n- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net1-family2', 426000, 275000, 1, 8, 1, 1, 6363, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(82, 'NET2 + Family2', 'net2--family2', 'Tốc độ 20Mbps + Family2 (195 kênh)', '<p>&nbsp;Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 42% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>275.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net2-family2-1', 476000, 275000, 1, 9, 1, 1, 67864, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(83, 'NET4 + Family2', 'net4--family2', 'Tốc độ 30Mbps + Family2 (195 kênh)', '<p>Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>315.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net4-family2-1', 576000, 315000, 1, 10, 1, 1, 5252, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(84, 'NET5 + Family2', 'net5--family2', 'Tốc độ 35Mbps + Family2 (195 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>345.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net5-family2', 626000, 345000, 1, 11, 1, 1, 6278, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(85, 'NET1 + Eco/Family1', 'net1--ecofamily1', '15Mbps + Eco/Family1 (160 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi 4 port, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 38% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>245.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net1-eco-family1-2', 393000, 245000, 1, 12, 1, 1, 425262, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(86, 'NET1 + Eco/Family1', 'net1--ecofamily1', '15Mbps + Eco/Family1 (160 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi 4 port, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 41% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>230.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n', 'https://shop.viettel.vn/cdbr/net1-eco-family1-3', 393333, 230000, 1, 13, 0, 1, 5251, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(87, 'NET2 + Eco/Family1', 'net2--ecofamily1', 'Tốc độ 20Mbps + Eco/Family1 (160 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 41% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>260.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net2-eco-family1-2', 443000, 260000, 1, 14, 0, 1, 451, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(88, 'NET2 + Eco/Family1', 'net2--ecofamily1', 'Tốc độ 20Mbps + Eco/Family1 (160 kênh)', '<p>- Giảm ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>245.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net2-eco-family1-3', 443000, 245000, 1, 15, 0, 1, 6251, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '500000', '2'),
(89, 'NET3 + Eco/Family1', 'net3--ecofamily1', 'Tốc độ 25Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 43% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>280.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net3-eco-family1-2', 493000, 280000, 1, 16, 1, 1, 552, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(90, 'NET3 + Eco/Family1', 'net3--ecofamily1', '25Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 46% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>265.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net3-eco-family1-3', 493000, 265000, 1, 17, 1, 1, 6462, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(91, 'NET4 + Eco/Family1', 'net4--ecofamily1', '30Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 45% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>300.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net4-eco-family1-2', 543000, 300000, 1, 17, 0, 1, 3634, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '0', '2'),
(92, 'NET4 + Eco/Family1', 'net4--ecofamily1', '30Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 48% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>285.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net4-eco-family1-3', 543000, 285000, 1, 19, 0, 1, 5362, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '0', '2'),
(93, 'NET5 + Eco/Family1', 'net5--ecofamily1', 'Tốc độ 35Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 44% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>330.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net5-eco-family1-2', 593000, 330000, 1, 20, 1, 1, 3632, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(94, 'NET5 + Eco/Family1', 'net5--ecofamily1', 'Tốc độ 35Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 47% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>315.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net5-eco-family1-3', 593000, 315000, 1, 21, 0, 1, 5321, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(95, 'NET6 + Eco/Family1', 'net6--ecofamily1', 'Tốc độ 40Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 39% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>420.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net6-eco-family1-2', 693000, 420000, 1, 22, 0, 1, 5255, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(96, 'NET6 + Eco/Family1', 'net6--ecofamily1', 'Tốc độ 40Mbps + Eco/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 41% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>415.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net6-eco-family1-3', 693000, 415000, 1, 23, 1, 1, 5342, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(97, 'Net6 + Family1/Eco (nội thành)', 'net6--family1eco-noi-thanh', 'Tốc độ 40Mbps + ECO/Family1 (160 kênh)', '<p>- Miễn ph&iacute; lắp đặt (đối với Kh&aacute;ch h&agrave;ng đ&oacute;ng trước)</p>\r\n\r\n<p>- Trang bị Modem Wifi, đầu thu HD</p>\r\n\r\n<p>- Giảm đến 40% gi&aacute; cước</p>\r\n\r\n<p>- Cước h&agrave;ng th&aacute;ng&nbsp;<strong>420.000/th&aacute;ng</strong></p>\r\n\r\n<p>- Miễn ph&iacute; sử dụng dịch vụ Truyền h&igrave;nh c&aacute;p (Analog) - tối đa 3 TV, kh&ocirc;ng &aacute;p dụng tại c&aacute;c tỉnh số h&oacute;a</p>\r\n\r\n<p>- KH tham gia đ&oacute;ng trước từ 6 th&aacute;ng trở l&ecirc;n được tặng từ 1 đến 3 th&aacute;ng</p>\r\n', 'https://shop.viettel.vn/cdbr/net6-family1-eco-noi-thanh', 693000, 420000, 1, 24, 1, 1, 45241, 1, '', '', '', 4, 1, 0, '1 tháng', '1800 8168', 1, '250000', '2'),
(98, 'Umax300', 'umax300', ' Không giới hạn GB', '<p>Với 300.000 đồng qu&yacute; kh&aacute;ch sử dụng kh&ocirc;ng giới hạn lưu lượng tốc độ cao. Chu kỳ g&oacute;i cước 30 ng&agrave;y, sau 30 ng&agrave;y hệ thống tự động gia hạn</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>-&nbsp;Hủy g&oacute;i cước: soạn HUY gửi 191<br />\r\n- C&uacute; ph&aacute;p kiểm tra lưu lượng: KTTK gửi 191</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/UMAX300/haiphong', 300000, 300000, 1, 4, 1, 1, NULL, 1, NULL, NULL, NULL, 7, 1, 1, '1 tháng', 'UMAX300 gửi 191', 2, NULL, '1'),
(99, 'D500 ( 500.000/360 ngày)', 'd500--500.000360-ngay', '48GB', '<p>Với 500.000đ Qu&yacute; kh&aacute;ch c&oacute; 48GB tốc độ cao trong v&ograve;ng 12 th&aacute;ng t&iacute;nh từ th&aacute;ng đăng k&yacute;, hết tốc độ cao miễn ph&iacute; sử dụng tốc độ thường</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/D500/haiphong', 500000, 500000, 1, 5, 1, 1, NULL, 1, '', '', '', 9, 1, 1, '1 tháng', 'D500 gửi 191', 2, NULL, '1'),
(100, 'D900 ( 900.000 VND / 360 ngày)', 'd900--900.000-vnd--360-ngay', '7GB', '<p>L&agrave; g&oacute;i cước trọn g&oacute;i d&agrave;nh cho thu&ecirc; bao Dcom trả trước. Với 900.000đ Qu&yacute; kh&aacute;ch c&oacute; 7GB/th&aacute;ng trong v&ograve;ng 12 th&aacute;ng t&iacute;nh từ th&aacute;ng đăng k&yacute;, hết tốc độ cao miễn ph&iacute; sử dụng tốc độ thường.</p>\r\n', 'https://shop.viettel.vn/data-chi-tiet/D900/haiphong', 900000, 900000, 1, 6, 1, 1, NULL, 1, NULL, NULL, NULL, 9, 1, 1, '1 tháng', 'D900 gửi 191', 2, NULL, '1'),
(101, 'MOCHA', 'mocha', 'SMS MIỄN PHÍ', '<p>Mocha l&agrave; dịch vụ nhắn tin SMS MIỄN PH&Iacute; kh&ocirc;ng giới hạn tới tất cả thu&ecirc; bao nội mạng Viettel, kể cả c&aacute;c số chưa c&agrave;i ứng dụng hoặc đ&atilde; c&agrave;i nhưng kh&ocirc;ng online, gọi điện Call out MIỄN PH&Iacute;, miễn cước Data khi sử dụng c&aacute;c t&iacute;nh năng C&ugrave;ng nghe nhạc, Nghe c&ugrave;ng người lạ, Gửi Voice sticker, Cập nhật tin tức v&agrave; nội dung tức thời từ bạn b&egrave; v&agrave; những người nổi tiếng tr&ecirc;n Mạng x&atilde; hội nội dung số.</p>\r\n\r\n<p>Ph&iacute; DV: 5.000đ/tuần.</p>\r\n\r\n<p>Đăng k&yacute; dịch vụ, soạn MC gửi 5005.</p>\r\n\r\n<p>Truy cập ứng dụng Mocha để thực hiện nhắn tin miễn ph&iacute;</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/mocha', 5000, 5000, 1, 6, 1, 1, NULL, 1, NULL, NULL, NULL, 13, 1, 1, '7 ngày', 'MC gửi 5005', 2, NULL, '1'),
(102, 'Lifebox', 'lifebox', 'lưu trữ dữ liệu', '<p>Dịch vụ Lifebox (2.0) lưu trữ dữ liệu c&aacute; nh&acirc;n tr&ecirc;n đ&aacute;m m&acirc;y với c&aacute;c t&iacute;nh năng:</p>\r\n\r\n<p>+ Lưu trữ: Đảm bảo lưu trữ dữ liệu c&aacute; nh&acirc;n bảo mật v&agrave; an to&agrave;n tr&ecirc;n cả nền IOS, ANDROID v&agrave; WEBSITE.</p>\r\n\r\n<p>+ Kh&ocirc;i phục: Chuyển dữ liệu từ đ&aacute;m m&acirc;y xuống thiết bị c&aacute; nh&acirc;n mới hoặc c&agrave;i đặt lại.</p>\r\n\r\n<p>+ Chia sẻ: Cho ph&eacute;p mời, chia sẻ nội&nbsp; dung theo từng đối tượng cụ thể.</p>\r\n\r\n<p>+ Truy cập: Truy cập nội dung, dữ liệu c&aacute; nh&acirc;n mọi nơi, mọi l&uacute;c c&oacute; kết nối Internet.</p>\r\n\r\n<p>- Để đăng k&yacute; g&oacute;i VIP (c&oacute; ngay 20GB lưu trữ, miễn ph&iacute; Data sử dụng), soạn tin&nbsp;<strong>DK</strong>&nbsp;gửi&nbsp;<strong>1098</strong>&nbsp;(20.000đ/th&aacute;ng).</p>\r\n\r\n<p>- Tải ứng dụng Lifebox tr&ecirc;n Google Play và App Store v&agrave; đăng k&yacute; để nhận ngay t&agrave;i khoản miễn ph&iacute; (5GB lưu trữ). Hoặc sử dụng tr&ecirc;n website&nbsp;<a href=\"https://lifebox.vn/\">https://lifebox.vn</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>G&oacute;i Free</strong>: Miễn ph&iacute;, kh&aacute;ch h&agrave;ng đăng k&yacute; t&agrave;i khoản Lifebox để sử dụng, c&oacute; ngay 5GB lưu trữ.</li>\r\n	<li><strong>G&oacute;i VIP</strong>: 20.000đ/th&aacute;ng, kh&aacute;ch h&agrave;ng c&oacute; ngay 20GB lưu trữ, miễn ph&iacute; data sử dụng dịch vụ.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tải ứng dụng Lifebox (2.0) tr&ecirc;n AppStore (IOS) hoặc Google Play (Android) để sử dụng hoặc truy cập tr&ecirc;n website&nbsp;<a href=\"https://lifebox.vn/\">https://lifebox.vn</a></p>\r\n\r\n<p>&nbsp;Link tải ứng dụng:</p>\r\n\r\n<p>- IOS&nbsp;<a href=\"https://goo.gl/yY9NJf\">https://goo.gl/yY9NJf</a></p>\r\n\r\n<p>- Android&nbsp;<a href=\"https://goo.gl/iuw233\">https://goo.gl/iuw233</a></p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/lifebox', 20000, 20000, 1, 7, 1, 1, NULL, 1, NULL, NULL, NULL, 13, 1, 1, '1 tháng', 'DK gửi 1098', 2, NULL, '1');
INSERT INTO `product` (`id`, `name`, `url`, `code`, `brief`, `decription`, `retail`, `sale`, `status`, `ord`, `home`, `hot`, `luotxem`, `active`, `seo_title`, `seo_desc`, `seo_keyword`, `cat_product_id`, `brand_id`, `new`, `tag`, `cuphap`, `kieudangky`, `philapdat`, `kieuthanhtoan`) VALUES
(103, 'Tổng đài âm nhạc 1221', 'tong-dai-am-nhac-1221', 'kênh âm nhạc giải trí', '<p>Dịch vụ Tổng đ&agrave;i &acirc;m nhạc 1221 của Viettel l&agrave; k&ecirc;nh &acirc;m nhạc giải tr&iacute; tổng hợp cho ph&eacute;p kh&aacute;ch h&agrave;ng c&oacute; thể nghe nhạc số, tải nhạc chờ, gửi tặng một ca kh&uacute;c hoặc bản nhạc k&egrave;m lời nhắn ghi &acirc;m từ thu&ecirc; bao Viettel tới c&aacute;c thu&ecirc; bao kh&aacute;c (Viettel, di động Mobifone, di động Vinaphone) hoặc giải tr&iacute; c&ugrave;ng những c&acirc;u chuyện cười đặc sắc v&agrave; cập nhật tin tức mới h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><strong>T&iacute;nh năng, lợi &iacute;ch dịch vụ</strong></p>\r\n\r\n<p>- Nghe tải tặng nhạc chờ theo y&ecirc;u cầu</p>\r\n\r\n<p>- Trực tiếp ghi &acirc;m lời nhắn của m&igrave;nh gửi đến cho người th&acirc;n k&egrave;m với b&agrave;i h&aacute;t khi Tặng b&agrave;i h&aacute;t cho thu&ecirc; bao kh&aacute;c v&agrave; trong thời gian ngắn nhất, sau 3 - 5ph&uacute;t từ khi đặt qu&agrave; tặng th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>- Đặt qu&agrave; tặng trước để ca kh&uacute;c được chuyển đến người nhận v&agrave;o thời gian cụ thể do người tặng lựa chọn.</p>\r\n\r\n<p>- Hệ thống gợi &yacute; c&aacute;c ca kh&uacute;c gửi tặng theo từng chủ đề: Nhạc hot, nhạc trẻ, sinh nhật, b&agrave;i h&aacute;t mới nhất&hellip;</p>\r\n\r\n<p>- Nghe lại qu&agrave; tặng: c&oacute; thể gọi l&ecirc;n tổng đ&agrave;i để nghe lại qu&agrave; tặng đ&atilde; nhận trong v&ograve;ng 1 th&aacute;ng.</p>\r\n\r\n<p>- C&agrave;i ca kh&uacute;c y&ecirc;u th&iacute;ch l&agrave;m nhạc chờ</p>\r\n\r\n<p><strong>Đối tượng &amp; điều kiện sử dụng</strong></p>\r\n\r\n<p>- Đối với kh&aacute;ch h&agrave;ng l&agrave; thu&ecirc; bao di động, Homephone, Cố định của Viettel: Gọi đến tổng đ&agrave;i&nbsp;<strong>1221</strong></p>\r\n\r\n<p>- Đối với kh&aacute;ch h&agrave;ng l&agrave; thu&ecirc; bao&nbsp;ngoại mạng (Vinaphone, Mobifone&hellip;): Gọi đến tổng đ&agrave;i&nbsp;<strong>0968821222.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bảng gi&aacute; cước dịch vụ:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:566px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>T&ecirc;n g&oacute;i</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Gi&aacute; cước</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>C&uacute; Ph&aacute;p Đăng k&yacute;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>C&uacute; ph&aacute;p Hủy</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Quyền lợi ri&ecirc;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Quyền lợi chung</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>G&oacute;i Ng&agrave;y</p>\r\n			</td>\r\n			<td>\r\n			<p>2.000/ng&agrave;y</p>\r\n			</td>\r\n			<td>\r\n			<p>XN1</p>\r\n			</td>\r\n			<td>\r\n			<p>HUY GT</p>\r\n			</td>\r\n			<td>\r\n			<p>10 ph&uacute;t gọi miễn ph&iacute; l&ecirc;n 1221. Cước vượt lưu lượng: 40đ/ph&uacute;t</p>\r\n			</td>\r\n			<td rowspan=\"3\">\r\n			<p>Tặng 03 b&agrave;i h&aacute;t miễn ph&iacute; cho thu&ecirc; bao Viettel mỗi ng&agrave;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>G&oacute;i Tuần</p>\r\n			</td>\r\n			<td>\r\n			<p>5.000/tuần</p>\r\n			</td>\r\n			<td>\r\n			<p>XN5</p>\r\n			</td>\r\n			<td>\r\n			<p>HUY GT</p>\r\n			</td>\r\n			<td>\r\n			<p>30 ph&uacute;t gọi miễn ph&iacute; l&ecirc;n 1221. Cước vượt lưu lượng: 40đ/ph&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>G&oacute;i Th&aacute;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>15.000/th&aacute;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>XN15</p>\r\n			</td>\r\n			<td>\r\n			<p>HUY GT</p>\r\n			</td>\r\n			<td>\r\n			<p>45 ph&uacute;t gọi miễn ph&iacute; l&ecirc;n 1221. Cước vượt lưu lượng: 40đ/ph&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>D&ugrave;ng lẻ ( chưa đăng k&yacute; dv)</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Cước thoại: 300đ/ph&uacute;t<br />\r\n			Cước tặng qu&agrave;: 2000đ/qu&agrave; tặng</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Cước gọi đến&nbsp;<strong>0968821222</strong>&nbsp;(với thu&ecirc; bao ngoại mạng): T&iacute;nh cước của cuộc gọi di động li&ecirc;n mạng theo quy định hiện h&agrave;nh</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>Lưu &yacute;</u>:</strong></em></p>\r\n\r\n<ul>\r\n	<li><em>Ch&iacute;nh s&aacute;ch tặng b&agrave;i h&aacute;t miễn ph&iacute; chỉ &aacute;p dụng tặng qu&agrave; cho thu&ecirc; bao nội mạng. Đối với tặng qu&agrave; thu&ecirc; bao ngoại mạng v&agrave; tặng b&agrave;i h&aacute;t vượt, t&iacute;nh cước 2000đ/b&agrave;i.</em></li>\r\n	<li><em>Nếu thu&ecirc; bao kh&ocirc;ng sử dụng hết số ph&uacute;t miễn ph&iacute; v&agrave; số b&agrave;i h&aacute;t miễn ph&iacute; tương ứng với g&oacute;i đ&atilde; đăng k&yacute; th&igrave; kh&ocirc;ng bảo lưu sang chu kỳ sau.</em></li>\r\n	<li><em>Nếu tặng kh&ocirc;ng th&agrave;nh c&ocirc;ng, hệ thống sẽ ho&agrave;n lại cước ph&iacute; tặng b&agrave;i h&aacute;t cho thu&ecirc; bao tặng.</em><em>Qu&agrave; tặng được ho&agrave;n cước l&agrave; qu&agrave; tặng c&oacute; mức gi&aacute; kh&aacute;c 0đ</em></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Đăng k&yacute; dịch vụ&nbsp;</strong><strong>Tổng đ&agrave;i &acirc;m nhạc 1221</strong></p>\r\n\r\n<ul>\r\n	<li>G&oacute;i ng&agrave;y: soạn&nbsp;<strong>XN1</strong>&nbsp;gửi&nbsp;<strong>1221</strong></li>\r\n	<li>G&oacute;i tuần: Soạn&nbsp;<strong>XN5</strong>&nbsp;gửi&nbsp;<strong>1221</strong></li>\r\n	<li>G&oacute;i th&aacute;ng: Soạn&nbsp;<strong>XN15</strong>&nbsp;gửi&nbsp;<strong>1221</strong></li>\r\n</ul>\r\n\r\n<p>Hủy g&oacute;i c&aacute;c cước: soạn HUY GT gửi<strong>&nbsp;</strong>1221</p>\r\n\r\n<p><strong>2. C&aacute;c bước để tặng qu&agrave;:</strong></p>\r\n\r\n<p>- Bước 1: Gọi điện tới số 1221 v&agrave; đăng k&yacute; dịch vụ Tổng đ&agrave;i &acirc;m nhạc 1221</p>\r\n\r\n<p>- Bước 2: Sau khi đăng k&yacute;, Lựa chọn chức năng gửi qu&agrave; tặng tới bạn b&egrave; v&agrave; người th&acirc;n (nghe c&aacute;c ca kh&uacute;c do hệ thống gợi &yacute; hoặc nhập m&atilde; số b&agrave;i h&aacute;t)</p>\r\n\r\n<p>- Bước 3: Nhập thu&ecirc; bao nhận qu&agrave; (Viettel, di động Mobifone, di động Vinaphone)</p>\r\n\r\n<p>- Bước 4: Nhập thời gian tặng qu&agrave; (tặng qu&agrave; ngay hoặc c&agrave;i đặt thời gian tặng qu&agrave; ch&iacute;nh x&aacute;c)</p>\r\n\r\n<p>- Bước 5: Ghi &acirc;m lời nhắn gửi k&egrave;m qu&agrave; tặng (thời lượng tối đa l&agrave; 2 ph&uacute;t)</p>\r\n\r\n<ul>\r\n	<li><strong><em>Nghe lại qu&agrave; tặng</em></strong></li>\r\n</ul>\r\n\r\n<p>- Thu&ecirc; bao nhận qu&agrave;: thu&ecirc; bao Viettel gọi đến 1221, thu&ecirc; bao ngoại mạng (Vinaphone, Mobifone) gọi đến&nbsp;<strong>0968821222</strong></p>\r\n\r\n<p>- Nhập m&atilde; số qu&agrave; tặng đ&atilde; nhận để nghe lại qu&agrave; tặng (m&atilde; số qu&agrave; tặng c&oacute; trong tin nhắn gửi cho kh&aacute;ch h&agrave;ng sau khi đ&atilde; nhận qu&agrave; th&agrave;nh c&ocirc;ng).</p>\r\n\r\n<ul>\r\n	<li><strong><em>Tải b&agrave;i h&aacute;t l&agrave;m nhạc chờ</em></strong><strong><em>:</em></strong></li>\r\n</ul>\r\n\r\n<p>Trong khi nghe b&agrave;i h&aacute;t đ&atilde; lựa chọn, c&oacute; thể:</p>\r\n\r\n<p>- Nhấn ph&iacute;m 3 để tải b&agrave;i h&aacute;t l&agrave;m nhạc chờ cho điện thoại</p>\r\n\r\n<ul>\r\n	<li><strong><em>Tra cứu m&atilde; số b&agrave;i h&aacute;t/ th&ocirc;ng tin hướng dẫn qua tin nhắn</em></strong></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:567px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nội dung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Thao t&aacute;c nhắn tin</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Để được hướng dẫn</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>HD</strong>&nbsp;GT gửi<strong>&nbsp;122</strong><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&igrave;m b&agrave;i h&aacute;t theo t&ecirc;n</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>MA GT</strong><strong>&nbsp;ten bai hat</strong>&nbsp;gửi&nbsp;<strong>122</strong><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&igrave;m b&agrave;i h&aacute;t HOT nhất</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>HOT</strong>&nbsp;GT gửi<strong>&nbsp;122</strong><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&igrave;m b&agrave;i h&aacute;t mới nhất</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>MOI&nbsp;</strong><strong>GT&nbsp;</strong>gửi&nbsp;<strong>122</strong><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&igrave;m b&agrave;i h&aacute;t theo chủ đề</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>CD&nbsp; ten chu de</strong>&nbsp;gửi&nbsp;<strong>1221</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&igrave;m t&ecirc;n chủ đề</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>CD&nbsp;</strong>gửi<strong>&nbsp;122</strong><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'https://shop.viettel.vn/dich-vu-vas/tong-dai-am-nhac-1221', 2000, 2000, 1, 10, 1, 1, NULL, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'XN1 gửi 1221', 2, NULL, '1'),
(104, 'Thần May Mắn', 'than-may-man', 'Tử Vi, Phong Thủy ', '<p>Thần may mắn l&agrave; dịch vụ Tử Vi, Phong Thủy cung cấp c&aacute;c th&ocirc;ng tin hữu &iacute;ch cho Kh&aacute;ch h&agrave;ng như giờ tốt xấu, ng&agrave;y &acirc;m dương, những việc n&ecirc;n l&agrave;m v&agrave; kh&ocirc;ng n&ecirc;n l&agrave;m trong ng&agrave;y. Kh&aacute;ch h&agrave;ng được đọc tin tức, xem video miễn cước 3G/4G tốc độ cao tại http://thanmayman.vn</p>\r\n\r\n<p>Ph&iacute; dịch vụ: 2.000 đồng/ng&agrave;y</p>\r\n\r\n<p>Để đăng k&yacute; g&oacute;i ng&agrave;y, soạn TV gửi 5005</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng truy cập http://thanmayman.vn để sử dụng dịch vụ</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/than-may-man', 2000, 2000, 1, 11, 1, 1, NULL, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'TV gửi 5005', 2, NULL, '1'),
(105, 'Sống Khỏe', 'song-khoe', 'thông tin hữu ích về sức khỏe', '<p>Sống khỏe l&agrave; dịch vụ cung cấp những th&ocirc;ng tin hữu &iacute;ch về sức khỏe, c&aacute;ch Ph&ograve;ng chống bệnh v&agrave; c&aacute;c lời khuy&ecirc;n của chuy&ecirc;n gia y tế h&agrave;ng ng&agrave;y. Kh&aacute;ch h&agrave;ng được đọc tin tức, xem video miễn cước 3G/4G tốc độ cao tại http://songkhoe.vn Ph&iacute; DV: 1.000đ/ng&agrave;y Đăng k&yacute; g&oacute;i ng&agrave;y, soạn SKMN gửi 5005</p>\r\n\r\n<p>Ph&iacute; dịch vụ: 1.000 đồng/ng&agrave;y</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng truy cập http://songkhoe.vn để sử dụng dịch vụ</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/song-khoe', 1000, 1000, 1, 12, 1, 1, NULL, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'SKMN gửi 5005', 2, NULL, '1'),
(107, 'Netnews', 'netnews', 'Tin tức Tổng hợp', '<p>NetNews l&agrave; dịch vụ Tin tức Tổng hợp cung cấp những th&ocirc;ng tin thời sự, kinh tế, ch&iacute;nh trị&hellip; cập nhật li&ecirc;n tục h&agrave;ng ng&agrave;y, h&agrave;ng giờ. Kh&aacute;ch h&agrave;ng được đọc tin tức, xem video miễn cước 3G/4G tốc độ cao tại&nbsp;<a href=\"http://netnews.vn/\">http://netnews.vn.</a><br />\r\nPh&iacute; DV: 1.000đ/ng&agrave;y</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/netnews', 1000, 1000, 1, 16, 1, 1, NULL, 1, NULL, NULL, NULL, 12, 1, 0, '1 ngày', 'NET gửi 5005', 2, NULL, '1'),
(108, 'Phim Keeng', 'phim-keeng', 'dịch vụ xem phim trực tuyến ', '<p>Phim Keeng (VIP PHIM) l&agrave; dịch vụ xem phim trực tuyến c&oacute; bản quyền, miễn 100% cước truy cập Data 3G/4G với kho phim bom tấn chiếu rạp Hollywood, phim hot &Acirc;u Mỹ, H&agrave;n Quốc, Trung Quốc, Th&aacute;i Lan&hellip; tại&nbsp;<a href=\"http://phim.keeng.vn/\">http://phim.keeng.vn</a>&nbsp;v&agrave; Ứng dụng Keeng mục Phim. Ph&iacute; DV: 10.000đ/tuần.</p>\r\n\r\n<p>- Đăng k&yacute; sử dụng, soạn PHIM gửi 5005</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng truy cập http://phim.keeng.vn hoặc Ứng dụng Keeng mục Phim để thưởng thức h&agrave;ng ngh&igrave;n phim hot</p>\r\n', 'https://shop.viettel.vn/dich-vu-vas/phim-keeng', 10000, 10000, 1, 18, 1, 1, NULL, 1, NULL, NULL, NULL, 12, 1, 0, '7 ngày', 'PHIM gửi 5005', 2, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `ord`, `active`, `type`) VALUES
(6, 'Màu sắc', NULL, 0, 1),
(7, 'Khối lượng', NULL, 0, 0),
(8, 'Dung tích', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `propertiesvalue_product`
--

CREATE TABLE `propertiesvalue_product` (
  `id` int(11) NOT NULL,
  `name_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_price` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `mamau` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `properties_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mucduoi` varchar(100) NOT NULL,
  `muctren` varchar(100) NOT NULL,
  `shipping_fee` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `mucduoi`, `muctren`, `shipping_fee`) VALUES
(1, 'United Kingdom', '0', '2000', '25'),
(2, 'Other', '0', '2000', '30'),
(3, 'United Kingdom', '2001', '3000', '30'),
(4, 'Other', '2001', '3000', '40');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `brief`, `thumb`, `image`, `url`, `ord`, `active`, `position`) VALUES
(32, 'Slide 1', '', NULL, '/images/slides/1583419672-banner-1.png', '/', NULL, 1, 'main'),
(35, 'Slide 2', '', NULL, '/images/slides/1583419646-banner-2.png', '/', NULL, 1, 'main'),
(36, 'Slide 3', '', NULL, '/images/slides/1583728062-banner-3.png', '', NULL, 1, 'main');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8_unicode_ci,
  `seo_desc` text COLLATE utf8_unicode_ci,
  `tagscol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_news`
--

CREATE TABLE `tags_news` (
  `tags_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_picture`
--

CREATE TABLE `tags_picture` (
  `tags_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_product`
--

CREATE TABLE `tags_product` (
  `product_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_video`
--

CREATE TABLE `tags_video` (
  `tags_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiendocongviec`
--

CREATE TABLE `tiendocongviec` (
  `id` int(11) NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaygui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vanbandi_id` int(11) NOT NULL,
  `nguoicapnhat` int(11) NOT NULL,
  `tencongviec` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tiendocongviec`
--

INSERT INTO `tiendocongviec` (`id`, `noidung`, `ngaygui`, `vanbandi_id`, `nguoicapnhat`, `tencongviec`) VALUES
(1, 'Lấy 20 cái máy in nhiệt', '2020-03-10 16:32:57', 1, 4, 'Đi lấy máy in nhiệt cầm tay'),
(2, 'Trời ban ánh sáng, năm tháng tư bề Dáng ai về chung lối Người mang tia nắng nhưng cớ sao còn tăm tối? Một mai em lỡ vấp ngã trên đời thay đổi Nhìn về anh người chẳng khiến em lẻ loi', '2020-03-10 16:38:16', 1, 4, 'Sếp Thuận thích bài này'),
(3, '123123', '2020-03-10 16:38:44', 1, 4, 'Sếp Thuận giao cho sếp Tâm đi đánh sếp Hiếu'),
(4, 'Hồng trần trên đôi cánh tay Họa đời em trong phút giây', '2020-03-10 16:41:27', 1, 4, 'Sếp Thuận lại thích bài này'),
(5, 'Hồng trần trên đôi cánh tay Họa đời em trong phút giây', '2020-03-10 16:41:52', 1, 4, 'Sếp Thuận thích tiếp bài này'),
(6, 'Y như trên', '2020-03-10 16:43:50', 1, 4, 'Sếp Thuận sắp hoàn thành công việc rồi'),
(8, 'Công việc chưa đủ - Hủy bỏi Superadmin', '2020-03-10 16:57:22', 1, 4, '[HỦY]Hoàn thành công việc'),
(9, 'I want to add like condition with % wildcard on the one side, like: where name like \'value%\' My code: Table::find()->filterWhere([\'like\', \'name\' , $_GET[\'q\'].\'%\' ]) ->all(); But query result is: where name like \'%value\\%%\'', '2020-03-10 20:26:52', 1, 4, 'Yii2 add LIKE condition with “%” wildard on the one side'),
(10, 'aaaaaa', '2020-03-10 20:28:51', 1, 4, 'Sếp Thuận sắp hoàn thành công việc'),
(11, 'Alo', '2020-03-10 20:34:06', 1, 4, 'Sếp Thuận lại cập nhật tiếp'),
(12, 'Sếp Thuận thích', '2020-03-10 20:38:23', 1, 4, 'Sếp thuận lại cập nhật'),
(13, 'aaa', '2020-03-10 20:39:21', 1, 4, 'Sếp thuận abc'),
(14, 'xxx', '2020-03-10 20:39:34', 1, 4, 'Sếp Thuận xxx'),
(15, 'Sếp Thuận comment tiếp', '2020-03-10 20:40:44', 1, 4, 'Sếp Thuận lại comment'),
(16, 'aaaa', '2020-03-10 20:47:49', 1, 4, 'Sếp Thuận comment tiếp'),
(17, 'Không cho xong - Hủy bỏi Superadmin', '2020-03-10 21:09:21', 1, 4, '[HỦY] Hoàn thành công việc'),
(18, 'Thông báo cho sếp Tâm', '2020-03-10 21:51:42', 1, 4, 'Sếp thuận'),
(19, 'Tôi không đồng ý - Hủy bỏi Superadmin', '2020-03-10 21:51:53', 1, 4, '[HỦY] Hoàn thành công việc'),
(20, 'Hoàn thành công việc', '2020-03-10 21:54:04', 1, 4, 'Hoàn thành công việc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` smallint(6) NOT NULL,
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `websiteurl` text COLLATE utf8_unicode_ci,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `company_registration_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_registration_certificate` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_document` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_invoice` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_picture` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vanban`
--

CREATE TABLE `vanban` (
  `id` int(11) NOT NULL,
  `ten` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên văn bản',
  `ngaytao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `kyhieu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ký hiệu',
  `filevanban` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'File văn bản',
  `admin_id` int(11) NOT NULL,
  `loaivanban_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sovanban` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vanban`
--

INSERT INTO `vanban` (`id`, `ten`, `ngaytao`, `kyhieu`, `filevanban`, `admin_id`, `loaivanban_id`, `status`, `sovanban`) VALUES
(1, 'Van bản test', '2020-03-05 13:11:46', 'CV', '/vanban/1583388706tai-lieu-mo-ta-nghiep-vu.pdf', 2, 1, 0, 1),
(2, 'Công văn Nguyễn Trường Thịnh', '2020-03-10 22:04:46', 'CV-KARION-HPG', '/vanban/15838526861583388706tai-lieu-mo-ta-nghiep-vu.pdf', 4, 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vanbanden`
--

CREATE TABLE `vanbanden` (
  `id` int(11) NOT NULL,
  `vanbandi_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vanbanden`
--

INSERT INTO `vanbanden` (`id`, `vanbandi_id`, `admin_id`, `type`, `status`) VALUES
(1, 1, 4, 1, 1),
(2, 1, 5, 0, 2),
(3, 2, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vanbandi`
--

CREATE TABLE `vanbandi` (
  `id` int(11) NOT NULL,
  `ngaygui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vanban_id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `yeucaucapnhattiendo` bit(1) NOT NULL DEFAULT b'0',
  `deadline` datetime DEFAULT NULL,
  `isvanbantraloi` bit(1) NOT NULL DEFAULT b'0',
  `vanbantraloi_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vanbandi`
--

INSERT INTO `vanbandi` (`id`, `ngaygui`, `vanban_id`, `from`, `yeucaucapnhattiendo`, `deadline`, `isvanbantraloi`, `vanbantraloi_id`, `status`) VALUES
(1, '2020-03-05 13:11:46', 1, 2, b'1', '2020-03-31 13:10:00', b'0', NULL, 1),
(2, '2020-03-10 22:04:47', 2, 4, b'1', '2020-03-10 22:00:00', b'0', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `fk_admin_phongban1_idx` (`phongban_id`),
  ADD KEY `fk_admin_chucvu1_idx` (`chucvu_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productpicture_product1_idx` (`product_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`user_id`,`item_name`),
  ADD KEY `fk_auth_assignment_auth_item1_idx` (`item_name`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_auth_rule1_idx` (`rule_name`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `fk_auth_item_child_auth_item1_idx` (`parent`),
  ADD KEY `fk_auth_item_child_auth_item2_idx` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_user1_idx` (`user_id`);

--
-- Indexes for table `bill_product`
--
ALTER TABLE `bill_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_product_bill1_idx` (`bill_id`),
  ADD KEY `fk_bill_product_product1_idx` (`product_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catnew`
--
ALTER TABLE `catnew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catproduct`
--
ALTER TABLE `catproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentvanban`
--
ALTER TABLE `commentvanban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commentvanban_admin1_idx` (`nguoicomment`),
  ADD KEY `fk_commentvanban_vanbandi1_idx` (`vanbandi_id`),
  ADD KEY `fk_commentvanban_commentvanban1_idx` (`commentvanban_id`);

--
-- Indexes for table `configure`
--
ALTER TABLE `configure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `congvanhanhchinh`
--
ALTER TABLE `congvanhanhchinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_congvanhanhchinh_loaivbhc1_idx` (`loaivbhc_id`),
  ADD KEY `fk_congvanhanhchinh_coquanbanhanh1_idx` (`coquanbanhanh_id`),
  ADD KEY `fk_congvanhanhchinh_Linhvucvanban1_idx` (`Linhvucvanban_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coquanbanhanh`
--
ALTER TABLE `coquanbanhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryaddress`
--
ALTER TABLE `deliveryaddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_properties`
--
ALTER TABLE `detail_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_properties_properties1_idx` (`properties_id`),
  ADD KEY `fk_detail_properties_catproduct1_idx` (`catproduct_id`);

--
-- Indexes for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filedinhkem`
--
ALTER TABLE `filedinhkem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filedinhkem_vanban1_idx` (`vanban_id`);

--
-- Indexes for table `grproctag`
--
ALTER TABLE `grproctag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_grproctag_grproduct1_idx` (`grproduct_id`);

--
-- Indexes for table `grproduct`
--
ALTER TABLE `grproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linhvucvanban`
--
ALTER TABLE `linhvucvanban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaivanban`
--
ALTER TABLE `loaivanban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaivbhc`
--
ALTER TABLE `loaivbhc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_menu1_idx` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_news_cat_new1_idx` (`cat_new_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_picture_album1_idx` (`album_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_cat_product1_idx` (`cat_product_id`),
  ADD KEY `fk_product_brand1_idx` (`brand_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propertiesvalue_product`
--
ALTER TABLE `propertiesvalue_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_propertiesvalue_product_product1_idx` (`product_id`),
  ADD KEY `fk_propertiesvalue_product_properties1_idx` (`properties_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_UNIQUE` (`tag`);

--
-- Indexes for table `tags_news`
--
ALTER TABLE `tags_news`
  ADD KEY `fk_tags_has_news_tags1_idx` (`tags_id`),
  ADD KEY `fk_tags_has_news_news1_idx` (`news_id`);

--
-- Indexes for table `tags_picture`
--
ALTER TABLE `tags_picture`
  ADD KEY `fk_tags_has_picture_tags1_idx` (`tags_id`),
  ADD KEY `fk_tags_has_picture_picture1_idx` (`picture_id`);

--
-- Indexes for table `tags_product`
--
ALTER TABLE `tags_product`
  ADD KEY `fk_tags_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_tags_has_product_tags1_idx` (`tags_id`);

--
-- Indexes for table `tags_video`
--
ALTER TABLE `tags_video`
  ADD KEY `fk_tags_has_video_tags1_idx` (`tags_id`),
  ADD KEY `fk_tags_has_video_video1_idx` (`video_id`);

--
-- Indexes for table `tiendocongviec`
--
ALTER TABLE `tiendocongviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tiendocongviec_vanbandi1_idx` (`vanbandi_id`),
  ADD KEY `fk_tiendocongviec_admin1_idx` (`nguoicapnhat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `vanban`
--
ALTER TABLE `vanban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vanban_admin1_idx` (`admin_id`),
  ADD KEY `fk_vanban_loaivanban1_idx` (`loaivanban_id`);

--
-- Indexes for table `vanbanden`
--
ALTER TABLE `vanbanden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vanbanden_vanbandi1_idx` (`vanbandi_id`),
  ADD KEY `fk_vanbanden_admin1_idx` (`admin_id`);

--
-- Indexes for table `vanbandi`
--
ALTER TABLE `vanbandi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vanbandi_vanban1_idx` (`vanban_id`),
  ADD KEY `fk_vanbandi_admin1_idx` (`from`),
  ADD KEY `fk_vanbandi_vanbandi1_idx` (`vanbantraloi_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_product`
--
ALTER TABLE `bill_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catnew`
--
ALTER TABLE `catnew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `catproduct`
--
ALTER TABLE `catproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commentvanban`
--
ALTER TABLE `commentvanban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `configure`
--
ALTER TABLE `configure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `congvanhanhchinh`
--
ALTER TABLE `congvanhanhchinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coquanbanhanh`
--
ALTER TABLE `coquanbanhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deliveryaddress`
--
ALTER TABLE `deliveryaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_properties`
--
ALTER TABLE `detail_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filedinhkem`
--
ALTER TABLE `filedinhkem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grproctag`
--
ALTER TABLE `grproctag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grproduct`
--
ALTER TABLE `grproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linhvucvanban`
--
ALTER TABLE `linhvucvanban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaivanban`
--
ALTER TABLE `loaivanban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loaivbhc`
--
ALTER TABLE `loaivbhc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `propertiesvalue_product`
--
ALTER TABLE `propertiesvalue_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiendocongviec`
--
ALTER TABLE `tiendocongviec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vanban`
--
ALTER TABLE `vanban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vanbanden`
--
ALTER TABLE `vanbanden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vanbandi`
--
ALTER TABLE `vanbandi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD CONSTRAINT `fk_productpicture_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
