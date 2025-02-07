-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 12:28 AM
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
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `proname` varchar(250) NOT NULL,
  `proimage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Id`, `proid`, `price`, `qty`, `user_id`, `proname`, `proimage`) VALUES
(24, 5, 340, 1, 0, 'lipstick', 'upload/MAC Nicki Minaj Lipstick and the First PSL of the Season.jpg'),
(31, 7, 250, 1, 0, 'nail polish', 'upload/download.jpg'),
(96, 36, 1000, 1, 10, 'Daisy Ring', 'upload/311136_b8086e1a-2582-41cc-86f4-9ed7212af96e.webp'),
(97, 53, 1200, 1, 10, 'Gajra Pearl Mala', 'upload/NECKLACE-0941-2.webp');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `name`, `description`) VALUES
(34, 'Jewellery', 'jewellery'),
(35, 'Cosmetics', 'cosmetic');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id`, `username`, `email`, `password`, `roleid`) VALUES
(4, 'asad', 'asad@gmail.com', 'c56481008a2257d3fab36fbf5720a2e6', 2),
(5, 'abdulmoiz', 'moizsiddiqui@gmail.com', '2a77d9de907385ebf2b94d6b35fbcdd0', 2),
(6, 'ali', 'ali@gmail.com', '86318e52f5ed4801abe1d13d509443de', 2),
(7, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(9, 'talhaahmer', 'talhaahmer@gmail.com', '7d2731ef68f1d34e02a42aedaaf68cad', 2),
(10, 'saim', 'saim@gmail.com', '844f9ee41a83411bb8464b0a0d02f1c6', 2),
(11, 'moiz', 'romanmoiz54321@gmail.com', '2a77d9de907385ebf2b94d6b35fbcdd0', 2),
(16, 'Jenny', 'jenny@gmail.com', 'ebe6941ee8a10c14dc933ae37a0f43fc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(8, 'talha', 'romanmoiz54321@gmail.com', 'abc', 'abc', '2024-10-29 04:33:09'),
(9, 'talha', 'romanmoiz54321@gmail.com', 'abxc', 'abc', '2024-10-29 04:35:14'),
(10, 'Jenny', 'jenny@gmail.com', 'abc', 'Excellent performance', '2024-10-29 22:26:53'),
(11, 'Jenny', 'jenny@gmail.com', 'abc', 'Excellent', '2024-10-29 22:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `work_phone` varchar(15) NOT NULL,
  `cell_no` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `remarks` text DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `email`, `work_phone`, `cell_no`, `dob`, `remarks`, `total_amount`, `created_at`, `status`) VALUES
(20, 11, 'talha', 'karachi', 'abcc@gmail.com', '12345678999', '12345678999', '2024-10-16', 'goood', 2550.00, '2024-10-29 04:59:01', 'pending'),
(21, 11, 'talha', 'karachi', 'abcc@gmail.com', '12345678999', '12345678999', '2024-10-08', 'no', 3550.00, '2024-10-29 05:00:30', 'on the way'),
(22, 15, 'Jenny', 'Islamabad', 'jenny@gmail.com', '12345678999', '12345678999', '2024-10-02', 'good', 8350.00, '2024-10-29 22:27:35', 'pending'),
(23, 16, 'Jenny', 'Islamabad', 'jenny@gmail.com', '12345678999', '12345678999', '2024-10-08', 'good', 6150.00, '2024-10-29 22:48:06', 'shipped');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `quantity`, `total`, `product_image`) VALUES
(12, 20, 0, 'Tom Ford Velvet Orchid Eau De Parfum Spray', 2000.00, 1, 2000.00, 'upload/a.jpg'),
(13, 20, 0, 'loreal Riche Oil-Infused Yellow Nail Polish', 500.00, 1, 500.00, 'upload/abd.jpg'),
(14, 21, 0, 'Lancôme La Vie Est Belle Eau de Parfum', 3500.00, 1, 3500.00, 'upload/g.jpg'),
(18, 23, 0, 'BLOSSOM Perfume', 2000.00, 1, 2000.00, 'upload/blossom_1__1.webp'),
(19, 23, 0, 'Essie , Red Nail Polish', 300.00, 1, 300.00, 'upload/640x640.jpg'),
(20, 23, 0, 'Avila Bangles', 3800.00, 1, 3800.00, 'upload/IMG_77032.webp');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL,
  `catid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `qty` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `name`, `descrip`, `image`, `catid`, `price`, `subcat_id`, `qty`) VALUES
(5, 'Nail Polish', 'Colour Riche Oil-Infused Nail Polish ', 'upload/000030120730_T1.png', 35, 550, 0, 10),
(7, 'nail polish', 'Premium Quality Fair Amount Smooth', 'upload/download.jpg', 35, 250, 0, 10),
(13, 'Gold Earrings', 'Gold Earrings', 'upload/ER000141-1.jpg', 34, 4566, 0, 10),
(23, 'loreal  Orange Nail Polish', 'loreal  Orange Nail Polish', 'upload/1.png', 35, 500, 20, 10),
(24, 'loreal   Purple Nail Polish', ' Loréal Paris', 'upload/30112377-875-copy.webp', 35, 550, 20, 10),
(25, 'loreal  Yellow Nail Polish', 'loreal  Yellow Nail Polish', 'upload/abd.jpg', 35, 500, 20, 10),
(26, 'Essie  Glossy Shine Nail Polish  ', 'Essie  Glossy Shine Nail Polish ', 'upload/c.jpg', 35, 450, 20, 10),
(27, 'Essie Pastel Pink Nail Polish', 'Essie Pastel Pink Nail Polish', 'upload/b.jpg', 35, 300, 20, 10),
(28, 'Essie , Orange  Nail Polish', 'Essie , Orange  Nail Polish', 'upload/abcc.jpg', 35, 400, 20, 10),
(31, 'UROOSA NOIR Perfume', 'UROOSA NOIR For Women Perfume', 'upload/uroosa_noir_1_.webp', 35, 2700, 21, 10),
(32, 'BLOSSOM Perfume', 'BLOSSOM Perfume for women', 'upload/blossom_1__1.webp', 35, 2000, 21, 10),
(34, 'BELLA Perfume', 'BELLA Perfume', 'upload/bella_pourfemme_3__1.webp', 35, 3500, 21, 10),
(35, 'AZBAH Perfume', 'AZBAH Perfume', 'upload/azbah_1__1_2.webp', 35, 3400, 21, 10),
(36, 'Daisy Ring', 'Daisy Ring', 'upload/311136_b8086e1a-2582-41cc-86f4-9ed7212af96e.webp', 34, 1000, 17, 10),
(39, 'Lavender Ring', 'Lavender Ring', 'upload/311159.webp', 34, 5000, 22, 10),
(40, 'Laurence Graff Signature  Band', 'Laurence Graff Signature  Band', 'upload/Laurence Graff Signature Diamond Band.PNG', 34, 1250, 22, 10),
(41, 'Irmaplotz Bangles', 'Irmaplotz Bangles', 'upload/IRMAPLOTZ-BANGLES-SILVER.webp', 34, 2000, 23, 10),
(42, 'Stunning Adorable Bangles', 'Stunning Adorable Bangles', 'upload/Aaniat_s-Bangles.webp', 34, 2200, 23, 10),
(43, 'Monarda Bridal Sets', 'Monarda Bridal Sets', 'upload/b.webp', 34, 5000, 18, 10),
(44, 'Maroof Bridal  Necklace Sets', 'Bismah Maroof Bridal  Necklace Sets', 'upload/Mahroon_3111683.webp', 34, 5000, 18, 10),
(45, 'White Bridal Necklace Set', 'White Bridal Necklace Set', 'upload/bridalset.webp', 34, 5500, 18, 10),
(46, '    Royal Bridal Set', '    Royal Bridal Set', 'upload/Royal_bridal_mint_pink_3115334.webp', 34, 4800, 18, 10),
(47, 'Traditional Bridal Set', 'Traditional Bridal Set', 'upload/14110-1.webp', 34, 6000, 18, 10),
(49, 'Golden Traditional Bangle', 'Traditional Bangle', 'upload/BANGLES-0106.webp', 34, 3000, 23, 10),
(50, 'Mystic Bangles', 'Traditional Bangles', 'upload/Mystic-Bangles.webp', 34, 3450, 23, 10),
(51, 'Mala Necklace', 'Mala Necklace', 'upload/MALA-NECKLACE-0915-multi.webp', 34, 1000, 24, 10),
(52, 'Royal Mala ', 'Royal Mala  green', 'upload/NECKLACE-0986-green.webp', 34, 2000, 24, 10),
(53, 'Gajra Pearl Mala', 'Gajra Pearl Mala', 'upload/NECKLACE-0941-2.webp', 34, 1200, 24, 10),
(54, 'Multicolor Mala', 'Multicolor Mala', 'upload/Necklace-0847.webp', 34, 1200, 24, 10),
(55, ' Simple Bracelet', ' Simple Bracelet', 'upload/BRACELET-0064_Bracelet_2589_1-1200x1200.webp', 34, 1000, 25, 10),
(56, 'Traditional Braclet', 'Traditional Braclet', 'upload/Bracelet-0028.webp', 34, 1200, 25, 10),
(57, 'Red Bridal Set', 'Bridal Set', 'upload/Ensemble-Bridal-Set.webp', 34, 5000, 26, 10),
(58, 'Bridal Set', 'Bridal Set', 'upload/13.webp', 34, 5000, 26, 10),
(59, 'Bridal Set', 'Bridal Set', 'upload/14100.webp', 34, 500, 26, 10),
(60, 'Rivaj Classy Lipsticks', 'Rivaj Classy Lipsticks', 'upload/Classy-Lipstick_02_mockup.webp', 35, 400, 27, 10),
(61, 'Color Fusion Lipstick', 'Color Fusion Lipstick', 'upload/Color-Fusion-Lipstick.webp', 35, 500, 27, 10),
(62, 'Ultra Matte Lipstick', 'Ultra Matte Lipstick', 'upload/Ultra-Matte-Lipstick.webp', 35, 400, 27, 10),
(63, 'Rivaj Classy Lipsticks', 'Rivaj Classy Lipsticks', 'upload/221257_main.jpg', 35, 400, 27, 10),
(64, 'Rivaj Classy Lipsticks', 'Rivaj Classy Lipsticks', 'upload/Classy-Lipstick_21_poster_1.webp', 35, 340, 27, 10),
(65, 'Blush', 'True Magestic feel blush', 'upload/6.webp', 35, 14000, 28, 10),
(66, 'Eye liner', 'Eye liner', 'upload/IMG-8238_1080x.webp', 35, 200, 28, 10),
(67, 'Foundation', '24 hours Foundation', 'upload/l-oreal-paris-true-match-foundation-2-r-2-c-rose-vanilla-30ml.avif', 35, 200, 28, 10),
(68, 'Super Blendable Foundation', 'Super Blendable Foundation', 'upload/pic.jpg', 35, 1800, 28, 10),
(69, 'Washable Bold eye Mascara', ' original washable bold eye mascara', 'upload/l_oreal_paris_voluminous_original_washable_bold_eye_mascara_-tejar_1.jpg', 35, 200, 28, 10),
(70, 'Enchanted Scented Eyeshadow Palette', 'Enchanted Scented Eyeshadow Palette', 'upload/071249371183_t1.webp', 35, 2500, 28, 10),
(71, 'Radiant Serum Foundation with SPF 50', 'Radiant Serum Foundation with SPF 50', 'upload/L_Oreal_Paris_Age_Perfect_Radiant_Serum_Foundation_with_SPF_50_-_Makeup_Stash_Pakistan-2928778.webp', 35, 2300, 28, 10),
(72, 'White Pearl Mala', 'White Pearl Mala', 'upload/11008735.webp', 34, 2500, 24, 10),
(73, 'Pearl Anja Bracelet', 'Pearl Anja Bracelet', 'upload/11113_28f90291-13d4-4e41-818a-42f5743353c2 (1).webp', 34, 3000, 25, 10),
(74, 'Traditional Bracelet', 'Traditional Bracelet', 'upload/img_20220609_011432.jpg', 34, 2000, 25, 10),
(75, 'Grace Bracelet', 'Grace Bracelet', 'upload/Golden-Grace-Cuff-white.webp', 34, 2100, 25, 10),
(76, 'Yarrow Bridal Set', 'Yarrow Bridal Set', 'upload/14149_5198f583-6b63-459d-82f3-e4fae7b15885.webp', 34, 5700, 26, 10),
(77, 'Bridal Set with Red Pearls', 'Bridal Set with Red Pearls', 'upload/BRIDAL-0019.webp', 34, 4500, 26, 10),
(78, 'Royal Bridal Set', 'Royal Bridal Set', 'upload/Royal_bridal_mint_pink_3115334.webp', 34, 4500, 26, 10),
(79, 'Celestial Ring', 'Celestial Ring', 'upload/15273_4c8ef447-cc72-4f38-8182-e52586c63810.avif', 34, 2300, 17, 10),
(80, 'Carnation Flower Ring', 'Carnation Flower Ring', 'upload/CARNATION-FLOWER-RING.webp', 34, 2000, 17, 10),
(81, 'Elegance Ring', 'Elegance Ring', 'upload/15265.webp', 34, 5000, 17, 10),
(82, 'Royal Ring', 'Royal Ring', 'upload/RING-8239.webp', 34, 4800, 17, 10),
(83, 'Ember Glow Rings', 'Ember Glow Rings', 'upload/311145.webp', 34, 2000, 17, 10),
(84, 'Tiny Nose Ring', 'Tiny Nose Ring', 'upload/TinyNoseRing-0012.jpg', 34, 2000, 17, 10),
(85, 'Modern Nose Ring', 'Modern Nose Ring', 'upload/Nose-Ring-0032_Nose-Ring_2157_1-1200x1200.webp', 34, 1000, 17, 10),
(86, 'Unique Earrings', 'Unique Earrings', 'upload/earrings-0407-multi_6a2b2ecf-e645-4451-a063-f35c9bcaa21d.webp', 34, 100, 29, 10),
(87, 'Red Earrings', 'Red Earrings', 'upload/12802.webp', 34, 1400, 29, 10),
(88, 'Blue Earrings', 'Blue Earrings', 'upload/11004448.webp', 34, 1500, 29, 10),
(89, 'Multicolor Earrings', 'Multicolor Earrings', 'upload/EARRINGS-0820.webp', 34, 1600, 29, 10),
(90, 'Multicolor Earrings', 'Multicolor Earrings', 'upload/Silver-Orchid-Elegance-mint-pink.webp', 34, 1800, 29, 10),
(91, 'Heavy Earrings', 'Heavy Earrings', 'upload/EARRINGS-068611005393.jpg', 34, 1800, 29, 10),
(92, 'Sunflower Earrings', 'Sunflower Earrings', 'upload/Earrings-0434-pear-1-1200x1200.webp', 34, 3000, 29, 10),
(93, 'Royal Earrings', 'Royal Earrings', 'upload/11005708.webp', 34, 2800, 29, 10),
(94, 'Gold Earrings', 'Gold Earrings', 'upload/Earrings-0748Champagne.webp', 34, 2400, 29, 10),
(95, 'White Earrings with pearl ', 'White Earrings with pearl ', 'upload/Earrings-0718.webp', 34, 1900, 29, 10),
(97, 'Harbor Necklace', 'Harbor Necklace', 'upload/IMG_8632fs.webp', 34, 6000, 18, 10),
(98, 'Fuchsia Necklace', 'Fuchsia Necklace', 'upload/17757.webp', 34, 5600, 18, 10),
(99, 'Elegance Line Necklace', 'Elegance Line Necklace', 'upload/17244.webp', 34, 6000, 18, 10),
(100, 'Avila Bangles', 'Avila Bangles', 'upload/IMG_77032.webp', 34, 3800, 23, 10),
(101, 'Sunflower Kara', 'Sunflower Kara', 'upload/IMG_77029.webp', 34, 4000, 23, 10),
(102, 'Traditinal Kara Bangles', 'Traditinal Kara Bangles', 'upload/IMG_77028.webp', 34, 3000, 23, 10),
(103, 'Multicolor Bangle', 'Multicolor Bangle', 'upload/IMG_77025.webp', 34, 4000, 23, 10),
(104, 'Unique Bangle', 'Unique Bangle', 'upload/11005335.webp', 34, 4000, 23, 10),
(105, 'Cascading Mala', 'Cascading Mala Necklace', 'upload/17439.webp', 34, 4000, 24, 10),
(106, 'White Pearl Mala', 'White Pearl Mala with black stone', 'upload/NECKLACE-0999-black.webp', 34, 3000, 24, 10),
(107, ' Solara Necklace Set', ' Solara Necklace Set', 'upload/311183_aa77eb76-79d2-40e8-8b52-fd5c502930fe.webp', 34, 5000, 26, 10),
(108, 'Anaya Necklace Set', 'Anaya Necklace Set', 'upload/18145.webp', 34, 4000, 26, 10),
(109, 'Essie , Red Nail Polish', 'Essie , Red Nail Polish', 'upload/640x640.jpg', 35, 300, 20, 10),
(110, 'Essie , Green Nail Polish', 'Essie , Green Nail Polish', 'upload/essie-nail-polish-nail-art-studio-cactus-jelly-front-pack-530.jpg', 35, 500, 20, 10),
(111, 'CITRINE Perfume', 'CITRINE Perfume', 'upload/citrine_1__1.webp', 35, 2700, 21, 10),
(112, 'FANTASY | HIRA MANI', 'FANTASY | HIRA MANI', 'upload/fantasy_f_1_.webp', 35, 2700, 21, 10),
(113, 'BREEZE', 'BREEZE', 'upload/breeze_2__1.webp', 35, 3400, 21, 10),
(114, 'BLOOM', 'BLOOM', 'upload/bloom-01_1.webp', 35, 4000, 21, 10),
(115, 'RUBY', 'RUBY\r\n', 'upload/ruby_3__1.webp', 35, 3800, 21, 10),
(116, 'Rivaj Classy  dark Lipsticks', 'Rivaj Classy  dark Lipsticks', 'upload/2201751_1.webp', 35, 400, 27, 10),
(117, 'Rivaj Classy  Orange Lipsticks', 'Rivaj Classy  Orange Lipsticks', 'upload/1270613_1024x1024.webp', 35, 400, 27, 10),
(118, 'Makeup Fixer', 'Makeup Fixer', 'upload/41nBLpIw8wL._SL500_.jpg', 35, 300, 28, 10),
(119, 'Makeup Remover', 'Makeup Remover', 'upload/51UhLBNIRFL.jpg', 35, 500, 28, 10),
(120, 'Kajalll', 'Kajal', 'upload/kajal3.jpg', 35, 300, 28, 10),
(121, 'Eye Shadow', 'Eye Shadow', 'upload/l-oreal-paris-health-beauty-personal-care-cosmetics-makeup-eye-makeup-eye-shadow-l-oreal-la-palette-gold-eyeshadow-palette-7g-3600523308613-40194886729985_1600x.jpg', 35, 450, 28, 10);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `image_path`) VALUES
(5, '../admin/slider_uploads/banner1.jpg'),
(7, '../admin/slider_uploads/banner2.jpg'),
(8, '../admin/slider_uploads/banner3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `category_id` int(250) NOT NULL,
  `subcat_name` varchar(250) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`category_id`, `subcat_name`, `category_name`, `id`) VALUES
(34, 'Ring', 'Jewellery', 17),
(34, 'Necklace', 'Jewellery', 18),
(35, 'Nail Polish', 'Cosmetics', 20),
(35, 'Fragrance', 'Cosmetics', 21),
(34, 'Bangle', 'Jewellery', 23),
(34, 'Mala', 'Jewellery', 24),
(34, 'Bracelet', 'Jewellery', 25),
(34, 'Bridal Set', 'Jewellery', 26),
(35, 'lipstick', 'Cosmetics', 27),
(35, 'Makeup', 'Cosmetics', 28),
(34, 'Earrings', 'Jewellery', 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `proid` (`proid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `sub_catid` (`catid`),
  ADD KEY `fk_subcat_id` (`subcat_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`proid`) REFERENCES `products` (`Id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`Id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
