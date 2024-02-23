-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 05:54 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorymgtci`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'Color', 1),
(6, 'Size', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(17, 'yellow', 4),
(20, 'Small', 6),
(21, 'Medium', 6),
(22, 'Large', 6),
(23, 'Black', 4),
(24, 'Maroon', 4),
(25, 'Red', 4),
(26, 'Blue', 4),
(27, 'Navy', 4),
(28, 'Pearl White', 4),
(29, 'Phantom Black', 4),
(30, 'Gray', 4),
(31, 'XL', 6),
(32, 'XXL', 6),
(33, 'XXXL', 6),
(34, 'Free Size', 6),
(35, 'None', 6),
(36, 'Pink', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(15, 'Computer', 1),
(16, 'Clothes', 1),
(17, 'Smartphone', 1),
(19, 'Laptop', 1),
(20, 'Accessories', 1),
(21, 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(7, 'Electronic', 1),
(8, 'Clothings', 1),
(9, 'Chairs', 1),
(10, 'Headsets', 1),
(11, 'Controllers', 1),
(12, 'Shoes', 1),
(13, 'Others', 1),
(14, 'Office Supplies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Inventory Management System', '13', '10', '1538 Wilkinson Court', '777777770', 'US', '<p>Built using PHP with CodeIgniter Framework!</p>', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Testing', 'a:24:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:11:\"createGroup\";i:3;s:11:\"updateGroup\";i:4;s:9:\"viewGroup\";i:5;s:11:\"createBrand\";i:6;s:11:\"updateBrand\";i:7;s:9:\"viewBrand\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:11:\"createStore\";i:12;s:11:\"updateStore\";i:13;s:9:\"viewStore\";i:14;s:15:\"createAttribute\";i:15;s:15:\"updateAttribute\";i:16;s:13:\"viewAttribute\";i:17;s:13:\"createProduct\";i:18;s:13:\"updateProduct\";i:19;s:11:\"viewProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:13:\"updateCompany\";}'),
(6, 'Employee', 'a:10:{i:0;s:8:\"viewUser\";i:1;s:11:\"createBrand\";i:2;s:11:\"updateBrand\";i:3;s:9:\"viewBrand\";i:4;s:13:\"createProduct\";i:5;s:13:\"updateProduct\";i:6;s:11:\"viewProduct\";i:7;s:11:\"createOrder\";i:8;s:11:\"updateOrder\";i:9;s:9:\"viewOrder\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(4, 'BILPR-239D', 'Kerry Aiken', '318 Half and Half Drive', '0778650336', '1526279725', '2349.00', '13', '305.37', '10', '234.90', '2880.27', '9', 1, 1),
(5, 'BILPR-0266', 'Chris Harell', '1122 DM ST', '05552242', '1526358119', '1147.00', '13', '149.11', '10', '114.70', '1410.81', '0', 1, 1),
(6, 'BILPR-D7E1', 'Steeve', '888 D St', '7545558650', '1618851771', '1350.00', '13', '175.50', '10', '135.00', '1660.50', '0', 1, 1),
(7, 'BILPR-BE47', 'Williams', '77 Ralph Street', '7888888800', '1627479766', '1350.00', '13', '175.50', '10', '135.00', '1660.50', '0', 1, 1),
(8, 'BILPR-96FB', 'Lex', '770 Ralph St', '7898789870', '1636210952', '189.00', '13', '24.57', '10', '18.90', '232.47', '0', 2, 1),
(9, 'BILPR-6886', 'Danielle Paulsen', '129 Whaley Lane', '7012560000', '1636216188', '503.00', '13', '65.39', '10', '50.30', '613.69', '5', 1, 1),
(10, 'BILPR-DF05', 'Demo Customer', '777 Demo Address', '7770000000', '1636217358', '3537.00', '13', '459.81', '10', '353.70', '4340.51', '10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(12, 7, 12, '1', '1350', '1350.00'),
(17, 8, 13, '1', '189', '189.00'),
(22, 5, 11, '6', '3', '18.00'),
(23, 5, 10, '1', '1129', '1129.00'),
(24, 4, 8, '1', '2349', '2349.00'),
(25, 6, 12, '1', '1350', '1350.00'),
(28, 9, 16, '13', '35', '455.00'),
(29, 9, 11, '16', '3', '48.00'),
(34, 10, 17, '8', '98', '784.00'),
(35, 10, 16, '10', '35', '350.00'),
(36, 10, 11, '18', '3', '54.00'),
(37, 10, 8, '2', '2349', '2349.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(8, 'Alienware Aurora R13 Gaming Desktop', '', '2349', '16', 'assets/images/product_image/6186947ff0685.jpg', '<p>190+ FPS, VR Ready, 12th Gen Intel® Core™ i7 12700KF,&nbsp;\r\n\r\nWindows 11 Home,&nbsp;\r\n\r\nNVIDIA® GeForce RTX™ 3060 Ti 8GB GDDR6 LHR,&nbsp;\r\n\r\n16GB Dual Channel DDR5 at 4400MHz; up to 128GB,&nbsp;\r\n\r\n512GB NVMe M.2 PCIe SSD</p>', '[\"30\",\"21\"]', '[\"15\"]', '[\"7\"]', 5, 1),
(10, 'Apple MacBook Air', '', '1129', '30', 'assets/images/product_image/61856bae9f4d1.jpg', '<p>Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency. M1 is not just a next step for Mac , it’s another level entirely.\r\n\r\n <br></p>', '[\"30\",\"20\"]', '[\"19\"]', '[\"7\"]', 5, 1),
(11, 'Rubik\'s Cube', '', '3', '83', 'assets/images/product_image/6186a7dc390d6.jpg', '<p>\r\n\r\nThe Rubik\'s Cube is a 3-D combination puzzle invented in 1974 by Hungarian sculptor and professor of architecture Ernő Rubik.\r\n\r\n<br></p>', '[\"17\",\"35\"]', '[\"21\"]', '[\"13\"]', 6, 1),
(12, 'Predator Helios 300', '', '1350', '8', 'assets/images/product_image/618567013cc1e.jpg', '<p>\r\n\r\nThe Helios 300 drops you right into the game with everything you need to obliterate the opposition on a blisteringly fast 240Hz1&nbsp;/3ms2&nbsp;display. Only now, we’ve armed it with an NVIDIA®&nbsp;GeForce RTX™ 30801, a 10th&nbsp;Gen Intel®&nbsp;Core™ i7 Mobile Processor1&nbsp;and our custom-engineered 4th&nbsp;Gen AeroBlade™ 3D Technology.\r\n\r\n<br></p>', '[\"17\",\"21\"]', '[\"19\"]', '[\"7\"]', 5, 1),
(13, 'Homall Gaming Chair', '', '189', '65', 'assets/images/product_image/6186961b7d248.jpg', '<p>\r\n\r\nHigh density shaping foam, more comfortable, elasticity resilience and service life. 1.8mm thick steel frame, more sturdy and stable. Pu Leather, skin friendly and wear resisting.&nbsp;\r\n\r\nClass 3 gas lift, durable, reliable and supports up to 300lbs. Rubber casters, rolling quietly and tested by 1000 miles rolling\r\n\r\n<br></p>', '[\"23\",\"28\",\"20\",\"21\",\"22\"]', '[\"20\"]', '[\"7\"]', 5, 1),
(14, 'Arctix Girls\' Frost Insulated Winter Jacket', '', '47', '112', 'assets/images/product_image/618698c415dca.jpg', '<p>\r\n\r\n</p><p>100% Polyester Dobby ThermaLock WP/ WR 5K coating, \r\n\r\nZipper closure, \r\n\r\nThermaTech insulation that keeps the warm in and cold out, \r\n\r\nWind-water resistant with breathable ThermaLock coating</p><p></p>', '[\"25\",\"28\",\"21\",\"22\",\"31\",\"32\"]', '[\"16\"]', '[\"8\"]', 5, 1),
(15, 'Razer BlackShark V2 X Gaming Headset: 7.1', '', '82', '130', 'assets/images/product_image/6186a78b4b8c1.jpg', '<p>7.1 Surround Sound - 50mm Drivers - Memory Foam Cushion - for PC, PS4, PS5, Switch, Xbox One, Xbox Series X|S, Mobile - 3.5mm Audio Jack - Black<br></p>', '[\"17\",\"23\",\"25\",\"30\",\"21\"]', '[\"20\"]', '[\"10\"]', 6, 1),
(16, 'Marbrasse 4-Trays Desk File Organizer', '', '35', '73', 'assets/images/product_image/6186a8e1267ab.jpg', '<p>\r\n\r\nOur Office Desk Supplies Organizer is made of 4 sliding trays + 2 Hanging Pencil Holders + 1 sliding drawer which has enough storage space to accommodate all office supplies, such as pens, pencils scissors, folders and Letter/A4 Size Paper.&nbsp;The mesh desk file organizer is made of lightweight durable metal mesh and reinforced with a solid steel frame that makes it have long-lasting strength and reliable performance\r\n\r\n\r\n\r\n</p>', '[\"23\",\"21\",\"22\"]', '[\"21\"]', '[\"14\"]', 6, 1),
(17, 'Sample Product', '', '98', '20', 'assets/images/product_image/6186b18649b21.jpg', '<p>This is a sample product for testing!</p>', '[\"25\",\"28\",\"29\",\"20\",\"21\",\"22\"]', '[\"21\"]', '[\"13\"]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'Dynamix', 1),
(6, 'Taser', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'admin@gmail.com', 'Liam', 'Moore', '7777777777', 1),
(11, 'bryan', '$2y$10$VR/hRTtkIbt5Ws8fWshuduKC9bKD0Hed5UW.zFm6x2SWVJ7Ci8Fdy', 'bryan@mail.com', 'Bryan', 'Taylor', '7410002560', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
