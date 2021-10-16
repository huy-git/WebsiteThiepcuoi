-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2021 lúc 10:59 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webthiepcuoi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Username` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id`, `Username`, `password`, `email`) VALUES
(1, 'admin', '1', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietdh`
--

CREATE TABLE `tbl_chitietdh` (
  `maCTDH` int(120) NOT NULL,
  `maDH` int(120) NOT NULL,
  `masanpham` int(120) NOT NULL,
  `soluong` int(50) NOT NULL,
  `giaban` int(50) NOT NULL,
  `trangthai` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitietdh`
--

INSERT INTO `tbl_chitietdh` (`maCTDH`, `maDH`, `masanpham`, `soluong`, `giaban`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 1, 32, 1, 3000, 'Đang chờ xử lý', NULL, NULL),
(2, 1, 2, 1, 5000, 'Đang chờ xử lý', NULL, NULL),
(3, 3, 1, 1, 5000, 'Đang chờ xử lý', NULL, NULL),
(4, 3, 14, 100, 2500, 'Đang chờ xử lý', NULL, NULL),
(5, 5, 31, 1, 5000, 'Đang chờ xử lý', NULL, NULL),
(6, 6, 51, 1, 20000, 'Đang chờ xử lý', NULL, NULL),
(7, 7, 1, 100, 5000, 'Đang chờ xử lý', NULL, NULL),
(8, 8, 1, 1, 5000, 'Đang chờ xử lý', NULL, NULL),
(9, 9, 2, 1000, 5000, 'Đang chờ xử lý', NULL, NULL),
(10, 9, 3, 1000, 3000, 'Đang chờ xử lý', NULL, NULL),
(11, 9, 32, 1000, 3000, 'Đang chờ xử lý', NULL, NULL),
(12, 10, 1, 100, 5000, 'Đang chờ xử lý', NULL, NULL),
(13, 15, 57, 1000, 50000, 'Đang chờ xử lý', NULL, NULL),
(14, 15, 1, 1000, 5000, 'Đang chờ xử lý', NULL, NULL),
(15, 15, 31, 1000, 5000, 'Đang chờ xử lý', NULL, NULL),
(16, 16, 1, 1000, 5000, 'Đang chờ xử lý', NULL, NULL),
(17, 21, 1, 1000, 5000, 'Đang chờ xử lý', NULL, NULL),
(18, 22, 1, 199, 5000, 'Đang chờ xử lý', NULL, NULL),
(19, 25, 1, 10, 5000, 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietdn`
--

CREATE TABLE `tbl_chitietdn` (
  `maCTDN` int(120) NOT NULL,
  `maHDN` int(120) NOT NULL,
  `masanpham` int(120) NOT NULL,
  `soluong` int(50) NOT NULL,
  `gianhap` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `maDH` int(120) NOT NULL,
  `maNV` int(120) DEFAULT NULL,
  `maKH` int(120) NOT NULL,
  `hovaten` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtien` int(50) NOT NULL,
  `ngayban` date DEFAULT NULL,
  `diachiKH` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachiNH` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdtKH` int(11) DEFAULT NULL,
  `sdtNH` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`maDH`, `maNV`, `maKH`, `hovaten`, `tongtien`, `ngayban`, `diachiKH`, `diachiNH`, `sdtKH`, `sdtNH`, `created_at`, `updated_at`) VALUES
(1, NULL, 10, NULL, 8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 15, NULL, 255000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 16, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 17, NULL, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 18, NULL, 500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 19, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 21, NULL, 11000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 22, NULL, 500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 23, NULL, 60000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 25, NULL, 5000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 26, NULL, 5000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 27, NULL, 995000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 36, NULL, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donnhap`
--

CREATE TABLE `tbl_donnhap` (
  `maHDN` int(120) NOT NULL,
  `maNCC` int(120) NOT NULL,
  `maNV` int(120) NOT NULL,
  `tongtien` int(120) NOT NULL,
  `ngaynhap` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `maKH` int(120) NOT NULL,
  `tenKH` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`maKH`, `tenKH`, `diachi`, `sdt`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Nhật Long', 'Hà nội', '981237654', NULL, NULL),
(2, 'Nguyễn Minh Đức', 'Hưng Yên', '897645321', NULL, NULL),
(3, 'Nguyễn Văn Biển', 'Hưng Yên', '978654312', NULL, NULL),
(4, 'Lý Văn Huy', 'Hưng Yên', '896712345', NULL, NULL),
(10, 'Huy', 'hy', '398343308', NULL, NULL),
(11, 'Huy', 'hy', '398343308', NULL, NULL),
(12, 'Huy', 'hy', '398343308', NULL, NULL),
(13, 'huy', 'hy', '398343308', NULL, NULL),
(14, 'huy', 'hy', '398343308', NULL, NULL),
(15, 'huyền', 'hưng yên', '0398343308', NULL, NULL),
(16, 'Nguyễn Văn Thanh', 'hà nội', '0978564312', NULL, NULL),
(17, 'Nguyễn Văn Thanh', 'hưng yên', '0978564312', NULL, NULL),
(18, 'Dương Việt Hoàng', 'Hưng Yên', '0967834521', NULL, NULL),
(19, 'Nguyễn Văn Thanh', 'hưng yên', '0398343308', NULL, NULL),
(20, 'Vũ Xuân Thắng', 'Hưng Yên', '0986868686', NULL, NULL),
(21, 'Vũ Xuân Thắng', 'Hưng Yên', '0986868686', NULL, NULL),
(22, 'Phạm Ngọc Nam', 'Hưng Yên', '0868945321', NULL, NULL),
(23, 'Nguyễn Hữu Đông', 'Khoái Châu Hưng Yên', '0986868888', NULL, NULL),
(24, 'Nguyễn Hữu Đông', 'Khoái Châu Hưng Yên', '0986868888', NULL, NULL),
(25, 'Nguyễn Hữu Đông', 'Khoái Châu Hưng Yên', '0986868888', NULL, NULL),
(26, 'Nguyễn Hữu Đông', 'Khoái Châu Hưng Yên', '0986868888', NULL, NULL),
(27, 'Nguyễn Văn Thanh', 'Hưng Yên', '0398343308', NULL, NULL),
(28, 'Nguyễn Văn Thanh', 'Khoái Châu Hưng Yên', '0398343308', NULL, NULL),
(29, 'Đào Thị Thanh Huyền', 'Toàn Thắng Kim Động Hưng Yên', '0969130752', NULL, NULL),
(30, 'Bùi Phương Nam', 'Hưng Yên', '0987654321', NULL, NULL),
(31, 'huy112', 'Hưng Yên', '0398343308', NULL, NULL),
(32, 'Thùy Dung', 'hà nội', '0123456789', NULL, NULL),
(33, 'Nguyễn văn biển', 'Hưng Yên', '0896754321', NULL, NULL),
(34, 'Phạm ngọc nam 1', 'Hưng Yên', '0398343308', NULL, NULL),
(35, 'Dương Văn Hồng', 'Văn Lâm Hưng Yên', '0984389203', NULL, NULL),
(36, 'Dương Đức Bảo', 'Hưng Yên', '0398343308', NULL, NULL),
(37, 'Nguyễn văn bốn', 'Hưng Yên', '0398343309', NULL, NULL),
(38, 'Trần Hoàng Quân', 'Hà nội', '0398765124', NULL, NULL),
(39, 'Nguyễn Văn bình', 'Hưng Yên', '0398343308', NULL, NULL),
(40, 'Dương Văn Bình', 'hà nội', '0967834521', NULL, NULL),
(41, 'Phạm Long', 'hà nội', '0986868686', NULL, NULL),
(42, 'Dương Huy', 'Hưng Yên', '0969130752', NULL, NULL),
(43, 'Phạm Bình', 'Hưng Yên', '0969130752', NULL, NULL),
(44, 'Trương Đức', 'Hưng Yên', '0984389205', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaisanpham`
--

CREATE TABLE `tbl_loaisanpham` (
  `maloai` int(120) NOT NULL,
  `tenloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaisanpham`
--

INSERT INTO `tbl_loaisanpham` (`maloai`, `tenloai`, `created_at`, `updated_at`) VALUES
(1, 'Thiệp Cưới Hiện Đại', NULL, NULL),
(2, 'Thiệp Cưới Cổ Điển', NULL, NULL),
(3, 'Thiệp Cưới Cao Cấp', NULL, NULL),
(4, 'Thiệp Cưới Ấn Tượng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaitintuc`
--

CREATE TABLE `tbl_loaitintuc` (
  `maloaitintuc` int(120) NOT NULL,
  `tenloaitintuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaitintuc`
--

INSERT INTO `tbl_loaitintuc` (`maloaitintuc`, `tenloaitintuc`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'Tin mới', 'at1.jpg', NULL, NULL),
(2, 'Tư Vấn', 'at2.jpg', NULL, NULL),
(12, 'Chính trị', 'hinh-nen-bau-troi-day-sao-dep-9849.jpg', NULL, NULL),
(13, 'Thế giới', '159.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhacungcap`
--

CREATE TABLE `tbl_nhacungcap` (
  `maNCC` int(120) NOT NULL,
  `tenNCC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `mail` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhacungcap`
--

INSERT INTO `tbl_nhacungcap` (`maNCC`, `tenNCC`, `sdt`, `mail`, `diachi`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp nguyên liệu 1', 981237654, 'Nhacungcap1@gmail.com', 'Hưng Yên', NULL, NULL),
(2, 'Nhà cung cấp nguyên liệu 2', 897645321, 'Nhacungcap2@gmail.com', 'Hà Nội', NULL, NULL),
(3, 'Nhà cung câp nguyên liệu 3', 789456321, 'Nhacungcap3@gmail.com', 'Hà Nội', NULL, NULL),
(4, 'Nhà cung cấp nguyên liệu 4', 985672341, 'Nhacungcap4@gmail.com', 'Hà nội', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `maNV` int(120) NOT NULL,
  `tenNV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chucvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`maNV`, `tenNV`, `chucvu`, `created_at`, `updated_at`) VALUES
(1, 'Dương Đức Huy', 'Quản Lý', NULL, NULL),
(2, 'Đào Thị Thanh Huyền', 'Bán Hàng', NULL, NULL),
(3, 'Phạm Ngọc Nam', 'Bán Hàng', NULL, NULL),
(4, 'Nguyễn Quốc Việt', 'Đăng Bài', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `masanpham` int(120) NOT NULL,
  `maloai` int(120) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giaban` int(50) NOT NULL,
  `hinhanh` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `chatlieu` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `mausac` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `namsanxuat` date NOT NULL,
  `mota` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`masanpham`, `maloai`, `tensanpham`, `giaban`, `hinhanh`, `chatlieu`, `mausac`, `namsanxuat`, `mota`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thiệp cưới Hiện đại 01', 5000, 'hd1.jpg', 'Giấy mỹ thuật định lượng 250gsm\r\n', 'Hồng, tím', '2021-05-11', 'Thiệp cưới hiện đại 01 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(2, 1, 'Thiệp cưới Hiện đại 02', 5000, 'hd2.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới hiện đại 02 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(3, 1, 'Thiệp cưới Hiện đại 03', 3000, 'hd3.jpg', 'Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 03 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(4, 1, 'Thiệp cưới Hiện đại 04', 3000, 'hd4.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím\r\n', '2021-05-05', '\r\nThiệp cưới hiện đại 04 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(5, 1, 'Thiệp cưới Hiện đại 05', 5000, 'hd5.jpg', 'Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-04', 'Thiệp cưới hiện đại 05 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(6, 1, 'Thiệp cưới Hiện đại 06', 4000, 'hd6.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím\r\n', '2021-05-04', '\r\nThiệp cưới hiện đại 06 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(7, 1, 'Thiệp cưới Hiện đại 07', 5000, 'hd7.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím\r\n', '2021-05-06', 'Thiệp cưới hiện đại 07 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(8, 1, 'Thiệp cưới Hiện đại 08', 5000, 'hd8.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím\r\n', '2021-05-06', 'Thiệp cưới hiện đại 08 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(9, 1, 'Thiệp cưới Hiện đại 09', 5000, 'hd9.jpg', ' Giấy mỹ thuật định lượng 250gsm', '\r\n  Hồng, tím', '2021-05-06', 'Thiệp cưới hiện đại 09 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(10, 1, 'Thiệp cưới Hiện đại 10', 5000, 'hd10.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-06', '\r\nThiệp cưới hiện đại 10 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(11, 1, 'Thiệp cưới Hiện đại 11', 5000, 'hd11.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', '\r\nThiệp cưới hiện đại 11 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(12, 1, 'Thiệp cưới Hiện đại 12', 3000, 'hd12.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-06', 'Thiệp cưới hiện đại 12 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(13, 1, 'Thiệp cưới Hiện đại 13', 3000, 'hd13.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 13 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(14, 1, 'Thiệp cưới Hiện đại 14', 2500, 'hd14.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-19', 'Thiệp cưới hiện đại 14 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(15, 1, 'Thiệp cưới Hiện đại  15', 5000, 'hd15.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 15 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(16, 1, 'Thiệp cưới Hiện đại 16', 3000, 'hd16.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 16 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(17, 1, 'Thiệp cưới Hiện đại 17', 5000, 'hd17.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-19', 'Thiệp cưới hiện đại 17 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(18, 1, 'Thiệp cưới Hiện đại 18', 2500, 'hd18.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '2021-05-12', 'Thiệp cưới hiện đại 18 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(19, 1, 'Thiệp cưới Hiện đại 19', 5000, 'hd19.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-11', '\r\n\r\nThiệp cưới hiện đại 19 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(20, 1, 'Thiệp cưới Hiện đại 20', 4000, 'hd20.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 20 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(21, 1, 'Thiệp cưới Hiện đại 21', 5000, 'hd21.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-03', 'Thiệp cưới hiện đại 21 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(22, 1, 'Thiệp cưới Hiện đại 22', 5000, 'hd22.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-18', 'Thiệp cưới hiện đại 22 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(23, 1, 'Thiệp cưới Hiện đại 23', 5000, 'hd23.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 23 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(24, 1, 'Thiệp cưới Hiện đại 24', 5000, 'hd24.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '2021-05-05', '\r\nThiệp cưới hiện đại 24 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(25, 1, 'Thiệp cưới Hiện đại 25', 5000, 'hd25.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-13', 'Thiệp cưới hiện đại 25 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(26, 1, 'Thiệp cưới Hiện đại 26', 3000, 'hd26.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', '\r\nThiệp cưới hiện đại 26 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(27, 1, 'Thiệp cưới Hiện đại 27', 5000, 'hd27.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-04', '\r\nThiệp cưới hiện đại 27 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(28, 1, 'Thiệp cưới Hiện đại 28', 3000, 'hd28.jpg', ' Giấy mỹ thuật định lượng 250gsm', 'màu sắc:  Hồng, tím', '2021-05-18', '\r\nThiệp cưới hiện đại 28 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(29, 1, 'Thiệp cưới Hiện đại 29', 5000, 'hd29.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 29 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(30, 1, 'Thiệp cưới Hiện đại 30', 3000, 'hd30.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới hiện đại 30 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(31, 2, 'Thiệp cưới Cổ điển 01', 5000, 'cd1.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', '\r\nThiệp cưới cổ điển 01 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(32, 2, 'Thiệp cưới Cổ điển 02', 3000, 'cd2.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới cổ điển 02 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(33, 2, 'Thiệp cưới Cổ điển 03', 5000, 'cd3.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '2021-05-04', 'Thiệp cưới cổ điển 03 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(34, 2, 'Thiệp cưới Cổ điển 04', 5000, 'cd4.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-05', 'Thiệp cưới cổ điển 04 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(35, 2, 'Thiệp cưới Cổ điển 05', 5000, 'cd5.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới cổ điển 05 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(36, 2, 'Thiệp cưới Cổ điển 06', 3000, 'cd6.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-04', '\r\nThiệp cưới cổ điển 06 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(37, 2, 'Thiệp cưới Cổ điển 07', 5000, 'cd7.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-06', 'Thiệp cưới cổ điển 07 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(38, 2, 'Thiệp cưới Cổ điển 08', 3000, 'cd8.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-17', '\r\nThiệp cưới cổ điển 08 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(39, 2, 'Thiệp cưới Cổ điển 09', 5000, 'cd9.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '2021-05-04', 'Thiệp cưới cổ điển 09 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(40, 2, 'Thiệp cưới Cổ điển 10', 3000, 'cd10.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '0000-00-00', '\r\nThiệp cưới cổ điển 10 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(41, 2, '\r\nThiệp cưới Cổ điển 11', 3000, 'cd11.jpg', ' Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím\r\n\r\n', '2021-05-05', '\r\n\r\nThiệp cưới cổ điển 11 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(42, 2, 'Thiệp cưới Cổ điển 12', 3000, 'cd12.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím', '2021-05-03', '\r\nThiệp cưới cổ điển 12 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(43, 2, 'Thiệp cưới Cổ điển 13', 5000, 'cd13.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-05', 'Thiệp cưới cổ điển 13 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(44, 2, '\r\nThiệp cưới Cổ điển 14', 2500, 'cd14.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-05', '\r\nThiệp cưới cổ điển 14 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(45, 2, 'Thiệp cưới Cổ điển 15', 5000, 'cd15.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', '  Hồng, tím\r\n', '2021-05-03', 'Thiệp cưới cổ điển 15 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n\r\n', NULL, NULL),
(46, 2, 'Thiệp cưới Cổ điển 16', 5000, 'cd16.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-12', '\r\nThiệp cưới cổ điển 16 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(47, 2, 'Thiệp cưới Cổ điển 17', 5000, 'cd17.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-05', 'Thiệp cưới cổ điển 17 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(48, 2, 'Thiệp cưới Cổ điển 18', 4000, 'cd18.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-04', '\r\nThiệp cưới cổ điển 18 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(49, 2, 'Thiệp cưới Cổ điển 19', 5000, 'cd19.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-04', '\r\nThiệp cưới cổ điển 19 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(50, 2, 'Thiệp cưới Cổ điển 20', 4000, 'cd20.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-24', 'Thiệp cưới cổ điển 20 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(51, 3, 'Thiệp cưới Cao cấp 01', 20000, 'cc1.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm\r\n', '\r\n  Hồng, tím\r\n', '2021-05-04', 'Thiệp cưới cao cấp 01 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(52, 3, 'Thiệp cưới Cao cấp 02', 30000, 'cc2.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím\r\n', '2021-05-10', 'Thiệp cưới cao cấp 02 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(53, 3, 'Thiệp cưới Cao cấp 03', 25000, 'cc3.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím\r\n', '2021-05-05', '\r\nThiệp cưới cao cấp 03 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(54, 3, 'Thiệp cưới Cao cấp 04', 25000, 'cc4.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-19', 'Thiệp cưới cao cấp 04 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(55, 3, 'Thiệp cưới Cao cấp 05', 50000, 'cc5.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', 'Hồng, tím', '2021-05-05', '\r\nThiệp cưới cao cấp 05 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(56, 3, 'Thiệp cưới Cao cấp 06', 25000, 'cc6.jpg', ' Giấy mỹ thuật định lượng 250gsm\r\n', 'Hồng, tím', '2021-05-05', 'Thiệp cưới cao cấp 06 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(57, 3, 'Thiệp cưới Cao cấp 07', 50000, 'cc7.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-05', 'Thiệp cưới cao cấp 07 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(58, 3, '\r\nThiệp cưới Cao cấp 08', 30000, 'cc8.jpg', ' Giấy mỹ thuật định lượng 250gsm', '  Hồng, tím', '2021-05-19', 'Thiệp cưới cao cấp 08 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\n đẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\n một vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.\r\n', NULL, NULL),
(59, 3, 'Thiệp cưới Cao cấp 09', 25000, 'cc9.jpg', '\r\n Giấy mỹ thuật định lượng 250gsm\r\n', 'Hồng, tím\r\n', '2021-05-05', '\r\nThiệp cưới cao cấp 09 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(60, 3, 'Thiệp cưới Cao cấp 10', 30000, 'cc10.jpg', ' Giấy mỹ thuật định lượng 250gsm', ' Hồng, tím', '2021-05-11', '\r\nThiệp cưới cao cấp 10 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\n đường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\n', NULL, NULL),
(61, 3, 'Thiệp cưới Cao cấp 11', 20000, 'cc11.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới cao cấp 11 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\n', NULL, NULL),
(62, 3, 'Thiệp cưới Cao cấp 12', 30000, 'cc12.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới cao cấp 12 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(63, 3, 'Thiệp cưới Cao cấp 13', 25000, 'cc13.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-03', 'Thiệp cưới cao cấp 13 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(64, 3, 'Thiệp cưới Cao cấp 14', 30000, 'cc14.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới cao cấp 14 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(65, 3, 'Thiệp cưới Cao cấp 15', 25000, 'cc15.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới cao cấp 15 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(66, 3, 'Thiệp cưới Cao cấp 16', 30000, 'cc16.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới cao cấp 16 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(67, 3, 'Thiệp cưới Cao cấp 17', 25000, 'cc17.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-05', '\r\nThiệp cưới cao cấp 17 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\nGiấy mỹ thuật định lượng 250gsm', NULL, NULL),
(68, 3, 'Thiệp cưới Cao cấp 18', 30000, 'cc18.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới cao cấp 18 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(69, 3, 'Thiệp cưới Cao cấp 19', 25000, 'cc19.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới cao cấp 19 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(70, 3, 'Thiệp cưới Cao cấp 20', 30000, 'cc20.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-02', '\r\nThiệp cưới cao cấp 20 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(71, 3, 'Thiệp cưới Cao cấp 21', 25000, 'cc21.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-03', 'Thiệp cưới cao cấp 21 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(72, 3, 'Thiệp cưới Cao cấp 22', 25000, 'cc22.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới cao cấp 22 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(73, 3, 'Thiệp cưới Cao cấp 23', 25000, 'cc23.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-03', 'Thiệp cưới cao cấp 23 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(74, 3, 'Thiệp cưới Cao cấp 24', 40000, 'cc24.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-05', 'Thiệp cưới cao cấp 24 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(75, 3, 'Thiệp cưới Cao cấp 25', 25000, 'cc25.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới cao cấp 25 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(76, 4, 'Thiệp cưới Ấn tượng 01', 5000, 'at1.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', '\r\nThiệp cưới ấn tượng 01 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(77, 4, 'Thiệp cưới Ấn tượng 02', 4000, 'at2.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', '\r\nThiệp cưới ấn tượng 02 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(78, 4, 'Thiệp cưới Ấn tượng 03', 5000, 'at3.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-03', 'Thiệp cưới ấn tượng 03 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(79, 4, 'Thiệp cưới Ấn tượng 04', 5000, 'at4.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 04 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(80, 4, 'Thiệp cưới Ấn tượng 05', 5000, 'at5.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 05 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(81, 4, 'Thiệp cưới Ấn tượng 06', 4000, 'at6.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 06 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(82, 4, 'Thiệp cưới Ấn tượng 07', 5000, 'at7.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-03', 'Thiệp cưới ấn tượng 07 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(83, 4, 'Thiệp cưới Ấn tượng 08', 4000, 'at8.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', '\r\nThiệp cưới ấn tượng 08 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(84, 4, 'Thiệp cưới Ấn tượng 09', 5000, 'at9.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-03', 'Thiệp cưới ấn tượng 09 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.\r\nGiấy mỹ thuật định lượng 250gsm', NULL, NULL),
(85, 4, 'Thiệp cưới Ấn tượng 10', 5000, 'at10.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 10 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(86, 4, 'Thiệp cưới Ấn tượng 11', 5000, 'at11.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 11 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(87, 4, 'Thiệp cưới Ấn tượng 12', 2500, 'at12.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới ấn tượng 12 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(88, 4, 'Thiệp cưới Ấn tượng 13', 5000, 'at13.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-04-22', 'Thiệp cưới ấn tượng 13 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(89, 4, 'Thiệp cưới Ấn tượng 14', 4000, 'at14.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 14 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(90, 4, 'Thiệp cưới Ấn tượng 15', 5000, 'at15.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 15 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(91, 4, 'Thiệp cưới Ấn tượng 16', 3000, 'at16.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới ấn tượng 16 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(92, 4, 'Thiệp cưới Ấn tượng 17', 5000, 'at17.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 17 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(93, 4, 'Thiệp cưới Ấn tượng 18', 4000, 'at18.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 18 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(94, 4, 'Thiệp cưới Ấn tượng 19', 5000, 'at19.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 19 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(95, 4, 'Thiệp cưới Ấn tượng 20', 2500, 'at20.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới ấn tượng 20 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(96, 4, 'Thiệp cưới Ấn tượng 21', 5000, 'at21.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 21 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(97, 4, 'Thiệp cưới Ấn tượng 22', 3000, 'at22.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-10', 'Thiệp cưới ấn tượng 22 sử dụng chất liệu giấy mỹ thuật trắng gân cao cấp tôn lên vẻ cứng cáp và\r\nđẳng cấp. Kết hợp giữa kĩ thuật cắt laser và dập nổi, họa tiết là những bông hoa với nhau tạo thành\r\nmột vườn hoa nhỏ xinh trên nền thiệp.\r\nĐường viền của thiệp cưới cũng được thiết kế theo họa tiết những cánh hoa một cách độc đáo. \r\nThiệp cưới dành cho những nàng dâu yêu thích sự đơn giản nhưng sang trọng và hiện đại.', NULL, NULL),
(98, 4, 'Thiệp cưới Ấn tượng 23', 5000, 'at23.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 23 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(99, 4, 'Thiệp cưới Ấn tượng 24', 4000, 'at24.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-05-04', 'Thiệp cưới ấn tượng 24 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL),
(100, 4, 'Thiệp cưới Ấn tượng 25', 5000, 'at25.jpg', 'Giấy mỹ thuật định lượng 250gsm', 'Hồng, tím', '2021-03-01', 'Thiệp cưới ấn tượng 25 có thiết kế đơn giản nhưng vô cùng sang trọng. Thiệp có tông màu xanh dương đậm,\r\nđường viền và họa tiết cùng thông tin được mạ vàng đồng, tiết giảm tối đa các chi tiết khác. \r\nSự kết hợp 2 màu sắc này và hình thức của thiệp giúp thiệp cưới trở nên đẳng cấp hơn.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `matintuc` int(120) NOT NULL,
  `maloaitintuc` int(120) NOT NULL,
  `tieude` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `nguoidang` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `noidungCT` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`matintuc`, `maloaitintuc`, `tieude`, `nguoidang`, `ngaydang`, `noidung`, `noidungCT`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cách viết thiệp cưới', 'Quốc Việt', '2021-04-14', 'Để có một tấm thiệp cưới hoàn chỉnh đưa thông tin trọn vẹn', 'Có nhiều cách phương thức viết nội dung thiệp cưới khác nhau từ kiểu viết thiệp truyền thống trang trọng tới kiểu hiện đại mang đậm nét cá tính riêng của từng cặp đôi. Nhưng cho dù bạn muốn viết nội dung thiệp cưới  theo cách nào thì cũng phải đảm bảo những nguyên tắc cơ bản của viết thiệp cưới với tính nghiêm túc và trang trọng, lịch sự trong văn phong. Đặc biệt nếu ngày cưới của bạn được tổ chức theo phong cách đám cưới truyền thống và chuẩn mực, thì tốt nhất nên đi theo những thói quen truyền', 'hd1.jpg', NULL, NULL),
(2, 2, 'Gửi thiệp cưới làm sao khéo léo và lịch sự nhất', 'Quốc Việt', '2021-04-15', 'Bạn nên đưa thiệp trước khi đám cưới diễn ra khoảng 7 ngày hoặc 2 tuần, không nên đưa thiệp quá sớm, các vị khách có thể quên mất ngày lễ của bạn', 'ách tốt nhất là bạn trực tiếp đưa thiệp đến tận tay khách mời, tránh tình trạng gửi thiệp của người này qua người khác.\r\n\r\nTrong trường hợp khách mời ở xa, bạn có thể gọi điện thông báo trước rồi gửi thiếp mời qua đường bưu điện hoặc nhờ người chuyển đến giúp\r\n\r\n.Khi đưa thiệp cưới trực tiếp, bạn nên thể hiện sự tôn trọng, lịch sự, vui mừng khi được đón tiếp các vị khách trong ngày vui của mình. Chính những biểu hiện của bạn sẽ khiến khách mời cảm thấy vui vẻ, hài lòng và muốn đến dự đám cưới.', 'hd2.jpg', NULL, NULL),
(3, 2, 'Bỏ túi 10+ Cách ghi thiệp cưới mời bạn bè, đồng nghiệp Hay', 'Quốc Việt', '2021-04-14', 'Viết thiệp cưới như thế nào vừa hay vừa ý nghĩa, bạn bè đồng nghiệp đọc xong tấm tắc khen. ', 'Cách xưng hô khi ghi thiệp cưới\r\nĐiều đầu tiên mà cặp đôi cần lưu ý khi viết thiệp mời đám cưới  chính là cách xưng hô khi ghi thiệp. Thành phần khách mời tham dự trong lễ cưới không chỉ có bạn bè, đồng nghiệp của cô dâu chú rể mà còn có cả họ hàng, bạn bè thân thiết của cha mẹ hai bên. Thêm vào đó, cách xưng hô của người Việt Nam cũng khá phức tạp như: cô, dì, chú, bác, cậu, mợ, ông/ bà trẻ,… Chính vì thế, nếu không xưng hô một cách đúng đắn và cẩn thận thì rất dễ bị chê trách cũng như dễ làm m', 'hd5.jpg', NULL, NULL),
(8, 13, 'Hà Nội tìm người đến siêu thị Big C Thăng Long', 'aaaaaaaaaaa', '2021-06-19', '<p>aaaaaaaaaaaaaaaa</p>', '<p>aaaaaaaaaaaaaaaa</p>', 'at155.jpg', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_chitietdh`
--
ALTER TABLE `tbl_chitietdh`
  ADD PRIMARY KEY (`maCTDH`),
  ADD KEY `maDH` (`maDH`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `tbl_chitietdn`
--
ALTER TABLE `tbl_chitietdn`
  ADD PRIMARY KEY (`maCTDN`),
  ADD KEY `maHDN` (`maHDN`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`maDH`),
  ADD KEY `maNV` (`maNV`),
  ADD KEY `maKH` (`maKH`);

--
-- Chỉ mục cho bảng `tbl_donnhap`
--
ALTER TABLE `tbl_donnhap`
  ADD PRIMARY KEY (`maHDN`),
  ADD KEY `maNV` (`maNV`),
  ADD KEY `maNCC` (`maNCC`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`maKH`);

--
-- Chỉ mục cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `tbl_loaitintuc`
--
ALTER TABLE `tbl_loaitintuc`
  ADD PRIMARY KEY (`maloaitintuc`);

--
-- Chỉ mục cho bảng `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  ADD PRIMARY KEY (`maNCC`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`maNV`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `maloai` (`maloai`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`matintuc`),
  ADD KEY `maloaitintuc` (`maloaitintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_chitietdh`
--
ALTER TABLE `tbl_chitietdh`
  MODIFY `maCTDH` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_chitietdn`
--
ALTER TABLE `tbl_chitietdn`
  MODIFY `maCTDN` int(120) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `maDH` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_donnhap`
--
ALTER TABLE `tbl_donnhap`
  MODIFY `maHDN` int(120) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `maKH` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  MODIFY `maloai` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_loaitintuc`
--
ALTER TABLE `tbl_loaitintuc`
  MODIFY `maloaitintuc` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  MODIFY `maNCC` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `maNV` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `masanpham` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `matintuc` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chitietdh`
--
ALTER TABLE `tbl_chitietdh`
  ADD CONSTRAINT `tbl_chitietdh_ibfk_1` FOREIGN KEY (`maDH`) REFERENCES `tbl_donhang` (`maDH`),
  ADD CONSTRAINT `tbl_chitietdh_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `tbl_sanpham` (`masanpham`);

--
-- Các ràng buộc cho bảng `tbl_chitietdn`
--
ALTER TABLE `tbl_chitietdn`
  ADD CONSTRAINT `tbl_chitietdn_ibfk_1` FOREIGN KEY (`maHDN`) REFERENCES `tbl_donnhap` (`maHDN`),
  ADD CONSTRAINT `tbl_chitietdn_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `tbl_sanpham` (`masanpham`);

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `tbl_donhang_ibfk_1` FOREIGN KEY (`maNV`) REFERENCES `tbl_nhanvien` (`maNV`),
  ADD CONSTRAINT `tbl_donhang_ibfk_2` FOREIGN KEY (`maKH`) REFERENCES `tbl_khachhang` (`maKh`);

--
-- Các ràng buộc cho bảng `tbl_donnhap`
--
ALTER TABLE `tbl_donnhap`
  ADD CONSTRAINT `tbl_donnhap_ibfk_1` FOREIGN KEY (`maNV`) REFERENCES `tbl_nhanvien` (`maNV`),
  ADD CONSTRAINT `tbl_donnhap_ibfk_2` FOREIGN KEY (`maNCC`) REFERENCES `tbl_nhacungcap` (`maNCC`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `tbl_loaisanpham` (`maloai`);

--
-- Các ràng buộc cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD CONSTRAINT `tbl_tintuc_ibfk_1` FOREIGN KEY (`maloaitintuc`) REFERENCES `tbl_loaitintuc` (`maloaitintuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
