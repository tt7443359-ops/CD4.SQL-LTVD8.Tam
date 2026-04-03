-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2026 lúc 05:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_sinh_vien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `ten`, `quantity`, `created_at`) VALUES
(1, 'CNTT K15', 50, '2026-04-03 03:29:54'),
(2, 'Kinh Te K12', 45, '2026-04-03 03:29:54'),
(3, 'Ngoai Ngu K10', 40, '2026-04-03 03:29:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `id` int(11) NOT NULL,
  `ten_mon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) DEFAULT NULL,
  `mon_hoc_id` int(11) DEFAULT NULL,
  `lop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`id`, `ho_ten`, `ngay_sinh`, `created_at`, `email`, `mon_hoc_id`, `lop_id`) VALUES
(2, 'Tran Thi Bich', '2005-02-15', '2026-04-03 03:28:51', NULL, NULL, 1),
(3, 'Le Van Cuong', '2005-03-20', '2026-04-03 03:28:51', NULL, NULL, 1),
(4, 'Pham Minh Duc', '2005-04-25', '2026-04-03 03:28:51', NULL, NULL, 1),
(5, 'Hoang Lan Anh', '2005-05-30', '2026-04-03 03:28:51', NULL, NULL, 1),
(6, 'Vu Hoang Nam', '2005-06-05', '2026-04-03 03:28:51', NULL, NULL, 1),
(7, 'Do Thanh Tung', '2005-07-10', '2026-04-03 03:28:51', NULL, NULL, 1),
(8, 'Bui Tuyet Mai', '2005-08-15', '2026-04-03 03:28:51', NULL, NULL, 1),
(9, 'Dang Van Hung', '2005-09-20', '2026-04-03 03:28:51', NULL, NULL, 1),
(10, 'Phan Thuy Linh', '2005-10-25', '2026-04-03 03:28:51', NULL, NULL, 1),
(11, 'Ngo Quoc Bao', '2005-11-30', '2026-04-03 03:28:51', NULL, NULL, 2),
(12, 'Ly Hai Yen', '2005-12-05', '2026-04-03 03:28:51', NULL, NULL, 2),
(13, 'Trinh Gia Huy', '2006-01-10', '2026-04-03 03:28:51', NULL, NULL, 2),
(14, 'Dinh Quang Khai', '2006-02-15', '2026-04-03 03:28:51', NULL, NULL, 2),
(15, 'Quach Thu Trang', '2006-03-20', '2026-04-03 03:28:51', NULL, NULL, 2),
(16, 'Lam Minh Tri', '2006-04-25', '2026-04-03 03:28:51', NULL, NULL, 3),
(17, 'Vo Van Quyet', '2006-05-30', '2026-04-03 03:28:51', NULL, NULL, 3),
(18, 'Diep Bao Ngoc', '2006-06-05', '2026-04-03 03:28:51', NULL, NULL, 3),
(19, 'Cao Minh Thắng', '2006-07-10', '2026-04-03 03:28:51', NULL, NULL, 3),
(20, 'Truong My Nhan', '2006-08-15', '2026-04-03 03:28:51', NULL, NULL, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sinhvien_monhoc` (`mon_hoc_id`),
  ADD KEY `fk_sinhvien_lop` (`lop_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `fk_sinhvien_lop` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `fk_sinhvien_monhoc` FOREIGN KEY (`mon_hoc_id`) REFERENCES `mon_hoc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
