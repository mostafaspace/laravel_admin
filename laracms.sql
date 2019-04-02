-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2018 at 10:31 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`id`, `name`, `guid`, `type`, `mime_type`, `meta`, `created_at`, `updated_at`) VALUES
(7, 'raja w1 wongsusukan77@gmail.com (2).jpg', 'b9c1f9fb649e8e9ecb49e6aa20c8b00a5f838f2d.jpg', 'media', 'image/jpeg', '{\"size\":130773,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:05', '2016-10-03 07:10:05'),
(8, 'tibiboy w17 alberterlin08@gmail.com (1).jpg', 'eb33ad2903e8d88e7cc0f0a9597d33044d450e7b.jpg', 'media', 'image/jpeg', '{\"size\":46609,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:06', '2016-10-03 07:10:06'),
(9, 'trenvit w13 aphinchin81@gmail.com (2).jpg', 'fc90285c3147d369aac8615fcaa2269e97193315.jpg', 'media', 'image/jpeg', '{\"size\":48566,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:06', '2016-10-03 07:10:06'),
(11, 'xpoxarus w6 ezam13698@gmail.com.jpg', '5fc0fcf0196f637ab2876acc815002b745eff344.jpg', 'media', 'image/jpeg', '{\"size\":69849,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:07', '2016-10-03 07:10:07'),
(12, 'Bocahaurea w1 Muzumakismansaru@gmail.com (3).jpg', '0408f1afd3f56ee628ebd5db66d33a4cc37d610b.jpg', 'media', 'image/jpeg', '{\"size\":70805,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:07', '2016-10-03 07:10:07'),
(13, 'Bruuno w7 dksulfiah911@icloud.com.jpg', '261f3041d9b9a582874be40da53dab24915d81a1.jpg', 'media', 'image/jpeg', '{\"size\":142803,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:07', '2016-10-03 07:10:07'),
(14, 'ciepheldie w17 lmegapertiwi02@yahoo.com (2).jpg', 'ed4d8e4c2a2efcbe81321fba031681f26730ed73.jpg', 'media', 'image/jpeg', '{\"size\":78274,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:07', '2016-10-03 07:10:07'),
(15, 'Dheylizha w17 fajargokil68@gmail.com (2).jpg', '334704d8652b9b30eee2fbf2c31c05e58ef1deaa.jpg', 'media', 'image/jpeg', '{\"size\":45483,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:08', '2016-10-03 07:10:08'),
(16, 'haddes w21 felipedm900@gmail.com.jpg', 'e63b20d7f7a0018cd5a967b9cdac60e0f750e99b.jpg', 'media', 'image/jpeg', '{\"size\":76703,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:08', '2016-10-03 07:10:08'),
(17, 'harish w1 harry.sweethearts@gmail.com.jpg', '9b3b56096f3f6e984e67d7a93106cfc34585c390.jpg', 'media', 'image/jpeg', '{\"size\":189548,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:08', '2016-10-03 07:10:08'),
(18, 'Human w16 bommuller13@gmail.com.jpg', 'a0e81b4a097976d5e4b86ce4f88fe0a48c0240ec.jpg', 'media', 'image/jpeg', '{\"size\":82821,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:09', '2016-10-03 07:10:09'),
(19, 'ilyditsz w1 syahrinhikmatyar@gmail.com.jpg', '827d078e3606dee669d419b41d2a3ae915ac679b.jpg', 'media', 'image/jpeg', '{\"size\":48514,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:09', '2016-10-03 07:10:09'),
(20, 'kangdoom w26 strongcoffe88@yahoo.com 2.jpg', '34ad7b3154bc7ae82673226c95028a7a07e31b42.jpg', 'media', 'image/jpeg', '{\"size\":43871,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:09', '2016-10-03 07:10:09'),
(22, 'keytenz w17 febrianisafitri08@gmail.com (2).jpg', 'ac311496ecd35fed3976a42fc46a16a99d0b357f.jpg', 'media', 'image/jpeg', '{\"size\":144256,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:10:10', '2016-10-03 07:10:10'),
(26, 'archangels w10 ardiboy479@gmail.com.jpg', '770923d695a16ae3939a654804d2fdd53ee57de4.jpg', 'media', 'image/jpeg', '{\"size\":18153,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:37', '2016-10-03 07:11:37'),
(27, 'Bocahaurea w1 Muzumakismansaru@gmail.com (3).jpg', '15b8cca3292b6f4e31dea8d913762d721c44158d.jpg', 'media', 'image/jpeg', '{\"size\":70805,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:37', '2016-10-03 07:11:37'),
(28, 'ciepheldie w17 lmegapertiwi02@yahoo.com (2).jpg', '56703db672d58857b343a845be866d50b6a56bf8.jpg', 'media', 'image/jpeg', '{\"size\":78274,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:37', '2016-10-03 07:11:37'),
(29, 'Bruuno w7 dksulfiah911@icloud.com.jpg', '4bbd342c8d0c59ca16eec5793fa8f8ffdf093cb5.jpg', 'media', 'image/jpeg', '{\"size\":142803,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:37', '2016-10-03 07:11:37'),
(30, 'Dheylizha w17 fajargokil68@gmail.com (2).jpg', '346b4e6a2023305434a6152be14f305cef4ee7eb.jpg', 'media', 'image/jpeg', '{\"size\":45483,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:37', '2016-10-03 07:11:37'),
(31, 'haddes w21 felipedm900@gmail.com.jpg', '5e0ad5950e153fde9ad66ddd61c6f10434158898.jpg', 'media', 'image/jpeg', '{\"size\":76703,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:38', '2016-10-03 07:11:38'),
(32, 'Human w16 bommuller13@gmail.com.jpg', '88513d4397ff36e065d268923269cf1d7eeecd68.jpg', 'media', 'image/jpeg', '{\"size\":82821,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:38', '2016-10-03 07:11:38'),
(33, 'harish w1 harry.sweethearts@gmail.com.jpg', '399f498701414d935c33bbd88bd30e4cccf367d2.jpg', 'media', 'image/jpeg', '{\"size\":189548,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:38', '2016-10-03 07:11:38'),
(34, 'kangdoom w26 strongcoffe88@yahoo.com 2.jpg', 'd285a50dcf1da4ceb05580d0d3ca94ad467b211c.jpg', 'media', 'image/jpeg', '{\"size\":43871,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:39', '2016-10-03 07:11:39'),
(35, 'Kekaii w18 ekonoor1996@gmail.com.jpg', '5ebae8cce0c3488b7c2d7b6fcd003e96a60ffdc3.jpg', 'media', 'image/jpeg', '{\"size\":77294,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:39', '2016-10-03 07:11:39'),
(36, 'keytenz w17 febrianisafitri08@gmail.com (2).jpg', '87eb2af863ff995dfffad23ecf0fdcd170bb5062.jpg', 'media', 'image/jpeg', '{\"size\":144256,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:39', '2016-10-03 07:11:39'),
(37, 'Lanzer w19 queiffer_23@hotmail.com (2).jpg', '826fa37403435b8064fda92ea17e18264ce8385c.jpg', 'media', 'image/jpeg', '{\"size\":115178,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:39', '2016-10-03 07:11:39'),
(39, 'mutumbo w25 adreantibiame@gmail.com (2).jpg', 'a2d08f30f4a34d5485656b83c3ea8a44528387e1.jpg', 'media', 'image/jpeg', '{\"size\":44052,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:40', '2016-10-03 07:11:40'),
(41, 'talento w17 alberterlin@gmail.com.jpg', 'cb6f0bee1fefde6609b6a0b2f6e5e04a9938d3f7.jpg', 'media', 'image/jpeg', '{\"size\":102226,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:40', '2016-10-03 07:11:40'),
(42, 'tibiboy w17 alberterlin08@gmail.com (1).jpg', 'd7c9212fa2d91b2a9f409380f0ddfac71d7b5f2f.jpg', 'media', 'image/jpeg', '{\"size\":46609,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:41', '2016-10-03 07:11:41'),
(44, 'xpoxarus w6 ezam13698@gmail.com.jpg', '9c09e9fc4dab63a08089236bdbd884ac8370d5f4.jpg', 'media', 'image/jpeg', '{\"size\":69849,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"150\",\"height\":\"150\"}}}', '2016-10-03 07:11:41', '2016-10-03 07:11:41'),
(45, 'archangels w10 ardiboy479@gmail.com.jpg', 'bd6523deb7165fa65f7ba91c4644f08c4eda09f5.jpg', 'media', 'image/jpeg', '{\"size\":18153,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:26', '2016-10-03 07:14:26'),
(47, 'ciepheldie w17 lmegapertiwi02@yahoo.com (2).jpg', '2701f95061020e539b5acfb6e3db6de98d0d79c3.jpg', 'media', 'image/jpeg', '{\"size\":78274,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:26', '2016-10-03 07:14:26'),
(48, 'Bruuno w7 dksulfiah911@icloud.com.jpg', '3adcde8e2d6c6a81daa84e4f88b1da2a9afe0e81.jpg', 'media', 'image/jpeg', '{\"size\":142803,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:26', '2016-10-03 07:14:26'),
(49, 'Dheylizha w17 fajargokil68@gmail.com (2).jpg', '6df00e3c359fcda58c3e9cdc183c5084aab9ea48.jpg', 'media', 'image/jpeg', '{\"size\":45483,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:27', '2016-10-03 07:14:27'),
(50, 'haddes w21 felipedm900@gmail.com.jpg', 'c531f17b3cc0ef66ae170c8220985b05bdfd4c23.jpg', 'media', 'image/jpeg', '{\"size\":76703,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:27', '2016-10-03 07:14:27'),
(51, 'Human w16 bommuller13@gmail.com.jpg', '871f913bbdd796dc8abc62e710b3815cb471194c.jpg', 'media', 'image/jpeg', '{\"size\":82821,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:27', '2016-10-03 07:14:27'),
(52, 'harish w1 harry.sweethearts@gmail.com.jpg', '14e4d1c3073a660f249a94c16621af8454b5fad9.jpg', 'media', 'image/jpeg', '{\"size\":189548,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:27', '2016-10-03 07:14:27'),
(54, 'ilyditsz w1 syahrinhikmatyar@gmail.com.jpg', '4d19beb19a3b6081d789fd126865407493879bf1.jpg', 'media', 'image/jpeg', '{\"size\":48514,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:28', '2016-10-03 07:14:28'),
(55, 'keytenz w17 febrianisafitri08@gmail.com (2).jpg', '1b56cffe0ad3e690d8bb5bf32090493f479caf82.jpg', 'media', 'image/jpeg', '{\"size\":144256,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:28', '2016-10-03 07:14:28'),
(57, 'Mid w13 edve292@gmail.com (2).jpg', '915ca890b40270994a717d671c69831164b63cb4.jpg', 'media', 'image/jpeg', '{\"size\":130431,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:29', '2016-10-03 07:14:29'),
(58, 'Lanzer w19 queiffer_23@hotmail.com (2).jpg', 'b542ca9556a99b67497a7d0aec26126e018a05ee.jpg', 'media', 'image/jpeg', '{\"size\":115178,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:29', '2016-10-03 07:14:29'),
(59, 'mutumbo w25 adreantibiame@gmail.com (2).jpg', 'b9805c08a4550c22716717973849dd2a8773f04c.jpg', 'media', 'image/jpeg', '{\"size\":44052,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:29', '2016-10-03 07:14:29'),
(60, 'raja w1 wongsusukan77@gmail.com (2).jpg', 'bbda08e629963f3efa19970196c544a15665f287.jpg', 'media', 'image/jpeg', '{\"size\":130773,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:29', '2016-10-03 07:14:29'),
(62, 'tibiboy w17 alberterlin08@gmail.com (1).jpg', 'cacbde62331d173e600460bf4ff200b3743ccf6e.jpg', 'media', 'image/jpeg', '{\"size\":46609,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:30', '2016-10-03 07:14:30'),
(63, 'trenvit w13 aphinchin81@gmail.com (2).jpg', '0142f0ea03de83b0688b4eaa947892933d552395.jpg', 'media', 'image/jpeg', '{\"size\":48566,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-03 07:14:30', '2016-10-03 07:14:30'),
(65, 'archangels w10 ardiboy479@gmail.com.jpg', '0d51e665d7b5c2a7e34e84574a5858a11f5b62b2.jpg', 'media', 'image/jpeg', '{\"size\":18153,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:09', '2016-10-04 19:32:09'),
(68, 'daise w25 dieisontrevizani@gmail.com.jpg', 'e2c61c91a7ec4974afebc03db35685bce9a628cc.jpg', 'media', 'image/jpeg', '{\"size\":63433,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:09', '2016-10-04 19:32:09'),
(69, 'Dheylizha w17 fajargokil68@gmail.com (2).jpg', '3b63485c94e7a6189b44eac0bd3f36aaa80b1e3a.jpg', 'media', 'image/jpeg', '{\"size\":45483,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:10', '2016-10-04 19:32:10'),
(71, 'kangdoom w26 strongcoffe88@yahoo.com 2.jpg', '5c5824d20e7978c9dcee1e04e9f1268d8bcace7b.jpg', 'media', 'image/jpeg', '{\"size\":43871,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:10', '2016-10-04 19:32:10'),
(72, 'Kekaii w18 ekonoor1996@gmail.com.jpg', '7ca8ffa73135c3e3926656a420301bea9d1eabab.jpg', 'media', 'image/jpeg', '{\"size\":77294,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:11', '2016-10-04 19:32:11'),
(83, 'Mid w13 edve292@gmail.com (2).jpg', '4e6a444ebf8390651d082d92f86ffe155d509ca6.jpg', 'media', 'image/jpeg', '{\"size\":130431,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2016-10-04 19:32:55', '2016-10-04 19:32:55'),
(84, 'ac_attika-color-header_ncsa.jpg', 'a0987329a1f446570e205a05b582f03ab8b4fcd5.jpg', 'media', 'image/jpeg', '{\"size\":323437,\"dimensions\":{\"large\":{\"width\":\"1078\",\"height\":\"551\"},\"medium\":{\"width\":\"682\",\"height\":\"294\"},\"thumbnail\":{\"width\":\"250\",\"height\":\"250\"}}}', '2018-08-11 04:39:35', '2018-08-11 04:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `parent`, `created_at`, `updated_at`) VALUES
(3, 'test', 0, '2016-03-20 06:53:52', '2016-03-20 07:16:29'),
(4, 'test-1', 0, '2016-03-20 09:19:26', '2016-03-20 09:19:26'),
(5, 'test-2', 0, '2016-03-20 09:24:18', '2016-03-20 09:24:27'),
(6, 'test-2-1', 0, '2016-03-20 09:24:55', '2016-03-20 09:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `name`, `description`, `author`, `category_id`, `locale`, `created_at`, `updated_at`) VALUES
(4, 'test', '', NULL, 3, 'en', NULL, NULL),
(5, 'test ar', '', NULL, 3, 'ar', NULL, NULL),
(6, 'test', '', NULL, 4, 'en', NULL, NULL),
(7, 'test', '', NULL, 5, 'en', NULL, NULL),
(8, 'test-2', '', NULL, 6, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `slug`, `status`, `country_id`, `created_at`, `updated_at`) VALUES
(3, 'lkhr', 'active', 6, '2016-03-16 09:55:08', '2016-03-16 09:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `name`, `city_id`, `locale`, `created_at`, `updated_at`) VALUES
(4, 'Cairo', 3, 'en', NULL, NULL),
(5, 'القاهرة', 3, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `continent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `slug`, `status`, `continent`, `created_at`, `updated_at`) VALUES
(6, 'eg', 'egypt', 'active', '1', '2016-03-16 09:53:05', '2016-03-24 05:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `name`, `country_id`, `locale`, `created_at`, `updated_at`) VALUES
(5, 'Egypt', 6, 'en', NULL, NULL),
(6, 'مصر', 6, 'ar', NULL, NULL),
(7, 'Egypt', 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `locale`, `status`, `icon`, `position`, `created_at`, `updated_at`) VALUES
(2, 'Arabic', 'ar', '1', 'EG', 0, '2016-03-15 09:32:16', '2016-03-16 08:15:45'),
(5, 'English', 'en', '1', 'US', 0, '2016-03-16 07:14:05', '2016-03-16 07:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_03_10_122357_create_language_table', 1),
('2016_03_12_122058_create_locations_table', 1),
('2016_03_13_084148_create_users_table', 1),
('2016_03_13_141438_entrust_setup_tables', 1),
('2016_03_16_122124_create_category_table', 2),
('2016_03_20_120837_create_attachment_table', 3),
('2016_03_22_124122_create_tags_table', 4),
('2016_03_23_081841_create_posts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category`, `created_at`, `updated_at`) VALUES
(1, 'comment.read', 'Read comments', NULL, 'comments', '2016-03-14 12:04:29', '2018-08-09 22:00:42'),
(2, 'comment.delete', 'Delete comments', NULL, 'comments', '2016-03-16 10:32:05', '2018-08-09 22:17:29'),
(3, 'comment.edit', 'Edit comments', NULL, 'comments', '2016-03-16 10:32:26', '2018-08-09 22:19:43'),
(4, 'users.add', 'Add users', NULL, 'users', '2016-03-16 10:32:51', '2018-08-10 02:43:56'),
(5, 'users.delete', 'Delete user', NULL, 'users', '2016-03-16 10:33:07', '2018-08-10 02:44:07'),
(6, 'users.edit', 'Edit Users', NULL, 'users', '2018-08-10 02:44:44', '2018-08-10 02:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `extra` text COLLATE utf8_unicode_ci,
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `post_author` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_type`, `post_status`, `extra`, `comment_status`, `comment_count`, `post_author`, `created_at`, `updated_at`) VALUES
(13, 'post', 'publish', NULL, 'open', 0, 5, '2016-03-27 05:21:00', '2016-03-27 05:26:56'),
(14, 'post', 'publish', NULL, 'open', 0, 5, '2016-03-27 06:09:26', '2016-03-27 06:22:59'),
(16, 'post', 'publish', NULL, 'open', 0, 5, '2016-03-27 06:41:55', '2016-03-27 06:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`id`, `slug`, `post_title`, `post_excerpt`, `post_content`, `post_id`, `locale`, `created_at`, `updated_at`) VALUES
(4, '4', 'test post', 'qwcqwcqwc', '<p>qwcqwcqwc</p>', 13, 'en', NULL, NULL),
(5, '5', 'test post jp', 'sdcsdc', '<p>csdcsdsdcsdc</p>', 13, NULL, NULL, NULL),
(6, '54', 'test post ar', 'dvsdv', '<p>asccqv</p>', 13, 'ar', NULL, NULL),
(7, '555', 'en', 'en', '<p>en</p>', 14, 'en', NULL, NULL),
(8, '5555', 'ar', 'ttt', '<p>rttt</p>', 14, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2016-03-14 12:03:20', '2016-03-14 12:03:20'),
(2, 'mod', 'Mod', NULL, '2016-03-14 12:34:50', '2016-03-14 12:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'test', '2016-03-22 11:20:25', '2016-03-22 11:20:25'),
(2, 'test-1', '2016-03-22 11:24:06', '2016-03-22 11:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`id`, `name`, `description`, `author`, `tag_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'test', NULL, 1, 'en', NULL, NULL),
(2, 'test', 'test', NULL, 1, 'ar', NULL, NULL),
(3, 'test', '', NULL, 2, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `dimensions` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `name`, `password`, `job`, `mobile`, `age`, `about`, `url`, `address`, `city_id`, `country_id`, `type`, `dimensions`, `status`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'mostafamagdy', 'mostafa.torra@gmail.com', 'mostafa', '$2y$10$HfhD.yQumISJaeHik23vfe9GZqYMI0LBUyOouK8iMTseroLB7GBDy', '', '', '', '', '', '', NULL, NULL, 'user', '', '0', NULL, 'Y3jN6NIBVU6xmyo11AdYVU1GK8Sc1E2TpTEUSWYM0RoF9CCcdkgsL7CjOMJt', '2016-03-14 12:25:17', '2016-08-30 16:53:15'),
(3, 'mostafamagdy1', 'admin@example.com', 'Mostafa', '$2y$10$1jjEpCJn66gM8FlLRFXf1.N/qRe50omeJ6y19OskdyaSjvgOhNwRe', '', '', '', '', '', '', NULL, NULL, 'user', '', '0', NULL, NULL, '2016-03-14 12:26:35', '2016-03-14 12:26:35'),
(5, '', 'test@test.com', 'test', '$2y$10$ZoyiEAiv6eWtj3p2Q/HuIOfb8MQB6m8sj.Tcizj.lU0IhNFOAx1I6', '', '', '', '', '', '', NULL, NULL, 'user', '', '0', NULL, 'MkNDc6zLG2YTpNrPOhKOUKWYeauRYxwklJWoZ2RveyLR9GHsthuuqJKpcwXD', '2016-03-22 11:36:52', '2016-03-22 12:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`id`, `slug`, `status`, `city_id`, `created_at`, `updated_at`) VALUES
(4, 'lmaady', 'active', 3, '2016-03-16 09:56:12', '2016-03-16 09:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `zone_translations`
--

CREATE TABLE `zone_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zone_translations`
--

INSERT INTO `zone_translations` (`id`, `name`, `zone_id`, `locale`, `created_at`, `updated_at`) VALUES
(6, 'Maadi', 4, 'en', NULL, NULL),
(7, 'المعادي', 4, 'ar', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_translations_category_id_foreign` (`category_id`),
  ADD KEY `category_translations_category_author_index` (`author`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_slug_unique` (`slug`),
  ADD KEY `city_country_id_foreign` (`country_id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `city_translations_locale_index` (`locale`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_code_unique` (`code`),
  ADD UNIQUE KEY `country_slug_unique` (`slug`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_translations_country_id_locale_unique` (`country_id`,`locale`),
  ADD KEY `country_translations_locale_index` (`locale`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_name_unique` (`name`),
  ADD UNIQUE KEY `language_locale_unique` (`locale`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_author_index` (`post_author`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `posts_translations_post_id_foreign` (`post_id`),
  ADD KEY `posts_translations_locale_index` (`locale`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_post_id_index` (`post_id`),
  ADD KEY `post_category_category_id_index` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_translations_tag_id_foreign` (`tag_id`),
  ADD KEY `tags_translations_author_index` (`author`),
  ADD KEY `tags_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zone_slug_unique` (`slug`),
  ADD KEY `zone_city_id_foreign` (`city_id`);

--
-- Indexes for table `zone_translations`
--
ALTER TABLE `zone_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zone_translations_zone_id_locale_unique` (`zone_id`,`locale`),
  ADD KEY `zone_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts_translations`
--
ALTER TABLE `posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags_translations`
--
ALTER TABLE `tags_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zone_translations`
--
ALTER TABLE `zone_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD CONSTRAINT `city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `city_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_author_foreign` FOREIGN KEY (`post_author`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD CONSTRAINT `posts_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `post_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_category_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD CONSTRAINT `tags_translations_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tags_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL,
  ADD CONSTRAINT `tags_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `zone_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zone_translations`
--
ALTER TABLE `zone_translations`
  ADD CONSTRAINT `zone_translations_locale_foreign` FOREIGN KEY (`locale`) REFERENCES `language` (`locale`) ON DELETE SET NULL,
  ADD CONSTRAINT `zone_translations_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
