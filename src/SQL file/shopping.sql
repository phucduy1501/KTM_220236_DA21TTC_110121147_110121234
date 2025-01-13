-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 07:40 AM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-02 16:21:18', '30-12-2024 12:54:25 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'PhÃ²ng KhÃ¡ch', '', '2025-01-09 14:00:59', NULL),
(10, 'NhÃ  báº¿p', '', '2025-01-11 15:53:58', NULL),
(11, 'PhÃ²ng ngá»§', '', '2025-01-11 15:54:11', NULL),
(12, 'PhÃ²ng lÃ m viá»‡c', '', '2025-01-12 13:31:40', NULL),
(13, 'HÃ ng trang trÃ­', '', '2025-01-12 13:32:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 7, '27', 1, '2025-01-12 09:24:14', 'COD', 'Delivered'),
(2, 1, '28', 1, '2025-01-12 09:54:37', 'Internet Banking', NULL),
(3, 1, '33', 1, '2025-01-12 09:59:09', 'COD', NULL),
(4, 8, '27', 1, '2025-01-12 14:19:00', 'COD', 'in Process'),
(5, 8, '28', 1, '2025-01-12 14:55:34', 'COD', 'Delivered'),
(6, 9, '38', 1, '2025-01-13 04:40:50', 'COD', 'in Process'),
(7, 9, '27', 1, '2025-01-13 04:41:13', 'COD', NULL),
(8, 9, '28', 1, '2025-01-13 04:41:13', 'COD', NULL),
(9, 9, '38', 1, '2025-01-13 04:41:13', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 'ÄÃ£ giao rá»“i nhe', '2025-01-12 09:43:02'),
(2, 4, 'in Process', 'dang giao toi ne', '2025-01-12 16:12:39'),
(3, 5, 'Delivered', 'da giao thanh cong', '2025-01-12 16:13:06'),
(4, 6, 'in Process', 'dang giao den ban', '2025-01-13 04:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(27, 9, 19, 'Sofa 2 chá»— HÃ  Ná»™i', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 13515000, 15900000, '<p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;CÃ¡c sáº£n pháº©m ná»™i tháº¥t táº¡i GÃ³c Nhá» Ä‘a sá»‘ Ä‘á»u Ä‘Æ°á»£c sáº£n xuáº¥t táº¡i nhÃ  mÃ¡y cá»§a cÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA vá»›i Ä‘á»™i ngÅ© nhÃ¢n viÃªn vÃ  cÃ´ng nhÃ¢n Æ°u tÃº cÃ¹ng cÆ¡ sá»Ÿ váº­t cháº¥t hiá»‡n Ä‘áº¡i&nbsp;<a href=\"http://www.aacorporation.com/\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">(http://www.aacorporation.com/)</a>. GÃ³c Nhá»&nbsp;Ä‘Ã£ kiá»ƒm tra ká»¹ lÆ°á»¡ng tá»« nguá»“n nguyÃªn liá»‡u cho Ä‘áº¿n sáº£n pháº©m hoÃ n thiá»‡n cuá»‘i cÃ¹ng.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;GÃ³c Nhá»&nbsp;báº£o hÃ nh má»™t nÄƒm cho cÃ¡c trÆ°á»ng há»£p cÃ³ lá»—i vá» ká»¹ thuáº­t trong quÃ¡ trÃ¬nh sáº£n xuáº¥t hay láº¯p Ä‘áº·t.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;QuÃ½ khÃ¡ch khÃ´ng nÃªn tá»± sá»­a chá»¯a mÃ  hÃ£y bÃ¡o ngay cho GÃ³c Nhá»&nbsp;qua hotline:&nbsp;<a href=\"https://nhaxinh.com/#\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">1800 7200.</a></p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sau thá»i gian háº¿t háº¡n báº£o hÃ nh, náº¿u quÃ½ khÃ¡ch cÃ³ báº¥t ká»³ yÃªu cáº§u hay tháº¯c máº¯c thÃ¬ vui lÃ²ng liÃªn há»‡ vá»›i GÃ³c Nhá»&nbsp;Ä‘á»ƒ Ä‘Æ°á»£c hÆ°á»›ng dáº«n vÃ  giáº£i quyáº¿t cÃ¡c váº¥n Ä‘á» gáº·p pháº£i.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 600 !important;\">TUY NHIÃŠN GÃ“C NHá»Ž KHÃ”NG Báº¢O HÃ€NH CHO CÃC TRÆ¯á»œNG Há»¢P SAU:</span></p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;KhÃ¡ch hÃ ng tá»± Ã½ sá»­a chá»¯a khi sáº£n pháº©m bá»‹ trá»¥c tráº·c mÃ  khÃ´ng bÃ¡o cho GÃ³c Nhá».</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m Ä‘Æ°á»£c sá»­ dá»¥ng khÃ´ng Ä‘Ãºng quy cÃ¡ch cá»§a sá»• báº£o hÃ nh (Ä‘Æ°á»£c trao gá»­i khi quÃ½ khÃ¡ch mua sáº£n pháº©m) gÃ¢y nÃªn tráº§y xÆ°á»›c, mÃ³p, dÆ¡ báº©n hay máº¥t mÃ u.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m bá»‹ biáº¿n dáº¡ng do mÃ´i trÆ°á»ng bÃªn ngoÃ i báº¥t bÃ¬nh thÆ°á»ng (quÃ¡ áº©m, quÃ¡ khÃ´, má»‘i hay do tÃ¡c Ä‘á»™ng tá»« cÃ¡c thiáº¿t bá»‹ Ä‘iá»‡n nÆ°á»›c, cÃ¡c hÃ³a cháº¥t hay dung mÃ´i khÃ¡ch hÃ ng sá»­ dá»¥ng khÃ´ng phÃ¹ há»£p).</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m háº¿t háº¡n báº£o hÃ nh.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m khÃ´ng cÃ³ phiáº¿u báº£o hÃ nh cá»§a GÃ³c Nhá».</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img src=\"https://nhaxinh.com/image/check.png\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;<a href=\"https://nhaxinh.com/index.php?menu=302\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">Xem ná»™i dung sá»• báº£o hÃ nh</a></p>', 'sofa-2-cho-ha-noi-2-768x511.jpg', 'sofa-2-cho-ha-noi-4-768x511.jpg', 'sofa-2-cho-ha-noi-768x511.jpg', 200000, 'In Stock', '2025-01-11 15:39:39', NULL),
(28, 9, 19, 'Sofa 1 chá»— Orientale da beige R5', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 67150000, 79000000, '<p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;CÃ¡c sáº£n pháº©m ná»™i tháº¥t Ä‘a sá»‘ Ä‘á»u Ä‘Æ°á»£c sáº£n xuáº¥t táº¡i nhÃ  mÃ¡y cá»§a cÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA vá»›i Ä‘á»™i ngÅ© nhÃ¢n viÃªn vÃ  cÃ´ng nhÃ¢n Æ°u tÃº cÃ¹ng cÆ¡ sá»Ÿ váº­t cháº¥t hiá»‡n Ä‘áº¡i&nbsp;<a href=\"http://www.aacorporation.com/\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">(http://www.aacorporation.com/)</a>. ÄÃ£ kiá»ƒm tra ká»¹ lÆ°á»¡ng tá»« nguá»“n nguyÃªn liá»‡u cho Ä‘áº¿n sáº£n pháº©m hoÃ n thiá»‡n cuá»‘i cÃ¹ng.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">Äáº£m báº£o&nbsp;báº£o hÃ nh má»™t nÄƒm cho cÃ¡c trÆ°á»ng há»£p cÃ³ lá»—i vá» ká»¹ thuáº­t trong quÃ¡ trÃ¬nh sáº£n xuáº¥t hay láº¯p Ä‘áº·t.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;QuÃ½ khÃ¡ch khÃ´ng nÃªn tá»± sá»­a chá»¯a mÃ  hÃ£y bÃ¡o ngay cho qua hotline:&nbsp;<a href=\"https://nhaxinh.com/#\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">1800 8400.</a></p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sau thá»i gian háº¿t háº¡n báº£o hÃ nh, náº¿u quÃ½ khÃ¡ch cÃ³ báº¥t ká»³ yÃªu cáº§u hay tháº¯c máº¯c thÃ¬ vui lÃ²ng liÃªn há»‡ Ä‘á»ƒ Ä‘Æ°á»£c hÆ°á»›ng dáº«n vÃ  giáº£i quyáº¿t cÃ¡c váº¥n Ä‘á» gáº·p pháº£i.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 600 !important;\">TUY NHIÃŠN KHÃ”NG Báº¢O HÃ€NH CHO CÃC TRÆ¯á»œNG Há»¢P SAU:</span></p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;KhÃ¡ch hÃ ng tá»± Ã½ sá»­a chá»¯a khi sáº£n pháº©m bá»‹ trá»¥c tráº·c mÃ  khÃ´ng bÃ¡o.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m Ä‘Æ°á»£c sá»­ dá»¥ng khÃ´ng Ä‘Ãºng quy cÃ¡ch cá»§a sá»• báº£o hÃ nh (Ä‘Æ°á»£c trao gá»­i khi quÃ½ khÃ¡ch mua sáº£n pháº©m) gÃ¢y nÃªn tráº§y xÆ°á»›c, mÃ³p, dÆ¡ báº©n hay máº¥t mÃ u.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m bá»‹ biáº¿n dáº¡ng do mÃ´i trÆ°á»ng bÃªn ngoÃ i báº¥t bÃ¬nh thÆ°á»ng (quÃ¡ áº©m, quÃ¡ khÃ´, má»‘i hay do tÃ¡c Ä‘á»™ng tá»« cÃ¡c thiáº¿t bá»‹ Ä‘iá»‡n nÆ°á»›c, cÃ¡c hÃ³a cháº¥t hay dung mÃ´i khÃ¡ch hÃ ng sá»­ dá»¥ng khÃ´ng phÃ¹ há»£p).</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m háº¿t háº¡n báº£o hÃ nh.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;Sáº£n pháº©m khÃ´ng cÃ³ phiáº¿u báº£o hÃ nh.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; font-family: Roboto, sans-serif; color: rgb(48, 48, 54); font-size: 14px; text-align: justify;\"><img width=\"30\" height=\"30\" src=\"https://nhaxinh.com/image/check.png\" data-lazy-src=\"https://nhaxinh.com/image/check.png\" data-ll-status=\"loaded\" class=\"entered lazyloaded\" style=\"box-sizing: border-box; border-style: none; display: inline-block; opacity: 1; transition: opacity 1s;\">&nbsp;<a href=\"https://nhaxinh.com/index.php?menu=302\" style=\"box-sizing: border-box; background: 0px 0px transparent; color: rgb(10, 10, 11); transition: 0.2s linear; touch-action: manipulation; outline: none !important;\">Xem ná»™i dung sá»• báº£o hÃ nh</a></p>', 'sofa-1-cho-orientale-da-beige-r5-768x511.jpg', 'armchair-orientale-1-768x511.jpg', 'BST-Orientale-768x512.jpg', 200000, 'In Stock', '2025-01-11 15:53:15', NULL),
(33, 10, 20, 'BÃ n Äƒn 8 chá»— Coastal', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 16500000, 14000000, '<span style=\"color: rgb(48, 48, 54); font-family: Roboto, sans-serif; font-size: 14px;\">BÃ n Äƒn Coastal Ä‘Æ°á»£c lÃ m tá»« gá»—, theo phong cÃ¡ch truyá»n thá»‘ng mang káº¿t cáº¥u vá»¯ng chÃ£i. Máº·t bÃ n báº±ng pháº³ng vá»›i cÃ¡c Ä‘Æ°á»ng vÃ¢n tá»± nhiÃªn, bá»‘n cáº¡nh Ä‘Æ°á»£c bo trÃ²n má»m máº¡i Ä‘á»ƒ trÃ¡nh va cháº¡m trong lÃºc sá»­ dá»¥ng. Sáº£n pháº©m cÃ³ 2 kÃ­ch thÆ°á»›c lÃ  bÃ n Äƒn 6 chá»— vÃ  8 chá»— cho ngÆ°á»i dÃ¹ng nhá»¯ng lá»±a chá»n linh hoáº¡t, phÃ¹ há»£p vá»›i nhiá»u khÃ´ng gian vÃ  nhu cáº§u sá»­ dá»¥ng.</span>', '1.jpg', '2.jpg', '3.jpg', 200000, 'In Stock', '2025-01-11 16:11:57', NULL),
(34, 11, 21, 'GiÆ°á»ng Miami 1m6 Váº£i Hooland 162', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 18000000, 21000000, '<br>', 'Giuong-Miami-1m6-Vai-Hooland-162.png', 'Giuong-Miami-1m6-Vai-Hooland-162-1-768x430.jpg', '', 500000, 'In Stock', '2025-01-12 13:28:49', NULL),
(35, 10, 22, 'Gháº¿ Äƒn Bolero ACC001 Da AB1142', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 5000000, 6000000, '<br>', 'Ghe-an-Bolero-ACC001-Da-AB1142-768x511.jpg', 'ghe-an-bolero-2-768x511.jpg', 'ghe-an-bolero-1-768x511.jpg', 100000, 'In Stock', '2025-01-12 13:31:19', NULL),
(36, 12, 23, 'BÃ n lÃ m viá»‡c Coastal', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 12000000, 15000000, '<br>', 'Ban-lam-viec-Coastal-768x511.jpg', 'Ban-lam-viec-Coastal-2-768x511.jpg', 'BST-Coastal-4-768x512.jpg', 200000, 'In Stock', '2025-01-12 13:33:28', NULL),
(37, 12, 24, 'Gháº¿ lÃ m viá»‡c check out 8386', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 21000000, 24000000, '<br>', 'Ghe-Lam-Viec-Check-Out-3105575-768x454.jpg', 'Ghe-Lam-Viec-Check-Out-3105575-1-768x454.jpg', 'Ghe-Lam-Viec-Check-Out-3105575-3-768x454.jpg', 200000, 'In Stock', '2025-01-12 13:34:42', NULL),
(38, 13, 25, 'ÄÃ¨n bÃ n Gianfranco Vintage', 'CÃ´ng ty cá»• pháº§n xÃ¢y dá»±ng kiáº¿n trÃºc AA', 32000000, 32000000, '<br>', 'DEN-BAN-GIANFRANCO-VINTAGE-116913E-768x511.jpg', 'DEN-BAN-GIANFRANCO-VINTAGE-116913E-768x511.jpg', 'IMG_2849.jpg', 100000, 'In Stock', '2025-01-12 13:36:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(15, 8, 'PhÃ²ng KhÃ¡ch', '2024-12-29 19:44:21', NULL),
(19, 9, 'Sofa', '2025-01-09 14:04:24', NULL),
(20, 10, 'BÃ n Äƒn', '2025-01-11 15:54:17', NULL),
(21, 11, 'GiÆ°á»ng ngá»§', '2025-01-12 13:27:40', NULL),
(22, 10, 'Gháº¿ Äƒn', '2025-01-12 13:30:22', NULL),
(23, 12, 'BÃ n lÃ m viá»‡c', '2025-01-12 13:31:46', NULL),
(24, 12, 'Gháº¿ lÃ m viá»‡c', '2025-01-12 13:31:59', NULL),
(25, 13, 'ÄÃ¨n trang trÃ­', '2025-01-12 13:36:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(4, 'phucduyy3@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-29 19:21:32', '30-12-2024 12:52:08 AM', 1),
(5, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-30 03:31:39', '30-12-2024 09:05:16 AM', 1),
(6, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-30 03:35:19', NULL, 1),
(7, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-30 11:56:03', NULL, 1),
(8, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-11 03:01:16', NULL, 1),
(9, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-11 15:59:03', '11-01-2025 09:29:05 PM', 1),
(10, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-11 15:59:13', NULL, 1),
(11, 'truongphucduy15@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-12 09:23:07', NULL, 1),
(12, 'leminhnhut@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-12 14:08:56', NULL, 1),
(13, 'leminhnhut@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-12 14:54:27', NULL, 1),
(14, 'leminhnhut@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-12 16:13:37', NULL, 1),
(15, 'leminhnhut13@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-13 02:44:25', '13-01-2025 08:14:58 AM', 1),
(16, 'leminhnhut11@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-13 02:49:41', NULL, 0),
(17, 'leminhnhut13@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-13 04:40:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Truong Phuc Duy', 'phucduyy3@gmail.com', 961898478, 'cfba490c0987ce5b0d9332ab3f17dfa2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 19:21:28', NULL),
(7, 'Truong Phuc Duy', 'truongphucduy15@gmail.com', 961898478, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'Chu Van An', 'Tra Vinh', 'Tra Vinh', 87000, '2024-12-30 03:31:36', NULL),
(8, 'Le Minh Nhut', 'leminhnhut@gmail.com', 984626995, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, 'Chu Van An', 'Tra Vinh', 'Tra Vinh', 87000, '2025-01-12 14:08:52', NULL),
(9, 'Le Minh Nhut', 'leminhnhut13@gmail.com', 984626995, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-13 02:44:17', NULL),
(10, 'Le Minh Nhut', 'leminhnhut11@gmail.com', 984626995, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-13 02:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
