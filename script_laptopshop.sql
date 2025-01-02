-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 09:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptopshop`
--
CREATE DATABASE IF NOT EXISTS `laptopshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laptopshop`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `sum` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `sum`, `user_id`) VALUES
(20, 2, 23),
(24, 4, 24);

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `price`, `quantity`, `cart_id`, `product_id`) VALUES
(45, 19500000, 1, 20, 3),
(46, 11900000, 2, 20, 4),
(55, 19500000, 2, 24, 3),
(56, 11900000, 1, 24, 4),
(57, 15490000, 1, 24, 2),
(58, 17490000, 1, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `user_id`, `receiver_address`, `receiver_name`, `receiver_phone`, `status`) VALUES
(6, 46389000, 20, 'Hue', 'Nhu Y', '0123654789', 'PENDING'),
(8, 42480000, 24, 'Hue', 'Nhu Y', '0123654789', 'PENDING'),
(9, 83970000, 23, 'Hue', 'Nhu Y', '0123654789', 'PENDING'),
(10, 83970000, 24, 'hgfhgfh', 'fhgfhg', '0123654789', 'PENDING'),
(11, 64380000, 26, 'Huế', 'Như Ý', '0123654789', 'PENDING'),
(12, 46890000, 20, 'Hue', 'Nhu Y', '0123654789', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(10, 24990000, 1, 6, 7),
(11, 21399000, 1, 6, 10),
(13, 24990000, 1, 8, 7),
(14, 17490000, 1, 8, 1),
(15, 31490000, 1, 9, 6),
(16, 19500000, 1, 9, 3),
(17, 17490000, 3, 9, 1),
(18, 15490000, 1, 9, 2),
(19, 31490000, 1, 10, 6),
(20, 19500000, 1, 10, 3),
(21, 17490000, 3, 10, 1),
(22, 15490000, 1, 10, 2),
(23, 19500000, 1, 11, 3),
(24, 11900000, 1, 11, 4),
(25, 17490000, 2, 11, 1),
(26, 15490000, 1, 11, 2),
(27, 19500000, 1, 12, 3),
(28, 15490000, 1, 12, 2),
(29, 11900000, 1, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `detail_desc` mediumtext NOT NULL,
  `factory` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `sold` bigint(20) NOT NULL,
  `target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `detail_desc`, `factory`, `image`, `name`, `price`, `quantity`, `short_desc`, `sold`, `target`) VALUES
(1, 'ASUS TUF Gaming F15 FX506HF HN017W là chiếc laptop gaming giá rẻ nhưng vô cùng mạnh mẽ. Không chỉ bộ vi xử lý Intel thế hệ thứ 11, card đồ họa RTX 20 series mà điểm mạnh còn đến từ việc trang bị sẵn 16GB RAM, cho bạn hiệu năng xuất sắc mà không cần nâng cấp máy.', 'APPLE', '1711078092373-asus-01.png', 'Laptop Asus TUF Gaming', 17490000, 100, ' Intel, Core i5, 11400H', 0, 'GAMING'),
(2, 'Khám phá sức mạnh tối ưu từ Dell Inspiron 15 N3520, chiếc laptop có cấu hình cực mạnh với bộ vi xử lý Intel Core i5 1235U thế hệ mới và dung lượng RAM lên tới 16GB. Bạn có thể thoải mái xử lý nhiều tác vụ, nâng cao năng suất trong công việc mà không gặp bất kỳ trở ngại nào.', 'DELL', '1711078452562-dell-01.png', 'Laptop Dell Inspiron 15 ', 15490000, 200, 'i5 1235U/16GB/512GB/15.6\"FHD', 0, 'SINHVIEN-VANPHONG'),
(3, ' Mới đây, Lenovo đã tung ra thị trường một sản phẩm gaming thế hệ mới với hiệu năng mạnh mẽ, thiết kế tối giản, lịch lãm phù hợp cho những game thủ thích sự đơn giản. Tản nhiệt mát mẻ với hệ thống quạt kép kiểm soát được nhiệt độ máy luôn mát mẻ khi chơi game.', 'LENOVO', '1711079073759-lenovo-01.png', 'Lenovo IdeaPad Gaming 3', 19500000, 150, ' i5-10300H, RAM 8G', 0, 'GAMING'),
(4, 'Tận hưởng cảm giác mát lạnh sành điệu với thiết kế kim loại\r\nĐược thiết kế để đáp ứng những nhu cầu điện toán hàng ngày của bạn, dòng máy tính xách tay ASUS K Series sở hữu thiết kế tối giản, gọn nhẹ và cực mỏng với một lớp vỏ họa tiết vân kim loại phong cách. Hiệu năng của máy rất mạnh mẽ nhờ trang bị bộ vi xử lý Intel® Core™ i7 processor và đồ họa mới nhất. Bên cạnh đó, các công nghệ sáng tạo độc quyền của ASUS đưa thiết bị lên đẳng cấp mới, cho bạn một trải nghiệm người dùng trực quan và tính năng công thái học vượt trội.', 'ASUS', '1711079496409-asus-02.png', 'Asus K501UX', 11900000, 99, 'VGA NVIDIA GTX 950M- 4G', 0, 'THIET-KE-DO-HOA'),
(5, 'Chiếc MacBook Air có hiệu năng đột phá nhất từ trước đến nay đã xuất hiện. Bộ vi xử lý Apple M1 hoàn toàn mới đưa sức mạnh của MacBook Air M1 13 inch 2020 vượt xa khỏi mong đợi người dùng, có thể chạy được những tác vụ nặng và thời lượng pin đáng kinh ngạc.', 'APPLE', '1711079954090-apple-01.png', 'MacBook Air 13', 17690000, 99, 'Apple M1 GPU 7 nhân', 0, 'GAMING'),
(6, '14.0 Chính: inch, 2880 x 1800 Pixels, OLED, 90 Hz, OLED', 'LG', '1711080386941-lg-01.png', 'Laptop LG Gram Style', 31490000, 99, 'Intel Iris Plus Graphics', 0, 'DOANH-NHAN'),
(7, 'Không chỉ khơi gợi cảm hứng qua việc cách tân thiết kế, MacBook Air M2 2022 còn chứa đựng nguồn sức mạnh lớn lao với chip M2 siêu mạnh, thời lượng pin chạm  ngưỡng 18 giờ, màn hình Liquid Retina tuyệt đẹp và hệ thống camera kết hợp cùng âm thanh tân tiến.', 'APPLE', '1711080787179-apple-02.png', 'MacBook Air 13 ', 24990000, 99, ' Apple M2 GPU 8 nhân', 0, 'MONG-NHE'),
(8, 'Là chiếc laptop gaming thế hệ mới nhất thuộc dòng Nitro 5 luôn chiếm được rất nhiều cảm tình của game thủ trước đây, Acer Nitro Gaming AN515-58-769J nay còn ấn tượng hơn nữa với bộ vi xử lý Intel Core i7 12700H cực khủng và card đồ họa RTX 3050, sẵn sàng cùng bạn chinh phục những đỉnh cao.\r\n', 'ACER', '1711080948771-acer-01.png', 'Laptop Acer Nitro ', 23490000, 99, 'AN515-58-769J i7 12700H', 0, 'SINHVIEN-VANPHONG'),
(9, '15.6 inch, FHD (1920 x 1080), IPS, 144 Hz, 250 nits, Acer ComfyView LED-backlit', 'ASUS', '1711081080930-asus-03.png', 'Laptop Acer Nitro V', 26999000, 99, ' NVIDIA GeForce RTX 4050', 0, 'MONG-NHE'),
(10, 'Dell Inspiron N3520 là chiếc laptop lý tưởng cho công việc hàng ngày. Bộ vi xử lý Intel Core i5 thế hệ thứ 12 hiệu suất cao, màn hình lớn 15,6 inch Full HD 120Hz mượt mà, thiết kế bền bỉ sẽ giúp bạn giải quyết công việc nhanh chóng mọi lúc mọi nơi.', 'DELL', '1711081278418-dell-02.png', 'Laptop Dell Latitude 3420', 21399000, 99, ' Intel Iris Xe Graphics', 0, 'MONG-NHE');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `description`, `name`, `user_id`) VALUES
(1, 'Admin thì full quyền', 'ADMIN', NULL),
(2, 'User thông thường', 'USER', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spring_session`
--

INSERT INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
('5a6b4639-b317-49c6-ae44-9771a4b3af71', '6cff2511-715e-44d2-8db6-18df25ca52fe', 1732491517545, 1734355073326, 2592000, 1736947073326, 'admin@gmail.com'),
('75737137-7955-4a4a-9884-de0758ad5065', '78b652e7-f3c6-4dd9-b200-c20daa6d8ec1', 1735807199481, 1735807205048, 2592000, 1738399205048, 'user@gmail.com'),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'f31b44f8-25f0-45e0-9f31-1626e528b1a6', 1733922611522, 1734361796076, 2592000, 1736953796076, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spring_session_attributes`
--

INSERT INTO `spring_session_attributes` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'avatar', 0xaced0005740032313732313533323438333539312d61306138343664623263303336643361386663663733396262353730376534332e6a7067),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'email', 0xaced000574000f61646d696e40676d61696c2e636f6d),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'fullName', 0xaced000574000a41646d696e2066756c6c),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'id', 0xaced00057372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000000018),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'jakarta.servlet.jsp.jstl.fmt.request.charset', 0xaced00057400055554462d38),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN', 0xaced0005737200366f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e637372662e44656661756c7443737266546f6b656e5aefb7c82fa2fbd50200034c000a6865616465724e616d657400124c6a6176612f6c616e672f537472696e673b4c000d706172616d657465724e616d6571007e00014c0005746f6b656e71007e0001787074000c582d435352462d544f4b454e7400055f6373726674002438646131626631372d323164662d346166662d613335612d373037313762623438393235),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'SPRING_SECURITY_CONTEXT', 0xaced00057372003d6f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e636f6e746578742e5365637572697479436f6e74657874496d706c000000000000026c0200014c000e61757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b78707372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e000000000000026c0200024c000b63726564656e7469616c737400124c6a6176612f6c616e672f4f626a6563743b4c00097072696e636970616c71007e0004787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c7371007e0004787001737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00067870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f72697479000000000000026c0200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a524f4c455f41444d494e7871007e000d737200486f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e61757468656e7469636174696f6e2e57656241757468656e7469636174696f6e44657461696c73000000000000026c0200024c000d72656d6f74654164647265737371007e000f4c000973657373696f6e496471007e000f787074000f303a303a303a303a303a303a303a3174002430326632386232312d313961302d343931372d396438662d65656365393964613337383070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e55736572000000000000026c0200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657374000f4c6a6176612f7574696c2f5365743b4c000870617373776f726471007e000f4c0008757365726e616d6571007e000f787001010101737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e000a737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f72000000000000026c020000787077040000000171007e0010787074000f61646d696e40676d61696c2e636f6d),
('5a6b4639-b317-49c6-ae44-9771a4b3af71', 'sum', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000),
('75737137-7955-4a4a-9884-de0758ad5065', 'avatar', 0xaced0005740032313733353830373139363031332d61306138343664623263303336643361386663663733396262353730376534332e6a7067),
('75737137-7955-4a4a-9884-de0758ad5065', 'email', 0xaced000574000e7573657240676d61696c2e636f6d),
('75737137-7955-4a4a-9884-de0758ad5065', 'fullName', 0xaced00057400054e68752059),
('75737137-7955-4a4a-9884-de0758ad5065', 'id', 0xaced00057372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000000017),
('75737137-7955-4a4a-9884-de0758ad5065', 'jakarta.servlet.jsp.jstl.fmt.request.charset', 0xaced00057400055554462d38),
('75737137-7955-4a4a-9884-de0758ad5065', 'org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN', 0xaced0005737200366f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e637372662e44656661756c7443737266546f6b656e5aefb7c82fa2fbd50200034c000a6865616465724e616d657400124c6a6176612f6c616e672f537472696e673b4c000d706172616d657465724e616d6571007e00014c0005746f6b656e71007e0001787074000c582d435352462d544f4b454e7400055f6373726674002438346636333137372d316131642d346266382d383438632d363330346337333530393661),
('75737137-7955-4a4a-9884-de0758ad5065', 'SPRING_SECURITY_CONTEXT', 0xaced00057372003d6f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e636f6e746578742e5365637572697479436f6e74657874496d706c000000000000026c0200014c000e61757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b78707372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e000000000000026c0200024c000b63726564656e7469616c737400124c6a6176612f6c616e672f4f626a6563743b4c00097072696e636970616c71007e0004787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c7371007e0004787001737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00067870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f72697479000000000000026c0200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b7870740009524f4c455f555345527871007e000d737200486f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e61757468656e7469636174696f6e2e57656241757468656e7469636174696f6e44657461696c73000000000000026c0200024c000d72656d6f74654164647265737371007e000f4c000973657373696f6e496471007e000f787074000f303a303a303a303a303a303a303a3174002434353239333865342d323265372d343132342d613462372d66343236313965656636363970737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e55736572000000000000026c0200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657374000f4c6a6176612f7574696c2f5365743b4c000870617373776f726471007e000f4c0008757365726e616d6571007e000f787001010101737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e000a737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f72000000000000026c020000787077040000000171007e0010787074000e7573657240676d61696c2e636f6d),
('75737137-7955-4a4a-9884-de0758ad5065', 'sum', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000002),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'avatar', 0xaced0005740032313732313533323438333539312d61306138343664623263303336643361386663663733396262353730376534332e6a7067),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'email', 0xaced000574000f61646d696e40676d61696c2e636f6d),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'fullName', 0xaced000574000a41646d696e2066756c6c),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'id', 0xaced00057372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000000018),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'jakarta.servlet.jsp.jstl.fmt.request.charset', 0xaced00057400055554462d38),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN', 0xaced0005737200366f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e637372662e44656661756c7443737266546f6b656e5aefb7c82fa2fbd50200034c000a6865616465724e616d657400124c6a6176612f6c616e672f537472696e673b4c000d706172616d657465724e616d6571007e00014c0005746f6b656e71007e0001787074000c582d435352462d544f4b454e7400055f6373726674002433393364353030322d633030622d346464332d613861642d303830663833316263386334),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'SPRING_SECURITY_CONTEXT', 0xaced00057372003d6f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e636f6e746578742e5365637572697479436f6e74657874496d706c000000000000026c0200014c000e61757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b78707372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e000000000000026c0200024c000b63726564656e7469616c737400124c6a6176612f6c616e672f4f626a6563743b4c00097072696e636970616c71007e0004787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c7371007e0004787001737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00067870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f72697479000000000000026c0200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a524f4c455f41444d494e7871007e000d737200486f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e61757468656e7469636174696f6e2e57656241757468656e7469636174696f6e44657461696c73000000000000026c0200024c000d72656d6f74654164647265737371007e000f4c000973657373696f6e496471007e000f787074000f303a303a303a303a303a303a303a3174002431643362623230352d336430362d346132632d383136372d32303032346165336436633970737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e55736572000000000000026c0200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657374000f4c6a6176612f7574696c2f5365743b4c000870617373776f726471007e000f4c0008757365726e616d6571007e000f787001010101737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e000a737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f72000000000000026c020000787077040000000171007e0010787074000f61646d696e40676d61696c2e636f6d),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'SPRING_SECURITY_SAVED_REQUEST', 0xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e7361766564726571756573742e44656661756c74536176656452657175657374000000000000026c02000f49000a736572766572506f72744c000b636f6e74657874506174687400124c6a6176612f6c616e672f537472696e673b4c0007636f6f6b6965737400154c6a6176612f7574696c2f41727261794c6973743b4c00076865616465727374000f4c6a6176612f7574696c2f4d61703b4c00076c6f63616c657371007e00024c001c6d61746368696e6752657175657374506172616d657465724e616d6571007e00014c00066d6574686f6471007e00014c000a706172616d657465727371007e00034c000870617468496e666f71007e00014c000b7175657279537472696e6771007e00014c000a7265717565737455524971007e00014c000a7265717565737455524c71007e00014c0006736368656d6571007e00014c000a7365727665724e616d6571007e00014c000b736572766c65745061746871007e0001787000001f91740000737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200396f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e7361766564726571756573742e5361766564436f6f6b6965000000000000026c0200084900066d61784167655a000673656375726549000776657273696f6e4c0007636f6d6d656e7471007e00014c0006646f6d61696e71007e00014c00046e616d6571007e00014c00047061746871007e00014c000576616c756571007e00017870ffffffff0000000000707074000753455353494f4e707400304d57517a596d49794d4455744d3251774e69303059544a6a4c5467784e6a63744d6a41774d6a52685a544e6b4e6d4d3578737200116a6176612e7574696c2e547265654d61700cc1f63e2d256ae60300014c000a636f6d70617261746f727400164c6a6176612f7574696c2f436f6d70617261746f723b78707372002a6a6176612e6c616e672e537472696e672443617365496e73656e736974697665436f6d70617261746f7277035c7d5c50e5ce020000787077040000000f7400066163636570747371007e000600000001770400000001740087746578742f68746d6c2c6170706c69636174696f6e2f7868746d6c2b786d6c2c6170706c69636174696f6e2f786d6c3b713d302e392c696d6167652f617669662c696d6167652f776562702c696d6167652f61706e672c2a2f2a3b713d302e382c6170706c69636174696f6e2f7369676e65642d65786368616e67653b763d62333b713d302e377874000f6163636570742d656e636f64696e677371007e000600000001770400000001740017677a69702c206465666c6174652c2062722c207a7374647874000f6163636570742d6c616e67756167657371007e00060000000177040000000174002c76692d564e2c76693b713d302e392c66723b713d302e382c656e2d55533b713d302e372c656e3b713d302e367874000a636f6e6e656374696f6e7371007e00060000000177040000000174000a6b6565702d616c69766578740006636f6f6b69657371007e00060000000177040000000174003853455353494f4e3d4d57517a596d49794d4455744d3251774e69303059544a6a4c5467784e6a63744d6a41774d6a52685a544e6b4e6d4d3578740004686f73747371007e00060000000177040000000174000e6c6f63616c686f73743a38303831787400097365632d63682d75617371007e00060000000177040000000174004122476f6f676c65204368726f6d65223b763d22313331222c20224368726f6d69756d223b763d22313331222c20224e6f745f41204272616e64223b763d22323422787400107365632d63682d75612d6d6f62696c657371007e0006000000017704000000017400023f30787400127365632d63682d75612d706c6174666f726d7371007e0006000000017704000000017400092257696e646f7773227874000e7365632d66657463682d646573747371007e000600000001770400000001740008646f63756d656e747874000e7365632d66657463682d6d6f64657371007e0006000000017704000000017400086e617669676174657874000e7365632d66657463682d736974657371007e0006000000017704000000017400046e6f6e657874000e7365632d66657463682d757365727371007e0006000000017704000000017400023f3178740019757067726164652d696e7365637572652d72657175657374737371007e000600000001770400000001740001317874000a757365722d6167656e747371007e00060000000177040000000174006f4d6f7a696c6c612f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f3133312e302e302e30205361666172692f3533372e333678787371007e000600000005770400000005737200106a6176612e7574696c2e4c6f63616c657ef811609c30f9ec03000649000868617368636f64654c0007636f756e74727971007e00014c000a657874656e73696f6e7371007e00014c00086c616e677561676571007e00014c000673637269707471007e00014c000776617269616e7471007e00017870ffffffff740002564e71007e0005740002766971007e000571007e0005787371007e003fffffffff71007e000571007e000571007e004271007e000571007e0005787371007e003fffffffff71007e000571007e0005740002667271007e000571007e0005787371007e003fffffffff740002555371007e0005740002656e71007e000571007e0005787371007e003fffffffff71007e000571007e000571007e004871007e000571007e00057878740008636f6e74696e75657400034745547371007e000c7077040000000174000765787069726564757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b4702000078700000000171007e00057870740007657870697265647400072f6c6f676f757474001c687474703a2f2f6c6f63616c686f73743a383038312f6c6f676f7574740004687474707400096c6f63616c686f73747400072f6c6f676f7574),
('dca57900-d4b6-46d9-9202-53599c31b46d', 'sum', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000004);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `address`, `avatar`, `email`, `full_name`, `password`, `phone`, `role_id`) VALUES
(20, 'Cá heo Snowball cứu một cậu bé loài người từ những cơn sóng biển. Từ đó, họ lớn lên cùng nhau một cách vô tư. Nhưng một ngày nọ, sự bình yên của thế giới nhỏ bé vui vẻ của họ bị phá hủy bởi con Bạch tuộc độc ác.', NULL, 'nhuy@gmail.com', 'Nhu Y Tran', '$2a$10$qFwyznLDRGoSNi0NJOaGIeuffAkv7nTiPHYOiDzP2b7LPNTtTEq/y', '0123456789', 2),
(23, 'Hue', '1735807196013-a0a846db2c036d3a8fcf739bb5707e43.jpg', 'user@gmail.com', 'Nhu Y', '$2a$10$fs2ABEzcdRD/1dzeWEBynezRNX/LsDiHakxgDU96QQW2fY3ryPnlG', '0566665656', 2),
(24, 'Hue', '', 'admin@gmail.com', 'Admin full', '$2a$10$aaDU3Pjxd8Hol3DmOKIR1O9OJXNT8QngjcVH8rAXWRK1fJzXKEMtW', '0789456123', 1),
(26, 'Hue', '', 'yuri@gmail.com', 'Yuri', '$2a$10$GimNP3FJesv0tMvlW./VOeivUAwK6psAVrFTR.IkCOfhvWz7KjfTu', '0789654123', 2),
(30, 'Hue', '', 'test@gmail.com', 'Test', '$2a$10$ECdRbSkxdJOb/z4W6XCGNOMNIL/UPYHb0RFDqz8viht3f4v8fro3K', '0123456789', 2),
(31, 'Hue', '', 'test@gmail.com', 'Test', '$2a$10$oE8/9ge20OyQGeX2.tsGMuhd1TT/AmoWFVJTWixjaSa4v6fZcN3SS', '0123454649', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_64t7ox312pqal3p7fg9o503c2` (`user_id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbql1m2v2po7hcawonqsgqex88` (`cart_id`),
  ADD KEY `FKclb1c0wg3mofxnpgidib1t987` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  ADD KEY `FKc7q42e9tu0hslx6w4wxgomhvn` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf7e6sdb9xuwg6miihw0kntw65` (`user_id`);

--
-- Indexes for table `spring_session`
--
ALTER TABLE `spring_session`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `FKbql1m2v2po7hcawonqsgqex88` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `FKclb1c0wg3mofxnpgidib1t987` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FKc7q42e9tu0hslx6w4wxgomhvn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `FKf7e6sdb9xuwg6miihw0kntw65` FOREIGN KEY (`user_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
