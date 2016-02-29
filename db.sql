-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2016 at 05:01 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `id_group` int(2) NOT NULL,
  `role` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `id_group`, `role`) VALUES
('lthdanh', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc_tlgd`
--

CREATE TABLE `chuyenmuc_tlgd` (
  `MACM` int(11) NOT NULL,
  `TENCM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chuyenmuc_tlgd`
--

INSERT INTO `chuyenmuc_tlgd` (`MACM`, `TENCM`) VALUES
(1, 'Tài liệu'),
(2, 'Giáo trình');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7db1d5f619100e9282caa0ac516845500a0ecfaf', '::1', 1456476585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437363531393b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('ebeaa161e4a9d4e1e162ddd4867cdf99a4a0533e', '::1', 1456477453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437373330313b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('d0986e17e5468eeeb70f12d630f128fba781c80f', '::1', 1456477979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437373639383b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('3fdb90ccecb07ac0bb486c123f4d1b94e31e1984', '::1', 1456478262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437383233303b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('1090be66747ea2979895377fab1541c424702daa', '::1', 1456478578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437383536343b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('f5360db23bc76a219964be22826fac3bcb54642e', '::1', 1456479379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363437393337393b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('9e88cef4e3bd4e9b8c424608ef863b9016c7500a', '::1', 1456480209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363438303230393b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('8886975e5a5c006784a75edb9ae8c9c45b00dd9f', '::1', 1456536990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363533363731373b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('9285fcb7356288b77ca2e1ca3d1b4b1d35770d32', '::1', 1456537313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363533373032383b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('88319543d4673fd421ecbbbb86b6a07d4582182c', '::1', 1456537607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363533373332393b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('93fb6acd8121befe96011e7537244aae9df849ec', '::1', 1456538423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363533383136383b),
('a10d457374e75f3a3248c5cb67958cfa64ea9aeb', '::1', 1456541608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363534313630373b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('f2ed63e28b4cd94368b77008d30997b995f567e0', '::1', 1456543940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363534333732373b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('133a736fb5fc6c6479eeadfcf436c45ed36f7fe2', '::1', 1456545526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363534353233353b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b),
('f1e287bb2dadef26ac8e80da5efbc9bb3aeb6d83', '::1', 1456545624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435363534353632333b736573735f65787069726174696f6e7c733a353a223238383030223b757365727c613a343a7b733a383a22757365726e616d65223b733a373a226c746864616e68223b733a383a2270617373776f7264223b733a33323a226531306164633339343962613539616262653536653035376632306638383365223b733a383a2269645f67726f7570223b733a313a2231223b733a343a22726f6c65223b4e3b7d6c6f676765645f696e7c733a343a2274727565223b);

-- --------------------------------------------------------

--
-- Table structure for table `cndt`
--

CREATE TABLE `cndt` (
  `CNDT` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cndt`
--

INSERT INTO `cndt` (`CNDT`) VALUES
('Bùi Hoàng Anh'),
('Bùi Thị Khôi Nguyên'),
('Bùi Thị Kim Xuyến'),
('Bùi Thị Ngọc Phương'),
('Cao Minh Toàn'),
('Cao Văn Thích'),
('Châu Sôryaly'),
('Chau Thi Đa'),
('Châu Thủy Tiên'),
('Cù Ngọc Quí'),
('Đặng Anh Tài'),
('Đặng Thị Thanh Quỳnh'),
('Danh Quyền'),
('Đào Thị Kim Loan'),
('Đào Thị Mỹ Tiên'),
('Diệp Hoàng Ân'),
('Đinh Thị Kim Thành'),
('Đỗ Công Tuất'),
('Đỗ Thị Hiện'),
('Đỗ Thị Thuý Diễm'),
('Đoàn Hoài Nhân'),
('Đoàn Thị Minh Nguyệt'),
('Đoàn Trung'),
('Đoàn Văn Hổ'),
('Đoàn Văn Hổ'),
('Dương Hoàng Thương'),
('Dương Quang Minh'),
('Dương Văn Nhã'),
('Giang Văn Phúc'),
('Hạng Minh Tuấn'),
('Hồ Bạch Nhật'),
('Hồ Thị Ngân Hà'),
('Hồ Thị Nguyệt Thanh'),
('Hồ Thị Thanh Tâm'),
('Hồ Thị Thu Ba'),
('Hoàng Quốc'),
('Hoàng Thế Nhật'),
('Hứa Thị Phượng Liên'),
('Huỳnh Đình Lệ Thu, Lưu Thị Thái Tâm'),
('Huỳnh Ngọc Đức'),
('Huỳnh Thị Tố Nga'),
('Huỳnh Trường Huê'),
('Huỳnh Trường Huê'),
('Khương Trọng Nhân'),
('Khưu Phương Yến Anh'),
('La Hồng Huy'),
('Lâm Tr. Sơn Ngọc Thiên Chương'),
('Lâm Trần Sơn Ngọc Thiên Chương'),
('Lê Công Nhàn'),
('Lê Công Quyền'),
('Lê Hoàng Bảo Ngọc'),
('Lê Hữu Phước'),
('Lê Kiên Thành'),
('Lê Minh Trí'),
('Lê Minh Tuấn'),
('Lê Quốc Cường'),
('Lê Thanh Hùng'),
('Lê Thanh Phong'),
('Lê Thị Hồng Hạnh'),
('Lê Thị Liên'),
('Lê Thị Linh Giang'),
('Lê Thị Thiên Hương'),
('Lê Thị Thúy Hằng'),
('Lê Văn Chua'),
('Lê Văn Lễnh'),
('Lê Vi An Tâm'),
('Lillian Forsyth'),
('Lương Thị Bảo Thanh'),
('Lưu Thị Thái Tâm'),
('Lý Ngọc Thanh Xuân'),
('Lý Thị Thanh Thảo'),
('Mai Ngọc Diệp'),
('Mai Xuân Thảo'),
('Ngô Ngọc Hòa'),
('Ngô Thị Kim Duyên'),
('Ngô Thụy Bảo Trân'),
('Ngô Văn Quí'),
('Nguyễn Bá Trung'),
('Nguyễn Bảo Kim'),
('Nguyễn Bình Trường'),
('Nguyễn Cao Trí'),
('Nguyễn Cao Tùng'),
('Nguyễn Đăng Khoa'),
('Nguyễn Đức Thăng'),
('Nguyễn Duy Tân'),
('Nguyễn Hoàng Mỹ Lan'),
('Nguyễn Hồng Hải'),
('Nguyễn Hữu Thanh'),
('Nguyễn Hữu Trí'),
('Nguyễn Hữu Yến Nhi'),
('Nguyễn Khắc Chung Thẩm'),
('Nguyễn Minh Châu'),
('Nguyễn Minh Triết'),
('Nguyễn Nguyệt Nga'),
('Nguyễn Phú Dũng'),
('Nguyễn Phú Thắng'),
('Nguyễn Phú Thọ'),
('Nguyễn Phước Lộc'),
('Nguyễn Thanh Đào'),
('Nguyễn Thanh Hải'),
('Nguyễn Thanh Hùng'),
('Nguyễn Thành Long'),
('Nguyễn Thanh Phong'),
('Nguyễn Thành Phương'),
('Nguyễn Thanh Triều'),
('Nguyễn Thanh Xuân'),
('Nguyễn Thể Thao'),
('Nguyễn Thị Ánh Nguyệt'),
('Nguyễn Thị Cúc'),
('Nguyễn Thị Diệu Liêng'),
('Nguyễn Thị Hạnh Chi'),
('Nguyễn Thị Hoàng Phượng'),
('Nguyễn Thị Hồng Đào'),
('Nguyễn Thị Lan Phương'),
('Nguyễn Thị Minh Châu'),
('Nguyễn Thị Minh Hải'),
('Nguyễn Thị Mỹ Duyên'),
('Nguyễn Thị Mỹ Hạnh'),
('Nguyễn Thị Ngọc Lan'),
('Nguyễn Thị Phương Ánh'),
('Nguyễn Thị Thái Sơn'),
('Nguyễn Thị Thanh Xuân'),
('Nguyễn Thị Thu Hồng'),
('Nguyễn Thị Thuý Diễm'),
('Nguyễn Thị Thúy Diễm'),
('Nguyễn Thị Tuyết'),
('Nguyễn Thọ Sâm'),
('Nguyễn Tiến Dũng'),
('Nguyễn Trần Nhẫn Tánh'),
('Nguyễn Trần Thiện Khánh'),
('Nguyễn Tri Khiêm'),
('Nguyễn Trung Thành'),
('Nguyễn Văn Chương'),
('Nguyễn Văn Mện'),
('Nguyễn Văn Minh'),
('Nguyễn Văn Tâm'),
('Nguyễn Vũ Hương Giang'),
('Nguyễn Vũ Thùy Chi'),
('Phạm Duy Tiễn'),
('Phạm Gia Nguyễn'),
('Phạm Hữu Phương'),
('Phạm Huỳnh Thanh Vân'),
('Phạm Minh Tân'),
('Phạm Mỹ Hạnh'),
('Phạm Tấn Thành'),
('Phạm Thị Kim Phượng'),
('Phạm Thị Thu Hồng'),
('Phạm Thị Thu Hường'),
('Phạm Thúc Kim'),
('Phạm Trung Tuấn'),
('Phạm Văn Quang'),
('Phạm Xuân Phú'),
('Phan Phương Loan'),
('Phan Thị Thanh Huyền'),
('Phan Thị Thanh Vân'),
('Phan Thị Trúc Linh'),
('Phan Trung Dũng'),
('Phan Uyên Nguyên'),
('Phan Văn Chí - Jack R.Merchant'),
('Tạ Mỹ Ngân'),
('Thái Huỳnh Phương Lan'),
('Thái Thị Bi'),
('Tiêu Minh Đương'),
('Tô Nguyệt Nga'),
('Tô Thiện Hiền'),
('Trần Anh Thông'),
('Trần Đình Lộc'),
('Trần Đức Tuấn'),
('Trần Khánh Mai'),
('Trần Kim Hoàng'),
('Trần Kỳ Nam'),
('Trần Kỳ Quốc Tuấn'),
('Trần Mạnh Tuấn'),
('Trần Minh Hải'),
('Trần Minh Tâm'),
('Trần Nghĩa Khang'),
('Trần Ngọc Hùng'),
('Trần Nhựt Phương Diễm'),
('Trần Quốc Thắng'),
('Trần Thanh Dũng'),
('Trần Thanh Sơn'),
('Trần Thanh Tùng'),
('Trần Thể'),
('Trần Thị Hồng Ngọc'),
('Trần Thị Huyền'),
('Trần Thị Kim Tuyến'),
('Trần Thị Minh Nguyệt'),
('Trần Thị Mỹ'),
('Trần Thị Ngọc Thanh'),
('Trần Thị Thanh Huế'),
('Trần Thị Thanh Phương'),
('Trần Thị Thu Nguyệt'),
('Trần Tùng Chinh'),
('Trần Văn Đạt'),
('Trần Văn Khải'),
('Trần Văn Thạnh'),
('Trần Xuân Hiển'),
('Trần Xuân Long'),
('Trang Thị Mỹ Duyên'),
('Trịnh Hoài Vũ'),
('Trịnh Thanh Duy'),
('Trịnh Thị Hồng'),
('Trịnh Thị Lan'),
('Trương Ánh Phương'),
('Trương Bá Thảo'),
('Trương Chí Hùng'),
('Trương Ngọc Thúy'),
('Trương Thanh Nhã'),
('Trương Thành Tâm'),
('Trương Văn Mỹ Thuận'),
('Từ Cao Thanh Hà'),
('Văn Viễn Lương'),
('Văng Thị Tuyết Loan'),
('Võ Duy Thanh'),
('Võ Thành Tài'),
('Võ Thanh Tân'),
('Võ Thị Hướng Dương'),
('Võ Thị Xuân Tuyền'),
('Võ Văn Dễ'),
('Võ Văn Dót'),
('Võ Văn Thắng'),
('Vũ Ngọc Hoài'),
('Vũ Thị Thanh Đào'),
('Vũ Tiến Dũng'),
('Vương Học Vinh'),
('Vương Thị Mỹ Tâm');

-- --------------------------------------------------------

--
-- Table structure for table `dmdt_ct_ck_sk`
--

CREATE TABLE `dmdt_ct_ck_sk` (
  `MS` varchar(10) NOT NULL,
  `LOAIDETAI` varchar(3) DEFAULT NULL,
  `TENDT` text,
  `CNDT` varchar(25) DEFAULT NULL,
  `DONVI` varchar(50) DEFAULT NULL,
  `TGBATDAU` date DEFAULT NULL,
  `TGKETTHUC` date DEFAULT NULL,
  `LUUTRU` varchar(50) DEFAULT NULL,
  `HIENTRANG` varchar(20) DEFAULT NULL,
  `GHICHU` varchar(50) DEFAULT NULL,
  `KINHPHI` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dmdt_ct_ck_sk`
--

INSERT INTO `dmdt_ct_ck_sk` (`MS`, `LOAIDETAI`, `TENDT`, `CNDT`, `DONVI`, `TGBATDAU`, `TGKETTHUC`, `LUUTRU`, `HIENTRANG`, `GHICHU`, `KINHPHI`) VALUES
('CK.01.SP', 'CK', 'Phương pháp tổ chức hoạt động giáo dục ngoài giờ lên lớp.', 'Thái Thị Bi', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.02.SP', 'CK', 'Tìm hiểu một số đặc điểm của truyện kể địa danh Nam bộ', 'Trần Tùng Chinh', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.03.SP', 'CK', 'Hàm Gamma và Hàm Beta.', 'Phạm Đức Thông', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.04.SP', 'CK', 'Dạy học khám phá cho Sinh viên Sư phạm Hóa', 'Đặng Công Thiệu', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.05.ML', 'CK', 'Giương cao ngọn  cờ độc lập dân tộc và CNXH.', 'Th.s Nguyễn T. Diệu Liêng', 'ML', NULL, NULL, NULL, '3', NULL, NULL),
('CK.06.SP', 'CK', 'Chủ nghĩa hiện thực huyền ảo trong văn học Mỹ Latin', 'Th.s Phùng Hoài Ngọc', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.07.SP', 'CK', 'Cấu trúc lại nội dung phần phép tính tích phân của hàm một biến', 'Phạm Đức Thông', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.08.SP', 'CK', 'Không gian LP và các áp dụng của định lý hội tụ đơn điệu và định lý hội tụ bị chận', 'Nguyễn Như Lân', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('CK.09.ML', 'CK', 'Quan điểm của triết học Mac-Lenin về “Con người -XH-Tự nhiên” và ý nghĩa hiện nay của nó.', 'Đinh Lê Nguyên', 'ML', NULL, NULL, NULL, '3', NULL, NULL),
('CK.10.SP', 'CK', 'Những hạn chế của sinh viên năm I, không chuyên khi sử dụng tiếng Anh trong các cuộc đàm thoại hàng ngày.', 'Trần Thị Thanh Huế', 'SP', NULL, NULL, NULL, '4', 'Chưa nộp đơn Ngưng TH', NULL),
('CK.11.SP', 'CK', 'Việc giảng dạy ngữ pháp tiếng Pháp sinh ngữ 2 ở các trường THPT TP Long Xuyên: Thực trạng và giải pháp.', 'Phan Tuệ Châu', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.14.SP', 'CK', 'Tình trạng hứng thú học tập các môn Văn học nước ngoài của SV chuyên ngành ngữ văn Trường Đại học An Giang', 'Nguyễn Thị Thu Giang', 'SP', '0000-00-00', '0000-00-00', '', '1', '', 24564),
('CK.15.SP', 'CK', 'Tìm hiểu thời gian nghệ thuật trong thơ thiền Lý - Trần', 'Nguyễn Thanh Phong', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.16.SP', 'CK', 'Vành nhân tử hóa', 'Phạm Văn Bản', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.17.SP', 'CK', 'Sử dụng phần mềm Matlab để giải một số bài toán Động học', 'Ngô Thị Tú Trinh', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.18.SP', 'CK', 'Ứng dụng một số phần mềm Vật lý trong giảng dạy và nghiên cứu phần cơ học', 'Hồ Thị An Nhung', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.19.SP', 'CK', 'Khảo sát thành phần hóa học của quả gấc [Monordica - Cochin chinesis (Lour) Spreng]', 'Lê Văn Quang', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.20.SP', 'CK', 'Sự chuyển đổi trong đời sống và tư tưởng của tín đồ Phật Giáo Hòa Hảo ở Phú Tân', 'Lê Trương Ánh Ngọc', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.21.SP', 'CK', 'Tìm hiểu việc dạy - học môn Sinh học 11 mới ở trường Trung học phổ thông (THPT) trong tỉnh An Giang', 'Nguyễn Văn Tâm', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CK.22.SP', 'CK', 'Thực hiện tiêu bản cố định một số loài vi khuẩn LAM (CTANOBACTERIA)', 'Phan Thị Trúc Linh', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('CT.01.GH', 'CT', 'Biên soạn chương Nông, Lâm, Ngư nghiệp và chương TTCN, Công nghiệp', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.02.GH', 'CT', 'Chiến lược phát triển Khoa học Công nghệ tỉnh An Giang đến năm 2010', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.03.GH', 'CT', 'Tổng kết khoa học quá trình phát triển Kinh tế xã hội tập trung trên lĩnh vực Nông nghiệp, Nông thôn ở An Giang từ thời kỳ đổi mới đến nay (1987 - 2000), 2001', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.04.GH', 'CT', 'Thực trạng và giải pháp phát triển mô hình kinh tế trang trại ở An Giang', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.05.GH', 'CT', 'Dự báo nhu cầu và giải pháp đào tạo, sử dụng nguồn nhân lực có trình độ đại học, cao đẳng ở An Giang, Đồng Tháp, Kiên Giang phục vụ yêu cầu đào tạo và nghiên cứu, ứng dụng chuyển giao KHCN của trường Đại học An Giang đến 2010', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.06.GH', 'CT', 'Nội dung giải pháp công nghiệp hoá - hiện đại hoá tập trung trên lĩnh vực nông nghiệp tỉnh An Giang đến năm 2010.', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', NULL, NULL),
('CT.07.CM', 'CT', 'Nghiên cứu thiết kế tài liệu giáo dục môi trường cho nhân dân vùng nông thôn An Giang.', 'Ths. Trần Minh Tâm', 'CM', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '4', NULL, NULL),
('CT.08.NN', 'CT', 'Chỉnh lý, bổ sung bản đồ đất tỉnh An Giang, tỉ lệ 1:100.000', 'Ths. Võ Tòng Anh', 'NN', '2016-02-19', '2016-02-19', 'Sở KHCN-MT tỉnh An Giang', '1', 'Sở KHCN-MT tỉnh An Giang', NULL),
('CT.09.NN', 'CT', 'Nghiên cứu tác động của Đê bao đến đời sống Kinh tế-Xã hội của người dân ở các khu vực có Đê bao tại tỉnh AG.', 'Ths. Dương Văn Nhã', 'NN', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '4', NULL, NULL),
('CT.10.NN', 'CT', 'Ứng dụng đánh dấu phân tử trên cơ sở chuỗi phản ứng Polymerase để chọn tạo giống lúa(Oryza sativa L.) có chất lượng cao.', 'Ths. Trương Bá Thảo', 'NN', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '2', 'Sở KHCN-MT tỉnh An Giang', NULL),
('CT.11.NN', 'CT', 'Nghiên cứu trồng trọt một số Nấm có giá trị xuất khẩu ở vùng Bảy Núi An Giang.', 'PGS.TS Phạm Thành Hổ', 'NN', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '4', 'Hợp tác với trường ĐH Tự Nhiên', NULL),
('CT.12.SP', 'CT', 'Hiện trạng và một số biện pháp nâng cao chất lượng học tập của học sinh Trung học trong tỉnh AG.', 'Ths. La Hồng Huy', 'NV', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '4', NULL, NULL),
('CT.13.NN', 'CT', 'Thử nghiệm phòng bệnh xuất huyết trên cá Basa bằng vacxin', 'Ths. Hứa Thị Phượng Liên', 'NN', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', 'Khá', NULL),
('CT.14.GH', 'CT', 'Thực trạng, giải pháp nâng cao đời sống kinh tế, văn hóa, xã hội và môi trường của cư dân ở các cụm tuyến dân cư mới trong vùng ngập lụt ở tỉnh An Giang.', 'Ths. Lê Minh Tùng', 'GH', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '4', NULL, NULL),
('CT.15.NV', 'CT', 'Thực trạng và giải pháp khắc phục tình trạng học sinh bỏ học tỉnh An Giang.', 'Ths. La Hồng Huy', 'NV', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '3', 'KHÁ', NULL),
('CT.16.NV', 'CT', 'Nghiên cứu xây dựng các giải pháp nhằm nâng cao chất lượng đội ngũ giáo viên THPT tỉnh AG.', 'Ths. La Hồng Huy', 'NV', NULL, NULL, 'Sở KHCN-MT tỉnh An Giang', '2', NULL, NULL),
('CT.17.KT', 'CT', 'Quy hoạch tổng thể kinh tế xã hội huyện Châu Thành.', 'Ts. Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'Không phải cấp tỉnh', NULL),
('CT.18.KT', 'CT', 'Phát triển thương mại hoá và thương hiệu nếp và cá tra Phú Tân', 'Ts. Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'KHông phải cấp tỉnh', NULL),
('CT.19.KT', 'CT', 'Chương trình đào tạo 300 doanh nhân.', 'Ts. Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'Phối hợp Sở thương mại và khoa KT - QTKD', NULL),
('CT.20.NV', 'CT', 'Thực trạng và giải pháp nâng cao chất lượng đội ngũ giáo viên tiểu học ở tỉnh An Giang', 'Ths.La Hồng Huy', 'NV', NULL, NULL, NULL, '2', 'Sở KHCN-MT tỉnh An Giang', NULL),
('CT.21.NV', 'CT', 'Xây dựng giáo trình giảng dạy lịch sử địa phương tỉnh An Giang cho các trường phổ thông', 'Ths.La Hồng Huy', 'NV', NULL, NULL, NULL, '2', 'Sở KHCN-MT tỉnh An Giang', NULL),
('CT.22.NV', 'CT', 'Biên soạn giáo trình địa lí địa phương tỉnh An Giang cho các trường phổ thông', 'Ths.La Hồng Huy', 'NV', NULL, NULL, NULL, '2', 'Sở KHCN-MT tỉnh An Giang', NULL),
('SK.01.SP', 'SK', 'Kinh nghiệm dạy tốt môn đọc hiểu tiếng Anh', 'Huỳnh Thị Thu Sương', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.02.ML', 'SK', 'ádf', 'SDFdsf', 'ML', '2016-02-18', '2016-02-16', 'sdfsdf', '1', NULL, NULL),
('SK.02.SP', 'SK', 'Một số kinh nghiệm để nâng cao vốn từ vựng tiếng Anh', 'Nguyễn Thị Tâm', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.03.SP', 'SK', 'Một số PP Hóa học làm sạch và xử lý rau quả.', 'Nguyễn Văn Thạt', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.04.SP', 'SK', 'Một số kỷ năng, kỷ xảo viết và cân bằng phản ứng oxy hóa khử.', 'Bùi Phước Phúc', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('SK.05.SP', 'SK', 'Sử dụng trò chơi trong giờ giảng', 'Vương Mỹ Tâm', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.06.SP', 'SK', 'Thiết kế chương trình sinh hoạt ngoại khóa ôn tập văn học Việt Nam giai đoạn 1945-1975 THPT', 'Ths. Trần Tùng Chinh', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.07.SP', 'SK', 'Phát huy vai trò tích cực của học sinh trong học tập môn Ngữ văn ở THCS', 'Ths. Lê Huỳnh Diệu', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.08.SP', 'SK', 'Lý thuyết hoạt động ngôn ngữ', 'Ths. Nguyễn Thanh Bình', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.09.SP', 'SK', 'Tiến hành đánh giá bài học của học sinh tiều học bằng điểm số', 'Ths. Hồ Văn Các', 'SP', NULL, NULL, NULL, '3', NULL, NULL),
('SK.10.SP', 'SK', 'Hướng dẫn SV thực hiện Tài liệu tham khảo VHTĐ.', 'Ths. Trần Tùng Chinh', 'SP', NULL, NULL, NULL, '2', NULL, NULL),
('TR.01.NN', 'TR', 'Quản lý tài nguyên thuỷ sản tự nhiên theo hướng bền vững.', 'Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '2', 'ICLARM', NULL),
('TR.02.NN', 'TR', 'Quyết định của người dân trong chuyển dịch cơ cấu cây trồng.', 'Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '2', 'VNRP (CT Việt Nam - Hà Lan)', NULL),
('TR.03.NN', 'TR', 'Đánh giá tác động của đê bao đến đời sống kinh tế xã hội và môi trường tại các khu vực có đê bao ở tỉnh An Giang', ' Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '3', 'VNRP (CT Việt Nam - Hà Lan)', NULL),
('TR.04.NN', 'TR', 'Đánh giá hiện trạng bồi lắng phù sa vùng dự án Bắc Vàm Nao', ' Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '3', 'AusAID', NULL),
('TR.05.NN', 'TR', 'Hợp tác đào tạo trong lĩnh vực phát triển nông thôn', 'Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '2', 'Hội đồng Anh (British Council)', NULL),
('TR.06.NN', 'TR', 'Hệ thống canh tác tại HTX Binh Thành', 'Th.s Võ Tòng Anh', 'NN', NULL, NULL, NULL, '2', 'AGROMAS', NULL),
('TR.07.NN', 'TR', 'Thử nghiệm phân vi sinh NEB33 trên lúa', 'Nguyễn Thị Thanh Xuân', 'NN', NULL, NULL, NULL, '4', 'Cty TNHH Việt Hồng Châu', NULL),
('TR.08.NN', 'TR', 'Thử nghiệm phân vi sinh NEB33 trên đậu nành rau', 'Nguyễn Văn Kiền', 'NN', NULL, NULL, NULL, '4', 'Cty TNHH Việt Hồng Châu', NULL),
('TR.09.NN', 'TR', 'Thử nghiệm phân vi sinh NEB33 trên bắp non', 'Th.s Dương Văn Nhã', 'NN', NULL, NULL, NULL, '4', 'Cty TNHH Việt Hồng Châu', NULL),
('TR.10.NN', 'TR', 'Thử nghiệm phân vi sinh NEB33 trên bông vải', 'Phạm Hùynh Thanh Vân', 'NN', NULL, NULL, NULL, '4', 'Cty TNHH Việt Hồng Châu', NULL),
('TR.11.KT', 'TR', 'Thị trường thịt chuột ở ĐBSCL.', 'Ts.Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '3', 'ACIAR', NULL),
('TR.12.KT', 'TR', 'Thị trường sản phẩm Tràm ở ĐBSCL.', 'Ts.Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '3', 'OXFAM (America)', NULL),
('TR.13.KT', 'TR', 'Cung cầu thuỷ sản ở Châu Á.', 'Ts.Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'World Fish Center', NULL),
('TR.14.KT', 'TR', 'Đa dạng hóa sản xuất ĐBSCL 1970 – 2000.', 'Ts.Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'FAO', NULL),
('TR.15.NT', 'TR', 'Tín dụng nhỏ hỗ trợ các mô hình canh tác kết hợp trong mùa lũ ở xã Bình Thạnh Đông, huyện Phú Tân, An Giang.', 'Ths.Võ Lâm', 'NT', '2005-08-01', '2007-12-01', NULL, '2', 'Joint GrassRoot Fukuoka (Japan)', NULL),
('TR.16.NT', 'TR', 'Nâng cao sản lượng và chất lượng sữa bò Việt Nam trong chăn nuôi nông hộ', 'Ths.Võ Lâm', 'NT', '2005-12-01', '2009-12-01', NULL, '2', 'Chương trình Sida SAREC', NULL),
('TR.17.NT', 'TR', 'Huy động sự tham gia của cộng đồng đại phương trong việc phòng trừ cây Mai dương (Mimosa pigra), một loài ngoại lai xâm hại nguy hiểm tại vườn quốc gia Tràm Chim (VN/05/002)', 'Ths.Võ Lâm', 'NT', '2006-04-01', '2007-08-01', NULL, '2', 'Tổ chức Global Environmental Foundation (GEF)', NULL),
('TR.18.KT', 'TR', 'Nghiên cứu cơ hội tạo việc làm cho phụ nữ đối tượng dễ bị thiệt thòi.', 'Ts.Nguyễn Tri Khiêm', 'KT', '2006-06-01', NULL, NULL, '2', 'Asia Foundation', NULL),
('TR.19.KT', 'TR', 'Nghiên cứu ngành hàng có khả năng tạo thu nhập cho nông dân mùa lũ', 'Ts.Nguyễn Tri Khiêm', 'KT', '2006-08-01', '0000-00-00', '', '1', 'CARE', NULL),
('TR.20.KT', 'TR', 'Nghiên cứu nhanh thị trường vùng dự án phòng chống thiên tai.', 'Ts.Nguyễn Tri Khiêm', 'KT', NULL, NULL, NULL, '2', 'CARE', NULL),
('TR.22.NN', 'TR', 'Ứng dụng GIS để lý rừng nhằm bảo tồn đa dạng sinh học', 'Nguyễn Thanh Sơn', 'NN', NULL, NULL, NULL, '2', 'SEARCA', NULL),
('TR.23.NN', 'TR', 'Ứng dụng wetland để xử lý nước thải trong cụm tuyến dân cư tại Ô Long Vĩ An Giang', 'Huỳnh Ngọc Đức', 'NN', NULL, NULL, NULL, '2', 'WESTLAND', NULL),
('TR.24.NN', 'TR', 'Effect of feeding different proportions of Melastoma (Melastoma affine, D. Don) foliage and Sesbania grandiflora foliage in the diet on intake, digestibility and N retention of growing goats', 'Bùi Phan Thu Hằng', 'NN', NULL, NULL, NULL, '2', 'SAREC', NULL),
('TR.25.NN', 'TR', 'Application of fresh rice straw treated with  urea and lime as cattle feeds for small holder farmers in  villages of An Giang province', 'Lê Thị Thuý Hằng', 'NN', NULL, NULL, NULL, '2', 'SAREC', NULL),
('TR.26.NN', 'TR', 'Research on application of a local medicinal herb (Tinospora cordifolia) to deworm and fatten beef cattle', 'Trương Thanh Nhã', 'NN', NULL, NULL, NULL, '2', 'SAREC', NULL),
('TR.27.NN', 'TR', 'Mimosa pigra for growing goats in Mekong Delta, Vietnam', 'Nguyễn Thị Thu Hồng', 'NN', NULL, NULL, NULL, '2', 'SAREC', NULL),
('TR.28.NN', 'TR', 'Chương trình nghiên cứu phát triển Đay Long An', 'Nguyễn Thị Thanh Xuân', 'NN', NULL, NULL, NULL, '3', 'TRACODI', NULL),
('TR.29.NN', 'TR', 'Cải tiến các công đoạn sau thu hoạch lúa truyền thống để giảm tổn thất', 'Nguyễn Văn Minh', 'NN', NULL, NULL, NULL, '3', 'DADIDA', NULL),
('TR.30.TV', 'CB', 'Linking Extension and Research Needs Through Information Technology (LERNT-INFORMATION TECHNOLOGY)', '', 'TV', '2006-03-03', '2008-12-01', '', '1', '', 32435454);

-- --------------------------------------------------------

--
-- Table structure for table `dm_detai_captruong`
--

CREATE TABLE `dm_detai_captruong` (
  `MSDT` varchar(10) NOT NULL,
  `QDGTH` longtext,
  `YKIENHD` longtext,
  `QDNT` longtext,
  `TENDT` text,
  `CNDT` varchar(150) DEFAULT NULL,
  `DONVI` varchar(50) DEFAULT NULL,
  `NAMSINH` int(11) DEFAULT NULL,
  `PHAI` tinyint(4) DEFAULT NULL,
  `GHICHU` varchar(30) DEFAULT NULL,
  `XEPLOAI` varchar(20) DEFAULT NULL,
  `DIEMSO` float DEFAULT NULL,
  `HTDETAI` varchar(100) DEFAULT NULL,
  `TGBATDAU` date DEFAULT NULL,
  `TGKETTHUC` date DEFAULT NULL,
  `TONGKINHPHI` double DEFAULT NULL,
  `KPTAMUNG` int(11) DEFAULT NULL,
  `TIENDO` varchar(200) DEFAULT NULL,
  `SOHD` varchar(5) DEFAULT NULL,
  `DOT` varchar(7) DEFAULT NULL,
  `NAM-NT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dm_detai_captruong`
--

INSERT INTO `dm_detai_captruong` (`MSDT`, `QDGTH`, `YKIENHD`, `QDNT`, `TENDT`, `CNDT`, `DONVI`, `NAMSINH`, `PHAI`, `GHICHU`, `XEPLOAI`, `DIEMSO`, `HTDETAI`, `TGBATDAU`, `TGKETTHUC`, `TONGKINHPHI`, `KPTAMUNG`, `TIENDO`, `SOHD`, `DOT`, `NAM-NT`) VALUES
('00.02.ML', '2', '', '', 'Thực trạng hiểu biết của Sinh viên An Giang về HIV-AIDS', 'Đỗ Công Tuất', 'ML', 1958, 2, '(Năm 2000)', '2', NULL, '3', '2016-02-18', '2016-02-28', 0, 0, '', '02.01', '00-01', 0),
('00.03.SP', NULL, NULL, NULL, 'Bồi dưỡng Đội viên lớn vào Đoàn', 'Thái Thị Bi', 'SP', 1957, 0, '( Năm 2000)', '2', NULL, '3', '2000-01-01', '2001-01-01', NULL, NULL, NULL, '03.01', '00-01', NULL),
('00.05.KT', '5', '', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT 2DT TTHien 02.05.doc#', 'Điều tra nhu cầu nhân lực ngành nghề trong Nông nghiệp ở AG.', 'Tô Thiện Hiền', 'KT', 1966, 1, '', '1', NULL, '3', '1899-11-08', '1899-11-12', 6000000, 0, '', '05.01', '00-01', 2002),
('00.06.KT', '1', '', '2', 'Tình hình thực hiện hai luật thuế GTGT & TNDN ở An Giang và các giải pháp khắc phục', 'Ngô Văn Quí', 'KT', 1976, 2, '', '1', NULL, '3', '2016-02-02', '2016-03-10', 6000000, 0, '', '06.01', '00-01', 2001),
('00.07.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT HMTuan DotI.00.01.doc#', NULL, NULL, 'Nhu cầu về đào tạo nghiệp vụ của các Doanh nghiệp tỉnh An Giang', 'Hạng Minh Tuấn', 'KT', 1962, 1, NULL, '4', NULL, '4', '2000-01-01', '2001-01-01', 12000000, NULL, NULL, '07.01', '00-01', NULL),
('00.08.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT TTHien2 DotI.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT 2DT TTHien 02.05.doc#', 'Thực trạng và giải pháp Hợp tác Xã Nông nghiệp ở AG', 'Tô Thiện Hiền', 'KT', 1966, 1, NULL, '1', NULL, '3', '2001-02-28', '2002-02-28', 5000000, NULL, NULL, '08.01', '00-01', 2002),
('00.09.ML', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT NTTHong1 DotII.00.01.doc#', NULL, NULL, 'Thực trạng và những giải pháp phát huy vai trò đội ngũ tri thức Trường ĐHAG trong công tác đào tạo hiện nay.', 'Phạm Thị Thu Hồng', 'ML', 1958, 0, NULL, '4', NULL, '4', '2000-01-01', '2001-01-01', 4500000, NULL, NULL, '09.01', '00-01', NULL),
('00.10.TC', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT TNHung DotI.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TNHung 11.03.2002.doc#', 'Lập thang điểm môn điền kinh trường ĐHAG hệ ĐH và CĐ.', 'Trần Ngọc Hùng', 'TC', 1967, 1, 'K: 6; TB: 2; Không đạt: 2', '2', NULL, '3', '2001-03-30', '2002-03-30', 3000000, NULL, NULL, '10.01', '00-01', 2002),
('00.12.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT TTBi1 DotI.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TTBiI 01.2002.doc#', '“Sinh hoạt Sao Nhi đồng” trong trường tiểu học ở AG.', 'Thái Thị Bi', 'SP', 1957, 0, 'K: 8; TB: 7', '2', NULL, '3', '2002-12-12', '2003-12-12', 4500000, NULL, NULL, '12.01', '00-01', NULL),
('00.13.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT LHHuy1 DotI.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT LHHuyII 3.9.02.doc#', 'Xây dựng bài tập và tổ chức thực hành học trình PPGD NCKH ở trường ĐHAG.', 'La Hồng Huy', 'NV', 1950, 1, 'SX: 1; K: 8; TB: 1', '2', NULL, '3', '2002-12-12', '2003-12-12', 5500000, NULL, NULL, '13.01', '00-01', NULL),
('00.14.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT HMTuan DotI.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT HMTuan 14.06.2002.doc#', 'Ứng dụng phương pháp đánh gía nông thôn với sự tham gia của người dân (PRA) ở một số xã trên địa bàn tỉnh An Giang.', 'Hạng Minh Tuấn', 'KT', 1962, 1, NULL, '1', NULL, '3', '2001-01-31', '2001-06-30', 14000000, NULL, NULL, '14.01', '00-01', 2001),
('00.15.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT NTTHong1 DotII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTTHong 03.01.2002.doc#', 'Đánh giá hiện trạng chăn nuôi và nguồn thức ăn cho chăn nuôi bò trên địa bàn các huyện Thoại Sơn, Tịnh Biên, Tri Tôn tỉnh An Giang', 'Nguyễn Thị Thu Hồng', 'NN', 1968, 0, 'SX:0; K: 1;TB: 3; không đạt:3', '1', NULL, '3', '2001-12-12', '2002-12-12', 5195000, NULL, NULL, '15.01', '00-01', 2003),
('00.16.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT NHThanh1 DotII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT NHThanh 3.9.02.doc#', 'Khảo sát một vài qui trình sản xuất sản phẩm truyền thống từ nguyên liệu thuỷ sản ở Châu đốc-AG.', 'Nguyễn Hữu Thanh', 'NN', 1976, 1, 'K: 6; TB: 4', '2', NULL, '3', '2001-06-30', '2002-05-30', 5985000, NULL, NULL, '16.01', '00-01', 2002),
('00.17.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT LHHuy2 DotII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT LHHuy 03.01.2002.doc#', 'Thực trạng và giải pháp về công tác hướng nghiệp ở một số trường THPT tỉnh An Giang.', 'La Hồng Huy', 'SP', 1950, 1, 'SX: 1; K: 8; TB: 1', '2', NULL, '3', '2001-12-12', '2002-12-12', 6800000, NULL, NULL, '17.01', '00-01', NULL),
('00.18.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT HTNThanh DotII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT HTNThanh 03.01.2002.doc#', 'Thực trạng và giải pháp nhằm nâng cao hiệu quả học tiếng Anh của Sinh Viên khối Cao đẳng không chuyên- ĐHAG.', 'Hồ Thị Nguyệt Thanh', 'SP', 1978, 0, NULL, '1', NULL, '3', '2001-06-30', '2001-12-30', 4700000, NULL, NULL, '18.01', '00-01', NULL),
('00.19.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT GVPhuc DotII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT GVPhuc 20.9.02.doc#', 'Thiết kế bộ thí nghiệm phương pháp giảng dạy Vật lý Phổ thông.', 'Giang Văn Phúc', 'SP', 1961, 1, 'K: 9', '2', NULL, '3', '2002-08-30', '2003-08-30', 19410000, NULL, NULL, '19.01', '00-01', NULL),
('00.20SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 00.01\\QD Giao thuc hien DT CTTien DotIII.00.01.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT CTTien 28.05.2002.doc#', 'Thực trạng và giải pháp về việc vận dụng phương pháp giao tiếp trong giảng dạy tiếng Anh ở một số trường THCS trong tỉnh AG.', 'Châu Thủy Tiên', 'SP', 1976, 0, NULL, '1', NULL, '3', '2001-01-31', '2002-07-30', 5000000, NULL, NULL, '20.01', '00-01', NULL),
('01.01.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NMChau DotI.01.02.doc#', NULL, NULL, 'Đánh giá hiệu quả của việc chuyển đổi cơ cấu cây trồng ở Chợ Mới, An Giang.', 'Nguyễn Minh Châu', 'KT', 1954, 1, NULL, '4', NULL, '4', '2002-05-30', '2003-04-30', 7500000, 4000000, 'Đang viết báo cáo.', '01.02', '01-02', NULL),
('01.02.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NTKhiem DotI.01.02.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT 3DT NTKhiem-GVanPhuc-TTTPhuong 06.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%203DT%20NTKhiem-GVanPhuc-TTTPhuong%2006.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT NTKhiem 08.05.doc#', 'Những nhân tố chính tác động hiệu quả quản lý kinh doanh trong mô hình Kinh tế trang trại ở AG.', 'Nguyễn Tri Khiêm', 'KT', 1947, 1, 'K: 6. (Chưa nộp bản final)', '2', NULL, '3', '2002-06-30', '2003-05-30', 15000000, NULL, NULL, '02.02', '01-02', 2003),
('01.03.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT CMToan DotI.01.02.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT CMToan 09.04.doc#', 'Một số biện pháp đẩy mạnh hoạt động Marketing.', 'Cao Minh Toàn', 'KT', 1978, 1, 'K: 4; TB: 5', '1', NULL, '3', '2003-01-30', '2003-12-30', 3925000, NULL, NULL, '03.02', '01-02', 2004),
('01.04.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT TMHai DotI.01.02.doc#', NULL, NULL, 'Hỗ trợ và hợp tác xây dựng câu lạc bộ chủ nhiệm hợp tác xã Nông nghiệp tại huyện Chợ Mới – AG.', 'Trần Minh Hải', 'KT', 1979, 1, NULL, '4', NULL, '4', '2001-12-30', '2002-11-30', 8000000, NULL, NULL, '04.02', '01-02', NULL),
('01.05.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT PTTuan DotI.01.02.doc#', NULL, NULL, 'Tìm hiểu, xác định kênh phân phối và tìm giải pháp tiêu thụ cá Basa ở thị trường nội địa', 'Phạm Trung Tuấn', 'KT', 1976, 1, NULL, '4', NULL, '4', '2001-12-30', '2002-11-30', 8000000, NULL, NULL, '05.02', '01-02', NULL),
('01.06.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT LTTHuong DotI.01.02.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT LTTHuong 09.04.doc#', 'Ứng dụng phương pháp kinh tế lượng để phân tích hiệu quả sản xuất ở trang trại trong tỉnh AG.', 'Lê Thị Thiên Hương', 'KT', 1977, 0, 'K: 8; TB: 2', '2', NULL, '3', '2001-01-30', '2002-12-30', 4000000, NULL, NULL, '06.02', '01-02', 2003),
('01.07.CM', NULL, NULL, NULL, 'Bước đầu ứng dụng ISO 9002 phiên bản 1994 vào trường ĐHAG', 'Nguyễn Cao Trí', 'CM', 1977, 1, NULL, '4', NULL, '4', '2002-01-30', '2002-06-30', 4000000, NULL, NULL, '07.02', '01-02', NULL),
('01.08.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT LTTHang DotI.01.02.doc#', NULL, NULL, 'Tính kháng khuẩn của bột lá cây Xuân Hoa và khả năng ứng dụng của bột này để thay thuốc kháng sinh trị bệnh đường tiêu hoá gia súc-gia cầm', 'Lê Thị Thúy Hằng', 'NN', 1975, 0, NULL, '4', NULL, '4', '2002-02-28', '2003-02-28', 14000000, NULL, NULL, '08.02', '01-02', NULL),
('01.09.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NVM1 DotII.01.02.doc#', NULL, NULL, 'Ứng dụng biện pháp phòng trừ dịch hai tổng hợp (IPM) trên cây Xoài trong mô hình vườn đồi ở xã Ba Chúc, Tri Tôn AG.', 'Nguyễn Văn Minh', 'NN', 1952, 1, NULL, '2', NULL, '3', '2002-11-30', '2004-11-30', 17000000, 10000000, NULL, '09.02', '01-02', 2009),
('01.10.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NVM2 DotII.01.02.doc#', NULL, NULL, 'Trắc nghiệm bốn loại thuốc xử lý trái vụ (KNO3, cultar, Thionrea, Ethepon) trên xoài Thanh Ca vườn đồi ở Ba Chúc, Tri Tôn AG', 'Nguyễn Văn Minh', 'NN', 1952, 1, NULL, '2', NULL, '3', '2002-11-30', '2004-04-30', 9500000, 6500000, 'Đã báo cáo nghiệm thu', '10.02', '01-02', 2008),
('01.11.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NTHChi DotII.01.02.doc#', NULL, NULL, 'Điều tra tình hình nhiễm Sán lá gan ở bò trong tỉnh AG và thử hiệu lực một vài loại thuốc để tẩy trùng', 'Nguyễn Thị Hạnh Chi', 'NN', 1971, 0, 'Đã làm đơn và được chấp nhận', '4', NULL, '4', '2002-04-30', '2003-04-30', 10500000, 4000000, NULL, '11.02', '01-02', NULL),
('01.12.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT LTHung DotII.01.02.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT LTHung 09.04.doc#', 'Học sinh chưa ngoan ở các trường THCS trên địa bàn TP. Long Xuyên, An Giang. Nguyên nhân và biện pháp giáo dục.', 'Lê Thanh Hùng', 'SP', 1957, 1, NULL, '1', NULL, '3', '2002-08-30', '2003-08-30', 5000000, NULL, NULL, '12.02', '01-02', NULL),
('01.13.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT TTBi2 DotII.01.02.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT TTBiII 06.03.03.doc#', 'Khảo sát thực trạng về việc tổ chức “Hoạt động giáo dục ngoài giờ lên lớp” ở một số trường Trung học cơ sở tỉnh An Giang.', 'Thái Thị Bi', 'SP', 1957, 0, NULL, '1', NULL, '3', '2002-01-30', '2002-12-30', 5500000, NULL, NULL, '13.02', '01-02', NULL),
('01.14.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT TMTam DotII.01.02.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT TMINH TAM 08.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20TMINH%20TAM%2008.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT TRAN MINH TAM  10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NTDT%20TRAN%20MINH%20TAM%20%2010.06.doc#', 'Thực trạng và giải pháp nâng cao hiệu quả công tác dạy-học các môn Tin học cho sinh viên khối không chuyên.', 'Trần Minh Tâm', 'CM', 1964, 1, '3 đạt; 3 không đạt; 1 khá', '1', NULL, '3', '2001-01-30', '2003-08-30', 80000000, 80000000, '', '14.02', '01-02', 2006),
('01.15.QL', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 01.02\\QD Giao thuc hien DT NTHDao DotII.01.02.doc#', NULL, NULL, 'Thực trạng sử dụng và biên soạn giáo trình/tài liệu giảng dạy tại trường Đại học An Giang', 'Nguyễn Thị Hồng Đào', 'QL', 1973, 0, NULL, '4', NULL, '4', '2002-08-30', '2003-02-28', 4600000, NULL, NULL, '15.02', '01-02', NULL),
('02.01.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot I 02.03\\QD Giao thuc hien DT TXHien DotI.02.03.doc#', NULL, NULL, 'Khảo sát việc chế biến sản phẩm đồ hộp cá tra sốt cà chua của Tỉnh An Giang.', 'Trần Xuân Hiển', 'NN', 1974, 1, NULL, '4', NULL, '4', '2002-12-30', '2003-12-30', 17860000, NULL, NULL, '01.03', 'đợt I', NULL),
('02.02.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot I 02.03\\QD Giao thuc hien DT NHThanh2 DotI.02.03.doc#', NULL, NULL, 'Nghiên cứu cải thiện chất lượng và kéo dài thời gian bảo quản khô cá tra phồng ở Châu đốc – AG.', 'Nguyễn Hữu Thanh', 'NN', 1976, 1, NULL, '4', NULL, '4', '2002-12-30', '2003-12-30', 17088000, NULL, NULL, '02.03', 'đợt I', NULL),
('02.03.TH', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot I 02.03\\QD Giao thuc hien DT PMTan DotI.02.03.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT PMTan 05.2004.doc#', 'Hệ thống truyền dẫn tín hiệu Video dùng cho giảng dạy.', 'Phạm Minh Tân', 'TH', 1976, 1, 'XS: 6; K:3; TB:1', '4', NULL, '3', '2003-02-28', '2003-12-30', 14580000, NULL, NULL, '03.03', 'đợt I', 2004),
('02.04.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot I 02.03\\QD Giao thuc hien DT TTTPhuong DotI.02.03.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT 3DT NTKhiem-GVanPhuc-TTTPhuong 06.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%203DT%20NTKhiem-GVanPhuc-TTTPhuong%2006.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT TTTPhuong 8.05.doc#', 'Giải pháp nhằm nâng cao hiệu quả quản lý tài chính HTX nông nghiệp tỉnh An Giang', 'Trần Thị Thanh Phương', 'KT', 1976, 0, NULL, '1', NULL, '3', '2002-02-28', '2003-02-28', 5975000, NULL, NULL, '04.03', 'đợt I', 2003),
('02.05.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT TBThao DotII.02.03.doc#', NULL, NULL, 'Tuyển chọn và so sánh các giống/dòng nếp năng suất cao, phẩm chất tốt.', 'Trương Bá Thảo', 'NN', 1953, 1, NULL, '2', NULL, '3', '2002-12-30', '2005-06-30', 24000000, 16000000, NULL, '05.03', 'đợt II', 2008),
('02.06.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT NBTrung DotII.02.03.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT NBTrung 03.04.doc#', 'Sử dụng lục bình (Eichhornia Crassipes) bổ sung trong khẩu phần heo thịt giai đoạn vổ béo.', 'Nguyễn Bá Trung', 'NN', 1972, 1, 'SX: 7; K: 7; TB: 1', '2', NULL, '3', '2003-05-14', '2004-05-14', 15000000, NULL, NULL, '06.03', 'đợt II', 2004),
('02.07.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT TTB DotII 02.03.doc#', NULL, '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT TTBiIII 03.04.doc#', 'Phát huy tính tích cực chủ động, sáng tạo của học sinh trong quá trình tổ chức hoạt động giáo dục ngoài giờ lên lớp.', 'Thái Thị Bi', 'SP', 1957, 0, NULL, '1', NULL, '3', '2003-01-30', '2003-12-30', 6000000, NULL, NULL, '07.03', 'đợt II', 2004),
('02.08.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT GVPhuc2 DotII.02.03.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT 3DT NTKhiem-GVanPhuc-TTTPhuong 06.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%203DT%20NTKhiem-GVanPhuc-TTTPhuong%2006.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT GVPhuc 20.9.02.doc#', 'Thiết kế một số dụng cụ thí nghiệm Vật lý phổ thông phần 2: Nhiệt học và điện từ học.', 'Giang Văn Phúc', 'SP', 1961, 1, 'SX: 3; K: 3; TB: 2', '2', NULL, '3', '2003-05-30', '2004-06-30', 12000000, NULL, NULL, '08.03', 'đợt II', 2004),
('02.09.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT LHHuy3 DotII.02.03.doc#', NULL, NULL, 'Tương quan giữa thời gian và công việc ngoài giờ lên lớp với kết quả học tập của SV trường ĐHAG.', 'La Hồng Huy', 'NV', 1950, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2004-04-20', '2005-04-20', 6500000, 3000000, 'Không báo cáo tiến độ 12/2008', '09.03', 'đợt II', NULL),
('02.10.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT NTSam 12.03 .doc#', '#..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB YK HD NT 2 DT cap truong thuoc du an Bo GD-DT 15.12.03.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT NTSam 12.03.doc#', 'Khó khăn trong việc đổi mới PP dạy học môn toán lớp 6; 7 ở các trường Trung học cơ sở vùng sâu tỉnh An Giang.', 'Nguyễn Thọ Sâm', 'SP', 1956, 1, 'K: 6; TB: 2', '2', NULL, '3', '2003-03-30', '2003-12-30', 10000000, NULL, NULL, '10.03', 'đợt II', 2003),
('02.11.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT DTrung 12.03.doc#', '#..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB YK HD NT 2 DT cap truong thuoc du an Bo GD-DT 15.12.03.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT DTrung 12.03.doc#', 'Dạy học môn Lịch sử theo chương trình và sách giáo khoa lớp 6 mới theo đúng định hướng đổi mới PP dạy học', 'Đoàn Trung', 'SP', 1952, 1, '( Bị thất lạc)', '2', NULL, '3', '2003-03-30', '2003-12-30', 10000000, NULL, NULL, '11.03', 'đợt II', 2003),
('02.12.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT NTNTanh DotII.02.03.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTNTANH 08.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTNTANH%2008.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT NTNHAN TANH  10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NTDT%20NTNHAN%20TANH%20%2010.06.doc#', 'Áp dụng các giải pháp nâng cao công tác vệ sinh môi trường ở Đại học An Giang trong năm học 2003-2004', 'Nguyễn Trần Nhẫn Tánh', 'CM', 1971, 1, '3 xuất sắc; 5 khá', '2', NULL, '3', '2003-09-30', '2004-09-30', 10800000, 7000000, NULL, '12.03', 'đợt II', 2006),
('02.13.TV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT DQMinh DotII.02.03.doc#', NULL, NULL, 'Xây dựng trang Web thông tin về đổi mới PPGD', 'Dương Quang Minh', 'TV', 1970, 1, 'Đã hoàn KP tạm ứng', '4', NULL, '4', '2003-09-30', '2004-09-30', 5000000, 2000000, NULL, '13.03', 'đợt II', NULL),
('02.14.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT NVM3 DotII.02.03.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NVMinh 05.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NVMinh%2005.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NVMinh 05.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NVMinh%2005.06.doc#', 'Điều tra và XD mô hình hệ thống canh tác bền vững trong chuyển đổi cơ cấu cây trồng nơi đất cao nhiều cát vùng Bảy Núi An Giang.', 'Nguyễn Văn Minh', 'NN', 1952, 1, NULL, '2', NULL, '3', '2003-10-30', '2004-10-30', 15000000, NULL, NULL, '14.03', 'đợt II', 2006),
('02.15.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT TVKhai DotII.02.03.doc#', '', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TVKhai 05.03.08.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20TVKhai%2005.03.08.doc#', 'Điều tra thành phần và mức độ gây hại của các loài côn trùng trên cây rau và cây màu tại huyện Chợ Mới, An Giang.', 'Trần Văn Khải', 'NN', 1974, 1, '', '1', NULL, '3', '2003-12-30', '2004-12-30', 11000000, 7500000, '', '15.03', 'đợt II', 2008),
('02.16.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 02.03\\Dot II 02.03\\QD Giao thuc hien DT HTPLien Dot II.02.03.doc#', NULL, NULL, 'Thử nghiệm nuôi sinh khối Rotifer (luân trùng) trong bể composite làm thức ăn cho cá tra và Basa Bột.', 'Hứa Thị Phượng Liên', 'NN', 1958, 0, 'Hoàn lại Kinh phí tạm ứng', '4', NULL, '4', '2004-02-28', '2005-03-30', 16150000, NULL, 'Chưa BC tiến độ đợt 12/2007, 12/2008', '16.03', 'đợt II', NULL),
('03.01.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NTTHong2 DotI.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT 2DT NTTHong - NPDung17.03.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%202DT%20NTTHong%20-%20NPDung17.03.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT NTTHongII 03.05.doc#', 'Điều tra phương thức nuôi dưỡng, nguồn thức ăn và những vấn đề có liên quan đến bò sữa trên địa bàn tỉnh AG.', 'Nguyễn Thị Thu Hồng', 'NN', 1968, 0, NULL, '1', NULL, '3', '2004-05-07', '2005-05-07', 2800000, NULL, NULL, NULL, 'đợt I', 2005),
('03.02.NN', NULL, NULL, NULL, 'Ứng dụng hệ thống thông tin địa lý (GIS) trong việc xây dựng và quản lý cơ sở dữ liệu đất đai ở tỉnh AG.', 'Phạm Văn Quang', 'NN', 1968, 1, 'Tạm hoãn đến 01/07, bận học', '4', NULL, '4', '2004-07-30', '2005-07-30', 14360000, 6000000, 'Đang xây dựng và chạy thử chương trình', '07.04', 'đợt I', NULL),
('03.03.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NTTXuan DotI.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTTXuan 03.07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTTXuan%2003.07.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTTXuan 05.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NTTXuan%2005.07.doc#', 'Điều tra mô hình nuôi tôm đăng quầng kết hợp trồng rau nhút trong mùa lũ.', 'Nguyễn Thị Thanh Xuân', 'NN', 1967, 0, NULL, '2', NULL, '3', '2004-06-30', '2005-06-30', 9050000, 6000000, NULL, '01.04', 'đợt I', 2006),
('03.04.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NPDung Dot I.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT 2DT NTTHong - NPDung17.03.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%202DT%20NTTHong%20-%20NPDung17.03.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QDNT DT NPDung 03.05.doc#', 'Ảnh hưởng của hai chất kích kháng CuCl2 và Acid Oxalic trong kích thích tính kháng bệnh cháy lá lúa (Pyricularia Oryzea) ở điều kiện SX ngoài đồng tại', 'Nguyễn Phú Dũng', 'NN', 1975, 1, 'SX: 5; K: 2', '4', NULL, '3', '2003-12-30', '2004-12-30', 9550000, NULL, NULL, '04.04', 'đợt I', 2005),
('03.05.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT PHTVan DotI.0304.doc#', NULL, '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT PHTVan 08.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20PHTVan%2008.07.doc#', 'Khảo sát đặc tính nông học của 35 giống Sorghum ở hai điều kiện trong chậu và ngoài đồng tại Chợ Mới và Tri Tôn, An Giang', 'Phạm Huỳnh Thanh Vân', 'NN', 1978, 0, NULL, '2', NULL, '3', '2003-12-30', '2004-12-30', 14950000, NULL, NULL, '02.04', 'đợt I', 2007),
('03.06.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT DTMTien DotI.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YKHDNT NT 2DT THong-DTMTien25.7.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YKHDNT%20NT%202DT%20THong-DTMTien25.7.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT DTMTien 8.05.doc#', 'Ảnh hưởng của các mức độ đồng và kẽm trong khẩu phần của heo con từ 7-60 ngày tuổi.', 'Đào Thị Mỹ Tiên', 'NN', 1971, 0, 'Khá: 5', '2', NULL, '3', '2004-02-28', '2005-02-28', 12980000, NULL, NULL, '10.04', 'đợt I', 2005),
('03.07.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NCTung DotI.03.04.doc#', NULL, NULL, 'Thực trạng và một số giải pháp phát triển bước đầu trong hoạt động văn hóa ở một số xã vùng khó khăn của tỉnh An Giang.', 'Nguyễn Cao Tùng', 'NV', 1978, 1, 'Xin gia hạn 03/2008', '4', NULL, '4', '2004-02-28', '2005-05-30', 12980000, 8000000, 'Cơ bản viết xong báo cáo. Đạt 80%', '06.04', 'đợt I', NULL),
('03.08.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NTHPhuong DotI.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTHOANGPHUONG 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTHOANGPHUONG%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTHPhuong 02.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NTHPhuong%2002.07.doc#', 'Thực trạng và giải pháp giáo dục truyền thống cách mạng địa phương ở một số trường THPT tỉnh AG.', 'Nguyễn Thị Hoàng Phượng', 'NV', 1978, 0, NULL, '1', NULL, '3', '2004-02-28', '2005-05-30', 13080000, 8700000, NULL, '05.04', 'đợt I', 2007),
('03.09.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot I 03.04\\QD Giao thuc hien DT NTTHong2 DotI.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YKHDNT NT 2DT THong-DTMTien25.7.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YKHDNT%20NT%202DT%20THong-DTMTien25.7.05.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT NTTHongIII 8.05.doc#', 'Sử dụng cây Mai dương (Mimosa pigra L) để nuôi dê thịt trong hộ chăn nuôi gia đỉnh.', 'Nguyễn Thị Thu Hồng', 'NN', 1968, 0, 'Khá: 4', '2', NULL, '3', '2004-05-30', '2005-05-30', 15000000, NULL, NULL, NULL, 'đợt II', 2005),
('03.10.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT DVNha dotII.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT Duong Van Nha 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20Duong%20Van%20Nha%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT DVNha 10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20DVNha%2010.06.doc#', 'Đánh giá tính bến vững mô hình lúa – tôm tại xã Phú Thuận, huyện Thoại Sơn , tỉnh AG.', 'Dương Văn Nhã', 'NN', 1971, 1, 'Đợt II 2003 - 2004', '2', NULL, '3', '2004-07-30', '2005-07-30', 13710000, 7000000, NULL, '14.04', 'đợt II', 2006),
('03.11.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT TTBi3 dotII.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TBYKHD3DTTHCS9.04.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TBYKHD3DTTHCS9.04.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TTBiIV 09.04.doc#', 'Thực trạng và giải pháp nâng cao chất lượng HĐGDNGLL  lớp 7, ở một số trường Trung học cơ sở theo chương trình và SGK mới ở An Giang .', 'Thái Thị Bi', 'SP', 1957, 0, 'K: 7', '2', NULL, '3', '2004-01-30', '2004-12-30', 11975000, NULL, NULL, '09.04', 'đợt II', 2004),
('03.12.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT PTKim DotII.03.04.doc#', NULL, NULL, 'Thực trạng va giải pháp nâng cao  chất lượng giảng dạy – học tập môn Toán lớp 2 (theo chương trình thay sách mới) ở vùng sâu tỉnh An Giang.', 'Phạm Thúc Kim', 'SP', 1965, 0, NULL, '4', NULL, '4', '2004-08-30', '2005-08-30', 14000000, NULL, NULL, '16.04', 'đợt II', NULL),
('03.13.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT DTKThanh DotII.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT DTKThanh 03.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20DTKThanh%2003.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT DTKThanh 04.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20DTKThanh%2004.06.doc#', 'Thực trạng và giải pháp nâng cao chất lượng dạy – học theo chương trình, SGK Tiếng Việt lớp 2 mới ở vùng sâu tỉnh An Giang NH 2003 - 2004', 'Đinh Thị Kim Thành', 'SP', 1956, 0, NULL, '2', NULL, '3', '2004-10-30', '2005-10-30', 10810000, 5000000, NULL, '17.04', 'đợt II', 2006),
('03.14.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT TThe DotII.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TM dai dien SGD DNT 3 DT 09.04.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TM%20dai%20dien%20SGD%20DNT%203%20DT%2009.04.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT TThe 09.04.doc#', 'Khảo sát thực trạng của việc giảng dạy chương trình Vật lý lớp 6, 7 ở tỉnh An Giang.', 'Trần Thể', 'SP', 1956, 1, 'SX: 1; K: 7', '2', NULL, '3', '2004-03-30', '2004-09-30', 10000000, NULL, NULL, '12.04', 'đợt II', 2004),
('03.15.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT NVTam dotII.03.04.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TM dai dien SGD DNT 3 DT 09.04.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TM%20dai%20dien%20SGD%20DNT%203%20DT%2009.04.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT NVTam 09.04.doc#', 'Thực trạng và giải pháp nâng cao chất lượng giảng dạy – học môn Sinh lớp 6 theo chương trình và SGK mới ở trường THCS tỉnh AG', 'Nguyễn Văn Tâm', 'SP', 1950, 1, NULL, '1', NULL, '3', '2004-04-30', '2004-08-30', 10000000, NULL, NULL, '15.04', 'đợt II', 2004),
('03.16.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT NTTrieu DotII.03.04.doc#', NULL, NULL, 'Vai trò của người phụ nữ dân tộc Kinh và Khmer trong SX nông nghiệp nông thôn ở Tri Tôn, Tịnh Biên tỉnh An Giang.', 'Nguyễn Thanh Triều', 'NT', 1966, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2004-08-30', '2005-08-30', 14160000, 11000000, NULL, '13.04', 'đợt II', NULL),
('03.17.TH', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 03.04\\Dot II 03.04\\QD Giao thuc hien DT LQCuong DotII.03.04.doc#', NULL, NULL, 'Ứng dụng ASP để xây dựng chương trình ra đề và thi trắc nghiệm trên mạng.', 'Lê Quốc Cường', 'TH', 1977, 1, 'Gia hạn đến 31/08/2007', '4', NULL, '4', '2004-06-30', '2004-12-30', 10000000, NULL, 'Chưa báo cáo tiến độ tháng 12/2007', '11.04', 'đợt II', NULL),
('04.01.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PTKPhuong dotI.04.05.doc#', NULL, '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT PTKPhuong 23.04.08.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20PTKPhuong%2023.04.08.doc#', 'Cô lập và xác định thành phẩn hoá học một số hợp chất hữu cơ có dược tính y học trên cây Kim Thất Tai - Gynura Auriculata. Cass, Họ cúc (Asteraceae).', 'Phạm Thị Kim Phượng', 'SP', 1971, 0, NULL, '4', NULL, '3', '2004-12-30', '2005-12-30', 15000000, 12000000, NULL, '02.05', 'đợt I', 2008),
('04.02.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TTBi dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT Thai Thi Bi 03 - 07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20Thai%20Thi%20Bi%2003%20-%2007.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TTBiV 04.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20TTBiV%2004.07.doc#', 'Thực trạng và giải pháp nâng cao chất lượng HĐGDNGLL  lớp 8 ở tỉnh An Giang.', 'Thái Thị Bi', 'SP', 1957, 0, NULL, '2', NULL, '3', '2004-10-30', '2005-10-30', 13100000, NULL, NULL, '01.05', 'đợt I', 2007),
('04.03.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TAThong dotI.04.05.doc#', NULL, NULL, 'Thiết kế hệ thống bài tập trắc nghiệm tiếng Anh bằng HTML và Javascript cho các lớp cao đẳng và đại học.', 'Trần Anh Thông', 'SP', 1978, 1, NULL, '4', NULL, '4', '2004-10-30', '2005-10-30', 4950000, NULL, NULL, '03.05', 'đợt I', NULL),
('04.04.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT NVTChi dotI.04.05.doc#', NULL, NULL, 'Những nhân tố tác động đến hiệu quả của việc thực hiện chủ trương  đưa SV trường ĐHAG về phục vụ tại các hợp tác xã, trang trại trên địa bàn tỉnh AG.', 'Nguyễn Vũ Thùy Chi', 'KT', 1975, 0, 'Đã ra thông báo hoàn tạm ứng', '4', NULL, '4', '2005-04-30', '2006-04-30', 6082000, 4000000, NULL, '24.05', 'đợt I', NULL),
('04.05.KT', NULL, NULL, NULL, 'Chiến lược marketing địa phương thu hút đầu tư vào ngành nông sản thực phẩm chế biến ở tỉnh AG.', 'Lê Vi An Tâm', 'KT', 1980, 0, 'Không ký hợp đồng', '4', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, 'đợt I', NULL),
('04.06.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PDuyTien dotI.04.05.doc#', NULL, NULL, 'Đánh giá độ phì của đất và năng suất lúa tại một số vùng có đê bao ở Chợ Mới - AG.', 'Phạm Duy Tiễn', 'NN', 1980, 1, NULL, '2', NULL, '3', '2005-01-30', '2006-01-30', 13520000, 5000000, NULL, '09.05', 'đợt I', 2009),
('04.07.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TVanKhai dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT TVKhai 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20TVKhai%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT Tran Van Khai 10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20Tran%20Van%20Khai%2010.06.doc#', 'Xác định phổ ký chủ của rầy phấn trắng và một số đặc điểm sinh học sinh thái liên quan đến sự gây hại của chúng.', 'Trần Văn Khải', 'NN', 1974, 1, NULL, '2', NULL, '3', '2005-03-30', '2005-09-30', 5655000, 2500000, NULL, '16.05', 'đợt I', 2006),
('04.08.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PPhuongLoan dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT PhanPhuongLoan 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20PhanPhuongLoan%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT PPLoan 10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20PPLoan%2010.06.doc#', 'Nghiên cứu đặc điểm sinh học của cá leo (Wallagonia attu Bloch).', 'Phan Phương Loan', 'NN', 1977, 0, NULL, '2', NULL, '3', '2005-03-30', '2006-03-30', 15000000, 10000000, NULL, '05.05', 'đợt I', 2006),
('04.09.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TThanhNha dotI.04.05.doc#', NULL, NULL, 'Điều tra khu hệ giun sán ký sinh ở heo tại tỉnh AG.', 'Trương Thanh Nhã', 'NN', 1964, 1, NULL, '4', NULL, '4', '2005-03-07', '2006-03-07', 15000000, 5000000, NULL, '06.05', 'đợt I', NULL),
('04.10.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PGNguyen dotI.04.05.doc#', NULL, NULL, 'Viết trang Web chẩn đoán các thiệt hại sâu bệnh trên lúa.', 'Phạm Gia Nguyễn', 'CM', 1979, 1, 'Chưa BCTĐ (04-06, 08-06)', '4', NULL, '4', '2005-04-30', '2006-01-30', 13000000, NULL, 'Chưa BC TĐ (12/2006)', '23.05', 'đợt I', NULL),
('04.11.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PTrungDung dotI.04.05.doc#', NULL, NULL, 'Khảo sát Kết cấu hạ tầng và Đời sống cộng đồng trong các Cụm tuyến dân cư vượt lũ ở AG.', 'Phan Trung Dũng', 'CM', 1977, 1, 'Cần nộp lại KP tạm ứng 15/3/07', '4', NULL, '4', '2005-04-30', '2006-04-30', 12260000, 5000000, 'Chưa BC TĐ (08-2006), (12-2006)', '18.05', 'đợt I', NULL),
('04.12.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT NTTKhanh dotI.04.05.doc#', NULL, NULL, 'Điều tra thực trạng công nghệ xử lý chất thải và nhu cầu cán bộ KT chuyên ngành MT phục vụ cho việc QLBV MT, phát triển KT-XH theo hướng bền vững ở AG', 'Nguyễn Trần Thiện Khánh', 'CM', 1978, 1, NULL, '4', NULL, '4', '2005-06-30', '2006-06-30', 8300000, 4000000, NULL, '30.05', 'đợt I', NULL),
('04.13.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT DHoangThuong dotI.04.05.doc#', NULL, NULL, 'Khảo sát thực trạng và dự báo nhu cầu nhân lực nghề cơ khí ở AG, ĐT, KG.', 'Dương Hoàng Thương', 'CM', 1971, 1, 'Gia hạn đến 02/2008', '4', NULL, '4', '2005-04-28', '2006-04-28', 13938000, 9000000, 'Đạt khoảng 90% KL công việc', '19.05', 'đợt I', NULL),
('04.14.CM', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT HTTTam dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT HTThanhTam 03.07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20HTThanhTam%2003.07.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT HTTTam 05.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20HTTTam%2005.07.doc#', 'Phân tích chất lượng nước sinh hoạt do nhà máy nước AG cung cấp phục vụ trong địa bàn TP Long Xuyên.', 'Hồ Thị Thanh Tâm', 'CM', 1978, 0, NULL, '2', NULL, '3', '2005-07-30', '2006-07-30', 18546000, NULL, NULL, '31.05', 'đợt I', 2007),
('04.15.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PVChi - Jack Merchant dotI.04.05.doc#', NULL, NULL, 'Thực trạng và giải pháp sử dụng sách giáo khoa mới và phương pháp dạy - học mới môn Tiếng Anh lớp 6, 7 ở một số trường THCS tỉnh An Giang.', 'Phan Văn Chí - Jack R.Merchant', 'NV', 1975, 1, 'Gia hạn đến 01/2007', '4', NULL, '4', '2004-12-01', '2005-12-01', 12250000, 5000000, NULL, '07.05', 'đợt I', NULL),
('04.16.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TMyNgan dotI.04.05.doc#', NULL, NULL, 'Thực trạng và giải pháp dạy - học  kĩ năng đọc hiểu tiếng Anh ở một số trường trung học phổ thông tỉnh An Giang.', 'Tạ Mỹ Ngân', 'NV', 1982, 0, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2005-01-30', '2006-01-30', 7114900, 3000000, NULL, '08.05', 'đợt I', NULL),
('04.17.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TTHuyen dotI.04.05.doc#', NULL, NULL, 'Thực trạng và giải pháp giáo dục hành vi đạo đức cho học sinh một số trường bán công, dân lập ở tỉnh An Giang.', 'Trần Thị Huyền', 'NV', 1980, 0, NULL, '1', NULL, '3', '2005-03-30', '2006-03-30', 7810000, 4000000, NULL, '12.05', 'đợt I', 2008),
('04.18.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT MNgocDiep dotI.04.05.doc#', NULL, NULL, 'Du lịch văn hoá An Giang - Thực trạng và giải pháp.', 'Mai Ngọc Diệp', 'NV', 1980, 0, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2005-01-30', '2005-12-30', 9220000, 6000000, 'CNĐT xin ngưng TH, sẽ bổ sung đơn sau', '13.05', 'đợt I', NULL),
('04.19.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TMinhDuong dotI.04.05.doc#', NULL, NULL, 'Thực trạng và giải pháp về dạy-học môn lý luận văn học ở bậc THPT tỉnh AG.', 'Tiêu Minh Đương', 'NV', 1972, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2005-03-30', '2006-03-30', 7145000, 4000000, 'Chưa BC tiến độ đợt 12/2007, 12/2008', '14.05', 'đợt I', NULL),
('04.20.NV', NULL, NULL, NULL, 'Quá trình tích tụ ruộng đất và những biến đổi xã hội ở huyện Thoại Sơn tỉnh An Giang trong thời kỳ đổi mới.', 'Trần Thị Thu Nguyệt', 'NV', 1980, 0, NULL, '4', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, 'đợt I', NULL),
('04.21.NV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT NVHuongGiang dotI.04.05.doc#', NULL, NULL, 'Nhận thức, thái độ và hành vi của người nông dân An Giang về HIV/AIDS.', 'Nguyễn Vũ Hương Giang', 'NV', 1980, 0, 'GH(11/2006)đã ngưng công tác', '4', NULL, '4', '2005-01-30', '2006-01-30', 7024000, 4000000, 'Đạt khoảng 70% khối lượng công việc', '17.05', 'đợt I', NULL),
('04.22.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT NHTri dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NguyenHuuTri 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NguyenHuuTri%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NHTri 11.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NHTri%2011.06.doc#', 'Nghiên cứu tác động của cơ sở hạ tầng đến sản xuất và đời sống người dân huyện Chợ Mới, tỉnh AG.', 'Nguyễn Hữu Trí', 'NT', 1979, 1, NULL, '1', NULL, '3', '2005-04-30', '2006-06-30', 10020000, 5000000, NULL, '20.05', 'đợt I', 2006),
('04.23.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TTMyDuyen dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT TrangThiMyDuyen 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20TrangThiMyDuyen%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NTDT TTM Duyen  11.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NTDT%20TTM%20Duyen%20%2011.06.doc#', 'Nhu cầu vốn, phân tích hiệu quả sử dụng vốn vay và hướng phát triển đầu tư tín dụng nông thôn ở huyện Tri Tôn tỉnh An Giang.', 'Trang Thị Mỹ Duyên', 'NT', 1979, 0, NULL, '1', NULL, '3', '2005-03-30', '2006-03-30', 11578000, 5000000, NULL, '10.05', 'đợt I', 2006),
('04.24.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT DTThanhQuynh dotI.04.05.doc#', NULL, NULL, 'Nghiên cứu một số yếu tố thủy hóa và thủy sinh trong môi trường nước của mô hình nuôi tôm ở xã Phú Thuận, H.Thoại Sơn, tỉnh AG.', 'Đặng Thị Thanh Quỳnh', 'NT', 1978, 0, NULL, '1', NULL, '3', '2005-04-30', '2006-03-30', 14994000, 10000000, NULL, '15.05', 'đợt I', 2008),
('04.25.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT TNPhuongDiem dotI.04.05.doc#', NULL, NULL, 'Thực trạng sản xuất và giải pháp khôi phục nghề dệt lụa truyền thống của dân tộc Khmer  huyện Tịnh Biên, Tri Tôn tỉnh An Giang.', 'Trần Nhựt Phương Diễm', 'NT', 1977, 0, NULL, '1', NULL, '3', '2004-12-30', '2005-12-30', 11350000, 7000000, NULL, '11.05', 'đợt I', 2009),
('04.26.TH', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot I\\QD Giao thuc hien DT PMinhTan dotI.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT PMTan 03.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20PMTan%2003.06.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT PMTan 05.06.doc#', 'Robo con', 'Phạm Minh Tân', 'TH', 1976, 1, NULL, '2', NULL, '3', '2004-12-30', '2005-08-30', 25000000, 20000000, 'Đã báo cáo NT', '04.05', 'đợt I', 2006),
('04.27.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien DT Hoang Quoc dotII.04.05.doc#', NULL, NULL, 'Nghiên cứu năng lực sử dụng tiếng Việt của học sinh Khmer  trên địa bàn huyện Tịnh Biên và Tri Tôn tỉnh An Giang.', 'Hoàng Quốc', 'SP', 1973, 1, 'Gia hạn 12/2010', '2', NULL, '3', '2005-04-30', '2006-04-30', 14960000, 10000000, 'Đã viết xong báo cáo nghiệm thu. Đang chỉnh sửa và in ấn. Đạt 99%', '21.05', 'đợt II', 2013),
('04.28.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien DT NTMDuyen dotII.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HD NT 1 DT & DCCT - NTMDUYEN 12.05.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HD%20NT%201%20DT%20&%20DCCT%20-%20NTMDUYEN%2012.05.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTMDUYEN 02.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NTMDUYEN%2002.06.doc#', 'Nghiên cứu các loại giá thể trồng rau mầm thích hợp và cho hiệu quả kinh tế cao.', 'Nguyễn Thị Mỹ Duyên', 'NN', 1974, 0, NULL, '2', NULL, '3', '2005-04-30', '2005-08-30', 2967000, 2000000, NULL, '22.05', 'đợt II', 2006),
('04.29.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien DT Nguyen Huu Thanh dotII.04.05.doc#', NULL, NULL, 'Nghiên cứu chế biến Fromage đậu nành.', 'Nguyễn Hữu Thanh', 'NN', 1976, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2005-06-16', '2006-03-16', 9395000, 5000000, 'Chưa BC tiến độ đợt 08/2007, 12/2007, 12/2008', '29.05', 'đợt II', NULL),
('04.30.KT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien NTLong dotII.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTLong 06.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTLong%2006.06.doc#', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTLong 06.06.doc#', 'Sử dụng thang đo SERVPERF để đánh giá chất lượng đào tạo đại học tại Trường Đại học An Giang.', 'Nguyễn Thành Long', 'KT', 1961, 1, NULL, '2', NULL, '3', '2005-06-01', '2005-11-30', 4900000, NULL, NULL, '25.05', 'đợt II', 2006),
('04.31.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien DT Nguyen Van Chuong dotII.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NVChuong 03.07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NVChuong%2003.07.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NVChuong 04.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NVChuong%2004.07.doc#', 'Tái chế dầu thực vật đã qua sử dụng thành dầu thành phẩm để sử dụng trong chế biến thực phẩm.', 'Nguyễn Văn Chương', 'NN', 1965, 1, NULL, '2', NULL, '3', '2005-06-30', '2006-06-30', 14748000, NULL, NULL, '28.05', 'đợt II', 2007),
('04.32.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien NTMinhChau dotII.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTMINH CHAU 10.06.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTMINH%20CHAU%2010.06.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTMChau 10.06.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NTMChau%2010.06.doc#', 'So sánh năng suất một số giống dưa hấu có triển vọng tại Tri Tôn - An Giang vào mùa mưa năm 2005.', 'Nguyễn Thị Minh Châu', 'NN', 1975, 0, NULL, '2', NULL, '3', '2005-06-30', '2006-04-30', 13900000, 5000000, NULL, '27.05', 'đợt II', 2006),
('04.33.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 04.05\\Dot II\\QD Giao thuc hien NPhuDung dotII.04.05.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NPDung 03.07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NPDung%2003.07.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NPDung 05.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NPDung%2005.07.doc#', 'Một số biện pháp phòng trị sâu hại chính trên dưa hấu tại huyện Tri Tôn, An Giang vụ Thu Đông 2005.', 'Nguyễn Phú Dũng', 'NN', 1975, 1, NULL, '2', NULL, '3', '2005-06-30', '2006-04-30', 14700000, NULL, NULL, '26.05', 'đợt II', 2007),
('04.34.SP', NULL, NULL, NULL, 'Thực trạng giảng dạy môn Anh văn của SV khóa 1 ĐHAG ở các trường THPT An Giang trong năm học 2004-2005', 'Bùi Thị Khôi Nguyên', 'SP', 0, 0, 'Chỉ ĐK ĐT nhưng không TH', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt I', NULL),
('05.01.CM', NULL, NULL, NULL, 'Khảo sát các đặc điểm sinh học và khả năng làm biến động các yếu tố lý, hóa ở môi trường nước của lục bình trong hệ thống sản xuất VACB ở huyện Chợ Mớ', 'Trần Thị Hồng Ngọc', 'CM', 0, 0, 'Do ĐT không đủ tầm thực hiện', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('05.01.KD', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Tran Van Thanh. Dot I 05 - 06.doc#', NULL, '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT TVThanh 16.04.08.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20TVThanh%2016.04.08.doc#', 'Nghiên cứu sử dụng thí nghiệm trong dạy học Vật lý ở một số trường THCS - AG.', 'Trần Văn Thạnh', 'KD', 0, 1, NULL, '2', NULL, '3', '2006-01-01', '2007-01-01', 13863000, 3000000, NULL, '12.06', 'đợt 1', 2008),
('05.01.KH', NULL, NULL, NULL, 'Quy hoạch tổng thể phát triển trường Đại học An Giang đến năm 2015', 'Hạng Minh Tuấn', 'KH', 0, 1, 'Chuyển qua đề án', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.01.KT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Dang Anh Tai- dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Dang%20Anh%20Tai-%20dot%20II%2005-06.doc#', NULL, NULL, 'Đánh giá khả năng tiếp cận nguồn vốn ngân hàng của các doanh nghiệp nhỏ và vừa tại tp. Long Xuyên.', 'Đặng Anh Tài', 'KT', 0, 1, 'Xin đổi PP lấy mẫu (BC TĐ 8/07', '1', NULL, '3', '2006-12-01', '2007-12-01', 6600000, 4000000, 'Đã họp hội đồng nghiệm thu', '28.06', 'đợt 2', 2008),
('05.01.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Le Thanh Phong. Dot I 05 - 06.doc#', NULL, NULL, 'Vai trò Calcium trong việc tăng năng suất và phẩm chất đậu phộng trên vùng đất cát huyện Tri Tôn - An Giang', 'Lê Thanh Phong', 'NT', 0, 1, NULL, '2', NULL, '3', '2006-04-04', '2007-04-04', 14129000, NULL, NULL, '14.06', 'đợt 1', 2009),
('05.01.SP', NULL, NULL, NULL, 'Lý thuyết “tảng băng trôi” trong tiểu thuyết của Ernest Hemingway.', 'Trần Văn Đạt', 'SP', 0, 1, 'Do ĐT không đạt', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.01.TN', NULL, NULL, NULL, 'Những ảnh hưởng của tiếng mẹ đẻ và cách hành văn tiếng Việt đối với việc học môn viết của SV chuyên Anh năm I và II.', 'Phan Thị Thanh Huyền', 'TN', 0, 0, NULL, '4', NULL, '4', NULL, NULL, NULL, 0, NULL, NULL, 'đợt 1', NULL),
('05.01.TV', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Nguyen Phuoc Loc. Dot I 05 - 06.doc#', NULL, NULL, 'Xây dựng cổng thông tin trường đại học An Giang, AGPortal', 'Nguyễn Phước Lộc', 'TV', 0, 1, 'Đã nghỉ việc', '4', NULL, '4', '2005-11-01', '2006-07-01', 6750000, 0, 'Chưa BC tiến độ tháng 12/2007', '09.06', 'đợt 1', NULL);
INSERT INTO `dm_detai_captruong` (`MSDT`, `QDGTH`, `YKIENHD`, `QDNT`, `TENDT`, `CNDT`, `DONVI`, `NAMSINH`, `PHAI`, `GHICHU`, `XEPLOAI`, `DIEMSO`, `HTDETAI`, `TGBATDAU`, `TGKETTHUC`, `TONGKINHPHI`, `KPTAMUNG`, `TIENDO`, `SOHD`, `DOT`, `NAM-NT`) VALUES
('05.02.CM', NULL, NULL, NULL, 'Nghiên cứu giải pháp xử lý rác thải sinh hoạt hợp lý với quy mô nhóm hộ gia đình ở nông thôn.', 'Nguyễn Thanh Hùng', 'CM', 0, 1, 'Chưa Bảo vệ ĐCCT', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.02.KT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Nguyen THi Ngoc Lan - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Nguyen%20THi%20Ngoc%20Lan%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Khảo sát nhu cầu tư vấn quản trị doanh nghiệp của các doanh nghiệp ở An Giang.', 'Nguyễn Thị Ngọc Lan', 'KT', 0, 0, NULL, '2', NULL, '3', '2006-01-10', '2007-07-31', 4900000, 3200000, NULL, '26.06', 'đợt 2', 2008),
('05.02.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Nguyen Phu Dung. Dot I 05 - 06.doc#', NULL, '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NPDungIII.14.04.08.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NPDungIII.14.04.08.doc#', 'Ảnh hưởng của một số vật liệu chứa đất trồng gừng và Trichoderma lên sinh trưởng và dịch hại chính trên gừng tại Chợ Mới - An Giang', 'Nguyễn Phú Dũng', 'NN', 1975, 1, NULL, '2', NULL, '3', '2006-02-01', '2007-02-01', 14500000, 10000000, NULL, '06.06', 'đợt 1', 2008),
('05.02.NT', NULL, NULL, NULL, 'Thực trạng và tiềm năng phát triển làng nghề truyền thống, tiểu thủ công mỹ nghệ tỉnh An Giang kết hợp với du lịch sinh thái.', 'Trần Nhựt Phương Diễm', 'NT', 0, 0, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('05.02.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua LTSon Ngoc Thien Chuong - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20LTSon%20Ngoc%20Thien%20Chuong%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Hướng dẫn phương pháp đọc hiểu tác phẩm văn chương cho SV ngành ngữ văn K. Sư phạm, ĐH An Giang.', 'Lâm Tr. Sơn Ngọc Thiên Chương', 'SP', 0, 0, 'Đã nộp đơn xin ngưng TH', '4', NULL, '4', '2006-07-30', '2007-07-30', 3355000, 0, 'Đã NC lý thuyết, khảo sát thực nghiệm. Đạt 70%', '23.06', 'đợt 2', NULL),
('05.02.TV', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Duong Quang Minh - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Duong%20Quang%20Minh%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Xây dựng hệ thống lưu trữ thông tin số dựa trên phần mềm nguồn mở DSPACE của Viện Công Nghệ Massachusette', 'Dương Quang Minh', 'TV', 0, 1, 'Đã nghỉ việc', '4', NULL, '4', '2006-09-01', '2006-11-01', 14500000, 0, 'chưa báo cáo tiến độ đợt 08/2007,12/2007', '25.06', 'đợt 2', NULL),
('05.03.CM', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Nguyen Hoang My Lan - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Nguyen%20Hoang%20My%20Lan%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Nghiên cứu ứng dụng công nghệ GIS trong công tác quản lý hệ thống cấp thoát nước tại tp. Long Xuyên - tỉnh An Giang.', 'Nguyễn Hoàng Mỹ Lan', 'CM', 0, 0, 'CNĐT đã nộp đơn xin ngưng TH', '4', NULL, '4', '2006-01-09', '2007-01-09', 13466000, NULL, NULL, '27.06', 'đợt 2', NULL),
('05.03.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Trinh Hoai Vu. Dot I 05 - 06.doc#', NULL, NULL, 'So sánh năng suất và giống/dòng đậu xanh có triển vọng tại An Phú, An Giang', 'Trịnh Hoài Vũ', 'NN', 0, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2006-02-01', '2006-07-30', 5876000, 2000000, NULL, '07.06', 'đợt 1', NULL),
('05.03.NT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Tran N. Phuong Diem - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Tran%20N.%20Phuong%20Diem%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Sinh kế của giới khi vào cụm-tuyến dân cư tại 3 huyện An Phú - Châu phú - Tri Tôn tỉnh An Giang.', 'Trần Nhựt Phương Diễm', 'NT', 0, 0, NULL, '2', NULL, '3', '2006-09-20', '2007-09-20', 14233000, 5000000, 'Chờ họp HĐ NT', '24.06', 'đợt 2', 2010),
('05.03.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Le Thi Lien - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Le%20Thi%20Lien%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Nét “thống nhất trong đa dạng” của văn hóa truyền thống Đông Nam Á.', 'Lê Thị Liên', 'SP', 0, 0, 'Gia hạn đến 08/2009', '2', NULL, '3', '2006-08-01', '2007-08-01', 4750000, 3000000, 'Đang viết báo cáo. Đạt 95%. Chưa báo cáo 08/2009', '20.06', 'đợt 2', 2010),
('05.04.CM', NULL, NULL, NULL, 'Đánh giá hiện trạng ô nhiễm hữu cơ ở các kênh rạch trong nội ô tp. Long Xuyên.', 'Nguyễn Thanh Hùng', 'CM', 0, 1, 'Không bảo vệ ĐCCT', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.04.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Nguyen Duy Tan. Dot I 05 - 06.doc#', NULL, NULL, 'Đề xuất giải pháp để nâng cao chất lượng và kéo dài thời gian bảo quản khô cá tra phồng ở Châu Đốc - An Giang.', 'Nguyễn Duy Tân', 'NN', 0, 1, NULL, '2', NULL, '3', '2006-03-01', '2007-02-01', 15000000, 5000000, NULL, '01.06', 'đợt 1', 2009),
('05.04.SP', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Nguyen Van Men - dot II 05-06.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT Nguyen Van Men 03 - 07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20Nguyen%20Van%20Men%2003%20-%2007.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NVMen 05.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NVMen%2005.07.doc#', 'Thiết kế bảy bài thí nghiệm vô tuyến điện dùng cho sinh viên hệ đại học An Giang.', 'Nguyễn Văn Mện', 'SP', 0, 1, 'ĐÃ QUYẾT TOÁN', '2', NULL, '3', '2006-07-01', '2006-12-01', 9825000, 4000000, NULL, '19.06', 'đợt 2', 2007),
('05.05.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Trinh Thi Lan. Dot I 05 - 06.doc#', NULL, NULL, 'Thử nghiệm enzime Ionic Plasma để xử lý nước thải trong ao nuôi thuỷ sản.', 'Trịnh Thị Lan', 'NN', 0, 0, 'Gia hạn đến 12/2009, 07/2010', '2', NULL, '3', '2006-04-20', '2007-04-20', 14942000, 10000000, 'Đang viết báo cáo nghiệm thu', '15.06', 'đợt 1', 2010),
('05.06.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Nguyen Thanh Son. Dot I 05 - 06.doc#', NULL, NULL, 'Đánh giá chất 1lượng nước cho mô hình xử lý nước thải SFS (Subsurface Flow System) ở Ô Long Vĩ, An Giang.', 'Danh Quyền', 'NN', 0, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2006-05-01', '2007-05-01', 15000000, 5000000, 'Chưa báo cáo TĐ 12/2008', '13.06', 'đợt 1', NULL),
('05.07.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Nguyen T My Duyen. Dot I 05 - 06.doc#', NULL, NULL, 'Nhân giống lan Dendrobium mini và Dendrobium anosmum bằng phương pháp nuôi cấy mô. Nghiên cứu các loại giá thể trồng lan Dendrobium mini thích hợp và ', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, 0, NULL, '2', NULL, '3', '2005-12-01', '2006-12-01', 14962228, 10000000, NULL, '11.06', 'đợt 1', 2009),
('05.08.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Huynh Truong Hue. Dot I 05 - 06.doc#', NULL, NULL, 'Cải tiến quy trình nhân giống gừng (Zingiber officinate Roce.) bằng phương pháp nuôi cấy mô', 'Huỳnh Trường Huê', 'NN', 0, 0, NULL, '2', NULL, '3', '2006-03-01', '2007-03-01', 14610000, 5000000, 'Đã họp hội đồng nghiệm thu. Chờ nộp bản cuối cùng', '05.06', 'đợt 1', 2007),
('05.09.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Ho Thi Thu Ba. Dot I 05 - 06.doc#', NULL, NULL, 'Rút ngắn quy trình làm meo nấm rơm và trồng thử nghiệm tại xã Mỹ Khánh, thành phố Long Xuyên, tỉnh An Giang.', 'Hồ Thị Thu Ba', 'NN', 0, 0, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2006-02-01', '2006-09-01', 9650849, 3500000, 'Chưa BC tiến độ 12/2007, 12/2008', '04.06', 'đợt 1', NULL),
('05.10.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Phan Thi Thanh Van. Dot I 05 - 06.doc#', NULL, NULL, 'Nghiên cứu đặc điểm sinh học sinh sản và ương lươn đồng (monopterus albus) bằng các loại thức ăn khác nhau.', 'Phan Thị Thanh Vân', 'NN', 0, 0, NULL, '2', NULL, '3', '2006-02-01', '2006-10-01', 12090000, NULL, NULL, '10.06', 'đợt 1', 2009),
('05.11.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Truong Thanh Tam. Dot I 05 - 06.doc#', NULL, NULL, 'Ảnh hưởng của khoáng đa vi lượng và prohexadione - Ca lên năng suất và chất lượng của đậu phộng (Arachis hypogeae L.) ở huyện Tri Tôn, tỉnh An Giang', 'Trương Thành Tâm', 'NN', 0, 1, NULL, '2', NULL, '3', '2006-02-01', '2007-01-30', 15000000, 10000000, NULL, '03.06', 'đợt 1', 2008),
('05.12.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Tran Thanh Dung Dot I 05 - 06.doc#', NULL, NULL, 'Thuỷ phân phụ phế phẩm cá tra (pangasius hypoththalmus) bằng vi khuẩn Lactobacillus làm phân bón gốc và bón lá trên cây RAU ở Đồng bằng sông Cửu Long.', 'Trần Thanh Dũng', 'NN', 0, 1, '(sửa tên: cây họ đậu - cây rau', '2', NULL, '3', '2006-04-01', '2007-04-01', 14648000, 10000000, NULL, '02.06', 'đợt 1', 2008),
('05.13.NN', NULL, NULL, NULL, 'Nghiên cứu ứng dụng và xây dựng quy trình liên hoàn trong chăn nuôi Dê - Thỏ', 'Vũ Ngọc Hoài', 'NN', 0, 1, 'CS 2 (ĐT không đủ tầm)', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('05.14.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT I\\QD Giao TH DT Huynh Ngoc Duc. Dot I 05 - 06.doc#', NULL, NULL, 'Theo dõi sự sinh trưởng và phát triển của sậy trong mô hình xử lý nước thải sinh hoạt (SFS - Subsurface Flow System) ở cụm tuyến dân cư vượt lũ Long P', 'Huỳnh Ngọc Đức', 'NN', 0, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2006-02-01', '2006-12-31', 14044000, 5000000, 'Chưa BC tiến độ tháng 12/2007, 12/2008', '08.06', 'đợt 1', NULL),
('05.15.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Cao Van Thich - dot II 05-06.doc#', NULL, NULL, 'So sánh sự sinh sản và phát triển của ấu trùng và hậu ấu trùng Tôm càng xanh (Macrobrachium Rosenbergii) nguồn gốc địa phương và Hawaii (Mỹ)', 'Cao Văn Thích', 'NN', 0, 1, NULL, '2', NULL, '3', '2006-07-01', '2007-07-01', 11672000, 5000000, NULL, '18.06', 'đợt 2', 2009),
('05.16.NN', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Luong T. Bao Thanh - dot II 05-06.doc#', NULL, '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT LTBThanh 08.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20LTBThanh%2008.07.doc#', 'Ứng dụng nước biển nhân tạo trong thực tiễn sản xuầt giống tôm càng xanh (Macrobrachium rosenbergii) theo hệ thống nước xanh cải tiến.', 'Lương Thị Bảo Thanh', 'NN', 0, 0, NULL, '2', NULL, '3', '2006-08-01', '2007-02-28', 14574500, 9000000, 'Đã báo cáo nghiệm thu đề tài', '17.06', 'đợt 2', 2007),
('05.17.NN', NULL, NULL, NULL, 'Nghiên cứu đặc điểm sinh học cá Chạch Lấu (Mastacembelus armatus Lacepede, 1800).', 'Lê Văn Lễnh', 'NN', 0, 1, 'Đã đăng ký mới ở NH 2007-2008', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.18.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Phan Phuong Loan - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Phan%20Phuong%20Loan%20-%20dot%20II%2005-06.doc#', NULL, NULL, 'Nghiên cứu thử nghiệm sinh sản nhân tạo cá Leo (Wallago attu Schneider, 1801)', 'Phan Phương Loan', 'NN', 0, 0, 'Đã được đồng ý', '4', NULL, '4', '2006-09-15', '2007-09-15', 15000000, 10000000, 'Đã làm đơn xin ngưng TH', '22.06', 'đợt 2', NULL),
('05.19.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Nguyen T Thu Hong - dot II 05-06.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2005.06/DOT%20II/QD%20Giao%20THDT%20cua%20Nguyen%20T%20Thu%20Hong%20-%20dot%20II%2005-06.doc#', '..\\..\\lmtri\\NCKH\\TBao-TMoi\\TB-YKHD-XDDC-NGHIEMTHU\\NGHIEMTHU DT\\TB YK HDNT NTTHong 12.12.07.doc#../../lmtri/NCKH/TBao-TMoi/TB-YKHD-XDDC-NGHIEMTHU/NGHIEMTHU%20DT/TB%20YK%20HDNT%20NTTHong%2012.12.07.doc#', '..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTThuHong 12.07.doc#../../lmtri/NCKH/QD%20NT%20DT/QD%20NT%20DT%20NTThuHong%2012.07.doc#', 'Ảnh hưởng của rau muống, so đũa, bình linh, mai dương và thức ăn tinh trên mức ăn vào, tỉ lệ tiêu hóa và môi trường dạ cỏ của dê tăng trưởng.', 'Nguyễn Thị Thu Hồng', 'NN', 0, 0, NULL, '2', NULL, '3', '2006-06-01', '2007-06-01', 14993000, 14000000, NULL, '21.06', 'đợt 2', 2007),
('05.20.NN', NULL, NULL, NULL, 'Điều tra hiện trạng canh tác cây kiệu tại hai huyện Tri Tôn và Chợ Mới, tỉnh An Giang năm 2006.', 'Nguyễn Thị Minh Châu', 'NN', 0, 0, 'Đề tài mới đợt II (05 - 06)', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.21.NN', NULL, NULL, NULL, 'Ứng dụng kỹ thuật nuôi cấy tế bào thực vật trong nhân giống hoa Dã Yên Thảo (Pentunia sp.) bằng phương pháp thủy canh.', 'Nguyễn Thị Thuý Diễm', 'NN', 0, 0, 'Do đề cương không được duyệt', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.22.NN', NULL, NULL, NULL, 'So sánh sự sinh trưởng và năng suất một số giống đậu phộng trên địa bàn huyện Tri Tôn.', 'Nguyễn Thanh Triều', 'NN', 0, 1, 'Do trùng với 1 ĐT cấp tỉnh', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('05.23.NT', '#..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 05.06\\DOT II\\QD Giao THDT cua Do Thi Thuy Diem - dot II 05-06.doc#', NULL, NULL, 'Ảnh hưởng của ẩm độ đất trồng lên khả năng sinh trưởng, năng suất và giá trị dinh dưỡng của cỏ Paspalum atratum.', 'Đỗ Thị Thuý Diễm', 'NT', 0, 0, 'Gia hạn 6 tháng', '2', NULL, '3', '2006-07-01', '2007-07-01', 14960000, 9000000, NULL, '16.06', 'đợt 2', 2008),
('05.24.NN', NULL, NULL, NULL, 'Đánh giá các thức ăn thuỷ sản trong hệ thống nuôi cá Tra trên ao, bè và đăng quầng tác động đến môi trường ở tỉnh An Giang', 'Chau Thi Đa', 'NN', 0, 1, 'Do không đủ yêu cầu', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.01.CM', NULL, NULL, NULL, 'Quan trắc hiệu quả xử lý chất thải của mô hình sản xuất phân compost với nguyên liệu từ bùn thải ao nuôi cá (có so sánh với mô hình sản xuất compost t', 'Nguyễn Trần Thiện Khánh', 'CM', 0, 1, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.01.KT', NULL, NULL, NULL, 'Một số giải pháp nâng cao năng lực cạnh tranh cho thành phần Kinh tế tư nhân tỉnh An Giang giai đoạn 2006 - 2010.', 'Lưu Thị Thái Tâm', 'KT', 0, 0, 'ĐK đợt 1 nhưng hủy bỏ ko BC ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.01.NN', NULL, NULL, NULL, 'Khảo sát thành phần loài, đặc điểm sinh học, khả năng gây hại một số loài sâu ăn lá, sâu đục quả và thiên địch của chúng trên các loại cây trồng họ đậ', 'Nguyễn Thị Thái Sơn', 'NN', 0, 0, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.01.NT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Truong Ngoc Thuy - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Truong%20Ngoc%20Thuy%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Ảnh hưởng của liều lượng đạm và hình thức thả giống đến sinh trưởng, năng suất Lục bình tại xã Bình Thạnh Đông, Phú Tân, AG', 'Trương Ngọc Thúy', 'NT', 0, 0, 'Do đi học ở Thái Lan', '4', NULL, '4', '2007-01-01', '2008-01-01', 13708000, 5000000, NULL, '03.07', 'đợt 1', NULL),
('06.01.NV', NULL, NULL, NULL, 'Thử nghiệm mô hình “nữ sinh viên sư phạm trường đại học An Giang giúp đỡ nữ học sinh có nhiều nguy cơ trong sự phát triển” ở trường trung học cơ sở TP', 'Lillian Forsyth', 'NV', 0, 0, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', 0),
('06.01.SP', NULL, NULL, NULL, 'Cải tiến phương pháp đánh giá kết quả học tập của sinh viên đối với các môn học thuộc khoa học xã hội và nhân văn tại trường Đại học An Giang.', 'Trần Văn Đạt', 'SP', 0, 1, 'Chờ báo cáo lại', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.01.TN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Phan Thi T. Huyen - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Phan%20Thi%20T.%20Huyen%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Khảo sát khả năng nói tiếng Anh của sinh viên đại học An Giang khối ngành ngoài Sư phạm và yêu cầu của các nhà tuyển dụng địa phương.', 'Phan Thị Thanh Huyền', 'TN', 0, 0, 'Đơn ngưng TH 16/6/2013', '4', NULL, '4', '2007-03-14', '2008-03-14', 5940000, 2000000, 'Đạt 97% (92%). Đang chỉnh sửa bản thảo. Chưa báo cáo tiến độ tháng 11/2010', '11.07', 'đợt 1', NULL),
('06.01.TV', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Ngo Thi kim Duyen - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Ngo%20Thi%20kim%20Duyen%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Xây dựng đĩa Video hướng dẫn sử dụng PowerPoint', 'Ngô Thị Kim Duyên', 'TV', 0, 0, 'Gia hạn đến 05/2008', '4', NULL, '4', '2007-03-01', '2007-09-01', 10000000, 3000000, 'Đã ra thông báo Ngưng TH hoàn lại Kinh phí', '09.07', 'đợt 1', NULL),
('06.01.VH', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Tran dinh loc - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Tran%20dinh%20loc%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Thực trạng giảng dạy môn Âm nhạc ở một số trường tiểu học tỉnh An Giang', 'Trần Đình Lộc', 'VH', 0, 1, NULL, '1', NULL, '3', '2006-10-01', '2007-10-01', 14178000, 9000000, NULL, '05.07', 'đợt 1', 2009),
('06.02.CM', NULL, NULL, NULL, 'Khảo sát tình hình thực hiện pháp luật về bảo vệ môi trường tại các doanh nghiệp sản xuất ngành công nghiệp chế biến thủy sản tại AG', 'Trần Minh Tâm', 'CM', 0, 1, 'Cphuong báo TG ngưng TH', '4', NULL, '4', '2008-04-26', '2008-12-30', 9000000, 0, 'Đạt 70%.', '10.08', 'đợt 1', NULL),
('06.02.KT', NULL, NULL, NULL, 'Giải pháp phát triển làng nghề bánh phồng khoai mì tại xã Ba Chúc, huyện Tri Tôn, AG.', 'Trần Minh Hải', 'KT', 0, 1, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.02.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Nguyen Phu Dung - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Nguyen%20Phu%20Dung%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Hiệu quả của chế phẩm EM, Trico-ĐHCT đối với bệnh thối củ gừng và ảnh hưởng của lượng giống, kích thước sọt tre lên sinh trưởng, năng suất gừng tại xã', 'Nguyễn Phú Dũng', 'NN', 0, 1, NULL, '2', NULL, '3', '2007-01-25', '2008-01-25', 14250000, 10000000, 'Đang tổng hợp số liệu, viết báo cáo. Đạt 90%', '02.07', 'đợt 1', 2010),
('06.02.NT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Mai Xuan Thao- Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Mai%20Xuan%20Thao-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Hiệu quả kinh tế của mô hình nuôi dưỡng và khai thác Lục Bình (Eichhornia crassipes (Maret) Solms) tự nhiên tại huyện Phú Tân, tỉnh An Giang', 'Mai Xuân Thảo', 'NT', 0, 0, NULL, '2', NULL, '3', '2007-01-01', '2007-12-31', 9300000, 6000000, NULL, '07.07', 'đợt 1', 2008),
('06.02.QL', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Tran Thi Thanh Hue - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Tran%20Thi%20Thanh%20Hue%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Thực trạng và giải pháp cho việc dạy và học kỹ năng Nghe-Nói tiếng Anh của học sinh THCS ở thành phố Long Xuyên, tỉnh An Giang', 'Trần Thị Thanh Huế', 'TL', 0, 0, 'Gia hạn đến 05/2011', '4', NULL, '4', '2008-02-01', '2009-02-01', 10900000, 0, 'Thực hiện khoảng 1/3 KL.', '18.08', 'đợt 1', NULL),
('06.02.TN', NULL, NULL, NULL, 'Thiết kế một khóa học Hình thái học tiếng Anh cho sinh viên ngoại ngữ theo phân loại Bloom.', 'Trần Quốc Thắng', 'TN', 0, 1, 'Không báo cáo lại đề cương', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.02.TV', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Nguyen T Phuong Anh - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Nguyen%20T%20Phuong%20Anh%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Đánh giá hiệu quả và phương hướng nâng cao chất lượng các dịch vụ của Thư Viện Điện tử trường Đại Học An Giang', 'Nguyễn Thị Phương Ánh', 'TV', 0, 0, 'Đã họp HĐ NT tháng 3/09', '4', NULL, '3', '2007-03-01', '2008-03-01', 14900000, 8000000, NULL, '08.07', 'đợt 1', NULL),
('06.03.CM', NULL, NULL, NULL, 'Khảo sát sự hiểu biết, tính sẵn sàng của cộng đồng với các hệ điều hành và ứng dụng văn phòng mã nguồn mở ở tỉnh AG.', 'Trần Thị Minh Nguyệt', 'CM', 0, 0, 'Không bảo vệ ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.03.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Nguyen Thanh Trieu - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Nguyen%20Thanh%20Trieu%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Ảnh hưởng các liều lượng phân đạm và lân đến sinh trưởng và năng suất đậu phộng vụ Đông Xuân tại ruộng bưng, Tri Tôn', 'Nguyễn Thanh Triều', 'NN', 0, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2007-02-01', '2008-02-01', 14965000, 5000000, 'Chưa báo cáo tiến độ 12/2007, 12/08, 04/09, 08/09, 04/10,11/10', '04.07', 'đợt 1', NULL),
('06.03.NT', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Tran Xuan Long - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Tran%20Xuan%20Long%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Một số nhân tố chính ảnh hưởng đến thu nhập của nông hộ tại huyện Tri Tôn, An Giang', 'Trần Xuân Long', 'NT', 0, 1, 'Gia hạn đến 02/2009', '1', NULL, '3', '2007-02-01', '2008-02-01', 13485000, 9000000, 'Đã ra hội đồng nghiệm thu', '06.07', 'đợt 1', 2010),
('06.04.NN', NULL, NULL, NULL, 'Áp dụng phương pháp phòng bệnh bằng Ozone trong sản xuất giống tôm càng xanh (Macrobrachium rosenbergii) theo mô hình nước xanh cải tiến.', 'Lương Thị Bảo Thanh', 'NN', 0, 0, 'Do chuyển công tác', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.05.NN', NULL, NULL, NULL, 'Điều tra đặc điểm giống và đề xướng quy trình quản lý, chăm sóc, nuôi dưỡng đàn thỏ địa bàn tỉnh An Giang', 'Nguyễn Bá Trung', 'NN', 0, 1, 'Đăng ký chờ BVĐCCT', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', NULL),
('06.06.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Vo T Xuan Tuyen - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Vo%20T%20Xuan%20Tuyen%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Hiệu quả của việc chủng vi khuẩn cố định nitơ (Sinorhizobium fredii), vi khuẩn hòa tan lân (Pseudomonas spp.) lên năng suất và phẩm chất đậu nành (Gly', 'Võ Thị Xuân Tuyền', 'NN', 0, 0, NULL, '2', NULL, '3', '2006-12-20', '2007-10-30', 14629000, 10000000, 'Chờ NT', '01.07', 'đợt 1', 2008),
('06.07.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 06.07\\Dot I\\QD giao THDT cua Tu Cao Thanh Ha - Dot I 06-07.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2006.07/Dot%20I/QD%20giao%20THDT%20cua%20Tu%20Cao%20Thanh%20Ha%20-%20Dot%20I%2006-07.doc#', NULL, NULL, 'Thương hiệu và nhu cầu thương hiệu của mặt hàng lúa gạo tại địa bàn thành phố Long Xuyên.', 'Từ Cao Thanh Hà', 'NN', 0, 0, 'Gia hạn đến 11/2009, 06/2010', '2', NULL, '3', '2007-03-08', '2008-03-08', 14000000, 9000000, 'Đã thực hiện 90%. Đang viết báo cáo', '10.07', 'đợt 1', 2010),
('06.08.NN', NULL, NULL, NULL, 'Khảo sát thành phần và đặc điểm sinh học, hình thái các loài ruồi đục quả quan trọng trên cây ăn trái, rau màu tại huyện Chợ Mới, Châu Thành, Tri Tôn,', 'Trần Văn Khải', 'NN', 0, 1, 'Không bảo vệ', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.09.NN', NULL, NULL, NULL, 'Nghiên cứu bổ sung chiết xuất vách ngoài tế bào nấm men (Aqua-mos) vào thức ăn ấu trùng tôm càng xanh (Macrobrachium rosenbergii) trong mô hình nước t', 'Phan Phương Loan', 'NN', 0, 0, 'Thực hiện đợt I (2007 - 2008)', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', NULL),
('06.10.NN', NULL, NULL, NULL, 'Nghiên cứu phát triển du lịch dựa vào cộng đồng ở xã Mỹ Hòa Hưng thành phố LX, AG', 'Phạm Xuân Phú', 'NN', 0, 1, 'QDNT tháng 01/2010', '1', NULL, '3', '2008-03-10', '2009-03-10', 9205000, 4000000, NULL, '09.08', 'đợt 2', 2010),
('06.11.NN', NULL, NULL, NULL, 'Nghiên cứu hoàn thiện quy trình sản xuất giống nhân tạo cá chạch lấu (Mastacembelus Armatus)', 'Phan Phương Loan', 'NN', 0, 0, 'Do đã làm đề tài cấp tỉnh', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, NULL, 0),
('06.12.NN', NULL, NULL, NULL, 'Phân lập vi khuẩn lactic thuần tự nhiên để sản xuất măng tre lên men chua', 'Nguyễn Văn Chương', 'NN', 0, 1, NULL, '2', NULL, '3', '2008-06-04', '2008-12-04', 19615088, NULL, NULL, '16.08', 'đợt 2', 2008),
('06.13.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Cao Van Thich - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Cao%20Van%20Thich%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Khảo sát sự biến đổi chất lượng nước và tích lũy vật chất dinh dưỡng trong ao nuôi cá Tra thâm canh.', 'Cao Văn Thích', 'NN', 0, 1, 'ĐT đăng ký đợt II (06-07)', '4', NULL, '4', '2007-11-01', '2008-06-01', 14408000, 5000000, 'Đã nộp bản thảo không tổ chức HĐ nghiệm thu', '01.08', 'đợt 2', 0),
('06.14.NN', NULL, NULL, NULL, 'Khảo sát đặc điểm sinh học của cá Chạch Lấu (Mastacembelus armatus Lacepede, 1800) ở  An Giang', 'Lê Văn Lễnh', 'NN', 0, 1, 'Gia hạn đến 4/2010 (dot T8/09)', '2', NULL, '3', '2008-03-01', '2009-04-01', 15000000, 5000000, 'Chưa BCTD tháng 12/09, 11/10', '20.08', 'đợt 2', 2014),
('07.01.NN', NULL, NULL, NULL, 'Ảnh hưởng của chế phẩm sinh học TM 21 lên sinh trưởng, năng suất bắp non tại Chợ Mới - An Giang.', 'Võ Thị Xuân Tuyền', 'NN', 0, 0, 'Không bảo vệ ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.01.QL', NULL, NULL, NULL, 'Khảo sát hiệu quả công tác của các tình nguyện viên nước ngoài tại ĐH An Giang.', 'Vương Thị Mỹ Tâm', 'QL', 0, 0, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', 0),
('07.01.SP', NULL, NULL, NULL, 'Đánh giá hiệu quả sử dụng giáo trình IC3 (Năng lực giao tiếp liên văn hóa) trong đào tạo sinh viên chuyên ngành Anh văn ở trường ĐH An', 'Trần Anh Thông', 'SP', 0, 1, 'Không bảo vệ ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.01.VH', NULL, NULL, NULL, 'Nghệ thuật chơi chữ trong câu đố dân gian người Việt', 'Trương Chí Hùng', 'SP', 0, 1, NULL, '2', NULL, '3', '2008-03-28', '2009-03-28', 4995000, 0, NULL, '07.08', 'đợt 1', 2009),
('07.02.NN', NULL, NULL, NULL, 'Ảnh hưởng của chế phẩm vi sinh TM21 lên sinh trưởng, năng suất và một số sâu bệnh chính trên lúa tại Chợ Mới - An Giang.', 'Nguyễn Thị Thanh Xuân', 'NN', 0, 0, 'Không ký HĐ do không lấy tiền', '4', NULL, '4', '2008-03-01', '2009-03-01', 0, 0, 'Chưa BC TĐ 04/2009, 08/2009. Đang đi học', NULL, 'đợt 1', 0),
('07.02.QL', NULL, NULL, NULL, 'Khảo nghiệm tính thích nghi của 6 giống bắp lai Việt Nam trong vụ Thu Đông ở huyện Tân Châu tỉnh An Giang', 'Trần Thanh Sơn', 'QL', 0, 1, NULL, '2', NULL, '3', '2008-08-20', '2009-03-30', 9211000, 5000000, NULL, '21.08', 'đợt 2', 2009),
('07.02.SP', NULL, NULL, NULL, 'Lập trình phần mềm soạn thảo nhanh bài tập Vật lý 10 phân ban (chương trình cơ bản và nâng cao theo sách giáo khoa mới).', 'Giang Văn Phúc', 'SP', 0, 1, 'Họp NT T8/2013', '2', NULL, '3', '2008-10-01', '2009-05-30', 9400000, 3000000, 'Hoàn thành chọn lọc bộ đề bài tập và bài giải. Đang viết CT phần mềm.. Đạt 80%.', '19.08', 'đợt 1', 2013),
('07.02.VH', NULL, NULL, NULL, 'Bản sắc văn hóa dân tộc Chăm ở An Giang và tiềm năng phát triển loại hình du lịch văn hóa.', 'Bùi Thị Ngọc Phương', 'VH', 0, 0, 'Không BV ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.03.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Vo Thanh Tan - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Vo%20Thanh%20Tan%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Khảo sát thành phần loài và đặc điểm sinh học sinh sản cá linh ống, chốt sọc, lăng vàng phân bố ở tỉnh An Giang', 'Võ Thanh Tân', 'NN', 0, 1, NULL, '2', NULL, '3', '2008-01-01', '2009-01-01', 15650000, NULL, NULL, '06.08', 'đợt 1', 2009),
('07.03.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Pham Thi Thu Huong- Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Pham%20Thi%20Thu%20Huong-%20Dot%201%2007-08.doc#', NULL, NULL, 'Lớp hàm chỉnh hình trên C và mở rộng lớp này trên C*', 'Phạm Thị Thu Hường', 'SP', 0, 0, 'Cphuong báo TG ngưng TH', '4', NULL, '4', '2008-01-01', '2009-01-01', 5000000, 0, 'Chưa Báo cáo tiến độ 04/2009, 08/2009. Chưa TH vì bận thi NCS', '04.08', 'đợt 1', 0),
('07.04.NN', NULL, NULL, NULL, 'Khảo sát khả năng đáp ứng miễn dịch của vịt đối với vaccine cúm gia cầm trên thực địa tại tỉnh An Giang', 'Nguyễn Khắc Chung Thẩm', 'NN', 0, 1, NULL, '1', NULL, '3', '2008-05-20', '2009-05-20', 17640000, 11500000, 'Đã họp HĐ NT chờ nộp bản thảo cuối cùng.', '13.08', 'đợt 1', 2009),
('07.04.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Vo Thanh Tai - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Vo%20Thanh%20Tai%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Tính an-pha ổn định của hệ phương trình vi phân điều khiển phi tuyến không ôtônôm có chậm.', 'Võ Thành Tài', 'SP', 0, 1, NULL, '2', NULL, '3', '2008-01-30', '2009-01-29', 5000000, 3500000, NULL, '03.08', 'đợt 1', 2009),
('07.05.NN', NULL, NULL, NULL, 'Khảo sát năng suất thỏ thịt khi nuôi bằng phụ phẩm của trái bắp (cùi bắp) làm thức ăn căn bản.', 'Vũ Ngọc Hoài', 'NN', 0, 1, 'Xin gia hạn đến 10/2009', '2', NULL, '3', '2008-05-01', '2009-05-01', 18286000, 10000000, 'Đã họp HĐ NT.', '14.08', 'đợt 1', 2010),
('07.05.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Tran Manh Tuan - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Tran%20Manh%20Tuan%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Một số vấn đề về hàm tử Hom - hàm tử Tenxơ.', 'Trần Mạnh Tuấn', 'SP', 0, 1, NULL, '2', NULL, '3', '2008-01-28', '2009-01-27', 5000000, NULL, NULL, '02.08', 'đợt 1', 2009),
('07.06.NN', NULL, NULL, NULL, 'Xác định nấm gây bệnh trên hạt lúa tại Chợ Mới, Châu Thành, Tri Tôn AG vụ Đông xuân 2008, và khảo sát hiệu quả in vitro của một số loại thuốc trừ bệnh', 'Văn Viễn Lương', 'NN', 0, 1, '03/2010, 06/2010, 12/2010', '2', NULL, '3', '2008-01-30', '2008-11-30', 19375000, 10000000, 'Đang xử lý số liệu& viết báo cáo.', '12.08', 'đợt 1', 2011),
('07.06.SP', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Le Van Chua - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Le%20Van%20Chua%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Lý thuyết chiều', 'Lê Văn Chua', 'SP', 0, 1, 'Dự kiến NT vào 28/05/2009', '4', NULL, '3', '2008-02-01', '2009-02-01', 5000000, 15000000, 'Đã nộp bản thảo chờ mở hội đồng nghiệm thu', '05.08', 'đợt 1', 0),
('07.07.NN', NULL, NULL, NULL, 'Khảo sát sự phân bố động vật đáy với các yếu tố môi trường nền đáy ở rạch Tầm Bót, Long Xuyên, An Giang', 'Lê Công Quyền', 'NN', 0, 1, NULL, '2', NULL, '3', '2008-01-01', '2008-12-01', 14500000, 5000000, NULL, '15.08', 'đợt 1', 0),
('07.07.SP', NULL, NULL, NULL, 'Nghiên cứu xây dựng và sử dụng bài tập lập phương án thí nghiệm hỗ trợ giáo viên đổi mới PPDH các chương “Nhiệt học - Dòng điện không đổi” Vật lý 10 -', 'Nguyễn Tiến Dũng', 'SP', 0, 1, 'Không BV ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.08.NN', NULL, NULL, NULL, 'Ảnh hưởng của khoảng cách trồng và số lần cắt lá đến năng suất cũ, năng suất và thành phần dinh dưỡng của lá cây khoai mì', 'Nguyễn Thể Thao', 'NN', 0, 1, 'Không BV ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.08.SP', NULL, NULL, NULL, 'Sử dụng phương pháp thống kê môment trong việc nghiên cứu các tính chất nhiệt động của tinh thể có cấu trúc flourite', 'Nguyễn Thị Mỹ Hạnh', 'SP', 0, 0, 'Không BV ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.09.NN', '..\\..\\lmtri\\NCKH\\QD giao thuc hien DT\\NH 07.08\\QD giao THDT Nguyen Phu Dung - Dot 1 07-08.doc#../../lmtri/NCKH/QD%20giao%20thuc%20hien%20DT/NH%2007.08/QD%20giao%20THDT%20Nguyen%20Phu%20Dung%20-%20Dot%201%2007-08.doc#', NULL, NULL, 'Xây dựng cơ sở dữ liệu để ứng dụng GIS trong việc quản lý tình hình của bệnh đạo ôn lá (Pyricularia grisea) bằng hệ thống thông tin địa l', 'Nguyễn Phú Dũng', 'NN', 0, 1, NULL, '2', NULL, '3', '2007-12-01', '2008-12-01', 13877000, 9000000, NULL, '08.08', 'đợt 1', 2009),
('07.09.SP', NULL, NULL, NULL, 'Phân tích, đánh giá cảnh quan phục vụ phát triển du lịch và bảo vệ môi trường đảo Phú Quốc', 'Bùi Hoàng Anh', 'SP', 0, 1, 'Không BV ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.10.NN', NULL, NULL, NULL, 'Khảo sát kỹ thuật nuôi và chất lượng nước thải của ao nuôi cá Tra ở Châu Phú và Phú Tân - An Giang.', 'Trần Kim Hoàng', 'NN', 0, 0, 'Không nộp ĐC', '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', 0),
('07.10.SP', NULL, NULL, NULL, 'Lịch sử giáo dục An Giang (1975 - 2000)', 'Nguyễn Thành Phương', 'SP', 0, 1, NULL, '4', NULL, '3', '2007-12-01', '2008-12-01', 11700000, 0, NULL, '11.08', 'đợt 1', 2009),
('07.11.NN', NULL, NULL, NULL, 'Khảo sát thành phần acid amin và kim loại nặng trong thịt cá lau kính (Hypostomus plecostomus).', 'Vương Học Vinh', 'NN', 0, 1, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', 0),
('07.11.SP', NULL, NULL, NULL, 'Tìm hiểu việc dạy - học môn Sinh học 11 mới ở trường trung học phổ thông (THPT) trong tỉnh An Giang.', 'Trương Văn Mỹ Thuận', 'SP', 0, 1, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 1', 0),
('07.12.NN', NULL, NULL, NULL, 'Vi nhân giống cây đại hồng môn (Anthurium andreanum) bằng phương pháp nuôi cấy lớp mỏng tế bào', 'Nguyễn Thị Thuý Diễm', 'NN', 0, 0, NULL, '4', NULL, '4', NULL, NULL, 0, 0, NULL, NULL, 'đợt 2', 0),
('07.12.SP', '1', '', '', 'Thực hiện tiêu bản cố định một số loài vi khuẩn Lam (Cyanobacteria).', 'Phan Thị Trúc Linh', 'SP', 0, 0, '', '2', NULL, '3', '2008-07-01', '2009-02-28', 30000000, 8000000, '', '17.08', 'đợt 1', 2010),
('07.13.NN', NULL, NULL, NULL, 'Khảo sát khả năng kích kháng bệnh sọc lá trên bắp của 3 hoá chất trên khía cạnh sinh học và mô học', 'Võ Thị Hướng Dương', 'NN', 0, 0, 'Gia hạn đến 02/2010, 6/2010', '2', NULL, '3', '2008-08-01', '2009-08-01', 19590000, 10000000, 'Đã xong 95%', '23.08', 'đợt 2', 2010),
('07.14.NN', NULL, NULL, NULL, 'Phân lập và chọn môi trường nhân sinh khối ba loài nấm ký sinh côn trùng Metarhizium anisopliae, Beauveria bassiana và Paecilomyces spp trên nhóm rau ', 'Lê Hữu Phước', 'NN', 0, 1, NULL, '2', NULL, '3', '2008-08-15', '2009-08-15', 18995000, 10000000, 'Đã họp hội đồng nghiệm thu, chờ gửi bản chỉnh sửa', '22.08', 'đợt 2', 2009),
('07.15.NN', NULL, NULL, NULL, 'Xác định nấm gây bệnh trên hạt lúa tại huyện Chợ Mới, Châu Thành, Tri Tôn - An Giang, vụ Thu Đông 2008.', 'Văn Viễn Lương', 'NN', 0, 1, 'Gia hạn đến 12/2009, 12/2010', '2', NULL, '3', '2008-09-03', '2009-08-03', 19360000, 10000000, 'Đạt 85%', '24.08', 'đợt 2', 2011),
('07.16.NN', NULL, NULL, NULL, 'Khảo sát khả năng ứng dụng phương pháp sấy khô cá Tra phồng tại AG bằng thiết bị thu nhiệt từ năng lượng mặt trời', 'Trần Nghĩa Khang', 'NN', 0, 1, 'NT T7/2014', '2', NULL, '3', '2008-09-05', '2009-09-05', 19690000, 10000000, 'Đã hoàn thành TN 1, 2, 3, 4. Đạt 90%', '26.08', 'đợt 2', 2014),
('07.17.NN', NULL, NULL, NULL, 'Chế biến rượu Mít chất lượng cao bằng phương pháp cô đặc nhiệt độ thấp', 'Phan Uyên Nguyên', 'NN', 0, 1, 'NT T7/2014', '2', NULL, '3', '2008-09-05', '2009-09-05', 19962000, 13500000, 'Đang thực hiện TN 4. Đạt 90%', '25.08', 'đợt 2', 2014),
('08.01.CM', NULL, NULL, NULL, 'Đánh giá khả năng xử lý chất lượng nước của vùng đất ngập nước tự nhiên vườn Quốc gia Tràm Chim.', 'Nguyễn Trần Nhẫn Tánh', 'CM', 0, 1, NULL, '2', NULL, '3', '2009-07-20', '2010-04-20', 20000000, 14000000, 'Thu mẫu, phân tích mẫu nước, đánh giá số liệu đợt 1, 2, 3. Chuẩn bị viết báo cáo.Hoàn thành 80% KLCV', '351', 'Đợt I', 2012),
('08.01.CT', NULL, NULL, NULL, 'Nghiên cứu thực trạng việc thực hiện pháp luật phòng, chống ma túy trong các trường ĐH, CĐ và Trung cấp CN trên địa bàn tỉnh AG, từ 2003-2008', 'Trần Khánh Mai', 'CT', 0, 1, NULL, '2', NULL, '3', '2009-05-01', '2010-07-01', 7200000, 0, 'Chưa báo cáo tiến độ 08/09 và 12/09', '12.09', 'Đợt I', 2010),
('08.01.KT', NULL, NULL, NULL, 'Dự án thành lập trung tâm nghiên cứu và tư vấn kinh doanh.', 'Trần Đức Tuấn', 'KT', 0, 1, 'Chờ BV ĐC (Từ Võ Minh Sang)', '4', NULL, '4', '2008-09-01', '2009-09-01', 20000000, 0, NULL, NULL, 'Đợt I', 0),
('08.01.NN', NULL, NULL, NULL, 'Hiện trạng quản lý bệnh lùn lúa cỏ (RGVS) và tương quan sinh học giữa virus và vectơ truyền bệnh ở An Giang.', 'Nguyễn Phú Dũng', 'NN', 0, 1, 'Gia hạn đến 8/2010', '2', NULL, '3', '2009-03-01', '2010-03-01', 19998000, 13000000, 'Đã hoàn thành khảo sát điều tra, đang triển khai ở phòng TN và nhà lưới. Đạt 80%', '02.09', 'Đợt I', 2011),
('08.01.NT', NULL, NULL, NULL, 'Thực trạng và giải pháp đa dạng hóa hoạt động dịch vụ các HTX nông nghiệp An Giang', 'Đặng Thị Thanh Quỳnh', 'NT', 0, 0, NULL, '2', NULL, '3', '2009-06-01', '2010-02-01', 14700000, 4900000, 'Đã hoàn thành 80% KLCV.', '11.09', 'Đợt I', 2010),
('08.01.QL', NULL, NULL, NULL, 'Khảo nghiệm tính thích nghi của 7 giống bắp lai Việt Nam trong vụ Đông Xuân ở huyện Tân Châu, tỉnh An Giang.', 'Trần Thanh Sơn', 'QL', 0, 1, NULL, '2', NULL, '3', '2008-12-01', '2009-06-01', 10000000, 4000000, NULL, '01.09', 'Đợt I', 2009),
('08.01.SP', NULL, NULL, NULL, 'Xây dựng ngân hàng câu hỏi trắc nghiệm "Vật lý đại cương - Phần Điện - Quang"', 'Vũ Tiến Dũng', 'SP', 0, 1, NULL, '4', NULL, '4', '2008-11-01', '2009-10-01', 15500000, 0, NULL, NULL, 'Đợt I', 0),
('08.01.SV', NULL, NULL, NULL, 'Đánh giá thực trạng, nguyên nhân và đề xuất giải pháp nâng cao công tác nghiên cứu khoa học trong sinh viên ở trường   đại học An Giang', 'Nguyễn Thanh Hải', 'SV', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2009-05-01', '2009-12-01', 15000000, 0, NULL, NULL, 'Đợt II', 0),
('08.01.TC', NULL, NULL, NULL, 'Xây dựng nội dung tiêu chuẩn tuyển chọn đội tuyển bóng đá Nam Đại học An Giang', 'Trần Ngọc Hùng', 'TC', 0, 1, NULL, '2', NULL, '3', '2009-08-01', '2010-08-01', 18910000, 10000000, NULL, '08.09', 'Đợt I', 2011),
('08.01.VH', NULL, NULL, NULL, 'Bước đầu tìm hiểu truyện kể dân gian khu vực Tri Tôn, Tịnh Biên', 'Trương Chí Hùng', 'VH', 0, 1, 'Đã nộp đơn xin ngưng TH', '4', NULL, '4', '2009-01-01', '2010-06-01', 15000000, 0, NULL, NULL, 'Đợt I', 0),
('08.02.CM', NULL, NULL, NULL, 'Nghiên cứu tổng hợp và ứng dụng OMS-2 trong xử lý môi trường.', 'Nguyễn Trung Thành', 'CM', 0, 1, NULL, '4', NULL, '4', '2009-02-01', '2010-02-01', 15000000, 0, NULL, NULL, 'Đợt I', 0),
('08.02.KT', '', '', '', 'Đánh giá hiệu quả đầu tư và khả năng ứng phó rủi ro của hộ nuôi cá tra ở An Giang.', 'Đào Thị Kim Loan', 'KT', 0, 0, 'Đã họp HĐ XDDC', '4', NULL, '4', '2009-04-01', '2010-04-01', 17000000, 0, '', '', 'Đợt II', 0),
('08.02.NN', NULL, NULL, NULL, 'Quy trình sản xuất chế phẩm thuốc trừ sâu sinh học và thử nghiệm hiệu lực trên sâu ăn tạp, sâu ăn đọt cải,trong điều kiện nhà lưới và ngoài đồng từ ha', 'Lê Hữu Phước', 'NN', 0, 1, 'Trễ hạn, NT T8/2011', '2', NULL, '3', '2008-12-01', '2009-09-30', 19026000, 12500000, 'Đang viết báo cáo', '04.09', 'Đợt I', 2011),
('08.02.SP', NULL, NULL, NULL, 'Một số cuộc cải cách tư sản ở Châu Á nửa sau thế kỷ XIX đầu thế kỷ XX', 'Nguyễn Bảo Kim', 'SP', 0, 1, NULL, '4', NULL, '3', '2009-01-07', '2009-10-30', 6700000, 0, NULL, '09.09', 'Đợt I', 0),
('08.03.KT', NULL, NULL, NULL, 'Đánh giá hiệu quả mô hình sản xuất nấm rơm tại An Giang.', 'Đoàn Hoài Nhân', 'KT', 0, 1, NULL, '2', NULL, '3', '2009-04-01', '2010-04-01', 14000000, 5000000, 'Thu thập số liệu, PV nông hộ. Đạt 60%', '456', 'Đợt II', 2010),
('08.03.NN', NULL, NULL, NULL, 'Điều tra khảo sát ảnh hưởng thu nhập của người Khmer thường xuyên qua lại biên giới VN - Campuchia ở huyện Tri Tôn, An Giang', 'Thái Huỳnh Phương Lan', 'NN', 0, 0, 'Đơn ngưng TH 15/7/2013', '4', NULL, '4', '2009-08-01', '2010-08-01', 13300000, 5000000, 'Đang xử lý số liệu, viết bài.Khó thu thập số liệu do đối tượng NC là người Khmer', '15.09', 'Đợt I', 0),
('08.03.SP', '', '', '', 'Khảo sát chất lượng nước mặt trong thủy vực thành phố Long Xuyên (khu vực phường: Mỹ Bình, Mỹ Phước, Mỹ Long, Mỹ Xuyên) nhằm xác định mức ô nhiễm vùng', 'Tô Nguyệt Nga', 'SP', 0, 0, '', '2', NULL, '3', '2009-03-20', '2016-02-18', 19, 6, '', '03.09', 'Đợt I', 2010),
('08.04.NN', NULL, NULL, NULL, 'Đánh giá mức độ ô nhiễm Arsen (thạch tín) từ nguồn nước ngầm tại các xã vùng Bảy Núi - tỉnh An Giang', 'Lê Minh Tuấn', 'NN', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2009-01-01', '2009-12-01', 20000000, 0, NULL, NULL, 'Đợt I', 0),
('08.04.SP', NULL, NULL, NULL, 'Phân lập một số chủng nấm sợi có khả năng chuyển hóa rơm rạ lúa làm phân hữu cơ trồng trọt', 'Khưu Phương Yến Anh', 'SP', 0, 0, NULL, '2', NULL, '3', '2009-04-01', '2010-04-01', 17200000, 11000000, 'Đã phân lập được chủng nấm thuần, định danh, xác định hoạt độ enzym cellulase. Đạt 80%', '06.09', 'Đợt I', 2010),
('08.05.NN', NULL, NULL, NULL, 'Khảo sát thành phần thiên địch (vật ăn mồi) của rầy nâu gây hại lúa tại Châu Thành - An Giang', 'Nguyễn Thị Thái Sơn', 'NN', 0, 0, NULL, '2', NULL, '3', '2009-03-01', '2010-02-28', 19970000, 13000000, 'Đã điều tra phỏng vấn nông dân. Đạt 80%', '05.09', 'Đợt I', 2010),
('08.06.NN', NULL, NULL, NULL, 'Phân lập và xác định khả năng khử đạm của vi khuẩn Pseudomonas stutzeri trong nước thải ao nuôi cá tra.', 'Trịnh Hoài Vũ', 'NN', 0, 1, 'Trễ hạn', '2', NULL, '3', '2009-02-01', '2009-12-01', 17550000, 10000000, 'Đã hoàn thành phần phân lập, đang tiến hành nhập và xử lý số liệu. Đạt 80%', '07.09', 'Đợt I', 2012),
('08.07.NN', NULL, NULL, NULL, 'Phân lập vi khuẩn Bacillus sp. Và ứng dụng xử lý amonium trong nước ao nuôi cá tra ở điều kiện phòng thí nghiệm', 'Trần Kim Hoàng', 'NN', 0, 0, 'Không nộp ĐC', '4', NULL, '4', '2009-02-01', '2010-02-01', 20000000, 0, NULL, NULL, 'Đợt I', 0),
('08.08.NN', NULL, NULL, NULL, 'Thử nghiệm sinh sản nhân tạo và ương nuôi cá linh ống (Cirrhinus jullieni Sauvage, 1878)', 'Lê Văn Lễnh', 'NN', 0, 1, 'Đã họp HDXD, chưa nộp lại', '4', NULL, '1', '2009-02-01', '2009-10-01', 15000000, 0, NULL, NULL, 'Đợt I', 0),
('08.09.NN', NULL, NULL, NULL, 'Ảnh hưởng của việc bổ sung Enradin vào khẩu phần ăn lên tốc độ tăng trưởng và tỉ lệ sống của cá tra (Pangasianodon hypothalmus)', 'Phan Phương Loan', 'NN', 0, 0, 'Đã họp HD XD', '4', NULL, '4', '2009-02-01', '2009-05-01', 20000000, 0, 'Đề tài được tài trợ', NULL, 'Đợt I', 0),
('08.10.NN', NULL, NULL, NULL, 'Tìm hiểu nhu cầu về nguồn nhân lực trong nông nghiệp', 'Trương Thành Tâm', 'NN', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2009-03-01', '2010-03-01', 20000000, 0, NULL, NULL, 'Đợt I', 0),
('08.11.NN', NULL, NULL, NULL, 'Chế biến và bảo quản sản phẩm hỗn hợp Jelly Khóm-Cơm Thốt Nốt', 'Trần Thanh Dũng', 'NN', 0, 1, 'Hoàn lại KP tạm ứng', '4', NULL, '4', '2009-04-01', '2010-04-01', 20000000, 13000000, 'Đã phân tích xong thành phần  nguyên liệu của khóm và cơm thốt lốt. Đạt 90%', '10.09', 'Đợt I', 0),
('08.12.NN', NULL, NULL, NULL, 'Nghiên cứu một số đặc điểm sinh học của cá Trèn bầu (Ompok bimaculatus)', 'Võ Thanh Tân', 'NN', 0, 1, '11/2010', '2', NULL, '3', '2009-07-01', '2010-06-01', 19810000, 12000000, 'Thu mẫu, điều tra ngư dân, phân tích các mẫu', '13.09', 'Đợt II', 2012),
('08.13.NN', NULL, NULL, NULL, 'Đánh giá mức độ tích lũy đạm, lân trong mô hình nuôi cá tra (Pangasianodon hypophthalmus Sauvage, 1878) thâm canh ở huyện Châu Phú, An Giang.', 'Cao Văn Thích', 'NN', 0, 1, 'Trễ so với KH, 11/2010', '2', NULL, '3', '2009-07-01', '2010-04-01', 19991000, 14000000, 'Đã tiến hành thu mẫu xong', '14.09', 'Đợt II', 2012),
('08.14.NN', NULL, NULL, NULL, 'Cân bằng dinh dưỡng đạm (N), lân (P) trong ruộng sản xuất lúa có sử dụng nước thải ao hầm nuôi cá tra.', 'Trần Thanh Tùng', 'NN', 0, 1, NULL, '4', NULL, '4', '2009-05-01', '2010-05-01', 30000000, 0, NULL, NULL, 'Đợt II', 0),
('08.15.NN', NULL, NULL, NULL, 'Nghiên cứu sự đa dạng di truyền các giống, loài hoa lan rừng (Orchids) hiện đang phát triển tại tỉnh AG. bằng kỹ thuật ITS (Internal Transcribed Space', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, 0, NULL, '2', NULL, '3', '2009-09-01', '2010-09-01', 20000000, 13000000, 'Thu thập số liệu, ly trích DNA, thực hiện phản ứng PCR, giải trình tự gen. Xử lý số liệu và viết bài', '604', 'Đợt II', 2011),
('08.16.NN', NULL, NULL, NULL, 'Nghiên cứu sự đa dạng của côn trùng, nhên thiên địch trên hai mô canh tác lúa độc canh và luân canh tại Châu Phú, An Giang.', 'Phạm Hữu Phương', 'NN', 0, 1, NULL, '2', NULL, '3', '2010-09-11', '2010-10-11', 19660000, 5000000, 'Điều tra nông dân trên hai mô hình canh tác lúa độc canh và luân canh. Đạt 50%', '02', 'Đợt II', 2010),
('08.17.NN', NULL, NULL, NULL, 'Khảo sát quá trình thủy phân phụ phẩm cá tra bằng vi khuẩn Bacillus subtilis làm thức ăn cho gà.', 'Phan Uyên Nguyên', 'NN', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2009-09-01', '2010-09-01', 19000000, 0, NULL, NULL, 'Đợt II', 0),
('08.18.NN', NULL, NULL, NULL, 'Khảo sát sự biến động mật số và thành phần rầy phấn trắng trên đậu nành tại huyện Chợ Mới và Châu Phú tỉnh An Giang.', 'Trần Văn Khải', 'NN', 0, 1, 'QĐ NT T11/2013', '2', NULL, '3', '2010-09-09', '2011-10-09', 19486000, 6200000, 'Hoàn thành thu nhập thông tin thứ cấp. Điều tra hiện trạng canh tác đậu nành. Đạt 40%.', '605', 'Đợt II', 2013),
('09.01.CM', NULL, NULL, NULL, 'Nghiên cứu công nghệ xử lý nước thải sinh hoạt bằng quá trình kỵ khí, hiếu khí và thiếu khí phối hợp với nạp nước 2 bậc (A2O2).', 'Nguyễn Thanh Hùng', 'CM', 0, 1, NULL, '2', NULL, '3', '2010-05-04', '2011-03-01', 19860000, 0, 'Đã dựng xong mô hình và đang tiến hành khảo sát các tải trọng nghiên cứu. Đạt khoảng 60% KL.', '158', 'đợt 1', 2011),
('09.01.GH', NULL, NULL, NULL, 'Nghi lễ vòng đời của người Chăm Islam ở An Giang', 'Võ Văn Thắng', 'GH', 0, 1, NULL, '2', NULL, '3', '2009-10-30', '2010-05-30', 18972000, 0, NULL, '65', 'đợt 1', 2010),
('09.01.KD', NULL, NULL, NULL, 'Khảo sát tình hình việc làm của sinh viên khoa SP trường ĐHAG sau khi tốt nghiệm từ năm 2005 - 2009', 'Lê Thị Linh Giang', 'KD', 0, 0, NULL, '2', NULL, '3', '2009-10-01', '2010-10-01', 12631640, 4000000, NULL, '69', 'Đợt I', 2010),
('09.01.NN', NULL, NULL, NULL, 'Ảnh hưởng của việc sử dụng trùn quế (Perionyx excavatus) để thay thế cá tạp và tép lên sự tăng trưởng và tỉ lệ sống của cá bống tượng (Oxyeleotris mrm', 'Nguyễn Hữu Yến Nhi', 'NN', 0, 0, 'Không nộp ĐC', '4', NULL, '4', '2009-09-01', '2010-09-01', 20000000, 0, NULL, NULL, 'đợt 1', 0),
('09.01.NT', NULL, NULL, NULL, 'Đánh giá hiệu quả việc sử dụng chế phẩm phân vi sinh DASVILA cho lúa.', 'Đoàn Văn Hổ', 'NT', 0, 1, NULL, '4', NULL, '3', '2010-04-01', '2011-04-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.01.QL', NULL, NULL, NULL, 'Khảo sát thực trạng hoạt động nghiên cứu khoa học của sinh viên trường Đại học An Giang giai đoạn 2005 – 2009 và một số giải pháp đề suất', 'Châu Sôryaly', 'QL', 0, 0, NULL, '4', NULL, '4', '2009-11-01', '2010-11-01', 20000000, 0, NULL, NULL, 'đợt 1', 0),
('09.01.TC', NULL, NULL, NULL, 'Nghiên cứu xây dựng tiêu chuẩn đánh giá thể lực chung cho sinh viên Trường Đại học An Giang.', 'Trần Kỳ Quốc Tuấn', 'TC', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2010-05-01', '2011-08-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.01.VH', NULL, NULL, NULL, 'Tìm hiểu vai trò của Giáo cả Chăm tại An Giang trong việc nâng cao đời sống cộng đồng và phát triển xã hội.', 'Trần Thanh Tùng', 'VH', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2009-12-01', '2010-12-01', 19838000, 0, NULL, NULL, 'đợt 1', 0),
('09.02.CM', NULL, NULL, NULL, 'Thiết kế mô hình hệ thống điều khiển vận hành trạm xử lý nước thải.', 'Phạm Tấn Thành', 'CM', 0, 1, NULL, '4', NULL, '1', '2010-04-01', '2011-04-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.02.GH', NULL, NULL, NULL, 'Đánh giá thực trạng môi trường văn hóa sinh viên Trường ĐH An Giang tạm trú tại các nhà trọ trên địa bàn TP.Long Xuyên', 'Võ Văn Thắng', 'GH', 0, 1, 'T6/2013 chậm so với tiến độ', '4', NULL, '2', '2009-11-01', '2010-04-01', 11690000, 0, 'Đã hoàn thành các nội dung như trong đề cương và đang hoàn chỉnh để báo cáo', '07', 'đợt 1', 0),
('09.02.NN', NULL, NULL, NULL, 'Thử nghiệm nuôi sinh khối trùn quế (Perionyx excavatus) bằng các loại thức ăn khác nhau.', 'Nguyễn Hữu Yến Nhi', 'NN', 0, 0, 'Không nộp ĐC', '4', NULL, '4', '2009-09-01', '2010-09-01', 20000000, 0, NULL, NULL, 'đợt 1', 0),
('09.02.SP', NULL, NULL, NULL, 'Tìm hiểu thực trạng, nguyên nhân ngập lụt cục bộ trên địa bàn thành phố Long Xuyên và đề xuất một số giải pháp khắc phục.', 'Nguyễn Phú Thắng', 'SP', 0, 1, 'Họp NT T11/2013', '2', NULL, '3', '2009-12-01', '2010-12-01', 18150000, 6000000, 'Đã thu thập các thông tin thứ cấp và sơ cấp liên quan đến đề tài. Đang xây dựng các bản đồ tinh giản. Đạt khoảng 70% KL.', '566', 'đợt 1', 2013);
INSERT INTO `dm_detai_captruong` (`MSDT`, `QDGTH`, `YKIENHD`, `QDNT`, `TENDT`, `CNDT`, `DONVI`, `NAMSINH`, `PHAI`, `GHICHU`, `XEPLOAI`, `DIEMSO`, `HTDETAI`, `TGBATDAU`, `TGKETTHUC`, `TONGKINHPHI`, `KPTAMUNG`, `TIENDO`, `SOHD`, `DOT`, `NAM-NT`) VALUES
('09.02.TC', NULL, NULL, NULL, 'Một số biện pháp nâng cao tính tích cực trong giờ học giáo dục thể chất của sinh viên không chuyên Trường ĐHAG.', 'Trần Kỳ Nam', 'TC', 0, 1, 'không nộp ĐC', '4', NULL, '4', '2010-05-01', '2011-08-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.03.CM', NULL, NULL, NULL, 'Thiết kế mô hình các bể xử lý trong hệ thống xử lý nước thải.', 'Lê Minh Trí', 'CM', 0, 1, 'không nộp ĐC', '4', NULL, '4', '2010-04-01', '2011-04-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.03.NN', NULL, NULL, NULL, 'Phân tích và đánh giá tương tác giữa kiểu gen và môi trường của các giống đậu xanh (Vigna radiata) có triển vọng tại An Giang vụ Đông Xuân năm 2009-20', 'Trương Bá Thảo', 'NN', 0, 1, NULL, '2', NULL, '3', '2009-12-01', '2010-12-01', 20000000, 13000000, 'Đã hoàn thành các TN. Đang xử lý số liệu và viết bài.', '64', 'đợt 1', 2011),
('09.03.SP', NULL, NULL, NULL, 'Tìm hiểu thực trạng tổ chức hoạt động giáo dục ngoài giờ lên lớp ở các trường THPT công lập trên địa bàn thành phố LX, AG.', 'Lê Thanh Hùng', 'SP', 0, 1, NULL, '4', NULL, '4', '2009-10-01', '2010-06-01', 15000000, 0, NULL, NULL, 'đợt 1', 0),
('09.04.NN', NULL, NULL, NULL, 'Khảo sát hiệu quả phòng trừ bệnh lem lép hạt lúa của bốn loại thuốc trong vụ Thu Đông 2010', 'Trương Bá Thảo', 'NN', 0, 1, NULL, '2', NULL, '3', '2010-07-01', '2010-10-30', 19961000, 0, NULL, '165', 'đợt 1', 2011),
('09.05.NN', NULL, NULL, NULL, 'Hiệu quả của một số loại thuốc trong phòng trừ rầy phấn trắng Bemisia tabaci Gennadius trên đậu nành vụ Đông Xuân 2009 - 2010 tại Tân Châu - An Giang.', 'Nguyễn Thị Thái Sơn', 'NN', 0, 0, NULL, '2', NULL, '3', '2009-12-01', '2010-11-01', 19996000, 0, 'Điều tra nông dân, TN ngoài đồng. Đạt 80%', '63', 'đợt 1', 2011),
('09.05.SP', NULL, NULL, NULL, 'Tìm hiểu một số mô hình Chủ nghĩa xã hội trên thế giới từ năm 1917 đến nay', 'Nguyễn Bảo Kim', 'SP', 0, 1, NULL, '2', NULL, '3', '2009-10-01', '2010-10-01', 16540000, 10000000, 'Đã hoàn thành chờ báo cáo nghiệm thu.', '03', 'đợt 1', 2010),
('09.06.NN', NULL, NULL, NULL, 'Nghiên cứu ảnh hưởng của một số loại thuốc trừ bệnh lên sự sinh trưởng và phát triển của 2 loài nấm ký sinh \r\ncôn trùng Metarhizium anisopliae (Metsch', 'Lê Hữu Phước', 'NN', 0, 1, 'Sớm hơn dự kiến, NT T8/2011', '2', NULL, '3', '2010-02-01', '2011-02-01', 20000000, 6500000, 'Xong TN trong phòng, bố trí TN ngoài đồng.', '78', 'đợt 1', 2011),
('09.09.NN', NULL, NULL, NULL, 'Phân lập và tuyển chọn một số dòng nấm mốc từ bánh men cổ truyền có khả năng sinh tổng hợp enzyme anpha-amylase và anpha-amylase', 'Lý Thị Thanh Thảo', 'NN', 0, 0, 'Không nộp ĐC', '4', NULL, '4', '2010-11-01', '2011-10-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.10.NN', NULL, NULL, NULL, 'Tái sinh cây Jatropha curcas L. (cây Dầu lai) từ phôi Soma (cây cung cấp nguồn nhiên liệu sinh học)', 'Huỳnh Trường Huê', 'NN', 0, 0, NULL, '4', NULL, '1', '2010-04-01', '2011-04-01', 19750000, 0, NULL, NULL, 'đợt 2', 0),
('09.11.NN', NULL, NULL, NULL, 'Khảo sát khả năng thủy phân tinh bột và lên men rượu giữa gạo Jasmine và nếp Phú Tân.', 'Đoàn Thị Minh Nguyệt', 'NN', 0, 0, NULL, '4', NULL, '1', '2010-06-01', '2011-06-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('09.12.NN', NULL, NULL, NULL, 'Cân bằng dinh dưỡng đạm (N), lân (P) trong ruộng sản xuất lúa có sử dụng nước thải ao hầm nuôi cá tra.', 'Trần Thanh Tùng', 'NN', 0, 1, 'Không nộp ĐC', '4', NULL, '4', '2010-04-01', '2011-04-01', 20000000, 0, NULL, NULL, 'đợt 2', 0),
('1', 'Phân tích qui trình hoạt động giao hàng và thanh toán Quốc tế trong kinh doanh xuất khẩu gạo tại AG', '', '#..\\..\\lmtri\\NCKH\\QD NT DT\\QD NT DT NTXuan 20.03.03.doc#', 'Phân tích qui trình hoạt động giao hàng và thanh toán Quốc tế trong kinh doanh xuất khẩu gạo tại AG', 'Nguyễn Thanh Xuân', 'KT', 1976, 1, 'K: 6; TB: 4', '2', NULL, '3', '0000-00-00', '0000-00-00', 5000000, 0, '', '04.01', '00-01', 2002),
('10.01.NT', '', '', '', 'Mức độ Đạm và Kali với chế phẩm vi sinh DASVILA cho hiệu quả cao trên lúc Hè Thu', 'Đoàn Văn Hổ', 'NT', 0, 1, '', '2', NULL, '3', '2010-05-24', '2010-12-24', 20000000, 0, 'Chưa báo cáo tiến độ', '179', NULL, 2010),
('10.01.SP', NULL, NULL, NULL, 'Phân lập và tuyển chọn vi khuẩn Bacillus sp. ở bãi rác Bình Đức, TP Long xuyên, tỉnh An Giang.', 'Nguyễn Thanh Đào', 'SP', 0, 0, 'Đúng kế hoạch', '2', NULL, '3', '2010-01-02', '2010-12-31', 19894000, 6500000, 'Đã thu mẫu và phân lập được 3 chủng VSV. Khảo sát các đặc điểm hình thái, sinh lý, sinh hóa sơ bộ XĐ VK cần phân lập.Đạt khoảng 65%.', '01', 'đợt 1', 2011),
('10.01.TN', NULL, NULL, NULL, 'Xây dựng tiêu chuẩn về trình độ sử dụng tiếng Anh cho sinh viên trường ĐH An Giang bằng chương trình TOEIC.', 'Phan Thị Thanh Huyền', 'TN', 0, 0, NULL, '2', NULL, '3', '2010-10-14', '2011-10-13', 19796800, 0, 'Chưa báo cáo tiến độ', '347', 'đợt 2', 2013),
('10.02.QL', NULL, NULL, NULL, 'Đánh giá tác động của chuyển giao công nghệ trong ngành nuôi trồng Thuỷ sản tỉnh An Giang giai đoạn 2002 - 2008', 'Nguyễn Thị Lan Phương', 'QL', 0, 0, NULL, '2', NULL, '3', '2010-01-01', '2010-12-30', 13255000, 4000000, 'Đã viết xong phần hiện trạng và đang tiến hành điều tra các mô hình, công nghệ đã chuyển giao. Ước lượng đạt khoảng 60%', '68', 'đợt 1', 2012),
('10.07.NN', NULL, NULL, NULL, 'Nghiên cứu tạo mẫu nghệ xà cừ(curcuma Xanthorhiza Roxb.) invitro va NC qui trình vi nhân giống cây bình vôi  bằng phương pháp  nuôi cấy mô.', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, 0, 'QĐ NT T11/2013', '2', NULL, '3', '2010-08-01', '2011-08-01', 19581000, 12000000, 'Đang viết BC', '251', 'đợt 2', 2013),
('10.08.NN', NULL, NULL, NULL, 'Xây dựng bộ sưu tập các giống, loài hoa lan trên địa bàn tỉnh An Giang.', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, 0, 'Sẽ gửi BC T12/2013', '4', NULL, '2', '2010-08-01', '2011-08-01', 17898000, 12000000, NULL, '250', 'đợt 2', 0),
('10.13.NN', NULL, NULL, NULL, 'Tác động của việc xả lũ đến tình hình năng suất lúa trong vùng đê bao của tỉnh An Giang (TN ngoài đồng)', 'Lý Ngọc Thanh Xuân', 'NN', 0, 0, NULL, '2', NULL, '3', '2010-06-30', '2011-06-30', 20000000, 0, NULL, '263', 'đợt 2', 2011),
('11.01.KT', NULL, NULL, NULL, 'Đo lường chất lượng dịch vụ tín dụng của các ngân hàng thương mại', 'Nguyễn Thành Long', 'KT', 0, 1, NULL, '2', NULL, '3', '2011-03-01', '2011-12-01', 3640000, 0, NULL, '60', NULL, 2011),
('11.01.ML', NULL, NULL, NULL, 'Vai trò lãnh đạo của Đảng Cộng sản Việt Nam đối với việc bảo đảm và phát triển quyền con người ở Việt Nam (1986-2010)', 'Đỗ Thị Hiện', 'ML', 0, 0, NULL, '2', NULL, '3', '2011-04-15', '2012-01-15', 10370000, 3400000, 'Tiến hành thu thập tư liệu và xử lý tư liệu. Hoàn thành bản thảo chương 1. Đạt 35% công việc', '135', NULL, 2012),
('11.01.NN', '', '', '', 'Mức độ Đạm và Kali với chế phẩm vi sinh DASVILA cho hiệu quả cao trên lúa OM4218 vụ Đông Xuân 2010-2011 - xã Vĩnh Nhuận, huyện Châu Thành, tỉnh An Gia', 'Đoàn Văn Hổ', 'NN', 0, 1, '', '2', NULL, '3', '2011-01-25', '2011-11-25', 20000000, 0, '', '42', NULL, 2011),
('11.01.NT', NULL, NULL, NULL, 'Tác động của lũ bất thường đến sản xuất lúa ở xã Vĩnh Phước, huyện Tri Tôn, tỉnh An Giang', 'Võ Duy Thanh', 'NT', 0, 1, 'Họp NT T8/2014', '2', NULL, '3', '2011-12-15', '2012-12-15', 20000000, 13000000, 'tính đến tháng 12/2013 đã hoàn thành bản báo cáo sơ bộ, hoàn thành 85% công việc. Dự kiến BC 02/2014', '480', NULL, 2014),
('11.01.QL', NULL, NULL, NULL, 'Khảo sát mức độ tương thích giữa phương pháp giảng dạy và hệ thống kiểm tra đánh giá môn tiếng Anh tại các trường THPT công lập trên địa bàn TPLX, AG', 'Khương Trọng Nhân', 'TL', 0, 1, 'Gia hạn đến 3/2014', '4', NULL, '4', '2011-11-01', '2012-11-01', 14211600, 0, 'Hoàn thành 20% KL CV,', '372', NULL, 0),
('11.01.SP', '1', '', '', 'Khảo sát thực trạng dạy và học TOEIC cho sinh viên tiến Anh không chuyên năm I, trường Đại học An Giang', 'Nguyễn Minh Triết', 'SP', 0, 1, '', '2', NULL, '3', '2011-01-01', '2011-10-01', 10630400, 0, '', '43', NULL, 2011),
('11.02.CM', NULL, NULL, NULL, 'Nghiên cứu xây dựng cột hấp phụ bằng Chitosan để xử lý chì trong nước thải', 'Trần Thị Hồng Ngọc', 'CM', 0, 0, 'Họp NT T9/2014', '2', NULL, '3', '2011-08-15', '2012-08-15', 20000000, 13000000, 'Đang xử lý số liệu, hoàn thành 85%KL CV', '270', NULL, 2014),
('11.02.KT', NULL, NULL, NULL, 'Tính vị chủng tiêu dùng và sự sẵn lòng mua hàng ngoại của người tiêu dùng: trường hợp các mặt hàng sữa bột, trái cây và dược phẩm', 'Nguyễn Thành Long', 'KT', 0, 1, NULL, '2', NULL, '3', '2011-03-01', '2011-12-01', 6512000, 0, NULL, '61', NULL, 2012),
('11.02.NN', NULL, NULL, NULL, 'Khảo sát ảnh hưởng của các chất điều hòa tăng trưởng và nồng độ đường lên quá trình nhân nhanh chồi gừng (Zingiber officinale Rosc.) in vitro.', 'Huỳnh Trường Huê', 'NN', 0, 0, 'QĐ NT 03/2014', '2', NULL, '3', '2011-03-01', '2012-03-01', 19980000, 0, NULL, '127', NULL, 2014),
('11.02.SP', NULL, NULL, NULL, 'Một số biện pháp rèn kỹ năng tự học môn Tâm lý học - Giáo dục học cho sinh viên Sư phạm, trường Đại học An Giang', 'Nguyễn Thị Cúc', 'SP', 0, 0, NULL, '2', NULL, '3', '2010-12-01', '2011-07-01', 13185000, 8000000, NULL, '31', NULL, 2011),
('11.03.NN', NULL, NULL, NULL, 'Nghiên cứu quy trình vi nhân giống cây Đại Hồng Môn (Anthurium andreanum L.) bằng phương pháp nuôi cấy lớp mỏng tế bào', 'Nguyễn Thị Thúy Diễm', 'NN', 0, 0, NULL, '2', NULL, '3', '2011-03-01', '2012-03-01', 20000000, 0, NULL, '128', NULL, 2013),
('11.03.SP', NULL, NULL, NULL, 'Khảo sát thực trạng dạy học môn tiếng Anh cho học sinh khối lớp 3 và lớp 4 trên địa bàn TP Long Xuyên', 'Nguyễn Thị Ánh Nguyệt', 'SP', 0, 0, 'Chậm so với tiến độ', '4', NULL, '2', '2011-03-01', '2012-02-01', 14568700, 0, NULL, '138', NULL, 0),
('11.04.NN', NULL, NULL, NULL, 'Nghiên cứu chế biến nước rong biển - đậu đỏ đóng chai', 'Nguyễn Văn Chương', 'NN', 0, 1, NULL, '2', NULL, '3', '2011-09-01', '2012-03-01', 19062000, 0, NULL, '287', NULL, 2012),
('11.04.SP', NULL, NULL, NULL, 'Thực trạng Dạy - Học môn hoạt động giáo dục ngoài giờ lên lớp theo học chế tín chỉ ở trường Đại học An Giang', 'Thái Thị Bi', 'SP', 0, 0, 'Chậm so với tiến độ', '4', NULL, '4', '2011-04-01', '2012-03-01', 14243000, 0, 'Đã thực hiện 80% KL công việc', '190', NULL, 0),
('11.05.NN', NULL, NULL, NULL, 'Thành phần loài, mức độ gây hại, đặc điểm hình thái, sinh học và thiên địch của sâu sừng họ Sphingidae gây hại trên cây mè tại An Giang', 'Nguyễn Thị Thái Sơn', 'NN', 0, 0, 'BC NT 01/2014', '2', NULL, '3', '2011-11-01', '2012-10-01', 20000000, 13000000, 'T3 30% công việc, T7 80% công việc', '462', NULL, 2014),
('11.05.SP', NULL, NULL, NULL, 'Những khuynh hướng CNXH trên thế giới từ năm 1945 - 2010', 'Nguyễn Bảo Kim', 'SP', 0, 1, NULL, '1', NULL, '3', '2011-05-01', '2012-01-01', 17180000, 0, NULL, '191', NULL, 2012),
('11.06.NN', NULL, NULL, NULL, 'Nghiên cứu qui trình sản xuất papain thô', 'Nguyễn Phú Thọ', 'NN', 0, 1, NULL, '2', NULL, '3', '2011-04-01', '2012-01-15', 19973000, 0, NULL, '137', NULL, 2012),
('12.01.NN', NULL, NULL, NULL, 'Thử nghiệm sử dụng muối để ương Cá tra nghệ (Pangasius kunyit) ở các độ mặn khác nhau', 'Trần Thị Kim Tuyến', 'NN', 0, 0, 'Họp NT T9/2014', '2', NULL, '3', '2011-12-20', '2012-11-25', 29890000, 15000000, 'Thực hiện 50% công việc', '79', NULL, 2014),
('12.01.SP', NULL, NULL, NULL, 'Nghiên cứu một số lược đồ đối ngẫu trong lý thuyết tối ưu', 'Lê Kiên Thành', 'SP', 0, 1, 'Họp NT T9/2014', '2', NULL, '3', '2011-12-01', '2012-12-01', 18730000, 12500000, 'Đã hoàn thành trên 70% công việc', '02', NULL, 2014),
('12.02.NN', NULL, NULL, NULL, 'Khảo sát năng suất sinh trưởng và sinh sản trên đàn trâu tỉnh An Giang', 'Nguyễn Bình Trường', 'NN', 0, 1, NULL, '1', NULL, '3', '2012-03-20', '2013-12-20', 19919000, 13000000, 'T6 35% công việc, T10 65% công việc, Dự kiến BCNT 12/2012', '82', NULL, 2013),
('12.02.SP', NULL, NULL, NULL, 'Khảo sát tính chất của nhóm cộng các số hữu tỷ Q và một số lớp nhóm con đặc biệt của nó', 'Phạm Mỹ Hạnh', 'SP', 0, 0, 'Họp NT tháng 7/2013', '2', NULL, '3', '2012-01-02', '2013-01-02', 11100000, 0, 'Đang viết báo cáo', '71', NULL, 2013),
('12.03.NN', NULL, NULL, NULL, 'Thu thập, phân lập và chọn môi trường nhân sinh khối nấm Hirsutella citriformis ký sinh trên rầy nâu tại một số huyện thuộc tỉnh An Giang', 'Lê Hữu Phước', 'NN', 0, 1, 'Họp NT T9/2013', '2', NULL, '3', '2012-04-30', '2013-04-30', 28209000, 19000000, 'Hoàn thành 70% công việc', '183', NULL, 2013),
('12.04.NN', NULL, NULL, NULL, 'Thử nghiệm khả năng thích nghi độ mặn của cá Basa (Pangasius bocourti) bột, hương, giống', 'Bùi Thị Kim Xuyến', 'NN', 0, 0, NULL, '4', NULL, '2', '2012-08-15', '2013-08-15', 29520000, 10000000, NULL, '300', NULL, 0),
('12.05.NN', NULL, NULL, NULL, 'Khảo sát một số yếu tố kỹ thuật trong quy trình nuôi cá lóc (Channa sp) thâm canh', 'Phan Thị Thanh Vân', 'NN', 0, 0, NULL, '2', NULL, '3', '2012-09-01', '2013-07-01', 30000000, 0, NULL, '305', NULL, 2014),
('13.01.ML', NULL, NULL, NULL, 'Phát triển khu kinh tế cửa khẩu An Giang theo hướng bền vững đến năm 2020', 'Võ Văn Dót', 'ML', 0, 1, 'Họp XD T11/2013', '4', NULL, '3', NULL, NULL, 0, 0, NULL, NULL, NULL, 0),
('13.01.NN', '', '', '', 'Xây dựng quy trình sản xuất nước giải khát từ bắp cải tím', 'Nguyễn Duy Tân', 'NN', 0, 1, 'Họp NT T9/2014', '3', NULL, '3', '0000-00-00', '0000-00-00', 27420000, 10000000, 'Hoàn thành TN 1-3, ước lượng 40% công việc', '157', NULL, 2014),
('13.01.NV', NULL, NULL, NULL, 'Kỹ năng mềm của sinh viên năm cuối trường Đại học An Giang', 'Lê Thị Hồng Hạnh', 'NV', 0, 0, 'Họp NT 11/4/2014 chưa có QĐNT', '3', NULL, '3', '2012-12-01', '2013-11-30', 8191000, 0, 'Hoàn thành 55% KL công việc, chậm so với kế hoạch đề ra do gặp khó khăn trong phỏng vấn nhà tuyển dụng', '31', NULL, 0),
('13.01.SP', '', '', '', 'Kỹ năng sống của sinh viên khoa sư phạm, trường Đại học An Giang', 'Hoàng Thế Nhật', 'SP', 0, 1, 'Họp NT T8/2014', '2', NULL, '3', '0000-00-00', '0000-00-00', 16679000, 6000000, '', '131', NULL, 2014),
('13.01.TB', '2', '', '', 'Xây dựng chương trình phân tích một số dị thường trọng lực bằng mạng Perceptron trong môi trường Matlab', 'Nguyễn Hồng Hải', 'TB', 0, 1, 'Họp NT T9/2014', '2', NULL, '3', '2013-03-01', '2014-03-01', 15580000, 0, '', '154', NULL, 2014),
('13.02.NN', '', '', '', 'Nghiên cứu thu nhận enzyme bromelain thô', 'Nguyễn Phú Thọ', 'NN', 0, 1, 'Đúng tiến độ', '2', NULL, '3', '0000-00-00', '0000-00-00', 29960000, 10000000, 'Hoàn thành 50% công việc.', '168', NULL, 2014),
('13.02.SP', '', '', '', 'Nghiên cứu các yếu tố ảnh hưởng đến hành vi phạm pháp của người chưa thành niên tỉnh An Giang', 'Trần Thị Huyền', 'SP', 0, 0, 'Họp NT T6/2014', '2', 80, '3', '2013-02-01', '2013-09-30', 224695000, 8000000, '', '160', NULL, 2014),
('13.03.NN', '', '', '', 'Nghiên cứu quá trình cố định nấm men Saccharomyces cerevisia trên vỏ bưởi và ứng dụng trong lên men rượu vang bưởi', 'Hồ Thị Ngân Hà', 'NN', 0, 0, '', '4', NULL, '2', '0000-00-00', '0000-00-00', 29880900, 10000000, '', '180', NULL, 0),
('13.03.SP', '', '', '', 'Vấn đề hiểu và sử dụng từ Hán Việt của học sinh trung học phổ thông trên địa bàn tỉnh An Giang: thực trạng và giải pháp', 'Hoàng Quốc', 'SP', 0, 1, 'Họp NT T8/2014', '1', 68, '3', '2013-02-27', '2013-11-27', 29900000, 0, '', '178', NULL, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `dm_dt_sv`
--

CREATE TABLE `dm_dt_sv` (
  `QDNT` longtext,
  `GCN` longtext,
  `MSDT` varchar(10) NOT NULL,
  `TENDT` varchar(150) DEFAULT NULL,
  `TENSV` varchar(50) DEFAULT NULL,
  `GIOITINH` tinyint(4) DEFAULT NULL,
  `GVHD` varchar(30) DEFAULT NULL,
  `LOP` varchar(20) DEFAULT NULL,
  `TGBATDAU` date DEFAULT NULL,
  `TGKETTHUC` date DEFAULT NULL,
  `HIENTRANG` varchar(20) DEFAULT NULL,
  `XEPLOAI` varchar(15) DEFAULT NULL,
  `DONVI` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dm_dt_sv`
--

INSERT INTO `dm_dt_sv` (`QDNT`, `GCN`, `MSDT`, `TENDT`, `TENSV`, `GIOITINH`, `GVHD`, `LOP`, `TGBATDAU`, `TGKETTHUC`, `HIENTRANG`, `XEPLOAI`, `DONVI`) VALUES
(NULL, NULL, '03.01.NN', 'Nghiên cứu sử dụng màng protein bảo quản khô cá tra phồng.', 'Ngô Văn Trọng', 1, 'Nguyễn Hữu Thanh', NULL, NULL, NULL, '4', '5', 'NN'),
(NULL, NULL, '03.02.NN', 'Nghiên cứu sử dụng màng Polysaccharide bảo quản khô cá tra phồng.', 'Nguyễn Phương Thanh', 0, 'Nguyễn Hữu Thanh', NULL, NULL, NULL, '4', '5', 'NN'),
(NULL, NULL, '03.03.NN', 'Khảo sát sự biến đổi hàm lượng HCN của lá khoai mì qua từng GĐ ủ', 'Lê Đình Dự', 1, 'Nguyễn Thị Hạnh Chi', 'ĐH2PN2', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '03.04.NN', 'Ảnh hưởng các mức độ bột cá đến tỉ lệ tiêu hoá ở heo đang tăng trưởng với khẩu phần cơ bản là bã khoai mì và lá khoai mì ủ chua', 'Lê Bá Phúc', 1, 'Nguyễn Th Hạnh Chi', 'ĐH2PN2', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '03.05.NN', 'Nghiên cứu tình huống về nhu cầu nước sinh hoạt cho người dân vùng núi thuộc huyện Tịnh Biên tỉnh AG.', 'Lê Văn Nam', 1, 'Ths. Dương Văn Nhã', 'ĐH2PN1', NULL, NULL, '2', '5', 'NN'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT Nguyen Minh Tri 06.06.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\Nguyen Minh Tri  so 31 -06.06 .doc#', '03.06.NN', 'Nghiên cứu sự chấp nhận của người dân vùng lũ trong việc sống tập trung ở các cụm dân cư tại huyện Tân Châu – AG.', 'Nguyễn Minh Trí', 1, 'Ths. Dương Văn Nhã', 'ĐH2PN1', NULL, NULL, '3', '2', 'NN'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT Vo Van De khoi lien ket dao tao 06.05.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\Vo Van De  so 30 -06.05 .doc#', '03.07.SP', 'Thiết kế, chế tạo thiết bị thí nghiệm Điện – Từ từ những vật liệu dễ tìm và ứng dụng giảng dạy Vật lý ở trường phổ thông.', 'Võ Văn Dễ', 1, 'Ths. Vũ Tiến Dũng', 'Khối liên kết ĐT', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NHLoi-MQVinh-LMThang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\MQuangVinh so 24-10.04.doc#', '03.08.SP', 'Các biến thể tương đương của tích phân Riemann trong toán phổ thông', 'Mai Quang Vinh', 1, 'Lê Thái Duy', 'ĐH2A1', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PLDuy-DHAn-NPHau 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\DHoangAn so 18-10.04 .doc#', '03.09.SP', 'Tìm hiểu thêm một số khái niệm trong vành', 'Diệp Hoàng Ân', 1, 'Hoàng Huy Sơn', 'ĐH3A1', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NHLoi-MQVinh-LMThang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NHoaLoi so 23 -10.04.doc#', '03.10.SP', 'Tìm hiểu điều kiện tham số để hệ phương trình có nghiệm duy nhất', 'Nguyễn Hoà Lợi', 1, ' Hoàng Huy Sơn', 'ĐH3A1', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NHLoi-MQVinh-LMThang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\LMinhThang so 25- 10.04.doc#', '03.11.SP', 'Một số PP giải phương trình hàm và giúp HS phổ thông tiếp cận với ph.trình hàm', 'Lê Minh Thắng', 1, 'Vương Vĩnh Phát', 'ĐH3A2', NULL, NULL, '3', '3', 'SP'),
(NULL, NULL, '03.12.SP', 'Một số khó khăn của HS khi học môn hình học 7', 'Lý Thị Mỹ Trinh', 0, 'Nguyễn Như Lân', '27A1', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTQVinh-NHPhuc-DQAHuy 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NHoaiPhuc so 21- 10.04.doc#', '03.13.SP', 'Các ứng dụng của các định lý Rôn, Lagrăng, Bônxanô – Côsi', 'Nguyễn Hoài Phúc', 1, 'Võ Tiến Thành', 'ĐH2A1', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTQVinh-NHPhuc-DQAHuy 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NTQuangVinh so 20 -10.04.doc#', '03.14.SP', 'Bất đẳng thức tích phân', 'Nguyễn Trần Q. Vinh', 1, 'Võ Tiến Thành', 'ĐH3A2', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PLDuy-DHAn-NPHau 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NPHau so 19 -10.04.doc#', '03.15.SP', 'Ứng dụng của bất đẳng thức Hôlder và Minkowski trong toán phổ thông', 'Nguyễn Phúc Hậu', 1, 'Lê Thái Duy', 'ĐH3A2', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTQVinh-NHPhuc-DQAHuy 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\DQAnhHuy so 22 - 10.04.doc#', '03.16.SP', 'Vận dụng các PP khái quát hoá, đặc biệt hoá, tương tự đề giải một số bài toán sơ cấp', 'Dư Quang Anh Huy', 1, 'Vương Vĩnh Phát', 'ĐH2A2', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NHBNgoc-DTNTram 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NHBNgoc so 11-10.04.doc#', '03.17.SP', 'Định dạng và PP giải các bài tập nhiệt học trong chương trình học phổ thông', 'Nguyễn H. Bảo Ngọc', 0, 'Lê Đỗ Huy', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT LTLGiang-LTThDung&NTKThoa 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\LTLGiang so 14-10.04.doc#', '03.18.SP', 'Định dạng và PP giải các bài tập cơ học trong chương trình học phổ thông', 'Lê Thị Linh Giang', 0, 'Lê Đỗ Huy', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PADao-TTHThu&PLDan-TQDuyet 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\TTHuynhThu so 28-10.04.doc#', '03.19.SP', 'Sự khác biệt giữa chương trình SGK cũ và SGk mới môn Vật lý 10', 'Trần Thị Huỳnh Thu & Phạm Long Ph. Đan', 0, 'Trần Thể', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT LTLGiang-LTThDung&NTKThoa 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\LTTDung so 13-10.04.doc#', '03.20.SP', 'So sánh những ưu khuyết điểm của SGK theo chương trình mới và cũ', 'Lý Thị Th.Dung & Ng. Thị Kim Thoa', 0, 'Trần Thể', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PADao-TTHThu&PLDan-TQDuyet 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\TQuocDuyet so 27-10.04.doc#', '03.21.SP', 'Bản chất Vật lý trong các bài tập định tính', 'Trần Quốc Duyệt', 1, 'Vũ Tiến Dũng', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT TLHai-NTTai 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NTTai so 7-10.04.doc#', '03.22.SP', 'Điểm đặt tương đương của lực từ  trong bài toán chuyển động trong từ trường', 'Nguyễn Tấn Tài', 1, 'Vũ Tiến Dũng', 'ĐH3L', NULL, NULL, '3', '3', 'SP'),
(NULL, NULL, '03.23.SP', 'Tìm hiểu việc đổi mới PPDH Hoá học ở trường THCS', 'Hầu Đức Trung', 1, 'Lê Văn Quang', '27B', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PADao-TTHThu&PLDan-TQDuyet 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\P Anh Dao so 29- 10.04.doc#', '03.24.SP', 'Một số PP xử lý nước ô nhiễm', 'Phan Anh Đào', 0, 'Nguyễn Văn Thạt', 'ĐH3H', NULL, NULL, '3', '2', 'SP'),
(NULL, NULL, '03.25.SP', 'Tìm hiểu hứng thú học tập hoá học của HS THCS', 'Nguyễn Thị Ánh Tuyết', 0, ' Lê Văn Quang', '27 B', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.26.SP', 'Khảo sát sơ bộ vài đặc trưng về tính ôxy hoá của acid nitric loãng đối với kim loại', 'Ng.Vương Hoà Cường', 1, 'Lê Thị Hồng Huệ', 'ĐH3H', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.27.SP', 'Khảo sát sơ bộ vài đặc trưng về tính ôxy hoá của acid sulfnunric đặc  đối với kim loại', 'Trần Thị Hồng Ngân', 0, 'Lê Thị Hồng Huệ', 'ĐH3H', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.28.SP', 'Tìm hiểu các PP ly trích hợp chất Saponin từ thực vật', 'Lê Thị Ngọc Hạnh', 0, 'Ng.T. Mỹ Phượng', 'ĐH3H', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.29.SP', 'Tìm hiểu các PP ly trích hợp chất  Alcaloid từ thực vật', 'Võ H. Xuân Phương', 0, 'Ng.T. Mỹ Phượng', 'ĐH3H', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.30.SP', 'Tìm hiểu mức độ hứng thú học tập môn Hoá học của HS khối lớp 8 tr. THCS Quản Cơ Thành', 'Ng. Th. Thuỷ Tiên', 0, 'Đặng Công Thiệu', ' 26C4', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.31.SP', 'Tìm hiểu nguyên nhân và đề xuất một số biện pháp giúp đỡ HS yếu kém môn hoá học  ở khối lớp 8 trường THCS Quản Cơ Thành', 'Phạm Thanh Nga', 0, 'Đặng Công Thiệu', '26B1', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTTNhung&HNNg.Hong-PTBich-NPAn 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NTTHong so 5-07.04.doc#', '03.32.SP', 'Tìm hiểu mức độ hứng thú học tập môn Địa lý của HS khối 6 trường THCS An Châu', 'Ng.Thị Thu Hồng', 0, 'Lê Thị Ngọc Linh', '26C4', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT VTHien-NTTHong 07.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\VTHien so 4.doc#', '03.33.SP', 'Tìm hiểu thực trạng gỉang dạy và rèn luyện một số kỹ năng cơ bản của bộ môn Địa lý ở THCS H.V', 'Võ Thái Hiền', 0, 'Lê Thị Ngọc Linh', '26C4', NULL, NULL, '3', '1', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PLDuy-DHAn-NPHau 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\PLeDuy so 26-10.04.doc#', '03.34.SP', 'Tìm hiểu thủ thuật. BPDh mà GV sử dụng trong giờ dạy Toán ở trường PT để giúp HS ghi nhớ kiến thức', 'Phạm Lê Duy', 1, ' Lê Thanh Hùng', 'ĐH2A1', NULL, NULL, '3', '1', 'SP'),
(NULL, NULL, '03.35.SP', 'Tìm hiểu hứng thú học tập môn Tiếng Anh của HS trường THPT', 'Ng. Thị Quỳnh Dao', 0, 'Lê Thanh Hùng', 'ĐH1D2', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.36.SP', 'Vai trò và biện pháp của GVCN trong việc giúp đỡ HS có hoàn cảnh đạc biệt ở trường THCS Lý Thường Kiệt TP LX', 'Hồ Thị Ni', 0, 'Nguyễn Việt Ái', '27C1', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.37.SP', 'Vai trò của hoạt động ngoại khoá đối với GD thẩm mỹ cho HS THCS', 'Phan Thị Cẩm Lợi', 0, 'Nguyễn Việt Ái', '27C2', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NHBNgoc-DTNTram 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\DTNTram so 12-10.04.doc#', '03.38.SP', 'Tìm hiểu ý thức và năng lực tự quản của HS ở trường THCS Lý Thường Kiệt TP LX', 'Đỗ Thị Ngọc Trâm', 0, 'Nguyễn Việt Ái', '27C1', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT PXThuy.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\PXThuy so 3.doc#', '03.39.SP', 'Tìm hiểu ảnh hưởng của gia đình đến việ học tập và rèn luyện đạo đức cho HS khối 11 trường THPT chuyên Thoại Ngọc Hầu', 'Phạm Xuân Thuỷ', 0, 'Nguyễn Thị Cúc', 'ĐH1D2', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT LTTruc DotII.05.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\LTTTruc so 1-05.04.doc#', '03.40.SP', 'Tìm hiểu một số biện pháp gây hứng thú học tập môn tiếng Anh của HS khối 10 trường THPT Trần Văn Thành', 'Lý Thị Thanh Trúc', 0, ' La Hồng Huy', 'ĐH1D2', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTTNhung&HNNg.Hong-PTBich-NPAn 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NPAn so 9-10.04.doc#', '03.41.SP', 'Vương quốc Phù Nam và tín ngưỡng bàlamôn giáo trong lịch sử vương quốc Phù Nam', 'Nguyễn Phương An', 1, 'Nguyễn Ngọc Thuỷ', 'ĐH3S', NULL, NULL, '3', '3', 'SP'),
(NULL, NULL, '03.42.SP', 'Hiện trạng  ô nhiễm nước mặt sông, kênh, rạch chính tại phường Mỹ Bình TP Long Xuyên - AG', 'Trần Trung Hiếu & 5 SV', 1, 'Lê Tài Năng', 'ĐH3B', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '03.43.SP', 'Thực trạng về việc sử dụng PPDH mới theo chương trình thay sách Sinh học lớp 6', 'Ngô Thị Thanh Tâm', 0, 'Ngô Thị Th. Liễu', '26B2', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTTNhung&HNNg.Hong-PTBich-NPAn 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\PTBThuy so 8-10.04.doc#', '03.44.SP', 'Khảo sát khả năng hiểu và sử dụng từ Hán Việt của HS khối lớp 10 và khối 12 trường THPT LX', 'Phan Thái Bích Thuỷ', 0, 'Hoàng Quốc', 'ĐH3C2', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT NTTNhung&HNNg.Hong-PTBich-NPAn 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NTTNhung so 10-10.04.doc#', '03.45.SP', 'Tìm hiểu thực trạng viết sai chính tả của HS trường THPT Nguyễn Khuyến và một số biện pháp khắc phục', 'Ng.T.Tuyết Nhung & Huỳnh Ngọc Ng.Hồng', 0, 'Tô Kim Nguyên', 'ĐH2C1', NULL, NULL, '3', '2', 'SP'),
(NULL, NULL, '03.46.SP', 'Tìm hiểu thực trạng việc giảng dạy và học tập reading của GV và HS khối 11 trường THPT Châu Văn Liêm', 'Võ Thị Linh', 0, 'Võ Thị Nhiệm', 'ĐH1D2', NULL, NULL, '2', '5', 'SP'),
(NULL, '#..\\..\\lmtri\\NCKH SV\\GCN\\DTMHuong so 2- 05.04.doc#', '03.47.SP', 'Thực trạng khả năng nghe, nói kém tiếng Pháp của HS hệ 3 năm trường THPT chuyên Thoại Ngọc Hầu', 'Đỗ Thị Mai Hương', 0, 'Huỳnh Công Lộc', 'ĐH1D2', NULL, NULL, '3', '2', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT DT MBHien-NNXThao-TDTrang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\NNXThao so 16-10.04.doc#', '03.48.SP', 'Tình trạng nhần lẫn với tiếng Anh khi học tiếng Pháp của Sv khối ngoại ngữ trường ĐHAG', 'NG.Ngọc Xuân Thảo', 0, 'Huỳnh Công Lộc', 'ĐH2D', NULL, NULL, '3', '3', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT TLHai-NTTai 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\TLHai so 6-10.04.doc#', '03.49.SP', 'Tình hình hứng thú học tậo môn tiếng Pháp của SV chuyên ngành tiếng Anh trường ĐHAG', 'Trương Lệ Hải', 1, 'Huỳnh Công Lộc', 'ĐH2D', NULL, NULL, '3', '2', 'SP'),
(NULL, NULL, '03.50.SP', 'Tìm hiểu cách học tốt tiếng Pháp từ cái nền tiếng Anh', 'Lê thị Thiên Kiều', 0, NULL, 'ĐH1D3', NULL, NULL, '2', '5', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT DT MBHien-NNXThao-TDTrang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\TDTrang so 17-10.04.doc#', '03.51.SP', 'Tăng cường hứng thú học tập và khả năng hiểu bài của HS trong giờ học ngữ pháp Tiếng Anh bằng cách tổ chức grammar games', 'Trần Diễm Trang', 0, 'Trần T.Th. Huế', 'ĐH2D', NULL, NULL, '3', '4', 'SP'),
('#..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT DT MBHien-NNXThao-TDTrang 10.04.doc#', '#..\\..\\lmtri\\NCKH SV\\GCN\\MBHien so 15-10.04.doc#', '03.52.SP', 'Rèn luyện kỹ năng nói tiếng Anh của HS khối 10 trường THPT THoại Ngọc Hầu thông qua hoạt động đối thoại và đóng kịch', 'Mạch Bửu Hiền', 0, 'Ng.Th. Bích Thuỷ', 'ĐH2D', NULL, NULL, '3', '3', 'SP'),
(NULL, NULL, '03.53.KT', 'Nghiên cứu kênh phân phối bột giặt tại thành phố Long Xuyên: Tình huống bột giặt Tide.', 'Nguyễn Hữu Viên', 1, 'Mai Tuấn Linh', 'ĐH1TC1', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '03.54.KT', 'Cổ phần hóa-Giải pháp nâng cao hiệu qủa hoạt động của doanh nghiệp nhà nước ở tỉnh An Giang', 'Phạm Thanh Hà', 0, 'Nguyễn Tri Khiêm', 'ĐH1TC3', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '03.55.KT', 'Phân tích và đánh giá tình hình dư nợ tín dụng và những giải pháp làm giảm nợ quá hạn của chi nhánh Ngân Hàng Công Thương An Giang', 'Lý Văn Tài', 1, 'Huỳnh Nhựt Nghĩa', 'ĐH1TC2', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '03.56.KT', 'Ứng dụng kế toán quản trị trong công ty xây dựng giao thông An Giang', 'Vương Mỹ Phụng', 0, 'Nguyễn Tri Như Quỳnh', 'ĐH1KT', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '03.57.KT', 'Thực trạng và một sô giải pháp nhằm nâng cao khả năng khai thác tiềm năng du lịch dã ngoại ở An Giang', 'Quách Yến Phượng', 0, 'Phạm Trung Tuấn', 'ĐH3KN1', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '03.58.KT', 'Tổ chức hoạt động ngoại khóa cho sinh viên ĐHAG nhìn về khía cạnh quản trị', 'Lưu Phước Vẹn', 1, 'Huỳnh Nhựt Nghĩa', 'ĐH1KT3', NULL, NULL, '2', '5', 'KT'),
(NULL, NULL, '04.59.SP', 'Tìm hiểu các phương pháp Ly trích hợp chất SAPONIN từ thực vật.', 'Lê Thị Ngọc Hạnh', 0, 'Nguyễn Thị Mỹ Phượng', 'ĐH3H', NULL, NULL, '4', '5', 'SP'),
(NULL, NULL, '05.01.KT', 'Nhu cầu của doanh nghiệp AG đối với lao động chuyên ngành QTKD Nông nghiệp', 'Vương Hoàng Phủ', 1, 'Huỳnh Phú Thịnh', 'DH3KN2', '2006-03-15', '2006-06-15', '2', '5', 'KT'),
('..\\..\\lmtri\\NCKH SV\\QD NTDT\\QDNT TCHung- LTThoai 07.07.doc#../../lmtri/NCKH%20SV/QD%20NTDT/QDNT%20TCHung-%20LTThoai%2007.07.doc#', '..\\..\\lmtri\\NCKH SV\\GCN\\Truong Chi Hung so 32 -  07.07.doc#../../lmtri/NCKH%20SV/GCN/Truong%20Chi%20Hung%20so%2032%20-%20%2007.07.doc#', '05.01.SP', 'Sưu tầm, chú giải hoành phi, liễn đối Hán Nôm trên địa bàn TP.Long Xuyên, An Giang', 'Trương Chí Hùng - Lê Thị Thoại', 0, 'Hoàng Quốc', 'ĐH4C1', NULL, NULL, '3', '2', 'SP'),
(NULL, NULL, '05.02.KT', 'Khai thác tiềm năng từ thân cây Sen để sản xuất - kinh doanh lụa từ tơ Sen', 'Lưu Trần Đức', 1, 'Huỳnh Phú Thịnh', 'DH5KD', '2006-06-01', '2007-04-01', '2', '5', 'KT'),
(NULL, NULL, '06.01.SP', 'Khảo sát năng lực sử dụng Tiếng Việt của học sinh tiểu học người chăm huyện Tân Châu - AG', 'Nguyễn Thị Xuân Mai', 0, 'Hoàng Quốc', 'DH5C2', '2007-06-01', '2007-12-01', '2', '5', 'SP'),
(NULL, NULL, '06.02.SP', 'Tìm hiểu về năng lực nhận biết từ địa phương và từ toàn dân của khối học sinh lớp 9 trên địa bàn An Giang', 'Thái Hà Đông', 0, 'Hoàng Quốc', 'DH5C2', '2007-06-01', '2007-12-01', '2', '5', 'SP'),
(NULL, NULL, '08.01.NN', 'Khảo sát tính tăng trưởng và năng suất của 10 giống đậu xanh nhập nội trong chậu tại khu B, Trường ĐH An Giang.', 'Trần Anh Tuấn', 1, 'Nguyễn Văn Minh', 'DH7TT', '2008-01-08', '2009-01-01', '2', '5', 'NN'),
(NULL, NULL, '08.02.NN', 'Khảo sát đặc tính sinh trưởng và năng suất 12 giống đậu nành nhập nội trong chậu tại Khu B, Trường ĐH An Giang.', 'Dương Hoàng Điểm', 1, 'Nguyễn Văn Minh', 'DH7TT', '2008-01-08', '2009-01-01', '2', '5', 'NN'),
(NULL, NULL, '08.03.NN', 'Khảo sát một số đặc điểm hình thái, sinh sản, sinh trưởng cá Xiêm, cá Lia Thia ta và con lai của chúng (Bettas splendens)', 'Hồ Minh Phong', 1, 'Vương Học Vinh', 'DH7TS', '2008-11-30', '2009-05-30', '2', '5', 'NN'),
(NULL, NULL, '08.04.NN', 'Tìm hiểu các chủng vi khuẩn gây bệnh ghẻ lở trên cá Lóc Môi Trề (Channa striata) tại huyện Tam Nông - ĐT.', 'Lê Minh Tiến', 1, 'Hứa Thị Phượng Liên', 'DH7TS', '2008-01-10', '2009-03-10', '2', '5', 'NN'),
(NULL, NULL, '08.05.NN', 'Thử nghiệm bảo quản nấm rơm tươi bằng cách xử lý với urea và vôi', 'Phạm Thành Thảo', 0, 'Nguyễn Thị Hạnh Chi', 'DH8CN', '2009-03-15', '2009-12-01', '2', '5', 'NN'),
(NULL, NULL, '08.06.NN', 'Ảnh hưởng của chính sách vay vốn tín dụng đến đời sống sinh viên huyện Tịnh Biên, An Giang', 'Nguyễn Văn Chỡ', 0, 'Phạm Xuân Phú', 'DH7PN', '2009-03-15', '2009-09-15', '2', '5', 'NN'),
(NULL, NULL, '08.07.NN', 'Sản xuất rượu vang Sim', 'Nguyễn Hồng Nhung', 0, 'Nguyễn Hữu Thanh', 'DH7SH1', '2009-04-01', '2009-11-01', '2', '5', 'NN'),
(NULL, NULL, '08.08.NN', 'Nghiên cứu quy trình khử mẫu, nhân chồi nghệ vàng bằng phương pháp nuôi cấy mô', 'Nguyễn Quốc Tịnh', 0, 'Nguyễn Thị Mỹ Duyên', 'DH7SH1', '2009-04-02', '2009-12-02', '2', '5', 'NN'),
(NULL, NULL, '08.09.NN', 'Sản xuất rượu vang từ quả trứng cá', 'Lê Hoàng Minh', 0, 'Nguyễn Hữu Thanh', 'DH7SH1', '2009-04-01', '2009-11-01', '2', '5', 'NN'),
(NULL, NULL, '08.10.NN', 'Thử nghiệm sử dụng nước thải từ ao nuôi cá tra thâm canh trong nuôi sinh khối Moina sp tại huyện Phú Tân, An Giang', 'Đặng Thế Lực', 0, 'Lê Công Quyền', 'DH6TS', '2009-03-01', '2009-06-01', '2', '5', 'NN'),
(NULL, NULL, '08.11.NN', 'Khảo sát thực trạng dinh dưỡng của sinh viên trường ĐH An Giang và đề xuất phương pháp xây dựn khẩu phần ăn hợp lý.', 'Nguyễn Thị Phương Anh', 0, 'Nguyễn Duy Tân', 'DH7TP', '2009-04-01', '2009-11-01', '2', '5', 'NN'),
(NULL, NULL, '11.01.CM', 'Nghiên cứu sự ảnh hưởng của pH và chiều cao cột lọc đến quá trình khử Amôn của nước rỉ rác bằng vật liệu PVC', 'Nguyễn Văn Trơn', 0, 'Trần Thị Hồng Ngọc', NULL, NULL, NULL, '3', '5', 'CM'),
(NULL, NULL, '11.01.ML', 'Hiệu quả của nghiên cứu thực tế đối với sinh viên Khoa Lý luận Chính trị, trường Đại học An Giang', 'Phan Thị Ánh, Trần Thị Hạnh, Lâm Minh Thông', 0, 'Đỗ Thị Hiện', NULL, NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '11.01.NN', 'Cải thiện quy trình sản xuất meo giống nấm rơm (Volvarilella volvacea)', 'Lê Huỳnh Đức', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '11.02.CM', 'Nghiên cứu khả năng tích lũy Zn trong nước rỉ rác của hạt rau muống', 'Đăng Hữu Thắng', 0, NULL, NULL, NULL, NULL, '3', '5', 'CM'),
(NULL, NULL, '11.02.ML', 'Thực trạng phòng chống "diễn biến hào bình" trong lĩnh vực dân tộc, tôn giáo tại huyện Tri Tôn, tỉnh An Giang, từ năm 2001 đến năm 2010', 'Nguyễn Thị Thìn', 0, 'Phạm Thị Thu Hồng', NULL, NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '11.02.NN', 'Bước đầu xây dựng quy trình trồng nấm rễ dài (Audemansiella radicat) ở An Giang', 'Phan Phương Đại', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '11.03.ML', 'Thực trạng công tác giáo dục ý thức xây dựng và bảo vệ tổ quốc cho sinh viên của trường Đại học An Giang', 'Nguyễn Trung Thành', 0, 'Đỗ Công Hồng Ân', NULL, NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '11.03.NN', 'Xác định ba loài vi khuẩn chủ yếu gây viêm đường sinh dục trên heo nái sau khi sinh ở hai trại chăn nuôi heo trong tỉnh AG', 'Huỳnh Hoàng Linh', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '11.04.ML', 'Thực trạng và giải pháp sản xuất gạch ngói ở xã Long Giang, huyện Chợ Mới, tỉnh An Giang từ năm 2006 - 2010', 'Nguyễn Văn Thông', 0, 'Trần Văn Hùng', NULL, NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '11.04.NN', 'Hiệu quả mô hình canh tác lúa nàng nhen tại xã núi tô 2010-2011', 'Chau Kim Sanh', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '11.05.NN', 'Tỉ lệ tiêu hóa dưỡng chất trên bò thịt địa phương vỗ béo bằng thức ăn công nghiệp CP và cỏ địa phương ở nông hộ tại xã Mỹ An, CM, AG', 'Ngô Thị Băng Nhi', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '11.06.NN', 'Khảo sát tình hình nhiễm ve cứng trên chó tại hai phường Mỹ Long và Mỹ Xuyên TPLX, AG', 'Võ Thị Phương', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.01.ML', 'Thực trạng và giải pháp nhằm bảo tồn và phát triển kinh Phật viết trên lá Buông tại chùa Xvay-Ton, Tri Tôn, An Giang"', 'Bùi Thị Quyên', 0, 'Chau Sóc Khăng', 'DH10QP', NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.01.NN', 'Hiệu quả kinh tế của mô hình canh tác lúa Nàng nhen tại xã núi Tô 2010-2011', 'Chau Kim Sanh', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.01.SP', 'Đồ dùng trực quan lịch sử trong chương trình lớp 11 cơ bản (phần lịch sử thế giới hiện đại)', 'Võ Thị Hồng Loan', 0, NULL, 'DH9SU', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '12.02.ML', 'Thực trạng dạy và học môn GDCD ở các trường THPT huyện An Phú từ 2008-2011', 'Trần Hoài Anh, Nguyễn Thị Quế Hương', 0, NULL, 'DH11CT', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.02.NN', 'Xác định ba loài vi khuẩn chủ yếu gây viêm đường sinh dục trên heo trong tỉnh An Giang', 'Huỳnh Hoàng Linh', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.02.SP', 'Phong trào đấu tranh chống thực dân Pháp ở An Giang 186', 'Lê Hồng Ngọc', 0, 'Nguyễn Bảo Kim', 'DH10SU', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.03.ML', 'Thực trạng và giải pháp dịch chuyển cơ cấu nông nghiệp, Phú Tân-AG 2006-2010', 'Mai Văn Mo, Thái Thị Ngọc Thủy, Nguyễn T. N.Hân', 0, NULL, 'DH9CT', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.03.NN', 'Cải thiện quy trình sản xuất meo giống nấm rơm (Volvarilelle volvacea)', 'Lê Huỳnh Đức', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.03.SP', 'Đánh giá tiềm năng, hiện trạng và giải pháp phát triển du lịch ở khu du lịch Núi Sam AG', 'Nguyễn Huỳnh Kim Thoa', 0, NULL, 'DH9DL', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '12.04.ML', 'Thu nhập của công nhân phường Mỹ Thạnh, TPLX-AG, thực trạng & giải pháp', 'Lê Châu Mỹ Hoa, Huỳnh Tấn Trường', 0, NULL, 'DH11QP', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.04.NN', 'Bước đầu xây dựng quy trình trồng nấm rễ dài (Audemansiella radicat) ở An Giang', 'Phan Phương Đại', 0, NULL, NULL, NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.04.SP', 'Tìm hiểu về tư duy phê phán và htu75c trạng sử dụng tư duy phê pha1ntrong dạy học', 'Phạm Thị Bích Thủy', 0, 'Nguyễn Phương Thảo', 'DH10A', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.05.ML', 'Thực trạng kỹ năng giải quyết tình huống SP của SV K. LLCT -DHAG', 'Nguyễn Trung Thành', 0, 'Phạm Thị Thu Hồng', 'DH10QP', NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.05.NN', 'Khảo sát khả năng phân lập cellulose và sinh enzyme cellulose của nấm trichoderma sp', 'Lê Minh Giàu', 0, NULL, 'DH8SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.05.SP', 'Chéo hóa ma trận, toán tử tuyến tính va ứng dụng', 'Nguyễn Ngọc Vân', 0, 'Lê Văn Chua', 'DH10A', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.06.ML', 'Nhận thức của SV K.LLCT về phòng chống diễn biến hòa bình, bạo loạn lật đổ', 'Nguyễn K Hoàng, Ng T, Nhựt Tuyền,', 0, NULL, 'DH11CT', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.06.NN', 'Khảo sát bộ gen của 30 giống đậu nành bằng dấu chuẩn', 'Hồ Thị Ngọc Hà', 0, NULL, 'DH8SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.06.SP', 'Tìm hiểu chuỗi Fourier và ứng dụng', 'Dương Giao Kỵ', 0, 'Võ Thành Tài', 'DH10A', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.07.ML', 'Thực trạng và giải pháp phát huy thế mạnh du lịch An Giang 2006 đến nay', 'Lê Thị Út Em, Nguyễn T. Mỹ Tiên', 0, NULL, 'DH11CT', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.07.NN', 'Khảo sát thành phần loài, mức độ gây hại và biến động mật số của côn trùng', 'Nguyễn Hoài Hận', 0, 'Nguyễn Thị Thái Sơn', 'DH9TT', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.07.SP', 'Xây dựng web hỗ trợ học sinh tự học chương I, hình học 10', 'Nguyễn Thị Thanh Loan', 0, 'Phạm Văn Bản', 'DH10A', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.08.ML', 'Ảnh hưởng của đạo phật giáo hòa hảo đối với thanh niên hiện nay tại Châu Phú, AG', 'Huỳnh Văn Đủ, Lê Ngọc Dung', 0, NULL, 'DH11CT', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.08.NN', 'Khảo sát thành phần loài, mức độ gây hại và biến động mật số..Tri Tôn, AG', 'Huỳnh Thanh Đệ', 0, NULL, 'DH9TT', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '12.08.SP', 'Sử dụng ngôn ngữ cơ thể để xây dựng kiến thức mới', 'Nguyễn Thị Cẩm Chương', 0, NULL, 'DH10A', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '12.09.ML', 'Vai trò của ngành tiểu thủ công nghiệp đối với việc xây dựng nông thôn mới ở Long Giang, Chợ Mới AG', 'Nguyễn Văn Thông', 0, 'Trần Văn Hùng', 'DH10QP', NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.09.NN', 'Khảo sát thành phần loài mức độ gây hại và biến động mật số', 'Trần Thị Tuyết Mai', 0, 'Nguyễn Thị Thái Sơn', 'DH9TT', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.09.SP', 'Sử dụng sơ đồ tư duy để củng cố hệ thống kiến thức nhằm nâng cao hiệu quả dạy và học VL 10', 'Huỳnh Kim Mỹ', 0, NULL, 'DH10L', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '12.10.ML', 'Chữ hiếu torng phật giáo hòa hảo và ảnh hưởng của con người phú Tân, AG', 'Lâm Chí Kiên', 0, 'Chau Sóc Khăng', 'DH11CT', NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.10.NN', 'Khảo sát đặc điểm hình thái và sinh học của sâu sừng thuộc họ Spingidae', 'Nguyễn Thị Liền', 0, 'Nguyễn Thị Thái Sơn', 'DH9TT', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.10.SP', 'Môt số phương pháp tạo hứng thú học tập nhằm nâng cao hiệu quả cho tiết học vật lý phổ thông', 'Lê Thị Trúc Ly', 0, NULL, 'DH10L', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '12.11.ML', 'Tìm hiểu về việc đi làm thêm của SV K. LLCT, AG', 'Huỳnh Thanh Bình', 0, NULL, 'DH11QP', NULL, NULL, '2', '5', 'ML'),
(NULL, NULL, '12.11.NN', 'Khảo sát đặc điểm hình thái và sinh  học của sâu nhiều đọt', 'Nguyễn Hữu Thọ', 0, NULL, 'DH9TT', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '12.11.SP', 'Khảo sát tính bazo của amin trong dung môi', 'Võ Thị Nhí', 0, 'Nguyễn Văn Hồng', 'DH10H', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.12.ML', 'Tình hình học vượt của sunh viên K. LLCT, DHAG', 'Võ Thị Phương Duy', 0, 'Lê Thị Tần', 'DH10CT', NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.12.NN', 'Khảo sát tỉ lệ chất sơ bổ sung đến chất lượng bánh mì', 'Nguyễn Văn Thạch', 0, 'Hồ Minh Thảo', 'DH9TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.12.SP', 'Ảnh hưởng của cấu trúc đến hoạt tính hóa học của dẫn xuất halogen', 'Nguyễn Minh Lý', 0, 'Phạm Phát Tân', 'QD11H', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.13.ML', 'Vấn đề việc làm thêm của sv K LLCT, thực trạng giải pháp', 'Ng V Chiến, NG T Tài Linh, Cao T Tuyết Nga', 0, 'Huỳnh Anh', NULL, NULL, NULL, '3', '5', 'ML'),
(NULL, NULL, '12.13.NN', 'Nghiên cứu chế biến nước dừa tươi bổ sung cơm dừa đóng hộp', 'Phạm Hồng Quyên', 0, 'Hồ Minh Thảo', 'DH9TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.13.SP', 'Phân lập một số chủng nấm sợi có khả năng sinh chất đối kháng diệt sâu bệnh trên cây lúa', 'Phạm Tấn Đạt', 0, 'Khưu Phương Yến Anh', 'DH10B', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '12.14.NN', 'Khảo sát khả năng thay thế sữa dừa tươi trong chế biến yaourt', 'Nguyễn Thị Mỹ Linh', 0, 'Hồ Minh Thảo', 'DH9TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.15.NN', 'So sánh thời gian ủ virus vàng lùn và lùn xoắn lá ở điều kiện nhà lưới', 'Cao Thị Xuân Thẩm', 0, 'Nguyễn Phú Dũng', 'DH9TT', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.16.NN', 'Nghiên cứu chế biến sữa bột dinh dưỡng hạt sen, mè đen', 'Nguyễn Thị Hải', 0, NULL, 'DH9TP', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '12.17.NN', 'Đa dạng hóa sữa chưa bằng cách bổ sung lòng đỏ trứng', 'Nguyễn Thị Mỹ Hạnh', 0, 'Cao Thị Luyến', 'DH9TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.18.NN', 'Khảo sát hàm lượng Auxin và cytokinin thích hợp cho việc tạo cụm chồi nghệ bằng phương pháp nuôi cấy lá mỏng', 'Nguyễn Hoài Thanh', 0, NULL, 'DH9SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.19.NN', 'Khảo sát ảnh hưởng của nồng độ BA và NAA lên sự tạo và nhân nhanh chồi cùa lan giả hạc bằng pp nuôi cấy mô', 'Phạm Vĩnh Sơn', 0, NULL, 'DH9SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.20.NN', 'Nghiên cứu chế biến bột dinh dưỡng hạt sen mè đen', 'Nguyễn Thị Hảo', 0, 'Cao Thị Luyến', 'DH9TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.21.NN', 'Khảo sát hiệu quả của môi trường dinh dưỡng lên sự sinh trưởng của cây vạn lộc đỏ và cây ngọc ngân', 'Phùng Văn Tặng', 0, 'Nguyễn Thị Mỹ Duyên', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.22.NN', 'Nghiên cứu quy trình tạo vật liệu khởi đầu invitro', 'Trương Thị Hằng', 0, 'Nguyễn Thị Mỹ Duyên', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.23.NN', 'Nghiên cứu tạo vật liệu khởi đầu invitro trên cây trầu bà chân rết', 'Trần Thị Niệm', 0, 'Diệp Nhựt Thanh Hằng', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.24.NN', 'Hoàn thiện quy trình trồng nấm volvatiella volvacea trên mạt cưa thải', 'Trương Trần Thuận, Nguyễn Thị Thúy An', 0, NULL, 'DH10SH', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '12.25.NN', 'Nghiên cứu sản phẩm nước giải khát lên men từ chuối xiêm', 'Nguyễn Thanh Đảm, Trương Thị Ngọc Hân', 0, 'Hồ Thị Thu Ba', 'DH11SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.26.NN', 'Nghiên cứu chế biến nước sương sâm đóng chai', 'Đỗ Thị Thùy Dương', 0, 'Trịnh Thanh Duy', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '12.27.NN', 'Nghiên cứu qui trình chế biến si rô mít', 'Nguyễn Thị Nho', 0, 'Trịnh Thanh Duy', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.01.CM', 'Ảnh hưởng của pH, thẻ to1ch vi khuẩn bacillus subtilis đến hiệu suất xử lý H2S trong nước ao nuôi cá tra', 'Trương Trọng Trí', 1, 'Phan Trường Khanh', NULL, NULL, NULL, '3', '5', 'CM'),
(NULL, NULL, '13.01.ML', 'Tìm hiểu phương pháp học nhóm của SV K. LLCT, ĐHAG', 'Nguyễn Văn Chiến, Ng T. Tài Linh', 1, 'Nguyễn Thị Thùy Dung', NULL, NULL, NULL, NULL, '5', 'ML'),
(NULL, NULL, '13.01.NN', 'Nghiên cứu quy trình cố định nấm men cerevisiae trên vỏ bưởi và thử nghiệm lên men rượu vang bưởi', 'Nguyễn Thị Mỹ Anh', 0, 'Hồ Thị Ngân Hà', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.01.SP', 'KS năng lực sử dụng tiếng vie65tcua3 HS Chăm trường THPT Châu Phong, Tân Châu', 'Huỳnh Thị Tuyết Giang', 0, 'Hoàng Quốc', 'DH10C', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '13.02.CM', 'NC xủ lý nước thải dệt nhuộm bằng quá trình oxy hóa nâng cao', 'Nguyễn Văn Tuấn', 1, 'Trương Kiến Thọ', NULL, NULL, NULL, '3', '5', 'CM'),
(NULL, NULL, '13.02.ML', 'Nhận thức của sv K. LLCT, ĐHAG với vấn đề bảo vệ chủ quyền biển đảo của VN trên biển đông giai đoạn hiện nay', 'Nguyễn Thị Ngọc Thi', 0, 'Ngô Hùng Dũng', NULL, NULL, NULL, NULL, '5', 'ML'),
(NULL, NULL, '13.02.NN', 'Nghiên cứu chế biến bánh phồng bổ sng khoai tây', 'Nguyễn Thành Công', 0, 'Cao Thị Luyến', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.02.SP', 'Con đường cứu nước theo khuynh hướng dân chủ TS và VS ở VN đầu TK XX', 'Lê Thị Thùy Dương', 0, 'Thái Trí Hải', 'DH11SU', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '13.03.CM', 'Khảo sát môi trường nước ao nuôi cá tra thịt', 'Trần Văn Toàn', 1, 'Phan Trường Khanh', NULL, NULL, NULL, NULL, '5', 'CM'),
(NULL, NULL, '13.03.NN', 'Khảo sát ảnh hưởng của quá trình trích ly, tỷ lệ phối trộn và thanh trùng đến chất lượng nước ép lựu chanh dây', 'Đào Thị Thúy Hằng', 0, 'Đào Văn Thanh', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.03.SP', 'Hào khí dân tộc việt qua các thời kỳ', 'Nguyễn Thị Ý', 0, 'Thái Trí Hải', 'DH11SU', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '13.04.NN', 'Nghiên cứu chế biến yaourt uống bổ sung nước lựu', 'Nguyễn Thị Thanh Truyền', 0, 'Đào Văn Thanh', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.04.SP', 'Rèn luyện ý thức bảo vệ môi trường cho HS THPT qua các chương trình halogen, oxy lưu huỳnh, nito photpho, cabon silic', 'Nguyễn Ngọc Đan Thanh', 0, 'Đặng Công Thiệu', 'DH11HH', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '13.05.NN', 'Nghiên cứu trích ly pectin từ vỏ bưởi', 'Nguyễn Thị Hạnh', 0, 'Vũ Thị Thanh Đào', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.05.SP', 'Khảo sát định tính thành phần hóa học phần nạc thịt quả trâm', 'Huỳnh Thị Thanh Trúc', 0, 'Phạm Thị Kim Phượng', 'DH11HH', NULL, NULL, '2', '5', 'SP'),
(NULL, NULL, '13.06.NN', 'Đánh giá thực trạng đám bảo vệ sinh an toàn thực phẩm và nhận thức của người kinh doanh thức ăn đường phố khu vực lân cận', 'Nguyễn Thị Minh Thùy', 0, 'Vũ Thị Thanh Đào', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.06.SP', 'NC chế tạo chất xúc tác quang TiO2 graphen để phân hủy orange II dưới ánh sáng', 'Nguyễn Minh Lý', 0, 'Phạm Phát Tân', 'DH11HH', NULL, NULL, '3', '5', 'SP'),
(NULL, NULL, '13.07.NN', 'Nghiên cứu chế biến mứt từ nguyên liệu cốc chín', 'Lương Triệu Minh', 0, 'Cao Thị Luyến', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.08.NN', 'Nghiên cứu chế biến sữa khoai lang vàng', 'Huỳnh Minh Sang', 0, 'Cao Thị Luyến', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.09.NN', 'Nghiên cứu chế biến sản phẩm chao bổ sung gấc', 'Trần Thị Thanh Truyền', 0, 'Trịnh Thanh Duy', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.10.NN', 'Nhiên cứu chế biến nước thanh long ruột đỏ lên men có gas', 'Nguyễn Thị Thùy Linh', 0, 'Trịnh Thanh Duy', 'DH10TP', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.11.NN', 'KS một số yếu tố ảnh hưởng đến khả năng sinh tổng hợp enzyme cellulase của nấm mốc aspergillus niger', 'Lê Hoàng Thụy Anh Như', 0, 'Lê Hoàng Bảo Ngọc', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.12.NN', 'KS ảnh hưởng của bệnh lem lép hạt lên năng suất, phẩm chất hạt của 5 giống lúa trong vụ Đông Xuân 2012-2013', 'Nguyễn Văn Hây', 0, 'Trương Bá Thảo', 'DH10SH', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '13.13.NN', 'KS hiệu quả phòng trừ nhện gié trên lúa của 5 loại thuốc BVTV trong vụ Đông xuân', 'Trần Minh Tú', 0, 'Trương Bá Thảo', 'DH10SH', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '13.14.NN', 'KS hiệu quả phòng trừ bệnh đạo ôn trên lúa do nấm pyricularia oryzae của chế phẩm trichoderma sp. Trong điều kiện PTN', 'Bùi Duy Thanh', 0, 'Văn Viễn Lương', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.15.NN', 'KS hiệu quả phòng trừ bệnh đốm vằn trên cây lúa do nấm rhizoctonia solani của các chế phẩm trichoderma sp trong điều kiện PTN', 'Hồ Văn Hoảnh', 0, 'Văn Viễn Lương', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.16.NN', 'Thu thập và bảo quản mẫu thiên địch trên lúa tại TPLX, AG', 'Nguyễn Bảo Toàn', 0, 'Lê Minh Tuấn', 'DH10SH', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '13.17.NN', 'Thu thập và bảo quản mẫu côn trùng hại trên lúa tại TPLX, AG', 'Lê Anh Kiệt', 0, 'Lê Minh Tuấn', 'DH10SH', NULL, NULL, '3', '5', 'NN'),
(NULL, NULL, '13.18.NN', 'Điều tra hiện trạng canh tác và mức độ gây hại của bệnh chổi rồng hại nhãn tại phường Tân Lộc, Thốt Nốt, Cần Thơ 2013', 'Huỳnh Thành Tiến', 0, 'Lê Hữu Phước', 'DH11TT', NULL, NULL, '2', '5', 'NN'),
(NULL, NULL, '13.19.NN', 'Đánh giá khả năng quản lý nhện gié của nhện bắt mồi ở điều kiện thí nghiệm ngoài đồng trên lúa, vụ Đông Xuân ở Châu Thành, AG', 'Dương Thị Ngọc Thùy', 0, 'Lê Hữu Phước', 'DH11TT', NULL, NULL, '2', '5', 'NN'),
('', '', '13.20.NN', 'KS và đánh giá tình trạng dinh dưỡng của SV trường ĐHAG thông qua khẩu phần ăn', 'Tô Thành Thắng', 0, 'Nguyễn Duy Tân', 'sdas', '2016-02-23', '0000-00-00', '2', '5', 'NN'),
('', '', '13.22.NN', 'NC CB kẹo dẻo có bổ sung dịch màu từ bắp cải tím', 'Nguyễn Văn Thanh', 0, 'Nguyễn Duy Tân', 'NN', '2016-02-23', '0000-00-00', '2', '5', 'NN');

-- --------------------------------------------------------

--
-- Table structure for table `dm_hoinghi_hoithao`
--

CREATE TABLE `dm_hoinghi_hoithao` (
  `MS_HN` varchar(10) NOT NULL,
  `TEN_HN_HT` varchar(100) DEFAULT NULL,
  `NGAYTOCHUC` datetime DEFAULT NULL,
  `DIADIEM` varchar(50) DEFAULT NULL,
  `TONGKP` int(11) DEFAULT NULL,
  `NGUONKP` varchar(100) DEFAULT NULL,
  `SONGUOI` int(11) DEFAULT NULL,
  `DANHGIA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dm_hoinghi_hoithao`
--

INSERT INTO `dm_hoinghi_hoithao` (`MS_HN`, `TEN_HN_HT`, `NGAYTOCHUC`, `DIADIEM`, `TONGKP`, `NGUONKP`, `SONGUOI`, `DANHGIA`) VALUES
('HN-NN', 'Nghiên cứu, đào tạo và nhu cầu sử dụng nhân lực về phát triển nông thôn', '2007-12-17 00:00:00', 'Chuyên đề 3', 0, NULL, 0, NULL),
('HN-QL', 'Hội thảo KH Kỷ niệm 10 năm TL Trường ĐH An Giang', '2009-12-29 00:00:00', 'Hội trường 150B', 4460000, 'NSNN', 150, NULL),
('HT-DT', 'Workshop on credit system in higher education', '2006-08-23 00:00:00', 'CD 3', 0, NULL, 0, NULL),
('HT-QL', 'Học giả Fulbright', '2006-07-05 00:00:00', 'PH 2-Khu hieu bo', 0, NULL, 0, NULL),
('HT-XH', 'Workshop on Social work', '2006-05-28 00:00:00', 'CD 3', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dm_tlgd`
--

CREATE TABLE `dm_tlgd` (
  `QDNT` longtext,
  `MSTLGD` varchar(10) NOT NULL,
  `TENTLGD` varchar(100) DEFAULT NULL,
  `TENTG` varchar(100) DEFAULT NULL,
  `DONVI` varchar(50) DEFAULT NULL,
  `PHAI` tinyint(4) DEFAULT NULL,
  `HIENTRANG` varchar(20) DEFAULT NULL,
  `GHICHU` varchar(50) DEFAULT NULL,
  `TGBATDAU` date DEFAULT NULL,
  `TGKETTHUC` date DEFAULT NULL,
  `LOAITLGD` varchar(100) DEFAULT NULL,
  `TIENDOBS` varchar(50) DEFAULT NULL,
  `LOAI` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dm_tlgd`
--

INSERT INTO `dm_tlgd` (`QDNT`, `MSTLGD`, `TENTLGD`, `TENTG`, `DONVI`, `PHAI`, `HIENTRANG`, `GHICHU`, `TGBATDAU`, `TGKETTHUC`, `LOAITLGD`, `TIENDOBS`, `LOAI`) VALUES
(NULL, '00.01.GH', 'Toán Cao cấp (Dành cho SV các ngành Kinh tế)', 'Hoàng Xuân Quảng', 'GH', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.02.SP', 'Xác suất – Thống kê Toán', 'Phạm Đức Thông', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.03.SP', 'Phương pháp Giảng dạy Toán & Tài liệu ôn thi Tốt Nghiệp GVTH', 'Trần Thị Việt Nga', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.04.SP', 'Phương pháp Giảng dạy Toán & Tài liệu ôn thi Tốt nghiệp (GVTHSP)', 'Huỳnh Thọ', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.05.SP', 'Phương pháp dạy học Toán Tiểu học', 'Nguyễn Thọ Sâm', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.06.SP', 'Phương pháp dạy học Toán Tiểu học + Ôn thi Tốt nghiệp hệ 12+2, Số học', 'Phan Thị Trong', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.07.SP', 'Phương pháp dạy học Toán + Tài liệu Ôn thi TN', 'Nguyễn Ngọc Ánh', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.08.SP', 'PPGD Toán  và Tài liệu Ôn thi TN hệ 12+2', 'Hà Thị Thanh Hà', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.09.SP', 'Phương pháp dạy Toán (chỉ viết Chương 7)', 'Phạm Thúc Kim', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.10.SP', 'Tiếng Việt Thực hành', 'Nguyễn Thanh Bình', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.11.SP', 'Giáo trình Tiếng Việt', 'Nguyễn Văn Khương, Tô Thị Kim Nguyên…', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LTL 04.03.doc#', '00.12.SP', 'Cơ sở Ngôn ngữ học', 'Lê Thị Lý', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.13.SP', 'Văn hóa học - Cơ sở Văn hóa Việt Nam (A & B)', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.14.SP', 'Mỹ học Đại cương', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.15.SP', 'Giao tiếp Sư phạm', 'Nguyễn Chí Thành', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LTH&NTC10.02.doc#', '00.16.SP', 'Tâm lý học Đại cương', 'Lê Thanh Hùng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.17.SP', 'Giáo dục Đại cương I + Đánh giá trong giáo dục', 'Đỗ Công Tuất', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.18.SP', 'Giáo dục học', 'Nguyễn Việt Ái', 'SP', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.19.SP', 'Đề cương Bài giảng Công tác Đội', 'Thái Thị Bi', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.20.SP', 'Tâm lý học lứa tuổi & tâm lý học Sư phạm', 'Đỗ Văn Thông', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.21.SP', 'Giáo dục học Đại cương I & II', 'Nguyễn Thị Cúc', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNghiemThu-8TLGD(2000-2001).doc#', '00.22.SP', 'Phương pháp NCKH Giáo dục', 'La Hồng Huy', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PNAnh 10.02.doc#', '00.23.SP', 'Địa lý các khu vực và một số quốc gia thuộc Châu Âu & Châu Phi', 'Phan Ngọc Ánh', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.24.SP', 'Syntactic Exercises', 'Võ Thị Nhiệm', 'SP', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.25.SP', 'Phonetics ĐHCM (PH) 32', 'Trần Thị Thái', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LQCuong T11.02.doc#', '00.26.SP', 'Nhập môn Tin học', 'Nguyễn Thái Dư, Lê Quốc Cường, Đỗ Thanh Cao', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.27.SP', 'Nhập môn Tin học', 'Nguyễn Danh Cởn', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.28.SP', 'Cơ học', 'Lê Đỗ Huy', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.29.SP', 'Bài tập dao động - Sóng', 'Vũ Tiến Dũng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.30.SP', 'Lý thuyết âm nhạc cơ bản', 'Trần Đình Lộc', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.31.SP', 'Phương pháp Giáo dục âm nhạc', 'Ông Huỳnh Huy Hoàng', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.32.SP', 'Chương Kim Chỉ - Môn Lao động Kỹ thuật', 'Trần Thị Khiếm', 'SP', 0, '3', 'Chưa BC tiến độ 2 kỳ (08 và 12/2006)', NULL, NULL, '5', 'Chưa BC TĐ đợt 04/2007', 1),
(NULL, '00.33.ML', 'Đề cương, Nhập môn xã hội học (B)', 'Hà Duy Long', 'ML', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.34.ML', 'Đề cương bài giảng môn PHPT Kinh tế xã hội', 'Bùi Thu Hằng', 'ML', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.35.ML', 'Kinh tế học Đại cương (đề cương bài giảng)', 'Trần Văn Hùng', 'ML', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PTTHong 01.06.doc#', '00.36.ML', 'Đề cương giảng dạy môn Giáo dục Gia đình', 'Phạm Thị Thu Hồng', 'ML', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.37.ML', 'Đáp án NHCH môn CNXHKH', 'Phạm Thị Thu Hồng', 'ML', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.38.ML', 'Đáp án ngân hàng câu hỏi môn LSĐCSVN', 'Nguyễn Thị Diệu Liêng', 'ML', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.39.ML', 'Đáp án hệ thống ngân hàng câu hỏi môn KT- CT', 'Trần Văn Hùng & Bùi Thu Hằng', 'ML', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.40.TC', 'Giáo trình thể dục (Cao đẳng + Đại học)', 'Trần Kỳ Nam', 'TC', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.41.QP', 'Một số vấn đề đường lối Quân sự của Đảng', 'Trần Văn Dương', 'QP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.42.QP', 'Một số nội dung cơ bản về công tác quốc phòng', 'Trần Văn Dương', 'QP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.43.QP', 'Phương pháp giảng dạy Giáo dục Quốc phòng cho HS – SV', 'Trần Văn Dương', 'QP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '00.44.KT', 'Lý thuyết thống kê', 'Hạng Minh Tuấn', 'KT', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.01.CM', 'Tin học đại cương', 'Nguyễn Thái Dư, Lê Quốc Cường,  ĐổThanh Cao', 'CM', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.02.CM', 'Tái sử dụng chất hữu cơ', 'Nguyễn Thị Bé Phúc - Nguyễn Thanh Sơn', 'CM', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.03.CM', 'Môi trường và Quản Lý TNTN.', 'Nguyễn Thị Bé Phúc - Nguyễn Thanh Sơn', 'CM', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.04.NN', 'Thú Y cơ bản', 'Ngô Thụy Bảo Trân', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PhanPhuong Loan 01.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20PhanPhuong%20Loan%2001.07.doc#', '01.05.NN', 'Thủy sản đại cương', 'Phan Phương Loan ( Hứa Thị Phượng Liên)', 'NN', 0, '2', NULL, NULL, NULL, '5', 'Đã hoàn thành', 1),
(NULL, '01.06.NN', 'Kỹ thuật sinh sản nhân tạo và nuôi một số loài cá vùng ĐBSCL.', 'Phan Phương Loan', 'NN', 0, '3', 'Do BM thuỷ sản có thêm ngành nuôi trồng thuỷ sản.', NULL, NULL, '5', NULL, 1),
(NULL, '01.07.NN', 'Khuyến Nông', 'Đặng Thị Nghiệp - Nguyễn Văn Minh', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.08.NN', 'Chăn nuôi gia cầm', 'Đào Thị Mỹ Tiên', 'NN', 0, '3', 'Đã làm đơn và được HĐKH&ĐT duyệt', NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- LTTHang- 12.04.doc#', '01.09.NN', 'Bệnh lý gia súc gia cầm.', 'Lê Thị Thúy Hằng', 'NN', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.10.NN', 'Chăn nuôi đại gia súc.', 'Nguyễn Thị Thu Hồng', 'NN', 0, '3', 'Đã làm đơn và được HĐKH&ĐT duyệt', NULL, NULL, '5', NULL, 1),
(NULL, '01.11.NN', 'Chăn nuôi đại cương.', 'Nhóm Chăn nuôi ThúY', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.12.NN', 'Dinh dưỡng và thức ăn gia súc.', 'Hồ Thị Phương Thảo', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.13.NN', 'Côn trùng đại cương và chuyên khoa.', 'Phạm Huỳnh Thanh Vân', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.14.NN', 'Bệnh đại cương (Cây trồng)', 'Nguyễn Phú Dũng', 'NN', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.15.NN', 'Cây công nghiệp ngắn ngày.', 'Võ Thị Xuân Tuyền, Phạm Huỳnh Th. Vân', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.16.NN', 'Dinh Dưỡng.', 'Nguyễn Duy Tân', 'NN', 1, '1', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.17.NN', 'Hóa thực phẩm.', 'Đào Văn Thanh', 'NN', 1, '1', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.18.NN', 'Đánh giá chất lượng thực phẩm', 'Trần Xuân Hiển', 'NN', 1, '1', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.19.NN', 'Nguyên liệu trong chế biến và bảo quản nông sản.', 'Trần X Hiển, Nguyễn D Tân, Trần Ph Lan', 'NN', 1, '3', 'Xin ngưng BS do bận học', NULL, NULL, '5', 'Đã cơ bản hoàn thành TLGD. Đang chỉnh sửa bổ sung', 1),
(NULL, '01.20.NN', 'Vi sinh thực phẩm I.', 'Nguyễn Hữu Thanh', 'NN', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.21.NN', 'Công nghệ sau thu hoạch và chế biến ngũ cốc', 'Hồ Thanh Bình', 'NN', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.22.NN', 'Ngoại ngữ chuyên ngành công nghệ thực phẩm.', 'Hồ Thanh Bình, Trần Phương Lan', 'NN', 1, '1', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NVMinh 06.04.doc#', '01.23.NN', 'Trồng trọt Đại cương.', 'Nguyễn Văn Minh', 'NN', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.24.NN', 'Cây ăn trái.', 'Nguyễn Thanh Triều', 'NN', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.25.NN', 'Cây rau.', 'Nguyễn Thị Minh Châu', 'NN', 0, '4', 'Chưa BC tiến độ đợt 04/2009', NULL, NULL, '5', 'Chưa BC tiến độ đợt 04/2007, 08/2007,12/2007', 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TTungChinh 11.02.doc#', '01.26.SP', 'Giáo trình dân học dân gian Việt nam', 'Trần Tùng Chinh', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD4-02 PHN.doc#', '01.27.SP', 'Văn học Trung Quốc', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PThanhHung 08.03.doc#', '01.28.SP', 'Bản thể Văn học', 'Phạm Thanh Hùng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.29.SP', 'Introduction to English and American Literature', 'Trần Thị Thái', 'SP', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.30.NN', 'Miễn dịch học', 'Nguyễn Thị Hạnh Chi', 'NN', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNT TLGD TKN 12.02.doc#', '01.31.TC', 'Bồi dưỡng GV Tiểu học môn Thể dục', 'Trần Kỳ Nam', 'TC', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.32.ML', 'Đạo đức học', 'Đinh Lê Nguyên', 'ML', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.33.CM', 'Vẽ Kỹ Thuật', 'Dương Hoàng Thương', 'CM', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNTTLGD DHT 02.04.doc#', '01.34.CM', 'Cơ khí nông nghiệp', 'Dương Hoàng Thương', 'CM', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.35.CM', 'Công nghiệp nông thôn và cơ khí nông nghiệp', 'Trần Minh Tâm', 'CM', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.36.SP', 'English Lexicology', 'Trần Anh Thông', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD DCT 08.03.doc#', '01.37.SP', 'Tổ chức hoạt động giáo dục', 'Đỗ Công Tuất', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LTH&NTC10.02.doc#', '01.38.SP', 'Tổ chức hoạt động ở các trường Trung học', 'Nguyễn Thị Cúc', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LTH&NTC10.02.doc#', '01.39.SP', 'Tâm lý học đại cương', 'Lê Thanh Hùng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNT TLGD PDT 01.03.doc#', '01.40.SP', 'Giáo trình quy hoạch tuyến tính', 'Phạm Đức Thông', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '01.41.SP', 'Vật Lý nguyên tử và hạt nhân', 'Trần Thể', 'SP', 1, '2', NULL, '2002-08-30', NULL, '1', NULL, 1),
(NULL, '01.42.SP', 'Bài tập điện A1, A2 Cao đẳng Sư Phạm', 'Nguyễn Trí Cường', 'SP', 1, '3', NULL, '2003-03-30', NULL, '1', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NTKThanh- 12.04.doc#', '01.43.SP', 'Giới thiệu mỹ thuật-Vẽ tranh đề tài-Vẽ đề tài', 'Nguyễn Thị Kim Thanh', 'SP', 0, '2', NULL, '2002-01-30', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- TTMy- 12.04.doc#', '01.44.SP', 'Phương pháp vẽ theo mẫu', 'Trẩn Thị Mỹ', 'SP', 0, '2', NULL, '2002-05-30', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NADung- 12.04.doc#', '01.45.SP', 'Đề cương bài giảng P P giảng dạy mỹ thuật ở Tiểu học', 'Nguyễn Anh Dũng', 'SP', 1, '2', NULL, '2002-07-30', NULL, '2', NULL, 1),
(NULL, '01.46.SP', 'Thực hành Hoá vô cơ', 'Bùi Phước Phúc', 'SP', 1, '3', NULL, NULL, NULL, '2', NULL, 1),
(NULL, '01.47.SP', 'Các bài thí nghiệm hoá phân tích', 'Đặng Công Thiệu', 'SP', 1, '3', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '01.48.SV', 'Logic học', 'Võ Văn Thắng', 'SV', 1, '3', 'Chưa BC tiến độ đợt 12-2006', NULL, NULL, '2', 'Chưa BC tiến độ đợt 04/2007', 1),
(NULL, '01.50.CM', 'Kỹ thuật truyền dữ liệu', 'Phạm Tấn Thành', 'CM', 1, '3', NULL, NULL, NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NXVinh 06.04.doc#', '02.01.KT', 'Thanh toán quốc tế', 'Nguyễn Xuân Vinh', 'KT', 1, '2', NULL, NULL, '2003-09-30', '2', NULL, 1),
(NULL, '02.02.KT', 'Quản trị tài chính', 'Trần Thị Thanh Phương, Ngô Văn Quí', 'KT', 0, '3', NULL, '2003-12-31', NULL, '5', NULL, 1),
(NULL, '02.03.KT', 'Tiền tệ, tín dụng ngân hàng', 'Trần Công Dũ', 'KT', 1, '1', NULL, '2003-09-30', NULL, '2', NULL, 1),
(NULL, '02.04.KT', 'Kế toán quản trị', 'Nguyễn Tri Như Quỳnh', 'KT', 0, '3', 'Do không còn giảng dạy bộ môn này nữa', '2003-12-30', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LTBHanh 03.05.doc#', '02.05.KT', 'Luật doanh nghiệp', 'Lưu Thị Bích Hạnh', 'KT', 0, '2', NULL, '2003-12-30', NULL, '2', NULL, 1),
(NULL, '02.06.KT', 'Luật Kinh tế', 'Lưu Thị Bích Hạnh', 'KT', 0, '3', NULL, '2003-09-30', NULL, '2', 'Có quyết định cho thôi việc', 1),
(NULL, '02.07.KT', 'Nghiệp vụ ngoại thương', 'Lê Phương Dung', 'KT', 0, '4', 'Xin nghiệm thu 12/2009.', '2003-06-30', NULL, '2', 'Đã biên soạn xong. (có xin đổi tên, đã cập nhật)', 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NTLONG- 02.06.doc#', '02.08.KT', 'Quản trị sản xuất', 'Nguyễn Thành Long (Lương Huỳnh Giao)', 'KT', 1, '2', NULL, '2003-06-30', NULL, '2', NULL, 1),
(NULL, '02.09.KT', 'Nghiên cưu Marketing', 'Lưu Thị Thái Tâm', 'KT', 0, '3', 'Gia hạn đến năm 2006 vì bận học cao học', '2003-06-30', NULL, '2', 'Chưa BC TĐ (tháng 8/2006), tháng 12/2006', 1),
(NULL, '02.10.KT', 'Quản trị chất lượng', 'Nguyễn Thị Ngọc Lan', 'KT', 0, '4', 'Gia hạn NT vào 12/2009', '2003-09-30', '2004-12-30', '2', 'Đã biên soạn xong. Đang chờ tổ chức HĐ NT.', 1),
(NULL, '02.11.KT', 'Quản trị doanh nghiệp', 'Trần Minh Hải', 'KT', 1, '3', NULL, '2003-09-30', NULL, '1', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NDK 01.04.doc#', '02.12.KT', 'Thuế', 'Nguyễn Đăng Khoa', 'KT', 1, '2', NULL, '2003-09-30', '2003-12-30', '2', NULL, 1),
(NULL, '02.13.KT', 'Kinh tế quốc tế', 'Nguyễn Thanh Xuân', 'KT', 1, '3', 'Xin gia hạn đến 07/2008', '2003-11-30', NULL, '2', 'Chưa BC tiến độ đợt 04/2007', 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTKhiem - LTTHuong- 02.05.doc#', '02.14.KT', 'Kinh tế vi mô', 'Lê Thị Thiên Hương, Nguyễn Tri Khiêm', 'KT', 0, '2', NULL, '2003-09-30', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD CMT 01.04.doc#', '02.15.KT', 'Marketing căn bản', 'Cao Minh Toàn', 'KT', 1, '2', NULL, '2003-09-30', NULL, '2', NULL, 1),
(NULL, '02.16.KT', 'Kế toán đại cương', 'Trần Thị Kim Khôi', 'KT', 0, '3', 'Xin gia hạn đến cuối năm 2007', '2003-08-30', NULL, '2', 'Chưa BC TĐ (tháng 8/2006), (12/2006), (04/2007)', 1),
(NULL, '02.17.KT', 'Kinh tế nông nghiệp đại cương', 'Nguyễn Minh Châu', 'KT', 1, '3', 'Do chương trình khung thay đổi', '2003-07-30', NULL, '2', NULL, 1),
(NULL, '02.18.NN', 'Hoá bảo vệ thực vật', 'Trần Văn Khải', 'NN', 1, '3', NULL, NULL, '2004-04-30', '2', NULL, 1),
(NULL, '02.19.NN', 'Hệ thống canh tác', 'Nguyễn Văn Minh', 'NN', 1, '3', NULL, NULL, '2004-04-30', '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QDNT TLGD DLN 10.02.doc#', '02.20.ML', 'Đạo Đức học 2', 'Đinh Lê Nguyên', 'ML', 0, '2', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '02.20.NN', 'Thủy sản đại cương.', 'Phan Phương Loan  (Hứa T. Phượng Liên chuyển sang)', 'NN', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PTHung-BM Ngu van-12.04.doc#', '02.21.SP', 'Văn học trung đại(từ nửa cuối TK XVIII-nửa đầu TK XIX)', 'Phạm Thanh Hùng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.22.SP', 'Từ vựng -Ngữ nghĩa tiếng Việt', 'Lê Thị Lý', 'SP', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PHNgoc 04.03.doc#', '02.23.SP', 'Văn học phương Tây 1', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NTKThanh - hoa co so- 12.04.doc#', '02.24.SP', 'Họa cơ sở', 'Nguyễn Thị Kim Thanh', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.25.SP', 'Môn writing I', 'Nguyễn Thị Bích Thủy', 'SP', 0, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD VTD 01.04.doc#', '02.26.SP', 'Bài tập: Dao động và sóng (đã đăng ký,  NH 2001 - 2002)', 'Vũ Tiến Dũng', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD DT 06.03.doc#', '02.27.SP', 'Lịch sử văn minh thế giới', 'Đoàn Trung', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD LVQ 05.03.doc#', '02.28.SP', 'Hoá hữu cơ', 'Lê Văn Quang', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.29.SP', 'Giáo dục học', 'Trần Thị Diễm Thúy', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.30.SP', 'Tâm lý học', 'Trần Thị Diễm Thúy', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD DVThong-BM TLGD-01.05.doc#', '02.31.SP', 'Phương pháp NCKH GD', 'Đỗ Văn Thông', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.32.SP', 'Quản lý Nhà nước-Quản lý ngành GD', 'Hồ Văn Các', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD HVC 06.03.doc#', '02.33.SP', 'Tiếng Việt', 'Hồ Văn Các', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TKyNam 07.03.doc#', '02.34.TC', 'Môn tự chọn Bóng chuyền', 'Trần Kỳ Nam', 'TC', 1, '2', NULL, NULL, '2003-06-30', '2', NULL, 1),
(NULL, '02.35.QP', 'Phương pháp giảng dạy môn GDQP ở trường PTTH', 'Trần Văn Dương', 'QP', 1, '3', NULL, NULL, '2003-08-30', '1', NULL, 1),
(NULL, '02.36.NN', 'Dinh dưỡng và thức ăn', 'Chau Thi Đa', 'NN', 1, '3', NULL, '2003-12-30', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TMinhTam 11.04.doc#', '02.37.CM', 'Môi trường và con người', 'Trần Minh Tâm', 'CM', 1, '2', NULL, '2003-12-30', NULL, '2', NULL, 1),
(NULL, '02.38.TN', 'Ngữ văn Hán Nôm', 'Lâm Nguyên Tài', 'TN', 1, '3', NULL, '2003-02-01', NULL, '2', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTCuc 01.05.doc#', '02.39.SP', 'Giáo dục học 2 (Lý luận dạy học)', 'Nguyễn Thị Cúc', 'SP', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.40.SP', 'Đại số đại cương', 'Hoàng Huy Sơn', 'SP', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TThe-BM Vatly-01.05.doc#', '02.41.SP', 'Vật lý cơ sở', 'Vũ Tiến Dũng -  Trần Thể', 'SP', 1, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.42.CM', 'Trình biên dịch', 'Đoàn Thanh Nghị', 'CM', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTNhuQuynh 07.04.doc#', '02.44.KT', 'Tiếng Anh chuyên ngành Kế toán', 'Nguyễn Tri Như Quỳnh', 'KT', 0, '2', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '02.45.KT', 'Quản trị mạng Marketing', 'Phạm Trung Tuấn', 'KT', 1, '3', NULL, NULL, NULL, '5', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- P NGOC TRIEU- 08.06.doc#', '03.01.KT', 'Kinh tế vĩ mô', 'Nguyễn Tri Khiêm + Phùng Ngọc Triều', 'KT', 0, '2', NULL, '2004-06-30', NULL, '2', NULL, 1),
(NULL, '03.02.DT', 'Tài liệu tham khảo về phương pháp NCKH', 'Đặng Hữu Liêm', 'DT', 1, '2', NULL, '2004-03-30', NULL, '2', NULL, 1),
(NULL, '04.01.CM', 'Dân số sức khỏe môi trường', 'Nguyễn Trần Thiện Khánh', 'CM', 1, '3', NULL, '2004-10-01', '2005-10-01', '1', NULL, 1),
(NULL, '04.02.SP', 'Văn Học Việt Nam (1900- 1930)', 'Lê Huỳnh Diệu', 'SP', 0, '3', 'Đăng ký vào đợt mới 06-07', '2005-12-01', '2006-12-01', '1', 'Đã hoàn thành sơ bộ các chương. Đang bổ sung ND', 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- Ngo Thi Hy- 10.05.doc#', '04.03.SP', 'Văn học Việt Nam (1930-1945)', 'Ngô Thị Hy', 'SP', 0, '2', 'Năm 2011', '2005-12-01', '2006-12-01', '1', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- PHoaiNgoc- 04.05.doc#', '04.04.SP', 'Văn Học Ấn Độ, Nhật, Đông Nam Á (Biên soạn lại)', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, NULL, '2004-10-01', '2', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TMINHTAM 08.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20TMINHTAM%2008.06.doc#', '04.05.CM', 'Phát triển công nghiệp nông thôn và CSHT nông thôn.', 'Trần Minh Tâm', 'CM', 1, '2', NULL, '2005-03-01', '2005-12-31', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD BM Triet hoc 09.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20BM%20Triet%20hoc%2009.07.doc#', '04.06.ML', 'Hướng dẫn ôn tập môn Triết học Mac - Lênin.', 'Đinh Lê Nguyên, Nguyễn Văn Thuận, Đỗ Công Hồng Ân.', 'ML', 0, '2', NULL, '2004-10-01', '2005-10-01', '1', NULL, 1),
(NULL, '04.07.ML', 'Tài liệu hướng dẫn học tập môn CNXH Khoa học.', 'Phạm T. Thu Hồng - Ng. Thị Vân', 'ML', 0, '2', NULL, '2004-10-01', '2005-10-01', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTDieu Lieng 01.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20NTDieu%20Lieng%2001.07.doc#', '04.08.ML', 'Hướng dẫn học tập môn LSĐCSVN', 'Nhóm LSĐCSVN (Liêng, Trang, Dũng, Hiện)', 'ML', 0, '2', NULL, '2004-10-01', '2005-07-30', '1', NULL, 1),
(NULL, '04.09.ML', 'Hướng dẫn học tập môn KTCT Mác - Lênin', 'Nhóm KTCT (Hùng- Hằng - Tấn)', 'ML', 0, '4', 'Chưa báo cáo TĐ 04/2009', '2004-10-01', '2005-12-30', '1', 'BS xong phần KTCT TBCN, đang BS KTCT XHCN. Đạt 50%', 1),
(NULL, '04.10.CT', 'Một số ND cơ bản về đường lối quân sự của Đảng….(biên soạn lại).', 'Trần Khánh Mai', 'CT', 1, '1', NULL, '2004-10-01', '2005-04-30', '2', NULL, 1),
(NULL, '04.11.NN', 'Giáo trình môn dược lý thú y', 'Trương Thanh Nhã', 'NN', 1, '3', NULL, '2004-10-01', '2005-10-01', '1', 'Chưa BC TĐ (Tháng 04/2007)', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTNhanTanh 09.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20NTNhanTanh%2009.06.doc#', '04.12.CM', 'Quản lý môi trường và tài nguyên thiên nhiên', 'Nguyễn Trần Nhẫn Tánh', 'CM', 1, '2', NULL, '2005-03-30', '2005-07-30', '1', NULL, 1),
('#..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NTTHIENKHANH 07.06.doc#', '04.13.CM', 'Quản lý chất thải rắn', 'Nguyễn Trần Thiện Khánh', 'CM', 1, '2', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '05.01.KT', 'Chiến lược kinh doanh', 'Huỳnh Phú Thịnh', 'KT', 1, '4', 'Đang học tại TP.HCM. Dự kiến NT 08/2009', '2005-10-30', '2006-06-30', '1', 'Đã hoàn thành xong TLGD. Nhưng chưa họp nghiệm thu', 1),
(NULL, '05.02.NN', 'Ngoại ngữ chuyên ngành 1 (Anh ngữ)', 'Nguyễn Văn Minh', 'NN', 1, '2', NULL, '2005-10-30', '2006-10-30', '1', NULL, 1),
(NULL, '05.03.NN', 'Ngoại ngữ chuyên ngành 2 (Anh ngữ)', 'Nguyễn Văn Minh', 'NN', 1, '2', NULL, '2005-10-30', '2006-10-30', '1', NULL, 1),
(NULL, '05.04.NN', 'Ngoại ngữ chuyên ngành 3 (Anh ngữ)', 'Nguyễn Văn Minh', 'NN', 1, '2', NULL, '2005-10-30', '2006-10-30', '1', 'Đã nộp bản thảo chờ NT vào 20/5/2009', 1),
(NULL, '05.05.NT', 'Kỹ thuật trồng cây Đa Niên', 'Nguyễn Thanh Triều', 'NT', 1, '4', 'Đang đi học', '2005-10-30', '2006-04-30', '1', 'Chưa báo cáo tiến độ tháng 12/2007, 04/2009', 1),
(NULL, '05.06.SP', 'Phương Trình Vi phân', 'Nguyễn Như Lân', 'SP', 1, '3', 'Chưa BC tiến độ tháng 12/2006', '2005-10-30', '2006-04-30', '1', 'Chưa BC tiến độ đợt 04/2007', 1),
(NULL, '05.07.SP', 'Phương pháp tính', 'Nguyễn Như Lân', 'SP', 1, '3', 'Chưa BC tiến độ tháng 12/2006', '2005-10-30', '2006-05-30', '1', 'Chưa BC tiến độ đợt 04/2007', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD HVCac 10.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20HVCac%2010.06.doc#', '05.08.SP', 'Tiếng Việt thực hành', 'Hồ Văn Các', 'SP', 1, '2', '1/3 BS; 2/3 BSL. Nộp vào 20/05/2006', '2005-10-30', '2005-06-30', '2', NULL, 1),
(NULL, '05.09.QL', 'Translation 1', 'Nguyễn Thị Hồng Đào', 'QL', 0, '3', 'Do chuyển công tác', '2005-10-30', '2006-08-30', '1', NULL, 1),
(NULL, '05.10.QL', 'Phương pháp giảng dạy tiếng Anh (toàn tập)', 'Hồ Thanh Mỹ Phương', 'QL', 0, '3', NULL, '2005-10-30', '2006-04-30', '1', 'Do chuyển công tác', 1),
(NULL, '05.11.SP', 'Tiếng Anh chuyên ngành Địa lý', 'Vương T Mỹ Tâm, Trần T Thanh Huế', 'SP', 0, '4', 'Xin gia hạn 11/2009', '2005-10-30', '2006-05-30', '1', 'Đã xong nội dung cơ bản của các chương', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD HTTien 01.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20HTTien%2001.07.doc#', '05.12.SP', 'Tiếng Anh chuyên ngành Hóa học', 'Huỳnh Thanh Tiến, Phan T Minh Tuyền', 'SP', 1, '2', NULL, '2005-10-30', '2006-04-30', '1', NULL, 1),
(NULL, '05.13.SP', 'Anh văn chuyên ngành Toán', 'Nguyễn Tiến Ngọ, Tô Nguyễn Phương Loan', 'SP', 1, '4', 'Chưa BC tiến độ 08/2007', '2005-10-30', '2006-05-30', '1', 'Chưa báo cáo tiến độ tháng 04/2009', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NThiTam 03.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20NThiTam%2003.07.doc#', '05.14.SP', 'Tiếng Anh chuyên ngành Sử học', 'Nguyễn Thị Tâm, Huỳnh Chí Xuân Huyên', 'SP', 0, '2', NULL, '2005-10-30', '2006-04-30', '1', NULL, 1),
(NULL, '05.15.SP', 'Tiếng Anh chuyên ngành Sinh vật', 'Võ Thị Nhiệm, Trần Anh Thông', 'SP', 0, '1', 'Báo cáo NT lại', '2005-10-30', '2006-04-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Le Do Huy 01.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Le%20Do%20Huy%2001.07.doc#', '05.16.SP', 'Cơ Học I', 'Lê Đỗ Huy', 'SP', 1, '2', NULL, '2005-12-01', '2006-08-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TraThe 09.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20TraThe%2009.06.doc#', '05.17.SP', 'Phương pháp giảng dạy công nghệ (phần KTCN)', 'Trần Thể', 'SP', 1, '2', NULL, '2005-12-01', '2006-08-30', '1', NULL, 1),
(NULL, '05.18.SP', 'Quang hình học', 'Vũ Tiến Dũng', 'SP', 1, '3', 'Chưa báo cáo TĐ 04/2009', '2005-12-01', '2006-08-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD VuTienDung 09.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20VuTienDung%2009.06.doc#', '05.19.SP', 'Thí nghiệm Vật lý đại cương I', 'Vũ Tiến Dũng', 'SP', 1, '2', NULL, '2005-12-01', '2006-01-01', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD NMTriet 10.06.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20NMTriet%2010.06.doc#', '05.20.SP', 'Tiếng Anh chuyên ngành Vật lý', 'Nguyễn Minh Triết, Ngô Ngọc Hoà, Nguyễn T.X. Bình', 'SP', 1, '2', NULL, '2005-12-01', '2006-05-01', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- DHung Vu- 11.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD-%20DHung%20Vu-%2011.07.doc#', '05.21.KT', 'Thị trường chứng khoán', 'Đặng Hùng Vũ', 'KT', 1, '1', 'Dự kiến nghiệm thu vào 01/2007', '2006-05-01', '2007-08-01', '1', 'Đã họp hội đồng nghiệm thu TLGD', 1),
(NULL, '05.22.KT', 'Pháp luật Kinh tế', 'Trần Lê Đăng Phương', 'KT', 1, '1', NULL, '2006-05-01', '2007-05-01', '1', 'Đã biên soạn xong TLGD.Chờ BC nghiệm thu.', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD TTHien 03.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20TTHien%2003.07.doc#', '05.23.DT', 'Kế toán ngân sách', 'Tô Thiện Hiền', 'DT', 1, '2', NULL, '2006-05-01', '2007-08-01', '1', NULL, 1),
(NULL, '05.24.NN', 'Chăn nuôi đại cương', 'Nguyễn Bá Trung', 'NN', 1, '1', NULL, '2006-05-01', '2007-04-01', '1', 'Đã BS xong, chờ NT ở khoa dự kiến vào 01/2008', 1),
(NULL, '05.25.NN', 'Phương pháp thí nghiệm chăn nuôi - thú y.', 'Nguyễn Bá Trung', 'NN', 1, '1', NULL, '2006-04-01', '2007-04-01', '1', 'Đã BS xong, chờ NT ở khoa dự kiến vào 01/2008', 1),
(NULL, '05.26.NN', 'Giống gia súc gia cầm.', 'Nguyễn Bá Trung', 'NN', 1, '1', NULL, '2006-04-01', '2007-04-01', '1', 'Đã BS xong, chờ NT ở khoa dự kiến vào 01/2008', 1),
(NULL, '05.27.NN', 'Ngư loại.', 'Lương Thị Bảo Thanh', 'NN', 0, '3', NULL, '2006-03-01', '2006-08-01', '1', NULL, 1),
(NULL, '05.28.NN', 'Cây lúa', 'Nguyễn Phú Dũng', 'NN', 1, '3', 'Gia hạn 02/2008', '2006-04-01', '2007-04-01', '1', 'TG đề nghị tạm ngưng BS.', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PTMaiThao1-09.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20PTMaiThao1-09.07.doc#', '06.01.CM', 'Hóa môi trường 1.', 'Phạm Thị Mai Thảo', 'CM', 0, '2', 'Đợt 2', '2007-03-20', '2007-05-20', '1', NULL, 1),
(NULL, '06.01.KT', 'Quản trị doanh nghiệp.', 'Trần Minh Hải', 'KT', 0, '4', 'Xin nghiệm thu vào 10/2009', '2007-03-03', '2008-03-03', '1', 'Đã biên soạn 9/10 chương. Đang cập nhật Tài liệu', 1),
(NULL, '06.01.ML', 'Tài liệu hướng dẫn học tập môn Tư tưởng HCM.', 'Bùi Thu Hằng', 'ML', 0, '4', 'Gia hạn đến 12/2009', '2006-10-01', '2007-12-01', '1', 'Đang chỉnh sửa tài liệu', 1),
(NULL, '06.01.NN', 'Côn trùng nông nghiệp (Phần côn trùng đại cương).', 'Nguyễn Thị Thái Sơn', 'NN', 0, '4', 'Chưa báo cáo tiến độ  04/2009', '2006-09-01', '2007-09-01', '1', 'Biên soạn được 5 trong tổng số 6 chương của TLGD', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Le Thi Ngoc Linh 03.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Le%20Thi%20Ngoc%20Linh%2003.07.doc#', '06.01.SP', 'Địa lý Kinh tế xã hội đại cương', 'Lê Thị Ngọc Linh', 'SP', 0, '2', NULL, '2006-10-01', '2007-01-31', '1', NULL, 1),
(NULL, '06.01.VH', 'Tạo hình cơ sở', 'Nguyễn Thị Kim Thanh', 'VH', 0, '2', '07.2009', '2006-11-01', '2007-08-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD PTMaiThao2-09.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20PTMaiThao2-09.07.doc#', '06.02.CM', 'Hóa môi trường 2', 'Phạm Thị Mai Thảo', 'CM', 0, '2', 'Đợt 2', '2007-06-20', '2007-08-20', '1', NULL, 1),
(NULL, '06.02.ML', 'Hướng dẫn ôn tập môn Chính trị', 'Bộ Môn Chính trị', 'ML', 0, '3', 'Gia hạn và nghiệm thu vào 10/2007', '2006-11-01', '2007-07-01', '1', 'do đợi giáo trình mới của Bộ Giáo dục - ĐT', 1),
(NULL, '06.02.NN', 'Ngư Loại II (Hình thái và phân loại giáp xác và nhuyễn thễ).', 'Lương Thị Bảo Thanh', 'NN', 0, '3', 'Đã chuyển công tác', '2007-01-01', '2007-03-30', '1', NULL, 1),
(NULL, '06.02.SP', 'Tiếng Việt 3', 'Tô Thị Kim Nguyên', 'SP', 0, '2', 'Sử dụng cho hệ CĐ tiểu học, HK II, NH 07-08', '2006-10-01', '2007-03-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Ong HHHoang 02.08.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Ong%20HHHoang%2002.08.doc#', '06.02.VH', 'Nhạc lý phổ thông', 'Ông Huỳnh Huy Hoàng', 'VH', 1, '2', 'Đợt 2', '2007-04-01', '2008-01-01', '1', NULL, 1),
(NULL, '06.03.CM', 'Quan trắc và xử lý số liệu môi trường.', 'Hồ Liên Huê', 'CM', 0, '4', 'Đợt 2', '2007-04-01', '2007-09-30', '1', 'Đã hoàn thành trên 90% tài liệu', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Phung Hoai Ngoc 03.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Phung%20Hoai%20Ngoc%2003.07.doc#', '06.03.SP', 'Thi ca từ Trung Hoa tuyển dịch', 'Phùng Hoài Ngọc', 'SP', 1, '2', NULL, '2006-11-01', '2006-12-31', '1', NULL, 1),
(NULL, '06.03.VH', 'Phương pháp dạy học âm nhạc.', 'Ông Huỳnh Huy Hoàng', 'VH', 1, '2', 'Đợt 2', '2007-04-01', '2008-01-30', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NTThienKhanh- 12.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD-%20NTThienKhanh-%2012.07.doc#', '06.04.CM', 'Vi hóa sinh kỹ thuật môi trường.', 'Nguyễn Trần Thiện Khánh', 'CM', 1, '2', 'Đợt 2', '2007-03-01', '2007-07-01', '1', NULL, 1),
(NULL, '06.04.SP', 'Văn học Việt Nam từ đầu thế kỉ XX đến 1930', 'Lê Huỳnh Diệu', 'SP', 0, '3', 'Gia hạn đến đến 12/2008', '2006-10-01', '2006-12-31', '1', 'Đã hoàn chỉnh các chương trọng tâm.', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- TTHong NGoc- 08.08.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD-%20TTHong%20NGoc-%2008.08.doc#', '06.05.CM', 'Đánh giá tác động môi trường.', 'Trần Thị Hồng Ngọc', 'CM', 0, '2', 'Đợt 2', '2007-04-01', '2007-10-01', '1', NULL, 1),
(NULL, '06.05.SP', 'Văn học Việt Nam giai đoạn 1945 - 1975', 'Nguyễn Thị Hồng Hoa', 'SP', 0, '3', NULL, '2006-10-01', '2007-08-31', '1', 'Ngưng BS vì đã có giáo trình của ĐHSP', 1),
(NULL, '06.06.CM', 'Quản lý môi trường', 'Nguyễn Hoàng Mỹ Lan', 'CM', 0, '3', 'Đợt 2', '2007-04-01', '2008-09-01', '1', 'Đã chuyển công tác', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Nguyen Ngoc Thuy 11.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Nguyen%20Ngoc%20Thuy%2011.07.doc#', '06.06.SP', 'Cách mạng tư sản và sự thắng lợi của chủ nghĩa tư bản trên phạm vi toàn thế giới.', 'Nguyễn Ngọc Thủy', 'SP', 0, '2', NULL, '2006-10-01', '2007-03-30', '2', NULL, 1),
(NULL, '06.07.CM', 'Luật, chính sách phát triển nông thôn', 'Trần Minh Tâm', 'CM', 1, '3', 'Đợt 2', '2007-04-01', '2008-04-01', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Ho Xuan Huy  07.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Ho%20Xuan%20Huy%20%2007.07.doc#', '06.07.SP', 'Vật lý địa lý', 'Hồ Xuân Huy', 'SP', 1, '2', NULL, '2006-10-01', '2007-04-30', '1', NULL, 1),
(NULL, '06.08.CM', 'Vẽ Kỹ thuật', 'Lê Minh Trí', 'CM', 1, '4', 'Đợt 2', '2007-04-15', '2007-10-15', '1', 'Chưa báo cáo tiến độ tháng 12/2007', 1),
(NULL, '06.08.SP', 'Pragmatics', 'Huỳnh Thanh Tiến', 'SP', 1, '4', NULL, '2006-10-01', '2007-08-30', '1', 'Chưa báo cáo tiến độ tháng 04/2009', 1),
(NULL, '06.09.SP', 'Những chiến lược dạy học hiệu quả', 'Trần Văn Đạt', 'SP', 1, '3', 'Tài liệu tham khảo cho SV, GV', '2006-11-01', '2007-04-30', '4', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Tran The 12.07.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Tran%20The%2012.07.doc#', '06.10.SP', 'Phương pháp dạy học Vật lý ở trường phổ thông.', 'Trần Thể', 'SP', 1, '2', 'Đợt 2', '2007-04-01', '2007-12-01', '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Pham Duc Thong 03.08.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Pham%20Duc%20Thong%2003.08.doc#', '06.11.SP', 'Xác xuất và thống kê Toán. (SV không chuyên ngành SP Toán)', 'Phạm Đức Thông', 'SP', 1, '2', 'Đợt 2', '2006-12-01', '2007-12-01', '2', NULL, 1),
(NULL, '06.12.SP', 'Xác xuất thống kê. (SV ĐH SP Toán)', 'Phạm Đức Thông', 'SP', 1, '2', 'Đợt 2', '2006-12-01', '2007-07-01', '1', NULL, 1),
(NULL, '06.13.SP', 'Tâm lý học lứa tuổi và tâm lý học sư phạm.', 'Đỗ Văn Thông', 'SP', 1, '2', 'Đợt 2', '2007-03-01', '2007-12-01', '1', NULL, 1),
(NULL, '06.14.SP', 'Rèn luyện tư duy logic qua môn Toán', 'Vương Vĩnh Phát', 'SP', 1, '1', 'Đợt 2', '2007-05-01', '2007-11-01', '1', NULL, 1),
(NULL, '07.01.CM', 'Phương pháp xác định các thông số môi trường.', 'Nguyễn Trung Thành', 'CM', 1, '2', 'Đợt 1', '2007-12-01', '2008-04-01', '1', NULL, 1),
(NULL, '07.01.ML', 'Một số chuyên đề xêmina triết học - nội dung cơ bản và phương pháp tiếp cận mới', 'Đinh Lê Nguyên', 'ML', 0, '2', 'Đợt 1', NULL, NULL, '1', 'Da ra hoi dong nghiem thu. Cho gui ban cuoi cung.', 1),
(NULL, '07.01.NN', 'Bao bì thực phẩm', 'Trương Quốc Bình', 'NN', 1, '4', 'Đợt 1', '2007-10-01', '2008-02-01', '1', 'Chưa báo cáo tiến độ 04/2009', 1),
(NULL, '07.01.SP', 'Địa lý Kinh tế xã hội Việt Nam', 'Lê Thị Ngọc Linh', 'SP', 0, '2', 'Năm 2011', '2008-01-01', '2008-03-01', '1', 'Chưa báo cáo tiến độ', 1),
(NULL, '07.01.VH', 'Logic học (hình thức)', 'Võ Văn Thắng', 'VH', 1, '2', 'Đợt 1', NULL, NULL, '1', NULL, 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD- NTThienKhanh 01.08.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD-%20NTThienKhanh%2001.08.doc#', '07.02.CM', 'Vi hóa sinh môi trường đại cương', 'Nguyễn Trần Thiện Khánh', 'CM', 1, '2', 'Đợt 1', '2007-11-19', '2008-02-19', '1', NULL, 1),
(NULL, '07.02.NN', 'Kỹ thuật nuôi thủy đặc sản nước ngọt', 'Lê Văn Lễnh', 'NN', 1, '4', 'Đợt 1 (gia hạn 07/2009)', NULL, NULL, '1', 'Đã biên soạn xong 8 chương của tài liệu. Đạt 90%', 1),
(NULL, '07.02.SP', 'Tiếng Việt 1', 'Tô Thị Kim Nguyên', 'SP', 0, '2', 'Năm 2011', '2007-09-01', '2008-10-01', '1', 'Đang hoàn chỉnh tài liệu', 1),
(NULL, '07.03.NN', 'Công trình và thiết bị thủy sản', 'Cao Văn Thích', 'NN', 1, '4', 'Đợt 1', NULL, NULL, '1', 'Đã biên soạn xong. Dự kiến nghiệm thu 05/2009', 1),
('..\\..\\lmtri\\NCKH\\QD NT GT.TLGD\\QD NT TLGD Phung Hoai Ngoc 01.08.doc#../../lmtri/NCKH/QD%20NT%20GT.TLGD/QD%20NT%20TLGD%20Phung%20Hoai%20Ngoc%2001.08.doc#', '07.03.SP', 'Văn học Nhật Bản (phần Basho: Con đường sâu thẳm)', 'Phùng Hoài Ngọc', 'SP', 1, '2', 'Đợt 1', '2007-11-01', '2008-12-01', '1', NULL, 1),
(NULL, '07.04.NN', 'Dinh dưỡng và thức ăn thủy sản', 'Phan Thị Thanh Vân', 'NN', 0, '4', 'Gia hạn 09/2009', '2007-12-01', '2008-12-01', '2', 'Đã biên soạn xong 12 chương.', 1),
(NULL, '07.04.SP', 'Văn học Phương Tây 2', 'Phùng Hoài Ngọc', 'SP', 1, '2', 'Đợt 1', '2007-10-01', '2008-07-01', '1', NULL, 1),
(NULL, '07.05.NN', 'Giáo trình thực vật thủy sinh (hệ trung cấp)', 'Lê Thanh Tùng', 'NN', 1, '4', 'Đợt 1', '2007-12-01', '2008-05-01', '1', 'Chưa báo cáo tiến độ 04/2009', 1),
(NULL, '07.05.SP', 'Phương pháp dạy học Tiếng Việt, làm văn.\r\n(Dành cho SV hệ CĐ)', 'Nguyễn Văn Khương', 'SP', 1, '3', 'Đợt 1', '2007-10-01', '2008-09-01', '1', 'TG xin không nghiệm thu', 1),
(NULL, '07.06.NN', 'Giáo trình sinh lý cá', 'Lê Thanh Tùng', 'NN', 1, '4', 'Đợt 1', '2007-12-01', '2008-02-28', '2', 'Chưa báo cáo tiến độ 04/2009', 1),
(NULL, '07.06.SP', 'Phương pháp dạy học Tiếng Việt, làm văn.\r\n(Dành cho SV hệ ĐH)', 'Nguyễn Văn Khương', 'SP', 1, '3', 'Đợt 1', '2007-10-01', '2008-09-01', '1', 'TG xin không nghiệm thu', 1),
(NULL, '07.07.NN', 'Kỹ thuật sản xuất giống cá nước ngọt', 'Lê Thanh Tùng', 'NN', 1, '4', 'Đợt 1', '2007-12-01', '2008-05-01', '2', 'Chưa báo cáo tiến độ 04/2009', 1),
(NULL, '07.07.SP', 'Phương pháp giảng dạy môn Tiếng Việt ở trường Tiểu học.', 'Đinh Thị Kim Thành', 'SP', 0, '2', '07.2009', '2007-10-01', '2008-11-01', '1', NULL, 1),
(NULL, '07.08.NN', 'Con người và môi trường', 'Giang Thị Nghĩa Hà', 'NN', 0, '1', 'Đợt 1', '2007-12-15', '2008-04-15', '2', 'Đã nộp bản thảo', 1),
(NULL, '08.01.CM', 'Quản lý môi trường', 'Nguyễn Trần Nhẫn Tánh', 'CM', 1, '1', 'Đợt I', '2008-11-01', '2009-01-01', '1', 'Đã biên soạn xong còn chờ họp nghiệm thu', 1),
(NULL, '08.01.ML', 'Phương pháp dạy học môn GDCD ở THCS.', 'Phạm Thị Thu Hồng', 'ML', 0, '4', 'Đợt I', '2008-12-01', '2009-12-01', '1', 'Đã hoàn thành 3 chương. Đạt 50%', 1),
(NULL, '08.01.NN', 'Kỹ thuật nuôi cá ngọt', 'Võ Thanh Tân', 'NN', 1, '4', 'Đợt I', '2008-12-01', '2009-05-01', '1', NULL, 1),
(NULL, '08.01.QL', 'Chọn giống cây trồng', 'Trần Thanh Sơn', 'QL', 1, '4', 'Dự kiến nghiệm thu 08/2009', '2008-06-01', '2008-12-01', '1', 'Đã biên soạn được 5 chương.', 1),
(NULL, '08.01.SP', 'Văn học Phương tây 3', 'Phùng Hoài Ngọc', 'SP', 1, '2', '02.2010', '2008-01-01', '2008-10-01', '1', NULL, 1),
(NULL, '08.01.TT', 'Quản trị hành chính văn phòng', 'Trần Minh Tâm', 'TT', 1, '4', 'Đợt II', '2009-04-01', '2010-04-01', '1', NULL, 1),
(NULL, '08.02.CM', 'Độc học môi trường', 'Trần Thị Hồng Ngọc', 'CM', 0, '4', 'Đợt I', '2009-02-01', '2009-07-01', '1', NULL, 1),
(NULL, '08.02.ML', 'Tài liệu hướng dẫn học tập môn Đường lối CM của ĐCSVN.', 'Nguyễn Thị Diệu Liêng', 'ML', 0, '2', '04.2010', '2008-09-01', '2009-09-01', '1', NULL, 1),
(NULL, '08.02.NN', 'Cỏ dại và cách quản lý‎‎', 'Lê Hữu Phước', 'NN', 1, '4', 'Đợt II', '2009-03-01', '2010-03-01', '1', NULL, 1),
(NULL, '08.02.SP', 'Văn học Nga', 'Phùng Hoài Ngọc', 'SP', 1, '2', '01.2009', '2008-01-01', '2008-10-01', '1', NULL, 1),
(NULL, '08.03.NN', 'Hóa báo vệ thực vật', 'Lê Hữu Phước', 'NN', 1, '4', 'Đợt II', '2009-03-01', '2010-03-01', '1', NULL, 1),
(NULL, '08.03.SP', 'Văn học Việt Nam từ 1945 đến nay.', 'Phạm Thanh Hùng', 'SP', 1, '4', 'Đợt I', '2008-09-01', '2009-12-01', '1', 'BS được 6/15 chương', 1),
(NULL, '08.04.NN', 'Kỹ thuật sản xuất giống tôm càng xanh (Macrobrachium rosenbergii)', 'Cao Văn Thích', 'NN', 1, '4', 'Đợt II', '2009-05-01', '2010-03-01', '1', NULL, 1),
(NULL, '08.04.SP', 'Phương pháp Toán Lý', 'Hồ Xuân Huy', 'SP', 1, '4', 'Gia hạn đến 12/2009', '2008-09-01', '2009-09-01', '1', 'BS được 5 bài trong chương 1. Đạt 15%', 1),
(NULL, '08.05.NN', 'Sinh thái thủy sinh vật', 'Võ Thanh Tân', 'NN', 1, '4', 'Đợt II', '2009-05-01', '2010-04-01', '1', NULL, 1),
(NULL, '08.05.SP', 'Đại số sơ cấp', 'Hoàng Huy Sơn', 'SP', 1, '2', '03.2009', '2008-12-01', '2009-03-01', '1', NULL, 1),
(NULL, '08.06.SP', 'Contemporary Asian Studies', 'Do Tran Anh Minh', 'SP', 1, '4', 'Đợt II', '2009-01-01', '2009-06-01', '1', NULL, 1),
(NULL, '08.07.SP', 'Job Interviews and Career Skills', 'Do Tran Anh Minh', 'SP', 1, '4', 'Đợt II', '2009-01-01', '2009-06-01', '1', NULL, 1),
(NULL, '08.08.SP', 'Social work and Community Development', 'Mark Bao Thạch Phạm', 'SP', 1, '3', 'Đợt II', '2009-01-01', '2009-06-01', '1', NULL, 1),
(NULL, '09.01.KT', 'Kinh tế môi trường', 'Nguyễn Minh Châu', 'KT', 1, '4', 'Đợt 1', '2009-11-01', '2010-03-01', '1', NULL, 1),
(NULL, '09.01.ML', 'Tài liệu học tập môn chính trị', 'Lê Công Luận', 'ML', 1, '4', 'Đợt 1', '2009-12-31', '2010-12-31', '1', NULL, 1),
(NULL, '09.01.NN', 'Nuôi cấy mô thực vật (Plant Tissue culture)\r\nNuôi cấy mô thực vật (Plant Tissue culture)', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, '4', 'Đợt 1', '2009-10-01', '2010-10-01', '1', NULL, 1),
(NULL, '09.01.SP', 'Bài tập Đại số sơ cấp', 'Hoàng Huy Sơn', 'SP', 1, '2', '01.2010', '2009-08-01', '2010-08-01', '1', NULL, 1),
(NULL, '09.02.KT', 'Marketing căn bản', 'Cao Minh Toàn', 'KT', 1, '4', 'Đợt 1', '2009-10-01', '2010-05-01', '1', NULL, 1),
(NULL, '09.02.NN', 'Sinh học phân tử', 'Huỳnh Trường Huê', 'NN', 0, '4', 'Đợt 2', '2010-04-01', '2011-04-01', '1', NULL, 1),
(NULL, '09.02.SP', 'Nữ sĩ Băng Tâm và tập thơ tiêu biểu Phồn tinh', 'Phùng Hoài Ngọc', 'SP', 1, '2', '06.2010', '2009-09-01', '2010-09-01', '1', 'TS TH QD_khong luu file', 1),
(NULL, '09.03.NN', 'Sinh học đại cương 2\r\n\r\nSinh học đại cương 1', 'Nguyễn Khắc Chung Thẩm', 'NN', 1, '4', 'Đợt 2', '2010-04-01', '2011-04-01', '1', '(Chưa phát hành TB đồng ý cho BS)', 1),
(NULL, '09.03.SP', 'Thi pháp học', 'Tiêu Minh Đương', 'SP', 1, '4', 'Đợt 1', '2009-10-01', '2010-05-01', '1', NULL, 1),
(NULL, '09.04.NN', 'Sinh học đại cương 1', 'Nguyễn Phú Dũng', 'NN', 1, '4', 'Đợt 2', '2010-04-01', '2011-04-01', '1', '(Chưa phát hành TB đồng ý cho BS)', 1),
(NULL, '09.04.SP', 'Mỹ học đại cương', 'Tiêu Minh Đương', 'SP', 1, '4', 'Đợt 1', '2009-10-01', '2010-02-01', '1', NULL, 1),
(NULL, '09.05.SP', 'Thực hành giải toán Tiểu học (Phương pháp giảng dạy Toán Tiểu học 3).', 'Hà Thị Thanh Hà', 'SP', 0, '4', 'Đợt 1', '2009-10-01', '2010-01-31', '1', NULL, 1),
(NULL, '09.06.SP', 'Bài tập toán cao cấp C', 'Bùi Đức Thắng', 'SP', 1, '4', 'Đợt 1', '2009-10-01', '2010-09-01', '1', NULL, 1),
(NULL, '09.07.SP', 'Phương pháp dạy học môn Toán 1 ở tiểu học', 'Phạm Thúc Kim', 'SP', 0, '4', 'Đợt 1', '2009-02-01', '2010-09-01', '1', NULL, 1),
(NULL, '09.08.SP', 'Lý thuyết Galois', 'Lê Văn Chua', 'SP', 1, '4', 'Đợt 1', '2009-10-01', '2009-12-01', '1', NULL, 1),
(NULL, '09.09.SP', 'Lịch sử Toán học', 'Nguyễn Phương Thảo', 'SP', 0, '4', 'Đợt 1', '2010-01-01', '2010-07-01', '1', NULL, 1),
(NULL, '09.10.SP', 'Lịch sử thế giới cận đại 1556-1917', 'Nguyễn Bảo Kim', 'SP', 1, '2', 'Đợt 1', '2009-07-01', '2010-07-01', '1', NULL, 1),
(NULL, '09.11.SP', 'Đại cương về phương pháp luận sử học', 'Nguyễn Bảo Kim', 'SP', 1, '4', 'Đợt 2', '2010-01-01', '2010-11-01', '1', NULL, 1),
(NULL, '09.12.SP', 'Văn học dân gian Việt Nam', 'Trần Tùng Chinh', 'SP', 1, '2', 'T8/2013', '2010-07-01', '2011-07-01', '1', NULL, 1),
(NULL, '09.13.SP', 'Tâm lý học đại cương', 'Đỗ Văn Thông', 'SP', 1, '2', 'Năm 2011', '2009-02-01', '2010-07-01', '1', NULL, 1),
(NULL, '09.14.SP', 'Tâm lý học lứa tuổi và tâm lý học sư phạm.', 'Lê Thanh Hùng', 'SP', 1, '2', 'Năm 2011', '2010-02-01', '2010-05-01', '1', NULL, 1),
(NULL, '09.15.SP', 'Lý luận dạy học môn Lịch sử (Giáo trình)', 'Nguyễn Ngọc Thủy', 'SP', 0, '4', 'Đợt 2', '2010-03-01', '2011-03-01', '1', NULL, 1),
(NULL, '10.01.ML', 'Tài liệu hướng dẫn học tập môn đường lối cách mạng của ĐCS VN', 'Bộ Môn Chính trị', 'ML', 0, '2', 'Năm 2010', NULL, NULL, '1', NULL, 1),
(NULL, '11.01.ML', 'Hướng dẫn học môn Chính trị hệ TCCN', NULL, 'ML', 0, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '11.01.SP', 'Luận Ngữ', 'Phùng Hoài Ngọc', 'SP', 1, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '11.02.SP', 'Đại số đại cương', 'Hoàng Huy Sơn', 'SP', 1, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '11.03.SP', 'Phương pháp luận sử học', 'Nguyễn Bảo Kim', 'SP', 1, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '11.04.SP', 'Lịch sử thế giới trung đại', 'Nguyễn Ngọc Thủy', 'SP', 0, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '11.05.SP', 'English for history', 'Võ Thị Nhiệm', 'SP', 0, '2', 'Năm 2011', NULL, NULL, '1', NULL, 1),
(NULL, '12.01.CM', 'Bảo vệ môi trường', 'Bộ môn Môi trường', 'CM', 0, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.01.NN', 'Kỹ thuật thực phẩm 3', 'Hồ Minh Thảo', 'NN', 1, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.01.SP', 'Lịch sử giáo dục và khoa cử Việt Nam', 'Nguyễn Bảo Kim', 'SP', 1, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.02.CM', 'Kỹ thuật điện - KTMT', 'Kiều Đỗ Minh Luân', 'CM', 1, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.02.NN', 'Công nghệ Enzyme thực phẩm', 'Trần Thanh Dũng', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.02.SP', 'Câu hỏi trắc nghiệm lịch sử Việt Nam hiện đại (1945-2000)', 'Vũ Thị Lệ Thương', 'SP', 0, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.03.CM', 'Cơ sở Khoa học Môi trường', 'Phan Trường Khanh', 'CM', 1, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.03.NN', 'Dinh dưỡng người', 'Nguyễn Duy Tân', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.03.SP', 'Bài tập đại số đại cương', 'Hoàng Huy Sơn', 'SP', 1, '2', 'Năm 2012', NULL, NULL, '1', NULL, 1),
(NULL, '12.04.NN', 'Quản trị chất lượng thực phẩm', 'Đào Văn Thanh', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.04.SP', 'Quản lý hành chính nhà nước và quản lý ngành GD&ĐT', 'Nguyễn Bách Thắng', 'SP', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.05.NN', 'Nguyên lý bảo quản thực phẩm', 'Cao Thị Luyến', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.05.SP', 'Hán ngữ sơ cấp I', 'Lý Văn Hà, Huỳnh Tố Nga, Lư Quốc Đống', 'SP', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.06.NN', 'Bao bì thực phẩm', 'Trương Quốc Bình', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.06.SP', 'Syntax (cú pháp)', 'Huỳnh Chí Xuân Huyên', 'SP', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.07.NN', 'Luật thực phẩm và SHTT', 'Trần Thanh Tuấn', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.07.SP', 'Công nghệ sinh học - SPSH', 'Khưu Phương Yến Anh', 'SP', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.08.NN', 'Công nghệ chế biến thủy hải sản', 'Hồ Thị Ngân Hà', 'NN', 0, '2', '1/2013', NULL, NULL, '1', NULL, 1),
(NULL, '12.08.SP', 'Lý luận dạy học sinh học', 'Trần Trung Hiếu', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.09.NN', 'An toàn vệ sinh thực phẩm', 'Vũ Thị Thanh Đào', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.09.SP', 'Hình thái và giải phẫu thực vật', 'Phan Thị Trúc Linh', 'SP', 0, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.10.NN', 'Nguyên lý công nghệ lên men', 'Trịnh Thanh Duy', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.10.SP', 'Thí nghiệm vật lý đại cương A2', 'Nguyễn Hồng Hải', 'SP', 1, '2', 'NT T6/2014', NULL, NULL, '5', NULL, 1),
(NULL, '12.11.NN', 'Văn hóa ẩm thực', 'Trịnh Thanh Duy', 'NN', 1, '2', 'T10/2014', NULL, NULL, '1', NULL, 1),
(NULL, '12.11.SP', 'Tài liệu hướng dẫn thí nghiệm điện quang dành cho SV chuyên ngành SPVL', 'Nguyễn Hồng Hải', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.12.NN', 'Đánh giá cảm quan thực phẩm', 'Trần Xuân Hiển', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.12.SP', 'Lịch sử địa phương An Giang', 'Lê Thị Liên', 'SP', 0, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.13.NN', 'Phụ gia thực phẩm', 'Trần Xuân Hiển', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.13.SP', 'Hóa đại cương B', 'Phạm Phát Tân', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.14.NN', 'Kỹ thuật nhiệt-lạnh', 'Phan Uyên Nguyên', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.14.SP', 'Tiếng pháp 1', 'Huỳnh Công Lộc', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.15.NN', 'Nghiên cứu hệ thống canh tác', 'Nguyễn Văn Minh', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.15.SP', 'Đánh giá kết quả giáo dục ở Tiểu học', 'Trần Thị Diễm Thúy', 'SP', 0, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.16.NN', 'Quản lý dịch hại tổng hợp', 'Trần Văn Khải', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.16.SP', 'Lịch sử quan hệ quôc tế chủ yếu từ sau chiến tranh lạnh 1991 - 2011', 'Lưu Thế Hoàng', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.17.NN', 'Kỹ năng khuyến nông', 'Trần Văn Khải', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.17.SP', 'Lịch sử sử học', 'Nguyễn Bảo Kim', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1);
INSERT INTO `dm_tlgd` (`QDNT`, `MSTLGD`, `TENTLGD`, `TENTG`, `DONVI`, `PHAI`, `HIENTRANG`, `GHICHU`, `TGBATDAU`, `TGKETTHUC`, `LOAITLGD`, `TIENDOBS`, `LOAI`) VALUES
(NULL, '12.18.NN', 'Công nghệ sinh học trong BVTV', 'Lê Minh Tuấn', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.18.SP', 'Tài liệu hướng dẫn thí nghiệm phương pháp 2', 'Trần Quốc Duyệt', 'SP', 1, '4', NULL, NULL, NULL, '5', NULL, 1),
(NULL, '12.19.NN', 'Sinh lý thực vật A', 'Võ Thị Xuân Tuyền', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.20.NN', 'Bệnh cây', 'Nguyễn Phú Dũng', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.21.NN', 'Cây rau', 'Nguyễn Thị Minh Châu', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.22.NN', 'Hóa BVTV', 'Lê Hữu Phước', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.23.NN', 'Cỏ dại', 'Lê Hữu Phước', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.24.NN', 'Vi sinh vật học đại cương', 'Văn Viễn Lương', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.25.NN', 'Sinh học phân tử', 'Huỳnh Trường Huê', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.26.NN', 'Nuôi cấy mô thực vật', 'Nguyễn Thị Mỹ Duyên', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.27.NN', 'An toàn sinh học', 'Nguyễn Thị Thúy Diễm', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.28.NN', 'Tổ chức mô phôi học', 'Hồ Thị Thu Ba', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.29.NN', 'Thống kê sinh học', 'Phạm Trường An', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.30.NN', 'Hóa phân tích', 'Phùng Đình Hòa', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.31.NN', 'Sinh lý thực vật A', 'Diệp Nhựt Thanh Hằng', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.32.NN', 'Tin sinh học', 'Trịnh Hoài Vũ', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.33.NN', 'Phương pháp khuyến nông', 'Phạm Xuân Phú', 'NN', 1, '2', 'NT 2014', NULL, NULL, '1', NULL, 1),
(NULL, '12.34.NN', 'Phát triển cộng đồng', 'Phạm Huỳnh Thanh Vân', 'NN', 0, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.35.NN', 'Phì nhiêu, quy hoạch và đánh giá sử dụng đất NN', 'Huỳnh Ngọc Đức', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.36.NN', 'Phân tích khung sinh kế', 'Trần Văn Hiếu', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.37.NN', 'Quy hoạch và đánh giá sử dụng đất NN', 'Phạm Duy Tiễn', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.38.NN', 'Bệnh nội khoa gia súc', 'Nguyễn Phi Bằng', 'NN', 1, '2', '1/2013', NULL, NULL, '1', NULL, 1),
(NULL, '12.39.NN', 'Di truyền học động vật', 'Nguyễn Bình Trường', 'NN', 1, '2', 'T9/2014', NULL, NULL, '1', NULL, 1),
(NULL, '12.40.NN', 'Thức ăn chăn nuôi', 'Hồ Xuân Nghiệp', 'NN', 1, '4', NULL, NULL, NULL, '1', NULL, 1),
(NULL, '12.41.NN', 'Bệnh dinh dưỡng động vật', 'Hồ Thị Phương Thảo', 'NN', 0, '2', 'Năm 2014', NULL, NULL, '1', NULL, 1),
(NULL, '12.42.NN', 'Chọn và nhân giống vật nuôi', 'Nguyễn Bá Trung', 'NN', 1, '2', 'T10/2014', NULL, NULL, '1', NULL, 1),
(NULL, '12.43.NN', 'Sinh lý động vật', 'Ngô Thụy Bảo Trân', 'NN', 0, '2', 'NT 2015', '2012-11-01', '2013-11-01', '1', NULL, 1),
(NULL, '12.44.NN', 'Chăn nuôi gia cầm', 'Đào Thị Mỹ Tiên', 'NN', 0, '4', 'TG 12/2012 - 12/2013', NULL, NULL, '1', NULL, 1),
(NULL, '12.45.NN', 'Chăn nuôi heo', 'Trần Trung Tuấn', 'NN', 1, '4', 'TG 11/2012 - 11/2013', NULL, NULL, '1', NULL, 1),
(NULL, '12.46.NN', 'Chăn nuôi dê, thỏ', 'Bùi Phan Thu Hằng', 'NN', 0, '4', 'TG 12/2012 - 12/2013', NULL, NULL, '1', NULL, 1),
(NULL, '13.01.CM', 'Phương pháp nghiên cứu khoa học dành cho sv ngành môi trường', 'Phan Trường Khanh', 'CM', 1, '2', 'Năm 2013', NULL, NULL, '1', NULL, 1),
(NULL, '13.01.GH', 'Logic học biện chứng', 'Võ Văn Thắng', 'GH', 1, '2', 'T12/2013', NULL, NULL, '1', NULL, 1),
(NULL, '13.01.SP', 'Câu hỏi và bài tập trắc nghiệm địa lý kinh tế - xã hội Việt Nam', 'Lê Thị Ngọc Linh', 'SP', 0, '2', 'Tháng 2/2013', NULL, NULL, '1', NULL, 1),
(NULL, '13.02.CM', 'Bơm - quạt và máy nén', 'Kiều Đỗ Minh Luân', 'CM', 1, '2', 'Năm 2014', NULL, NULL, '1', NULL, 1),
(NULL, '13.02.SP', 'Giáo dục dân số', 'Nguyễn Phú Thắng', 'SP', 1, '2', 'NT 2014', NULL, NULL, '3', NULL, 1),
(NULL, '14.01.CM', 'Kiến trúc máy tính', 'Nguyễn Văn Đông, Nguyễn Quang Huy', 'CM', 1, '4', NULL, NULL, '2014-12-01', '3', NULL, 1),
(NULL, '14.01.KT', 'Nghiệp vụ ngân hàng thương mại', 'Trần Công Dũ', 'KT', 1, '4', NULL, NULL, '2015-07-31', '3', NULL, 1),
(NULL, '14.01.QL', 'Phương pháp nghiên cứu khoa học giáo dục', 'Trần Văn Đạt', 'QL', 1, '2', 'NT 2015 - giáo trình', NULL, NULL, '5', NULL, 1),
(NULL, '14.01.SP', 'Cơ học lí thuyết', 'Nguyễn Văn Mện', 'SP', 1, '4', NULL, '2014-08-01', '2015-01-01', '3', NULL, 1),
(NULL, '14.01.TC', 'Bóng đá', 'Văng Công Danh', 'TC', 1, '2', 'NT 2015', NULL, NULL, '5', NULL, 1),
(NULL, '14.02.CM', 'Toán rời rạc', 'Lê Văn Toán', 'CM', 1, '4', NULL, NULL, '2014-12-01', '3', NULL, 1),
(NULL, '14.02.KT', 'Thiết lập và thẩm định dự án đầu tư', 'Phạm Bải Thạch', 'KT', 1, '4', NULL, NULL, '2015-08-30', '3', NULL, 1),
(NULL, '14.02.SP', 'Vật lí phân tử và nhiệt học', 'Nguyễn Phạm Ngọc Thiện', 'SP', 1, '2', 'NT 2015', '2014-09-01', '2015-03-01', '3', NULL, 1),
(NULL, '14.03.CM', 'Cấu trúc dữ liệu và giải thuật 2', 'Trương Thị Diễm', 'CM', 0, '4', NULL, NULL, '2014-12-01', '3', NULL, 1),
(NULL, '14.03.KT', 'Nghiên cứu Marketing', 'Hồ Bạch Nhật, Nguyễn T Minh Hải, Trần Minh Hiếu', 'KT', 1, '4', NULL, NULL, '2015-07-01', '3', NULL, 1),
(NULL, '14.03.SP', 'Lý luận dạy học địa lý', 'Nguyễn Thị Thanh Nhàn', 'SP', 0, '2', 'Năm 2015', '2014-09-01', '2015-05-01', '3', NULL, 1),
(NULL, '14.04.CM', 'Cấu trúc dữ liệu và giải thuật 1', 'Nguyễn Thái Dư, Huỳnh Cao Thế Cường', 'CM', 1, '4', NULL, NULL, '2015-12-01', '3', NULL, 1),
(NULL, '14.04.KT', 'Quản trị sản xuất', 'Lưu Thị Thái Tâm, Lê Trung N Phát', 'KT', 0, '4', NULL, NULL, '2015-05-30', '3', NULL, 1),
(NULL, '14.04.SP', 'Lý luận dạy học vật lý', 'Trần Quốc Duyệt', 'SP', 1, '4', NULL, '2014-10-01', '2015-10-01', '3', NULL, 1),
(NULL, '14.05.CM', 'Mạng máy tính', 'Trương Minh Tuyền', 'CM', 0, '4', NULL, NULL, '2014-12-01', '3', NULL, 1),
(NULL, '14.05.KT', 'Kỹ năng truyền thông', 'Nguyễn Thị Ngọc Lan và ctv', 'KT', 0, '4', NULL, NULL, '2015-02-28', '3', NULL, 1),
(NULL, '14.05.SP', 'Ứng dụng công nghệ thông tin trong dạy học địa lý', 'Trần Thế Định', 'SP', 1, '4', NULL, '2014-06-01', '2014-12-01', '3', NULL, 1),
(NULL, '14.06.CM', 'Phân tích thiết kế hệ thống tin học', 'Lê Thị Minh Nguyệt, Lê Văn Toán', 'CM', 0, '4', NULL, NULL, '2015-12-01', '3', NULL, 1),
(NULL, '14.06.SP', 'Thổ nhưỡng quyển', 'Bùi Hoàng Anh', 'SP', 1, '4', NULL, '2014-06-01', '2015-05-01', '3', NULL, 1),
(NULL, '14.07.CM', 'Cơ sở dữ liệu', 'Nguyễn Thị Lan Quyên', 'CM', 0, '4', NULL, NULL, '2015-12-01', '3', NULL, 1),
(NULL, '14.07.SP', 'Lịch sử tư tưởng phương Đông', 'Nguyễn Bảo Kim', 'SP', 1, '4', NULL, NULL, '2015-02-01', '3', NULL, 1),
('', '14.08.CM', 'Hệ quản trị cơ sở dữ liệu', 'Đoàn Thanh Nghị, Nguyễn Minh Vi, Lê Thị Minh Nguyệt', 'CM', 0, '4', NULL, '0000-00-00', '2015-12-01', '3', '', 1),
(NULL, '14.08.SP', 'Lịch sử tư tưởng Việt Nam', 'Nguyễn Bảo Kim', 'SP', 1, '4', NULL, NULL, '2015-03-01', '3', NULL, 1),
(NULL, '14.09.CM', 'Kỹ thuật lập trình', 'Nguyễn Thái Dư, Nguyễn Thị Lan Quyên', 'CM', 1, '4', NULL, NULL, '2015-12-01', '3', NULL, 1),
(NULL, '14.09.SP', 'English for Biopoly', 'Trương Thị Thanh Nga, Ngô Ngọc Hòa', 'SP', 0, '4', NULL, NULL, '2015-07-01', '3', NULL, 1),
(NULL, '14.10.CM', 'Phương pháp lập trình hướng đối tượng', 'Nguyễn Thái Dư, Huỳnh Cao Thế Cường', 'CM', 1, '4', NULL, NULL, '2015-12-01', '3', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hientrang`
--

CREATE TABLE `hientrang` (
  `MAHT` int(2) NOT NULL,
  `TENHT` varchar(50) NOT NULL,
  `MAMAU` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hientrang`
--

INSERT INTO `hientrang` (`MAHT`, `TENHT`, `MAMAU`) VALUES
(1, 'Chờ ký hợp đồng', 'de9d00'),
(2, 'Đang Thực hiện', '1ea000'),
(3, 'Đã Nghiệm thu', '004bb1'),
(4, 'Ngừng Thực hiện', 'be0000'),
(5, 'Chờ nghiệm thu', '00997a');

-- --------------------------------------------------------

--
-- Table structure for table `hientrang_tlgd`
--

CREATE TABLE `hientrang_tlgd` (
  `MAHT` int(11) NOT NULL,
  `TENHT` varchar(50) NOT NULL,
  `MAMAU` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hientrang_tlgd`
--

INSERT INTO `hientrang_tlgd` (`MAHT`, `TENHT`, `MAMAU`) VALUES
(1, 'Chờ nghiệm thu', '00a987'),
(2, 'Đã nghiệm thu', '004bb1'),
(3, 'Ngừng biên soạn', 'be0000'),
(4, 'Đang biên soạn', '1ea000');

-- --------------------------------------------------------

--
-- Table structure for table `loai_de_tai`
--

CREATE TABLE `loai_de_tai` (
  `MALOAI` varchar(3) NOT NULL,
  `TENLOAI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_de_tai`
--

INSERT INTO `loai_de_tai` (`MALOAI`, `TENLOAI`) VALUES
('CB', 'Cấp Bộ'),
('CK', 'Cấp Khoa'),
('CT', 'Cấp Tỉnh'),
('SK', 'Sáng Kiến'),
('TR', 'Tài Trợ');

-- --------------------------------------------------------

--
-- Table structure for table `loai_tlgd`
--

CREATE TABLE `loai_tlgd` (
  `MALOAI` int(11) NOT NULL,
  `TENLOAI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_tlgd`
--

INSERT INTO `loai_tlgd` (`MALOAI`, `TENLOAI`) VALUES
(1, 'Biên soạn'),
(2, 'Biên soạn lại'),
(3, 'Biên soạn mới'),
(4, 'Biên dịch'),
(5, 'Chưa phân loại');

-- --------------------------------------------------------

--
-- Table structure for table `ms_capdt`
--

CREATE TABLE `ms_capdt` (
  `ms` varchar(2) NOT NULL,
  `cap` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ms_capdt`
--

INSERT INTO `ms_capdt` (`ms`, `cap`) VALUES
('CK', 'Cấp khoa'),
('CT', 'Cấp tỉnh'),
('SK', 'Sáng kiến Kinh nghiêm'),
('TR', 'Đề tài được tài trợ');

-- --------------------------------------------------------

--
-- Table structure for table `ms_khoa_tt`
--

CREATE TABLE `ms_khoa_tt` (
  `MSKHOA` varchar(3) NOT NULL,
  `TENKHOA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ms_khoa_tt`
--

INSERT INTO `ms_khoa_tt` (`MSKHOA`, `TENKHOA`) VALUES
('CM', 'Khoa KT - CN - MT'),
('CT', 'Phòng Tổ chức - CT'),
('DT', 'Phòng Đào tạo'),
('GH', 'Ban Giám Hiệu'),
('KD', 'Phòng khảo thí và KĐ'),
('KH', 'Phòng Kế hoạch - TV'),
('KT', 'Khoa Kinh tế'),
('ML', 'Khoa Mác-Lê'),
('NN', 'Khoa Nông nghiệp'),
('NT', 'TT Nghiên cứu - PTNT'),
('NV', 'TT KHXH & NV'),
('QL', 'Phòng QLKH - HTQT'),
('QP', 'BM Quốc Phòng'),
('SP', 'Khoa Sư phạm'),
('SV', 'Phòng Công tác-SV'),
('TB', 'Phòng Quản trị - TB'),
('TC', 'BM Thể chất'),
('TH', 'TT Tin học'),
('TL', 'TT Tạo nguồn NL'),
('TN', 'TT Ngoại ngữ'),
('TT', 'Phòng Thanh tra - PC'),
('TV', 'Thư viện'),
('VH', 'Khoa Văn hoá - NT');

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MSNXB` int(11) NOT NULL,
  `TENNXB` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MSNXB`, `TENNXB`) VALUES
(1, 'NXB Khoa học và\r\n Kỹ thuật, VN'),
(2, 'ĐHSP Hà nội'),
(3, 'Lambert Academic \r\nPublishing AG&Co. KG, Germany'),
(4, 'Nông nghiệp – Hà Nội'),
(5, ' Đại học Huế'),
(6, 'Giáo dục Việt Nam'),
(7, 'NXB Khoa học Xã hội'),
(8, 'Văn hóa - \r\nVăn nghệ TP.HCM'),
(9, 'NXB Chính trị QG – Sự thật'),
(10, 'NXB Thanh Niên'),
(11, 'Scholar’s Press'),
(12, 'NXB Nông nghiệp');

-- --------------------------------------------------------

--
-- Table structure for table `quocgia`
--

CREATE TABLE `quocgia` (
  `MSQG` int(11) DEFAULT NULL,
  `TENQG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quocgia`
--

INSERT INTO `quocgia` (`MSQG`, `TENQG`) VALUES
(1, 'Việt Nam'),
(2, 'Ấn Độ'),
(3, 'Hoa Kỳ'),
(4, 'Indonesia'),
(5, 'Brazil'),
(6, 'Pakistan'),
(7, 'Nigeria'),
(8, 'Bangladesh'),
(9, 'Nga'),
(10, 'Nhật Bản'),
(11, 'Mexico'),
(12, 'Philippines'),
(13, 'Ethiopia'),
(14, 'Trung Quốc'),
(15, ' Ai Cập'),
(16, ' Đức'),
(17, ' Thổ Nhĩ Kỳ'),
(18, ' Iran'),
(19, 'Congo'),
(20, ' Thái Lan'),
(21, ' Pháp'),
(22, ' Anh Quốc'),
(23, ' Ý'),
(24, ' Myanmar'),
(25, 'Hàn Quốc'),
(26, 'Nam Phi'),
(27, 'Tanzania'),
(28, 'Tây Ban Nha'),
(29, 'Colombia'),
(30, 'Ukraina'),
(31, 'Kenya'),
(32, 'Argentina'),
(33, 'Ba Lan'),
(34, 'Algeria'),
(35, 'Sudan'),
(36, 'Uganda'),
(37, 'Canada'),
(38, 'Maroc'),
(39, 'Iraq'),
(40, 'Afghanistan'),
(41, 'Nepal'),
(42, 'Peru'),
(43, 'Malaysia'),
(44, 'Uzbekistan'),
(45, 'Venezuela'),
(46, 'Ả Rập Saudi'),
(47, 'Yemen'),
(48, 'Ghana'),
(49, 'Triều Tiên'),
(50, 'Mozambique'),
(51, 'Đài Loan'),
(52, 'Madagascar'),
(53, ' Syria'),
(54, ' Bờ Biển Ngà'),
(55, ' Úc'),
(56, ' Romania'),
(57, ' Sri Lanka'),
(58, ' Cameroon'),
(59, ' Angola'),
(60, ' Burkina Faso'),
(61, ' Kazakhstan'),
(62, ' Chile'),
(63, ' Niger'),
(64, ' Hà Lan'),
(65, ' Malawi'),
(66, ' Mali'),
(67, ' Ecuador'),
(68, ' Campuchia'),
(69, ' Guatemala'),
(70, ' Zambia'),
(71, ' Senegal'),
(72, ' Zimbabwe'),
(73, ' Tchad'),
(74, ' Hy Lạp'),
(75, ' Cuba'),
(76, ' Bỉ'),
(77, ' Bồ Đào Nha'),
(78, ' Tunisia'),
(79, ' Cộng hòa Séc'),
(80, ' Bolivia'),
(81, ' Rwanda'),
(82, ' Guinea'),
(83, ' Haiti'),
(84, ' Hungary'),
(85, ' Belarus'),
(86, ' Thụy Điển'),
(87, 'Dominica'),
(88, ' Somalia'),
(89, ' Azerbaijan'),
(90, ' Benin'),
(91, ' Burundi'),
(92, ' Áo'),
(93, ' Các tiểu vương quốc Ả rập thống nhất (UEA)'),
(94, ' Nam Sudan'),
(95, ' Honduras'),
(96, ' Thụy Sĩ'),
(97, ' Israel'),
(98, ' Bulgaria'),
(99, ' Serbia'),
(100, ' Tajikistan'),
(101, ' Hồng Kông'),
(102, ' Papua New Guinea'),
(103, ' Togo'),
(104, ' Libya'),
(105, ' Jordan'),
(106, ' Paraguay'),
(107, ' Lào'),
(108, ' El Salvador'),
(109, ' Sierra Leone'),
(110, ' Nicaragua'),
(111, ' Đan Mạch'),
(112, ' Slovakia'),
(113, ' Kyrgyzstan'),
(114, ' Phần Lan'),
(115, ' Eritrea'),
(116, ' Turkmenistan'),
(117, ' Singapore'),
(118, ' Na Uy'),
(119, ' Costa Rica'),
(120, ' Cộng hòa Trung Phi'),
(121, ' Ireland'),
(122, ' Gruzia'),
(123, ' Croatia'),
(124, ' New Zealand'),
(125, ' Liban'),
(126, ' Liberia'),
(127, ' Vùng lãnh thổ Palestine'),
(128, ' Bosna và Hercegovina'),
(129, ' Cộng hòa Congo'),
(130, ' Puerto Rico'),
(131, ' Moldova'),
(132, ' Panama'),
(133, ' Mauritania'),
(134, ' Uruguay'),
(135, ' Armenia'),
(136, ' Litva'),
(137, ' Albania'),
(138, ' Kuwait'),
(139, ' Mông Cổ'),
(140, ' Jamaica'),
(141, ' Oman'),
(142, ' Latvia'),
(143, ' Namibia'),
(144, ' Lesotho'),
(145, ' Cộng hòa Macedonia'),
(146, ' Slovenia'),
(147, ' Botswana'),
(148, ' Gambia'),
(149, ' Qatar'),
(150, ' Guinea-Bissau'),
(151, ' Gabon'),
(152, ' Estonia'),
(153, ' Trinidad và Tobago'),
(154, ' Mauritius'),
(155, ' Bahrain'),
(156, ' Swaziland'),
(157, ' Đông Timor'),
(158, ' Djibouti'),
(159, ' Fiji'),
(160, ' Síp'),
(161, ' Guyana'),
(162, ' Comoros'),
(163, ' Guinea Xích Đạo'),
(164, ' Bhutan'),
(165, ' Montenegro'),
(166, ' Macau'),
(167, ' Tây Sahara'),
(168, ' Quần đảo Solomon'),
(169, ' Suriname'),
(170, ' Luxembourg'),
(171, ' Cape Verde'),
(172, ' Malta'),
(173, ' Brunei'),
(174, ' Bahamas'),
(175, ' Belize'),
(176, ' Iceland'),
(177, ' Maldives'),
(178, ' Barbados'),
(179, ' Vanuatu'),
(180, ' Samoa'),
(181, ' Guam'),
(182, ' Saint Lucia'),
(183, ' São Tomé và Príncipe'),
(184, ' Curaçao'),
(185, ' Saint Vincent và Grenadines'),
(186, ' Quần đảo Virgin thuộc Mỹ'),
(187, ' Aruba'),
(188, ' Grenada'),
(189, ' Tonga'),
(190, ' Liên bang Micronesia'),
(191, ' Kiribati'),
(192, ' Jersey'),
(193, ' Antigua và Barbuda'),
(194, ' Seychelles'),
(195, ' Andorra'),
(196, ' Đảo Man'),
(197, ' Samoa thuộc Mỹ'),
(198, ' Dominica'),
(199, ' Bermuda'),
(200, ' Guernsey'),
(201, ' Quần đảo Bắc Mariana'),
(202, ' Greenland'),
(203, ' Quần đảo Cayman'),
(204, ' Quần đảo Marshall'),
(205, ' Saint Kitts và Nevis'),
(206, ' Quần đảo Faroe'),
(207, ' Quần đảo Turks và Caicos'),
(208, ' Sint Maarten'),
(209, ' Liechtenstein'),
(210, ' Monaco'),
(211, ' San Marino'),
(212, ' Gibraltar'),
(213, ' Quần đảo Virgin thuộc Anh'),
(214, ' Quần đảo Cook'),
(215, ' Palau'),
(216, ' Anguilla'),
(217, ' Nauru'),
(218, ' Tuvalu'),
(219, ' Montserrat'),
(220, ' Saint Helena, Ascension và Tristan da Cunha'),
(221, ' Quần đảo Falkland'),
(222, ' Niue'),
(223, ' Tokelau'),
(224, ' Vatican'),
(225, ' Quần đảo Pitcairn');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `MALOAI` int(11) NOT NULL,
  `TENLOAI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`MALOAI`, `TENLOAI`) VALUES
(1, 'Đạt'),
(2, 'Khá'),
(3, 'Tốt'),
(4, 'Xuất sắc'),
(5, 'Chưa xếp loại');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `MSSACH` int(11) NOT NULL,
  `TENSACH` text,
  `TENTG` varchar(100) DEFAULT NULL,
  `GIOITINH` varchar(255) DEFAULT NULL,
  `DONVI` varchar(3) DEFAULT NULL,
  `NXB` varchar(100) DEFAULT NULL,
  `NAMXB` int(4) DEFAULT NULL,
  `ISSN` varchar(50) DEFAULT NULL,
  `QUOCGIA` varchar(20) DEFAULT NULL,
  `THELOAI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `theloaisach`
--

CREATE TABLE `theloaisach` (
  `MSTHELOAI` int(11) NOT NULL,
  `TENTHELOAI` varchar(50) DEFAULT NULL,
  `GHICHÚ` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloaisach`
--

INSERT INTO `theloaisach` (`MSTHELOAI`, `TENTHELOAI`, `GHICHÚ`) VALUES
(1, 'Thể loại khác', NULL),
(2, 'Văn Học', NULL),
(3, 'Toán học', NULL),
(4, 'Hóa học', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `chuyenmuc_tlgd`
--
ALTER TABLE `chuyenmuc_tlgd`
  ADD PRIMARY KEY (`MACM`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `dmdt_ct_ck_sk`
--
ALTER TABLE `dmdt_ct_ck_sk`
  ADD PRIMARY KEY (`MS`);

--
-- Indexes for table `dm_detai_captruong`
--
ALTER TABLE `dm_detai_captruong`
  ADD PRIMARY KEY (`MSDT`);

--
-- Indexes for table `dm_dt_sv`
--
ALTER TABLE `dm_dt_sv`
  ADD PRIMARY KEY (`MSDT`);

--
-- Indexes for table `dm_hoinghi_hoithao`
--
ALTER TABLE `dm_hoinghi_hoithao`
  ADD PRIMARY KEY (`MS_HN`);

--
-- Indexes for table `dm_tlgd`
--
ALTER TABLE `dm_tlgd`
  ADD PRIMARY KEY (`MSTLGD`);

--
-- Indexes for table `hientrang`
--
ALTER TABLE `hientrang`
  ADD PRIMARY KEY (`MAHT`);

--
-- Indexes for table `hientrang_tlgd`
--
ALTER TABLE `hientrang_tlgd`
  ADD PRIMARY KEY (`MAHT`);

--
-- Indexes for table `loai_de_tai`
--
ALTER TABLE `loai_de_tai`
  ADD PRIMARY KEY (`MALOAI`);

--
-- Indexes for table `loai_tlgd`
--
ALTER TABLE `loai_tlgd`
  ADD PRIMARY KEY (`MALOAI`);

--
-- Indexes for table `ms_capdt`
--
ALTER TABLE `ms_capdt`
  ADD PRIMARY KEY (`ms`);

--
-- Indexes for table `ms_khoa_tt`
--
ALTER TABLE `ms_khoa_tt`
  ADD PRIMARY KEY (`MSKHOA`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MSNXB`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`MALOAI`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MSSACH`);

--
-- Indexes for table `theloaisach`
--
ALTER TABLE `theloaisach`
  ADD PRIMARY KEY (`MSTHELOAI`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyenmuc_tlgd`
--
ALTER TABLE `chuyenmuc_tlgd`
  MODIFY `MACM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hientrang`
--
ALTER TABLE `hientrang`
  MODIFY `MAHT` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hientrang_tlgd`
--
ALTER TABLE `hientrang_tlgd`
  MODIFY `MAHT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `loai_tlgd`
--
ALTER TABLE `loai_tlgd`
  MODIFY `MALOAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `MSNXB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `MALOAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `MSSACH` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `theloaisach`
--
ALTER TABLE `theloaisach`
  MODIFY `MSTHELOAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
