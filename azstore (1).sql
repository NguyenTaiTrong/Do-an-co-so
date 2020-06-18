-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 15, 2018 lúc 10:52 AM
-- Phiên bản máy phục vụ: 5.7.19
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `azstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_price`) VALUES
(32, 'Dell Latitude 3330\r\n', 'sp5.jpeg', 'CPU 	 Intel Core i5 3337U ( 4 x 1.8Ghz, Turbo Boost 2.7Ghz, 3MB Cache)\r\n RAM	 4GB PC3 1333MHz, up to 16GB\r\n Hard Disk	 HDD 500GB 7200rpm\r\n VGA	 Intel HD Graphics 4000 up to 1.7GB\r\n LCD 	 13.3-inch Anti-Glare (1366x768)\r\n OS	 Windows 7 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 DVD-RW, Webcam, Card Reader, Out VGA, HDMI, 4 x USB,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	 06 Tháng', 5500000),
(31, 'Sony Vaio SVE14', 'sp4.jpg', 'CPU 	 Intel Core i5 3210M ( 4 x 2.5Ghz, Turbo Boost 3.1Ghz, 3MB Cache)\r\n RAM	 4GB PC3 1333MHz, up to 16GB\r\n Hard Disk	 HDD 320GB 7200rpm\r\n VGA	 Intel HD Graphics 4000 up to 1.7GB\r\n LCD 	 14-inch Anti-Glare (1366x768)\r\n OS	 Windows 7 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 DVD-RW, Webcam, Card Reader, Out VGA, HDMI, 4 x USB,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	 06 Tháng', 5300000),
(30, 'DELL INSPIRON 3543', 'sp3.jpg', 'CPU 	 Intel Core i3 5005U ( 4 x 2.0Ghz, 3MB Cache)\r\n RAM	 4GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 HDD 500GB\r\n VGA	 Intel HD Graphics 5500 up to 1.7GB\r\n LCD 	 14-inch Anti-Glare (1366x768)\r\n OS	 Windows 7 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 6175000),
(33, 'Acer V3-371', 'sp6.jpg', 'CPU 	 Intel Core i3 4005U ( 4 x 1.7Ghz, 3MB Cache)\r\n RAM	 4GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 SSD 128GB\r\n VGA	 Intel HD Graphics 4400 up to 1.7GB\r\n LCD 	 13.3-inch Anti-Glare (1366x768)\r\n OS	 Windows 8 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 5500000),
(34, 'Asus X554LA', 'sp7.jpg', 'CPU 	 Intel Core i5 5200U ( 4 x 2.2Ghz, Turbo Boost 2.7Ghz, 3MB Cache)\r\n RAM	 8GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 HDD 500GB\r\n VGA	 Intel HD Graphics 5500 up to 1.7GB\r\n LCD 	 15.6-inch Anti-Glare (1366x768)\r\n OS	 Windows 8 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 7600000),
(35, 'Asus X554LA', 'sp8.jpg', 'CPU 	 Intel Core i5 5200U ( 4 x 2.2Ghz, Turbo Boost 2.7Ghz, 3MB Cache)\r\n RAM	 8GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 HDD 500GB\r\n VGA	 Intel HD Graphics 5500 up to 1.7GB\r\n LCD 	 15.6-inch Anti-Glare (1366x768)\r\n OS	 Windows 8 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 76000000),
(36, 'DELL INSPIRON 3542', '1526308884sp9.jpg', ' CPU 	 Intel Core i3 4005U ( 4 x 1.7Ghz, 3MB Cache)\r\n RAM	 4GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 HDD 500GB\r\n VGA	 Intel HD Graphics 4400 up to 1.7GB\r\n LCD 	 14-inch Anti-Glare (1366x768)\r\n OS	 Windows 7 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 26546),
(37, 'Acer V3-371', 'sp10.jpg', 'CPU 	 Intel Core i3 4005U ( 4 x 1.7Ghz, 3MB Cache)\r\n RAM	 4GB PC3L 1600MHz, up to 16GB\r\n Hard Disk	 SSD 128GB\r\n VGA	 Intel HD Graphics 4400 up to 1.7GB\r\n LCD 	 13.3-inch Anti-Glare (1366x768)\r\n OS	 Windows 8 Professional 64bit\r\n Wifi	 Wireless-N Wi-Fi (802.11b/g/n) for connectivity\r\n Lan	 Ethernet (10/100/1000)\r\n Battery	 Up to 2 hours of battery life (6-cell)\r\n Options	 Webcam, Card Reader, HDMI, USB 3.0,....\r\n Tình trạng	 Máy đẹp 98%, hàng nhập USA\r\n Bảo hành	06 Tháng', 5500000),
(38, 'Dell Vostro V5468', 'sp11.jpg', 'Hãng sản xuất\r\n\r\nDell\r\n\r\nChủng loại\r\n\r\nVostro 5468 – Bảo hành chính hãng tại nhà\r\n\r\nMàu sắc\r\n\r\nGold\r\n\r\nBộ vi xử lý\r\n\r\nIntel Core™ i5 7200U (2*2.5Ghz/3MB cache) KABYLAKE\r\n\r\nChipset\r\n\r\nIntel\r\n\r\nBộ nhớ trong\r\n\r\n4GB DDR4 2400Mhz\r\n\r\nSố khe cắm\r\n\r\n2\r\n\r\nVGA\r\n\r\nNvidia GTX 940MX 2GB GDDR5\r\n\r\nỔ cứng\r\n\r\n1TB SATA 5400rpm\r\n\r\nỔ quang\r\n\r\nNo\r\n\r\nCard Reader\r\n\r\nYes\r\n\r\nMàn hình\r\n\r\n14”\r\n\r\nWebcam\r\n\r\nHD\r\n\r\nAudio\r\n\r\nYes\r\n\r\nGiao tiếp mạng\r\n\r\nGigabit\r\n\r\nGiao tiếp không dây\r\n\r\n802.11b/g/n ,Bluetooth 4.0\r\n\r\nCổng giao tiếp\r\n\r\n2*USB 3.0, USB2.0, VGA, HDMI\r\n\r\nPin\r\n\r\n4Cell\r\n\r\nCân nặng\r\n\r\n1.66Kg\r\n\r\nHệ điều hành\r\n\r\nFree DOS\r\n\r\nPhụ kiện đi kèm\r\n\r\nAC Adapter + sách hướng dẫn', 10100000),
(48, '00000000222', '15263133221526308140android-phone.jpg', '2', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_lever` int(11) NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_lever`, `user_fullname`, `user_email`) VALUES
(24, 'c', '1', 2, 'Huỳnh Chí Cường', 'ngaophong96@gmail.com'),
(21, 'fa', '1', 1, 'Trần Đức Phương', 'tranducphuongit1@gmail.com'),
(10, 'trong', '1', 1, 'Nguyễn Tài Trọng', 'taitrong21512@@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
