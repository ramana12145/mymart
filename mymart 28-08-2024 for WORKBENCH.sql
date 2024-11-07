-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 11:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymartuptodate`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL,
  `aboutus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `aboutus`) VALUES
(1, 'About Mymart'),
(2, 'Careers'),
(3, 'Press Releases');

-- --------------------------------------------------------

--
-- Table structure for table `aboutus1`
--

CREATE TABLE `aboutus1` (
  `id` bigint(20) NOT NULL,
  `aboutus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_line1`, `address_line2`, `city`, `country`, `state`, `zip_code`, `user_id`, `mobile`, `name`) VALUES
(1, 'Dasara Nagar Shegaon', 'Shegaon', 'Shegaon', 'India', 'Maharashtra', '444203', 1, '9284360923', 'Shital Daberao'),
(2, 'Viman Nagar', 'Pune', 'Pune', 'India', 'Maharashtra', '444203', 1, '9309231664', 'Karan Daberao'),
(5, 'Hinjewadi ', 'Phase-1', 'Pune', 'India', 'Maharashtra', '444203', 2, '84763745', 'Karan Daberao'),
(6, 'Hinjewadi ', 'Phase-1', 'Pune', 'India', 'Maharashtra', '444203', 2, '8476374553', 'Karan Daberao'),
(7, 'Dasara Nagar Shegaon', 'Shegaon', 'Shegaon', 'India', 'Maharashtra', '444203', 2, '9284360923', 'Shital Daberao'),
(8, 'Balaji Fail', 'Shegaon', 'Shegaon', 'India', 'Maharashtra', '444203', 7, '8476374553', 'Reshma Mohite'),
(9, 'dd', 'dd', 'ss', 'Russia', 'Adygea', '234dd', 8, '9876543235', 'k sai venkat'),
(11, 'aa', 'aa', 'qqqq', 'Australia', 'Australian Capital Territory', '02334', 8, '9876543235', 'k sai venkat'),
(12, 'qq', 'aa', 'chittoor', 'india', 'Ahdhar pradesh', '11999', 14, '9876543235', 'k sai venkat'),
(13, '#113', 'Madhapur', 'Hyderabad', 'India', 'Telangana', '500081', 15, '9100400110', 'Ramakrishna'),
(14, '#113', 'Madhapur', 'Hyderabad', 'India', 'Telangana', '500081', 15, '9100400110', 'Ramakrishna'),
(15, 'Madhapur', '#113', 'Hyderabad', 'India', 'Telangana', '500081', 17, '9100400110', 'Ramakrishna'),
(17, 'HYD', 'HYD', 'HYD', 'India', 'Andhra Pradesh', '50020', 18, '8519936862', 'R NIKHIL RAJ'),
(18, 'HYD', 'HYD', 'HYD', 'India', 'Andhra Pradesh', '50020', 19, '8519936862', 'AKHIL RAJ');

-- --------------------------------------------------------

--
-- Table structure for table `analytics_fields`
--

CREATE TABLE `analytics_fields` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_image`
--

CREATE TABLE `card_image` (
  `id` int(11) NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_item`
--

CREATE TABLE `card_item` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `card_item`
--

INSERT INTO `card_item` (`id`, `image_url`, `title`, `category`) VALUES
(1, 'card-image-grocery.jpg', 'Get groceries without going outside', 'Grocery'),
(2, 'card-image-beverages.jpg', 'Refreshment Revolutionized |\r\n Taste the Buzz', 'Cool Drinks & Juices'),
(3, 'card-image-fruits-and-vegitables.jpg', 'Fresh from the farm, straight to your plate', 'Fruits & Vegitables'),
(4, 'card-image-home-utilities.jpg', 'Starting from 99 | All your home Utilities', 'Cleaning Essentials');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel_image`
--

CREATE TABLE `carousel_image` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carousel_image`
--

INSERT INTO `carousel_image` (`id`, `image_url`, `category`) VALUES
(1, 'carousel-half-price.jpg', 'Baby Care'),
(2, 'carousl-basket-must-haves.jpg', 'Atta, Rice & Dal'),
(3, 'carousel-just-pop-it.jpg', 'Break Fast & Instant Food'),
(4, 'carousel-my-skin-nourishers.jpg', 'Personal Care');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(679, 'Dairy, Bread & Eggs'),
(680, 'Fruits & Vegetables'),
(681, 'Cold Drinks & Juices'),
(682, 'Snacks & Munchies'),
(683, 'Breakfast & Instant Food'),
(684, 'Sweet Tooth'),
(685, 'Bakery & Biscuits'),
(686, 'Tea, Coffee & Health Drink'),
(687, 'Atta, Rice & Dal'),
(688, 'Masala, Oil & More'),
(689, 'Sauces & Spreads'),
(690, 'Chicken, Meat & Fish'),
(691, 'Organic & Healthy Living '),
(692, 'Baby Care'),
(693, 'Pharma & Wellness'),
(694, 'Cleaning Essentials'),
(695, 'Home & office'),
(696, 'Pet Care'),
(697, 'Personal Care'),
(698, 'Paan Corner'),
(699, 'Dairy & Eggs'),
(700, 'Bread & Pav'),
(701, 'Fresh Vegetables'),
(702, 'Fresh Fruits'),
(703, 'Soft Drinks'),
(704, 'Fruit juices & Syrups'),
(705, 'Chips & Crisps'),
(706, 'Namkeen'),
(707, 'Milk & Curd Products'),
(708, 'Egg & Related Products'),
(709, 'Bread & Related Products'),
(710, 'Leafy Vegetables'),
(711, 'Ground Vegetables'),
(712, 'Seasonal Fruits'),
(713, 'Citrus Fruits'),
(714, 'Coco-cola & Products'),
(715, 'Real & Products');

-- --------------------------------------------------------

--
-- Table structure for table `consumerpolicy`
--

CREATE TABLE `consumerpolicy` (
  `id` bigint(20) NOT NULL,
  `consumerpolicy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `consumerpolicy`
--

INSERT INTO `consumerpolicy` (`id`, `consumerpolicy`) VALUES
(1, 'Security'),
(2, 'Privacy'),
(3, 'Grievence Redressal');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `email`, `facebook`, `instagram`, `linkedin`, `message`, `name`, `phone`, `subject`, `twitter`) VALUES
(1, 'sailaja@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/login', NULL, 'Ms. Sailaja ', '8574637333', NULL, 'https://twitter.com/?lang=en');

-- --------------------------------------------------------

--
-- Table structure for table `customersupport`
--

CREATE TABLE `customersupport` (
  `id` bigint(20) NOT NULL,
  `customersupport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customersupport`
--

INSERT INTO `customersupport` (`id`, `customersupport`) VALUES
(1, 'Feedback'),
(2, 'Contact Us'),
(3, 'Become a Seller'),
(4, 'Seller FAQs');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `id` int(11) NOT NULL,
  `discount` double NOT NULL,
  `end_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloadapps`
--

CREATE TABLE `downloadapps` (
  `id` bigint(20) NOT NULL,
  `applestore` varchar(255) DEFAULT NULL,
  `googleplaystore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `downloadapps`
--

INSERT INTO `downloadapps` (`id`, `applestore`, `googleplaystore`) VALUES
(1, 'download-app-store.svg', 'download-google-play-store.svg');

-- --------------------------------------------------------

--
-- Table structure for table `dropdown_item`
--

CREATE TABLE `dropdown_item` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `nav_link_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dropdown_item`
--

INSERT INTO `dropdown_item` (`id`, `item_name`, `nav_link_id`) VALUES
(28, 'Dairy, Bread & Eggs', 2),
(29, 'Fruits & Vegetables', 2),
(30, 'Cool Drinks & Juices', 2),
(31, 'Snacks & Munchies', 2),
(32, 'Breakfast & Instant Food', 2),
(33, 'Sweet Tooth', 2),
(34, 'Bakery & Biscuits', 2),
(35, 'Tea, Coffee and Health Drink', 2),
(36, 'Atta, Rice & Dal', 2),
(37, 'Pooja Items ', 2),
(38, 'Masala, Oil & More', 2),
(39, 'Sauces & Spreads', 2),
(40, 'Chicken, Meat & Fish', 2),
(41, 'Organic & Healthy Living', 2),
(42, 'Baby Care', 2),
(43, 'Pharma & Wellness', 2),
(44, 'Cleaning Essentials ', 2),
(45, 'Home & Office', 2),
(46, 'Pet Care', 2),
(47, 'Personal Care', 2),
(48, 'Paan Corner', 2);

-- --------------------------------------------------------

--
-- Table structure for table `drop_child`
--

CREATE TABLE `drop_child` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `dropdown_item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `drop_child`
--

INSERT INTO `drop_child` (`id`, `item_name`, `dropdown_item_id`) VALUES
(98, 'Dairy & Eggs', 28),
(99, 'Bread & Pav', 28),
(100, 'Fresh Vegetables ', 29),
(101, 'Fresh Fruits', 29),
(102, 'Soft Drinks', 30),
(103, 'Fruit Juices & Syrups', 30),
(104, 'Chips & Crisps', 31),
(105, 'Namkeen', 31),
(106, 'Frozen Veg Snacks', 32),
(107, 'Instant Noodles ', 32),
(108, 'Indian Sweets & Chocolates', 33),
(111, 'Ice Cream & Frozen Desert', 33),
(112, 'Cookies & Cream Biscuits', 34),
(113, 'Rusk & Wafers ', 34),
(114, 'Tea & Flavored Tea ', 35),
(115, 'Coffee & Hot Chocolate', 35),
(116, 'Atta & Rice', 36),
(118, 'Dal, Poha & Other Grains', 36),
(119, 'Powdered Spices ', 38),
(120, 'Salt, Sugar & Oils', 38),
(121, 'Tomato & Chilli Ketchup', 39),
(122, 'Jam & Spreads', 39),
(123, 'Chicken & Frozen Snacks', 40),
(124, 'Fish & Sea Food', 40),
(125, 'Organic Salt, Sugar & Honey', 41),
(126, 'Dry Fruits, Nuts & Seeds', 41),
(127, 'Diapers & more', 42),
(128, 'Skin & Hair Care', 42),
(129, 'Vitamins & Daily Nutrition', 43),
(130, 'Cough & Cold', 43),
(131, 'Cleaners & More', 44),
(132, 'Laundry Things', 44),
(133, 'Kitchen & Dining Needs', 45),
(134, 'Audio & Accessories ', 45),
(135, 'Cat & Dog Needs', 46),
(136, 'Accessories & Food Products', 46),
(137, 'Face & Hair Products', 47),
(138, 'Bath & Beauty Products', 47),
(139, 'Paan Masala & Smoking', 48),
(140, 'Lighters & Accessories ', 48);

-- --------------------------------------------------------

--
-- Table structure for table `drop_child_of_child`
--

CREATE TABLE `drop_child_of_child` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `drop_child_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `drop_child_of_child`
--

INSERT INTO `drop_child_of_child` (`id`, `item_name`, `drop_child_id`) VALUES
(419, 'Milk & Curd Products', 98),
(420, 'Egg & Related Products', 98),
(421, 'Bread & Related Products', 99),
(422, 'Leafy Vegetables', 100),
(423, 'Ground Vegetables', 100),
(424, 'Seasonal Fruits', 101),
(425, 'Citrus Fruits', 101),
(426, 'Coca-Cola & Products', 102),
(427, 'Real & Products', 103);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `answer`, `question`) VALUES
(2, 'my mart is a good showping mall and it is used to buy the products.', 'what is my mart ?'),
(3, 'My Mart', 'What is my store name?');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `categroy` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password_token`
--

CREATE TABLE `forgot_password_token` (
  `id` bigint(20) NOT NULL,
  `expire_time` datetime(6) NOT NULL,
  `is_used` bit(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `forgot_password_token`
--

INSERT INTO `forgot_password_token` (`id`, `expire_time`, `is_used`, `token`, `user_id`) VALUES
(1, '2024-05-07 18:26:39.450801', b'0', '06987407-2728-4ff8-b4a1-ecbf88ed6842', 1),
(2, '2024-05-07 18:30:15.551314', b'0', '32e4ca1e-883b-414f-a214-0dc941daffc7', 1),
(52, '2024-05-07 18:34:22.709647', b'0', '38a9dc24-6e3e-4ebe-adba-11b21d47a5c4', 1),
(53, '2024-05-07 18:38:18.207647', b'0', 'e069342c-01b6-4113-ac93-232dff58a580', 1),
(102, '2024-05-08 10:14:16.592734', b'0', '5668e563-7b0a-4c24-9d38-552710571b0a', 1),
(152, '2024-05-08 10:16:58.275926', b'1', '27879244-15f0-44aa-81d2-ccd622bb5a9c', 1),
(202, '2024-05-08 12:30:40.392620', b'1', '8196009a-733a-4ce0-bdd4-c1d84858ac30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password_token_seq`
--

CREATE TABLE `forgot_password_token_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `forgot_password_token_seq`
--

INSERT INTO `forgot_password_token_seq` (`next_val`) VALUES
(301);

-- --------------------------------------------------------

--
-- Table structure for table `grand_child`
--

CREATE TABLE `grand_child` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `drop_child_of_child_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grocerycard`
--

CREATE TABLE `grocerycard` (
  `id` bigint(20) NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keepintouch`
--

CREATE TABLE `keepintouch` (
  `id` bigint(20) NOT NULL,
  `facebookimage` varchar(255) DEFAULT NULL,
  `googleimage` varchar(255) DEFAULT NULL,
  `instargramiamge` varchar(255) DEFAULT NULL,
  `linkedinimage` varchar(255) DEFAULT NULL,
  `ximage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `keepintouch`
--

INSERT INTO `keepintouch` (`id`, `facebookimage`, `googleimage`, `instargramiamge`, `linkedinimage`, `ximage`) VALUES
(1, 'keep-in-touch-facebook.png', 'keep-in-touch-google.png', 'keep-in-touch-instagram.png', 'keep-in-touch-linkedin.png', 'keep-in-touch-x.png');

-- --------------------------------------------------------

--
-- Table structure for table `mailus`
--

CREATE TABLE `mailus` (
  `id` bigint(20) NOT NULL,
  `mailus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mailus`
--

INSERT INTO `mailus` (`id`, `mailus`) VALUES
(1, 'Mymart Internet Private Limited, Buildings southzone, Outer Ring Road, Gachibowli, Hyderabad, Telangana,India - 500021');

-- --------------------------------------------------------

--
-- Table structure for table `movingcard`
--

CREATE TABLE `movingcard` (
  `id` int(11) NOT NULL,
  `brand1` varchar(255) DEFAULT NULL,
  `brand2` varchar(255) DEFAULT NULL,
  `brand3` varchar(255) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `price1` varchar(255) DEFAULT NULL,
  `price2` varchar(255) DEFAULT NULL,
  `price3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movingcard`
--

INSERT INTO `movingcard` (`id`, `brand1`, `brand2`, `brand3`, `description1`, `description2`, `description3`, `image1`, `image2`, `image3`, `name1`, `name2`, `name3`, `price1`, `price2`, `price3`) VALUES
(1, 'Dell', 'HP', 'Acer', 'Very very good product', 'very good laptop ', 'Very very good laptop', 'dell laptop.webp', 'hp.webp', 'acer laptop.webp', 'Dell Laptop', 'HP Laptop', 'Acer Laptop', '45000', '56000', '40000'),
(2, 'Addidas', 'Puma', 'Kotty', 'Very very good product', 'very good Tshirt', 'Very very good T shirt', 'T shirt.webp', 't shirt2.webp', 'T shirt1.webp', 'Black Tshirt', 'Pink Tshirt', 'T shirt', '500', '600', '300');

-- --------------------------------------------------------

--
-- Table structure for table `nav_link`
--

CREATE TABLE `nav_link` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nav_link`
--

INSERT INTO `nav_link` (`id`, `item_name`) VALUES
(1, 'Home'),
(2, 'Categories'),
(3, 'About'),
(11, 'Contact'),
(12, 'Deals'),
(14, 'FAQs');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_transaction_id` varchar(255) DEFAULT NULL,
  `shipping_charges` double NOT NULL,
  `shipping_method` enum('STANDARD','EXPRESS','NEXT_DAY','SAME_DAY') NOT NULL,
  `status` enum('PLACED','PENDING','ACCEPTED','SHIPPED','DELIVERED','CANCELLED') NOT NULL,
  `subtotal` double NOT NULL,
  `total_amount` double NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `delivery_time`, `order_date`, `order_number`, `payment_transaction_id`, `shipping_charges`, `shipping_method`, `status`, `subtotal`, `total_amount`, `address_id`, `user_id`) VALUES
(1, '260.0', '2-3 business days', '2024-06-07 10:07:27.258970', 'COD1717735047290', 'COD', 15, 'STANDARD', 'PLACED', 244.99999999999997, 260, 2, 1),
(2, '315.0', '2-3 business days', '2024-06-07 10:16:42.606163', 'COD1717735602656', 'COD', 15, 'STANDARD', 'PLACED', 300, 315, 1, 1),
(3, '560.0', '2-3 business days', '2024-06-07 10:19:24.000000', 'order_OJkECHJyVzNiyI', 'pay_OJkENdlOXdPfO8', 15, 'STANDARD', 'ACCEPTED', 545, 560, 2, 1),
(4, '315.0', '2-3 business days', '2024-06-18 15:21:53.000000', 'order_OOBG0yYBUSXfOH', 'pay_OOBG9KE4dV9SB9', 15, 'STANDARD', 'ACCEPTED', 300, 315, 9, 8),
(5, '260.0', '2-3 business days', '2024-06-25 17:40:52.000000', 'COD1719317452705', 'COD', 15, 'STANDARD', 'ACCEPTED', 244.99999999999997, 260, 13, 15),
(6, '404.0', '2-3 business days', '2024-06-26 12:02:40.000000', 'COD1719383560897', 'COD', 15, 'STANDARD', 'ACCEPTED', 389, 404, 14, 15),
(7, '177250.0', '2-3 business days', '2024-07-09 11:09:04.000000', 'COD1720503544718', 'COD', 15, 'STANDARD', 'DELIVERED', 177235, 177250, 13, 15),
(8, '45.0', '2-3 business days', '2024-07-16 12:34:21.000000', 'COD1721113461717', 'COD', 15, 'STANDARD', 'ACCEPTED', 30, 45, 13, 15),
(9, '55.0', '2-3 business days', '2024-07-16 12:36:29.000000', 'COD1721113589370', 'COD', 15, 'STANDARD', 'ACCEPTED', 40, 55, 14, 15),
(10, '45.0', '2-3 business days', '2024-07-22 14:30:44.000000', 'COD1721638844859', 'COD', 15, 'STANDARD', 'PLACED', 30, 45, 14, 15),
(11, '55.0', '2-3 business days', '2024-07-23 11:23:06.000000', 'COD1721713986978', 'COD', 15, 'STANDARD', 'PLACED', 40, 55, 13, 15),
(12, '85.0', '2-3 business days', '2024-07-23 14:08:29.000000', 'COD1721723909759', 'COD', 15, 'STANDARD', 'PLACED', 70, 85, 13, 15),
(13, '45015.0', '2-3 business days', '2024-07-26 11:02:23.000000', 'COD1721971943848', 'COD', 15, 'STANDARD', 'PLACED', 45000, 45015, 15, 17),
(14, '13203.0', '2-3 business days', '2024-07-26 15:37:01.000000', 'COD1721988421642', 'COD', 15, 'STANDARD', 'PLACED', 13188, 13203, 14, 15),
(15, '1353698.0', '2-3 business days', '2024-07-31 13:57:19.000000', 'COD1722414439125', 'COD', 15, 'STANDARD', 'PLACED', 1353683, 1353698, 13, 15),
(16, '65.0', '2-3 business days', '2024-08-02 11:13:35.398985', 'COD1722577415417', 'COD', 15, 'STANDARD', 'PLACED', 50, 65, 9, 8),
(17, '95.0', '2-3 business days', '2024-08-02 11:16:19.260683', 'COD1722577579286', 'COD', 15, 'STANDARD', 'PLACED', 80, 95, 9, 8),
(18, '45.0', '2-3 business days', '2024-08-02 12:02:22.484428', 'COD1722580342512', 'COD', 15, 'STANDARD', 'PLACED', 30, 45, 9, 8),
(19, '708.0', '2-3 business days', '2024-08-02 14:30:52.975769', 'COD1722589252998', 'COD', 15, 'STANDARD', 'PLACED', 693, 708, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passwordresettoken`
--

CREATE TABLE `passwordresettoken` (
  `id` int(11) NOT NULL,
  `expiry_date_time` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `status` enum('PENDING','COMPLETED','FAILED','CANCELLED') NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popup`
--

CREATE TABLE `popup` (
  `id` int(11) NOT NULL,
  `popupdata` varchar(255) DEFAULT NULL,
  `popupimage` varchar(255) DEFAULT NULL,
  `popupmarqueedata` varchar(255) DEFAULT NULL,
  `popupofferdata` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `popup`
--

INSERT INTO `popup` (`id`, `popupdata`, `popupimage`, `popupmarqueedata`, `popupofferdata`) VALUES
(2, '40% off', 'logo.jpeg', 'Mymart technology drives path-breaking, customer-focused innovation that makes high quality products accessible to Indian shoppers, besides making the online shopping experience convenient, intuitive and seamless.', ' Limited Time Offer! \r\n\r\nGet 40% OFF all Fiction Books Today!\r\n\r\nHurry, dive into your next adventure at Novel Haven!');

-- --------------------------------------------------------

--
-- Table structure for table `price_range`
--

CREATE TABLE `price_range` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `id` int(11) NOT NULL,
  `allproducts` varchar(255) DEFAULT NULL,
  `electronics` varchar(255) DEFAULT NULL,
  `fashions` varchar(255) DEFAULT NULL,
  `footware` varchar(255) DEFAULT NULL,
  `furniture` varchar(255) DEFAULT NULL,
  `grocery` varchar(255) DEFAULT NULL,
  `mobiles` varchar(255) DEFAULT NULL,
  `personalcare` varchar(255) DEFAULT NULL,
  `stationary` varchar(255) DEFAULT NULL,
  `food` varchar(255) DEFAULT NULL,
  `games` varchar(255) DEFAULT NULL,
  `gifts` varchar(255) DEFAULT NULL,
  `toys` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `productcategory_images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discounted_price` double NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `rating_count` int(11) NOT NULL,
  `image_file_name1` varchar(255) DEFAULT NULL,
  `image_file_name2` varchar(255) DEFAULT NULL,
  `image_file_name3` varchar(255) DEFAULT NULL,
  `image_file_name4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand`, `created_at`, `description`, `discounted_price`, `image_file_name`, `name`, `price`, `category_id`, `rating_count`, `image_file_name1`, `image_file_name2`, `image_file_name3`, `image_file_name4`) VALUES
(195, 'The Health Factory', '2024-08-27 15:16:34.000000', 'Enriched with the goodness of the finest and healthiest ingredients. Our Zero maida bread is made of 100% whole wheat grains and nothing artificial, the healthiest way to start your day.', 50, '1724751994090_bread image 1.png', 'The Health Factory Zero Maida Whole Wheat Bread', 50, 709, 0, 'bread image 2.png', 'bread image 3.png', 'bread image 4.png', 'bread image 5.png'),
(196, 'Kellogg\'s', '2024-08-27 15:19:41.000000', 'Nourishing & Solid Breakfast/Snack: Kellogg’s Chocos Moons & Stars is a nourishing & solid breakfast/evening snack option for kids. It makes milk chocolaty & crunchy and fills your kid’s tummy, giving them the Energy to stay active & fun! Packed with Nutrients: Kellogg’s Chocos Moons & Stars is made with Whole Grain & is source of Fibre that fills your kid’s tummy. It is high in Calcium & Protein that fuel your child’s growing body. It has 10 essential vitamins & minerals like Iron, Zinc, B Vitamins & Vitamin C for your active kids. Gives your kid 66% Calcium & 31% Protein of a Day’s Requirement: 30g Kellogg’s Chocos Moons & Stars + 200ml cow’s milk provides 66% of the day’s RDA for Calcium and 31% of the day’s RDA for Protein. Makes Milk Chocolaty & Crunchy: Kellogg’s Chocos Moons & Stars makes milk chocolaty and crunchy so your kid will love it!', 30, '1724752181145_chocos image1.png', 'Kellogg\'s Multigrain Chocos Moons & Stars', 30, 707, 0, 'chocos image2.png', 'chocos image3.png', 'chocos image4.png', 'chocos image5.png'),
(197, 'Coco-cola', '2024-08-27 15:27:52.000000', 'Drive away all your Monday blues and turn your Fridays into Friyays with Maaza® mango drink. Synonymous with the very spirit of mangoes, Maaza® lets you enjoy the moments of carefree indulgence. This mango drink is universally loved for its taste, color, thickness, and wholesome properties. Made from real mango pulp of hand-picked real Alphonso mangoes, this ready-to-serve fruit drink offers a fulfilling experience down to the last sip.', 40, '1724752672354_maaza image1.png', 'Maaza Mango Drink', 40, 714, 0, 'maaza image2.png', 'maaza image3.png', 'maaza image4.png', 'maaza image5.png'),
(198, 'Fresh Fruits', '2024-08-27 15:30:12.000000', 'Pomegranate, the rich juicy fruit is known to be one of the healthiest fruits. The inside of the fruit contains hundreds of juicy and edible seeds. Pomegranate seeds can either be eaten as is or be processed into pomegranate juice.', 120, '1724752812129_pomegranate image1.png', 'Pomegranate - Medium', 120, 713, 0, 'pomegranate image2.png', 'pomegranate image3.png', 'pomegranate image4.png', 'pomegranate image5.png'),
(199, 'Fresh Fruits', '2024-08-27 15:40:11.000000', 'Royal Gala apple is a popular variety known for its sweet and crisp flavor. It has a yellow-orange skin with red striping and a juicy, firm texture. Royal Gala apples are ideal for snacking due to their balanced sweetness and refreshing taste. They hold their shape well when cooked, making them suitable for pies, crisps, and sauces.', 145, '1724753411612_apple image1.avif', 'Royal Gala Apple', 145, 712, 0, 'apple image2.avif', 'apple image4.avif', 'apple image3.avif', 'apple image5.avif'),
(200, 'Fresh Vegetables', '2024-08-27 15:46:31.000000', 'Enjoy the sweet, crisp flavor of Orange Carrots. Packed with beta-carotene, vitamins, and antioxidants, they promote eye health and boost immunity. Perfect for snacking, salads, and cooking, these carrots add a nutritious touch to your meals.', 54, '1724753791909_carrot image1.avif', 'Orange Carrot', 54, 711, 0, 'carrot image2.avif', 'carrot image3.avif', 'carrot image2.avif', 'carrot image3.avif');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating_value` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rating` double NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `date_time` datetime(6) DEFAULT NULL,
  `rating_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `email`, `message`, `name`) VALUES
(1, 'sdaberao161@gmail.com', 'Hello', 'Shital Daberao'),
(2, 'sai@com', 'eeeee', 'k sai venkat'),
(3, 'sai@nn', 'dddd', 'sai'),
(4, 'sai@sai', '1234', 'sai'),
(5, 'sai@sai', 'sss', 'sai'),
(6, 'sai@gmail.com', 'sssss', 'k sai venkat'),
(7, 'sai@yahoo.com', 'ssss@AAS345565678776', 'k sai venkat'),
(8, 'pavan@gmail.com', 'hi', '!@#$%^&*');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `review_text` varchar(1000) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `review_text`, `user_id`) VALUES
(1, 1, 'good product', 1),
(2, 10, '', 1),
(3, 11, 'good', 1),
(4, 16, 'good', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roaddress`
--

CREATE TABLE `roaddress` (
  `id` bigint(20) NOT NULL,
  `roaddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roaddress`
--

INSERT INTO `roaddress` (`id`, `roaddress`) VALUES
(1, 'Mymart internet private limited,\r\nOuter Ring Road, Gachibowli, Hyderabad, Telengana, India - 500021\r\nTelephone: 044-4567-890');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `contact_no`, `email`, `name`, `password`, `role`) VALUES
(1, '9267894576', 'sdaberao161@gmail.com', 'Shital', '$2a$10$5OOg2apVy51veRbQfKHHlunIwYqsnjYYVRC3C8ylxMSSAbaoiHVlu', 'USER'),
(2, '9309231664', 'karan161@gmail.com', 'Karan', '$2a$10$u6MK2dSDzo1dDeEn.u70f.0lJcxRU1xeH8rzVqgn7LQUWZxpAYyeW', 'USER'),
(3, '2345678', 'admin161@gmail.com', 'Admin', '$2a$10$Ub8tiJGk0uuESNtWQjI8k.U0SAWeJSNMXm6s9yWLy8PJh5Gwrme6O', 'ADMIN'),
(4, '9284360923', 'gauri@gmail.com', 'Gauri ', '$2a$10$JNIkuhX4ZuRMbeAud0OXDONsSsEXBDu6UhlHC06kdMGnSKUzS9h72', 'USER'),
(6, '8945673824', 'shruti161@gmail.com', 'Shruti Tapre', '$2a$10$Ad/Jed5oxNhLHdrrE9qWBOFlgo72bchSOLXDGehh3MRWHI7VMxDIO', 'USER'),
(7, '9583756273', 'reshma161@gmail.com', 'Reshma Mohite', '$2a$10$rgDTE9/mF/eMWsfyJTiwNu1mSOIAYyJ.hJEWDj5J9HU7onE4C5AjK', 'USER'),
(8, '9878986783', 'sai@gmail.com', 'sai', '$2a$10$ZAQ2BbKwyO6.RaSYRWJ0n.WsjAaIEZBPpojxU1IvWngjJlpw.wQSe', 'USER'),
(9, '9878986789', 'venkat@gmail.com', 'venkat', '$2a$10$jDtDmkbnUZgKJry6jLwjneFIJcmwRGONhv0XMb1Xy49DtDLGI7I1O', 'ADMIN'),
(10, '1234567891', 'giri@gmail.com', 'giri', '$2a$10$d5eJ0g30KZPtNUIMWyRyQOuWNmFuPICyg3GGQ1Jigc5lQNe59B10i', 'USER'),
(11, '12345678', 'iphone@gmail.com', 'iphone', '$2a$10$OwecSXRxP8gmITjR2b5JJuYrrpnm2OAijajyFGOkqpFwt02vCxA7e', 'USER'),
(12, '9182382702', 'yeswanth@gmail.com', 'yeswanth', '$2a$10$z6bIf2hj1JSj.hfjzNm7D.rwfFJ8qkuzH4CxLaZgh9Qwm1s6gTkAm', 'USER'),
(13, '9878986789', 'hemanth@gmail.com', 'sai', '$2a$10$9SV00ryKtGQS4l58eVXBR.pVeHm4GAe3BITAi5rAImWCd5lBdb4A6', 'USER'),
(14, '9878986789', 'saivenkat@gmail.com', 'ksaivenkat', '$2a$10$VdNGnU1EmYzWjhzp2WozZuQRPV9VSuLk0w8Y9iGv0NIQkHbBKIg5C', 'USER'),
(15, '9100400110', 'ramakrishna@gmail.com', 'Rk', '$2a$10$lEkiPARA9Ckk10X8c4eMjeLTp2srIVLTqnpEVYz2gKJBqXbW9gXoG', 'USER'),
(16, '9876543210', 'mymart@gmail.com', 'MyMart', '$2a$10$n6pn4anCHk1ujHf7tpv2cOKHupb1aqpMn89nEQZRs.TWCPi1AuuZ.', 'ADMIN'),
(17, '9100400110', 'ramakrishna.aamuru@gmail.com', 'Ramakrishna', '$2a$10$10G9DSFq3Vjyjf8I2gprXuEDBAD4DXkgY5z9yNZ3BX7fLIBnKpyt.', 'USER'),
(18, '8519936862', 'nikhilrajsbp@gmail.com', 'R NIKHIL RAJ', '$2a$10$NGc1RRI0ntwO0hdh0jbGWu7d4CVrtzSzCSwLIlCV6hRVJVlzC14MS', 'USER'),
(19, '8519936862', 'nikhilrraajj@gmail.com', 'AKHIL RAJ', '$2a$10$5qoyUlk3pYJbBRMQmCroZOVzgai021VirkpCaUKRdqRBaFY9wVIry', 'USER'),
(20, '8519936862', 'ramesh@gmail.com', 'Ramesh', '$2a$10$ipkVT1c7uYTgDVZWt01rF.4Tnd2ZAl9oczXCPh7uZZwPjyRvy2DJK', 'ADMIN'),
(21, '9872459124', 'mat@gmail.com', 'mat', '$2a$10$DOZ7esFvQdC.lWK.bXLqBOFZe2pZt1ox2Ri.WbDAco9G/m6GnLtuq', 'USER'),
(22, '9872459123', 'lohith@gmail.com', 'lohith', '$2a$10$2mvDOUowDu8UYU2C5U7O2ufOMlazMO0ndwyEyo7sViYGXklZ5wDnu', 'USER'),
(23, '9872459125', 'matadmin@gmail.com', 'matadmin', '$2a$10$dcQUkJRGvsvqab3xV1mz7.IkdpVvk/ljuMfMUh8w1qi/XRgK42el2', 'ADMIN'),
(24, '8297924546', 'parthu@gmail.com', 'parthu', '$2a$10$RXpJg0tZW3UeLGw2hEtKJ.LY58qcZsfFnY/NcghC5h65ym6o4pDs6', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutus1`
--
ALTER TABLE `aboutus1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1fa36y2oqhao3wgg2rw1pi459` (`user_id`);

--
-- Indexes for table `analytics_fields`
--
ALTER TABLE `analytics_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_image`
--
ALTER TABLE `card_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_item`
--
ALTER TABLE `card_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnphouyn51yxd4nt78e0yg07y5` (`category_id`);

--
-- Indexes for table `carousel_image`
--
ALTER TABLE `carousel_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`),
  ADD KEY `FK709eickf3kc0dujx3ub9i7btf` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumerpolicy`
--
ALTER TABLE `consumerpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customersupport`
--
ALTER TABLE `customersupport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_asan79y5wqxhw68jg33grlp9q` (`product_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloadapps`
--
ALTER TABLE `downloadapps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dropdown_item`
--
ALTER TABLE `dropdown_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKejtjxd64cymu0panui05y4240` (`nav_link_id`);

--
-- Indexes for table `drop_child`
--
ALTER TABLE `drop_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK45lmqrkneaakgdcxosc7m80vm` (`dropdown_item_id`);

--
-- Indexes for table `drop_child_of_child`
--
ALTER TABLE `drop_child_of_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5i3ylk0gglpxq2f1taf7u949g` (`drop_child_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password_token`
--
ALTER TABLE `forgot_password_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkxxrg17soav77oms4657hpvec` (`user_id`);

--
-- Indexes for table `grand_child`
--
ALTER TABLE `grand_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKspqt188208vk1iibe5naj1ydc` (`drop_child_of_child_id`);

--
-- Indexes for table `grocerycard`
--
ALTER TABLE `grocerycard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp73fx1t6s8sibn4brxnl726sw` (`category_id`);

--
-- Indexes for table `keepintouch`
--
ALTER TABLE `keepintouch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailus`
--
ALTER TABLE `mailus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movingcard`
--
ALTER TABLE `movingcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav_link`
--
ALTER TABLE `nav_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nthkiu7pgmnqnu86i2jyoe2v7` (`order_number`),
  ADD KEY `FKhlglkvf5i60dv6dn397ethgpt` (`address_id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  ADD KEY `FKc5uhmwioq5kscilyuchp4w49o` (`product_id`);

--
-- Indexes for table `passwordresettoken`
--
ALTER TABLE `passwordresettoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_9dbcvg1tus9vsxrly63i6l16n` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mf7n8wo2rwrxsd6f3t9ub2mep` (`order_id`);

--
-- Indexes for table `popup`
--
ALTER TABLE `popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_range`
--
ALTER TABLE `price_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1cf90etcu98x1e6n9aks3tel3` (`category_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKfjilrxil341ybt4863pqsiwo1` (`product_id`,`user_id`),
  ADD KEY `FKb3354ee2xxvdrbyq9f42jdayd` (`user_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roaddress`
--
ALTER TABLE `roaddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6p7qhvy1bfkri13u29x6pu8au` (`product_id`),
  ADD KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aboutus1`
--
ALTER TABLE `aboutus1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `analytics_fields`
--
ALTER TABLE `analytics_fields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_image`
--
ALTER TABLE `card_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_item`
--
ALTER TABLE `card_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `carousel_image`
--
ALTER TABLE `carousel_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT for table `consumerpolicy`
--
ALTER TABLE `consumerpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customersupport`
--
ALTER TABLE `customersupport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downloadapps`
--
ALTER TABLE `downloadapps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dropdown_item`
--
ALTER TABLE `dropdown_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `drop_child`
--
ALTER TABLE `drop_child`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `drop_child_of_child`
--
ALTER TABLE `drop_child_of_child`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grand_child`
--
ALTER TABLE `grand_child`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grocerycard`
--
ALTER TABLE `grocerycard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keepintouch`
--
ALTER TABLE `keepintouch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mailus`
--
ALTER TABLE `mailus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movingcard`
--
ALTER TABLE `movingcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nav_link`
--
ALTER TABLE `nav_link`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `passwordresettoken`
--
ALTER TABLE `passwordresettoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popup`
--
ALTER TABLE `popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price_range`
--
ALTER TABLE `price_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roaddress`
--
ALTER TABLE `roaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `FK1fa36y2oqhao3wgg2rw1pi459` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carousel`
--
ALTER TABLE `carousel`
  ADD CONSTRAINT `FKnphouyn51yxd4nt78e0yg07y5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK709eickf3kc0dujx3ub9i7btf` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deal`
--
ALTER TABLE `deal`
  ADD CONSTRAINT `FK7kjde84q4x9cpew4tu8r9x9gq` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `dropdown_item`
--
ALTER TABLE `dropdown_item`
  ADD CONSTRAINT `FKejtjxd64cymu0panui05y4240` FOREIGN KEY (`nav_link_id`) REFERENCES `nav_link` (`id`);

--
-- Constraints for table `drop_child`
--
ALTER TABLE `drop_child`
  ADD CONSTRAINT `FK45lmqrkneaakgdcxosc7m80vm` FOREIGN KEY (`dropdown_item_id`) REFERENCES `dropdown_item` (`id`);

--
-- Constraints for table `drop_child_of_child`
--
ALTER TABLE `drop_child_of_child`
  ADD CONSTRAINT `FK5i3ylk0gglpxq2f1taf7u949g` FOREIGN KEY (`drop_child_id`) REFERENCES `drop_child` (`id`);

--
-- Constraints for table `forgot_password_token`
--
ALTER TABLE `forgot_password_token`
  ADD CONSTRAINT `FKkxxrg17soav77oms4657hpvec` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `grand_child`
--
ALTER TABLE `grand_child`
  ADD CONSTRAINT `FKspqt188208vk1iibe5naj1ydc` FOREIGN KEY (`drop_child_of_child_id`) REFERENCES `drop_child_of_child` (`id`);

--
-- Constraints for table `grocerycard`
--
ALTER TABLE `grocerycard`
  ADD CONSTRAINT `FKp73fx1t6s8sibn4brxnl726sw` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKhlglkvf5i60dv6dn397ethgpt` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FKc5uhmwioq5kscilyuchp4w49o` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `passwordresettoken`
--
ALTER TABLE `passwordresettoken`
  ADD CONSTRAINT `FKky4yy1iru766swgx0f2v0iv11` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FKlouu98csyullos9k25tbpk4va` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK1cf90etcu98x1e6n9aks3tel3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `FK228us4dg38ewge41gos8y761r` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKb3354ee2xxvdrbyq9f42jdayd` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK6p7qhvy1bfkri13u29x6pu8au` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
