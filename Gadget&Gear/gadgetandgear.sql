-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 11:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetandgear`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(10, 'Farhan Faruk', 'farhan3527@gmail.com', '$2y$10$lLaYdFZtiTXMii.ynDBLNuOAeyJpE/onjdDMYBrhbZDveLXbFcfwe', '0'),
(11, 'Nafisa', 'nafisa.ahmed.progga@g.bracu.ac.bd', '$2y$10$Awde.XGh/9tw5o68sLf7OODeHbRjpynsJjt78BjPO2zUZWIITkPle', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'OnePlus+'),
(9, 'Asus'),
(10, 'Xiaomi'),
(11, 'MSI'),
(12, 'Wacom'),
(13, 'XP-Pen'),
(14, 'Huion');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptop'),
(2, 'Camera'),
(3, 'Monitor'),
(4, 'Tablets'),
(6, 'Mobiles'),
(8, 'Graphics Tab');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`) VALUES
(25, 6, 3, 'iPhone 14 Pro Max 128GB', 201599, 20, 'Dimensions	160.7 x 77.6 x 7.9 mm\r\nWeight	8.47 ounces (240 grams)\r\nDisplay	Super Retina XDR display 6.7?inch (diagonal) all?screen OLED display 2796?by?1290-pixel resolution at 460 ppi\r\nChipset	A16 Bionic chip-16?core Neural Engine\r\nCPU	6?core CPU with 2 performance and 4 efficiency cores\r\nGPU	5?core GPU\r\nOS	iOS 16 iOS is the world’s most personal and secure mobile operating system, packed with powerful features and designed to protect your privacy.\r\nSensors	Face ID,LiDAR Scanner,Barometer,High dynamic range gyro,High-g accelerometer,Proximity sensor,Dual ambient light sensors\r\nBattery	Built?in rechargeable lithium?ion battery\r\nCharging	Up to 50% charge in around 30 minutes15 with 20W adapter or higher (available separately)', '1668867793_20221013_1665649900_129385-removebg-preview.png'),
(26, 6, 2, 'Samsung Galaxy A23', 31597, 1, 'Display\r\n\r\nPLS TFT LCD,1080 x 2408 (FHD+)\r\n\r\nCamera\r\n\r\n50.0 MP + 5.0 MP + 2.0 MP + 2.0 MP Rear 8MP Front\r\n\r\nRAM\r\nRAM\r\n\r\n6GB\r\n\r\nROM\r\nROM\r\n\r\n128GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 5000 MAh, non-removable', '1669742068_Galaxy_A23-removebg-preview.png'),
(27, 6, 2, 'Samsung Galaxy S22 Ultra', 179999, 1, 'Display\r\n\r\n6.8” Quad HD+ Dynamic AMOLED 2X Infinity-O Display\r\n\r\nCamera\r\nCamera\r\n\r\n108MP + 10MP + 12MP + 10MP\r\n\r\nProcessor\r\nProcessor\r\n\r\nOcta-Core 2.99Ghz\r\n\r\nBattery\r\nBattery\r\n\r\n5,000mAh', '1669742080_Galaxy_S22_Ultra-removebg-preview.png'),
(28, 6, 2, 'Samsung Galaxy Z Fold4', 259999, 1, 'Display\r\n\r\nFoldable Dynamic AMOLED 2X, 120Hz, HDR10+ | Cover display: Dynamic AMOLED 2X, 120Hz\r\n\r\nCamera\r\nCamera\r\n\r\n12MP+50MP+10MP+Rear and 10MP Cover+4MP Under Display Selfie\r\n\r\nRAM\r\nRAM\r\n\r\n12GB\r\n\r\nROM\r\nROM\r\n\r\n256GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 4400 mAh, non-removable', '1669742092_Galaxy_Z_Fold4-removebg-preview.png'),
(29, 6, 2, 'Samsung Galaxy Z Flip4', 154999, 1, 'Display\r\n\r\nMain Screen 6.7\" FHD+ Dynamic AMOLED 2X | Cover Screen 1.9\" Super AMOLED Display\r\n\r\nCamera\r\nCamera\r\n\r\n12MP+12MP+Rear and 10MP Selfie\r\n\r\nRAM\r\nRAM\r\n\r\n8GB\r\n\r\nROM\r\nROM\r\n\r\n256GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 3700 mAh, non-removable', '1669742108_Galaxy_Z_Flip4-removebg-preview.png'),
(30, 6, 10, 'Xiaomi 11i HyperCharge 5G', 42999, 1, 'Display\r\n\r\n6.67 inches,AMOLED, 120Hz\r\n\r\nCamera\r\nCamera\r\n\r\n108MP+8MP+2MP+Rear and 16MP Selfie\r\n\r\nRAM\r\nRAM\r\n\r\n6GB | 8GB\r\n\r\nROM\r\nROM\r\n\r\n128GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 4500 mAh, non-removable', '1669742179_Xiaomi_11i_HyperCharge_5G-removebg-preview.png'),
(31, 6, 10, 'Xiaomi 12 Pro', 109999, 1, 'Display\r\n\r\nLTPO AMOLED, 1B colors, 120Hz, Dolby Vision, HDR10+\r\n\r\nCamera\r\nCamera\r\n\r\n50MP+50MP+50MP | Rear and 32MP Selfie\r\n\r\nRAM\r\nRAM\r\n\r\n8GB | 12GB\r\n\r\nROM\r\nROM\r\n\r\n256GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 4600 mAh, non-removable', '1669742193_Xiaomi_12_Pro-removebg-preview.png'),
(32, 6, 10, 'Redmi Note 10 Pro (108MP)', 29999, 1, 'Display\r\n\r\n6.67 inches\r\n\r\nCamera\r\nCamera\r\n\r\nFront 16MP | Back 108MP+8MP+5MP+2MP\r\n\r\nRAM\r\nRAM\r\n\r\n6GB\r\n\r\nROM\r\nROM\r\n\r\n64GB | 128GB\r\n\r\nBattery\r\nBattery\r\n\r\n5020mAh\r\n\r\nBkash banner\r\nGadget and Gear Gift\r\nFree Gift from G&G\r\n\r\nChoose a free Gift\r\n\r\n\r\nRero C35 Portable Speaker\r\nRero C35 Portable Speaker\r\n\r\nG&G 20000mAh Power Bank\r\nG&G 20000mAh Power Bank', '1669742206_Xiomi_note_11-removebg-preview.png'),
(33, 8, 14, 'Huion H950P Graphics Tablet', 7500, 1, 'Model: H950P\r\nBattery-Free Electromagnetic Resonance Pen\r\n8 Programmable Press Keys\r\nResolution 5080 LPI\r\nPen Pressure 8192 Levels', '1669742126_huion-h950p-graphics-tablet-1-500x500-removebg-preview.png'),
(34, 8, 12, 'Wacom CTL-4100/K0-CX Intuos Small Dimensions 20 x 16 x 0.9 Cm Pen Tablet', 9500, 1, 'Model: CTL-4100/K0-CX\r\nActive Area : 157 mm x 98 mm\r\nResolution: 5080 lpi\r\nPressure Levels: 2048', '1669742136_Wacom_ctl-4100wl-1-500x500-removebg-preview.png'),
(35, 8, 13, 'XP-Pen Star-G960S Digital Drawing Graphics Tablet', 5800, 1, 'Model: Star-G960S\r\nPower that lasts even longer\r\nShortcuts to your imagination\r\nIntuitive expression and efficiency\r\nEnjoy a familiar drawing experience', '1669742147_XP_Pen_Star_g960s-4-500x500-removebg-preview.png'),
(36, 1, 11, 'MSI GF63 Thin 10SCXR Core i5 10th Gen GTX 1650 4GB Graphics 15.6\"', 88500, 1, 'Model: GF63 Thin 10SCXR\r\nProcessor: Intel Core i5-10500H (12M Cache, 2.50 GHz up to 4.50 GHz)\r\nRAM: 8GB 3200MHz, Storage: 1TB HDD+ 256GB SSD\r\nGraphics: GTX 1650 GDDR6 4GB\r\nFeatures: Backlit Keyboard, Type C Port', '1669742027_MSI_gf63-thin-10scsr-1-500x500-removebg-preview.png'),
(37, 1, 9, 'Asus VivoBook 15 E510MA Intel Celeron N4020 15.6\" FHD Laptop', 47000, 1, 'MPN: EJ601T\r\nModel: VivoBook 15 E510MA\r\nIntel Celeron Dual Core N4020 (1.10 GHz up to 2.80 GHz, Cache 4MB)\r\n4GB DDR4 RAM\r\n512GB PCIe G3 SSD\r\n15.6\" FHD (1920X1080) LED Display', '1669742039_vivobook-15-e510ma-0101-500x500.png'),
(38, 1, 1, 'HP 15s-du3560TU Core i3 11th Gen 15.6\" FHD Laptop', 58000, 1, 'MPN: 577Y2PA\r\nModel: 15s-du3560TU\r\nProcessor: Intel Core i3-1125G4 (8M Cache, 2.00 GHz up to 3.70 GHz, 4 cores, 8 threads)\r\nRAM: 8 GB 2666 MHz, Storage: 1 TB HDD\r\nDisplay: 15.6\" FHD (1920 x 1080)\r\nFeatures: Dual speakers, USB Type-C', '1669742048_hp-15s-2-500x500-removebg-preview.png'),
(39, 4, 3, 'Apple iPad Pro 11-inch Wi-Fi 512GB MXDE2ZP/A Space Gray', 113000, 1, 'MPN: MXDE2ZP/A\r\nModel: iPad Pro\r\nA12Z Bionic chip with 64-bit architecture\r\n11\" Multi-Touch Liquid Retina Display\r\nCamera: 12MP, Æ’/1.8 aperture\r\nCapacity: 512GB', '1669742425_IPAD_Pro_11_inch_my2v2zp-a-500x500-removebg-preview.png'),
(40, 4, 10, 'Xiaomi Redmi Pad Helio G99 6GB RAM 128GB Storage 10.61\" 2K Android Tablet (Global Version)', 38500, 1, 'Model: Redmi Pad\r\nDisplay: 10.61\" 2K (2000x1200) 90Hz display\r\nRAM: 6GB LPDDR4X, Storage: 128GB UFS 2.2\r\nCPU: MediaTek Helio G99, Up to 2.2GH, 6nm\r\nBattery: 8000mAh, 18W fast charging', '1669742623_xiaomi_pad_-removebg-preview.png'),
(41, 4, 2, 'Samsung Galaxy Tab A7 Lite 3GB RAM 32GB ROM 8.7-inch Android Tablet', 22000, 1, 'MPN: BSM-T225/32\r\nModel: Galaxy Tab A7 Lite\r\nDisplay: 8.7 inches, 1340 x 800 (WXGA+) TFT\r\nStorage: 3GB RAM, 32GB ROM\r\nCPU: Helio P22T, GPU: PowerVR GE8320\r\nBattery: 5100 mAh, 15W Fast charging', '1669742439_galaxy-tab-a7-lite-01-500x500-removebg-preview.png'),
(42, 3, 5, 'LG 24GN600-B 23.8\" UltraGear Full HD IPS 144Hz Gaming Monitor', 25900, 1, 'Model: 24GN600-B\r\nResolution: Full HD (1920 x 1080)\r\nDisplay: IPS, 144Hz, 1ms\r\nPorts: HDMI, DP, 3.5mm Audio Out\r\nFeatures: Free Sync', '1669742333_LG_24gn600-b-01-500x500-removebg-preview.png'),
(43, 3, 4, 'Sony INZONE M9 27-inch 4K HDR 144Hz Gaming Monitor', 45000, 1, 'Model: INZONE M9\r\nResolution: 4K Ultra HD (3840 x 2160)\r\nDisplay: IPS, 144Hz, 1ms\r\nPorts: 2x HDMI, 1x DP, 3x USB, 1x Type-c, Headphone Output\r\nFeatures: G-Sync, FreeSync, Perfect for PlayStation 5', '1669742343_SONY_inzone-m9-01-500x500-removebg-preview.png'),
(44, 2, 4, 'Sony Alpha A6400 Mirrorless Digital Camera with 16-50mm Lens', 112000, 1, 'Model: Sony Alpha A6400\r\n24.2MP APS-C Exmor CMOS Sensor\r\nBIONZ X Image Processor\r\nReal-Time Eye AF; Real-Time Tracking\r\nXGA Tru-Finder 2.36m-Dot OLED EVF', '1669742493_alpha-a6400-1-500x500-removebg-preview.png'),
(45, 2, 4, 'Sony Alpha 7C Compact Mirrorless Full-frame Camera (Only Body)', 175000, 1, 'Model: Alpha 7C\r\n24.2 megapixels Exmor R CMOS sensor\r\nBIONZ X image processing engine\r\nStunning bokeh, enabled by a full-frame sensor\r\n4K (QFHD: 3840×2160) Pixels', '1669742938_sony_alpha_7C-removebg-preview.png'),
(46, 6, 6, 'OnePlus Nord 2T 5G', 54999, 1, 'Display\r\n\r\n6.43 inches Amoled Display\r\n\r\nCamera\r\nCamera\r\n\r\n50MP+8MP+2MP Rear Camera | 32MP Selfie Camera\r\n\r\nRAM\r\nRAM\r\n\r\n8GB | 12GB\r\n\r\nROM\r\nROM\r\n\r\n128GB | 256GB\r\n\r\nBattery\r\nBattery\r\n\r\n4500 mAh (dual-cell 2,250mAh batteries, non-removable)', '1669742223_OnePlus_Nord_2T_5G-removebg-preview.png'),
(47, 6, 6, 'OnePlus Nord CE 2 5G', 36990, 1, 'Display\r\n\r\n6.43 inches,Fluid AMOLED,90Hz\r\n\r\nCamera\r\nCamera\r\n\r\nMain 64 MP| 8MP| 2MP| Front 16MP\r\n\r\nRAM\r\nRAM\r\n\r\n8GB\r\n\r\nROM\r\nROM\r\n\r\n128GB\r\n\r\nBattery\r\nBattery\r\n\r\nLi-Po 4500 mAh', '1669742817_oneplus-nord-ce-2-5g-1-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(8, 'farhan', 'faruk', 'farhan3527@gmail.com', '123456789', '01874230581', 'dhaka'),
(11, 'faruk', 'faruk', 'farhanfaruk3527@gmail.com', '123456789', '01874230591', 'dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `qty` (`qty`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
