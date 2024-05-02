

--
-- Cơ sở dữ liệu: `aresdiep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authority`
--

CREATE TABLE `authority` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authority`
--

INSERT INTO `authority` (`ID`, `NAME`) VALUES
(1, 'CREATE_PRODUCT'),
(2, 'READ_PRODUCT'),
(3, 'UPDATE_PRODUCT'),
(4, 'DELETE_PRODUCT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `CREATE_BY` int(11) DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`ID`, `NAME`, `DESCRIPTION`, `CREATE_BY`, `UPDATE_BY`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'PHỤ KIỆN PC - LAPTOP', NULL, 1, NULL, '2024-05-03 04:40:59', '2024-05-03 04:40:59'),
(2, 'THIẾT BỊ CÔNG NGHỆ', NULL, 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(3, 'PHỤ KIỆN ĐIỆN THOẠI', NULL, 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(4, 'THỜI TRANG', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:42'),
(5, 'MỸ PHẨM - LÀM ĐẸP', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(6, 'NÓN BẢO HIỂM - PHỤ KIỆN PHƯỢT', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(7, 'THÚ BÔNG - CHĂN GỐI - QUÀ', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(8, 'GIA DỤNG', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20'),
(9, 'SỨC KHỎE - THỂ HÌNH', '', 1, NULL, '2024-05-03 04:43:20', '2024-05-03 04:43:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loyal_customer_type`
--

CREATE TABLE `loyal_customer_type` (
  `ID` int(11) NOT NULL,
  `TYPE_NAME` varchar(50) DEFAULT NULL,
  `DISCOUNT_PERCENTAGE` decimal(5,2) DEFAULT NULL,
  `MINIMUM_POINTS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loyal_customer_type`
--

INSERT INTO `loyal_customer_type` (`ID`, `TYPE_NAME`, `DISCOUNT_PERCENTAGE`, `MINIMUM_POINTS`) VALUES
(1, 'Đồng', 5.00, 1000),
(2, 'Bạc', 10.00, 2000),
(3, 'Vàng', 15.00, 2500),
(4, 'Bạch Kim', 20.00, 3000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUBCATEGORY_ID` int(11) DEFAULT NULL,
  `PRODUCT_TYPE_ID` int(11) DEFAULT NULL,
  `PRICE` decimal(10,2) NOT NULL,
  `IMAGE_1` text DEFAULT NULL,
  `IMAGE_2` text DEFAULT NULL,
  `IMAGE_3` text DEFAULT NULL,
  `IMAGE_4` text DEFAULT NULL,
  `IMAGE_5` text DEFAULT NULL,
  `DISCOUNT` decimal(5,2) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `NAME`, `DESCRIPTION`, `CATEGORY_ID`, `SUBCATEGORY_ID`, `PRODUCT_TYPE_ID`, `PRICE`, `IMAGE_1`, `IMAGE_2`, `IMAGE_3`, `IMAGE_4`, `IMAGE_5`, `DISCOUNT`, `CREATED_AT`, `UPDATED_AT`, `CREATED_BY`, `UPDATED_BY`) VALUES
(1, 'BÀN PHÍM BOSSTON K830', '- Bàn phím Bosston K830 đươc thiết kế bền chắc với thời gian sử dụng lâu. Cực kỳ tiết kiệm!\r\n\r\n- Các phím chịu được lực trong thời gian dài, có khả năng chống nước, va đập, hạn chế tối đa khả năng bị liệt phím.\r\n\r\n- Phím nhấn nhẹ nhàng tạo cảm giác thoải mái khi gõ.\r\n\r\n- Thiết kế chống đổ nước với lỗ thoát nước hiệu quả.', 1, 1, NULL, 168000.00, NULL, NULL, NULL, NULL, NULL, 0.00, '2024-05-03 06:47:49', '2024-05-03 06:47:49', 1, NULL),
(2, 'CHUỘT CÓ DÂY EMS 645', 'Thiết kế kiểu dáng sang trọng, mềm mại cảm giác khi cầm nắm thật thú vị, kết hợp với màu đen bóng, sản phẩm đang được rất nhiều khách hàng ưa chuộng và sử dụng.\r\n\r\nSử dụng đa bề mặt.\r\n\r\nSử dụng công nghệ cảm biến hồng ngoại, độ nhạy cao và di chuyển linh hoạt trên mọi bề mặt mà không cần tấm lót chuột.\r\n\r\nSử dụng hầu hết các thiết bị PC/LAPTOP và mọi hệ điều hành.', 1, 2, 4, 129000.00, NULL, NULL, NULL, NULL, NULL, 0.00, '2024-05-03 06:47:49', '2024-05-03 06:47:49', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `SUBCATEGORY_ID` int(11) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`ID`, `NAME`, `DESCRIPTION`, `SUBCATEGORY_ID`, `CATEGORY_ID`, `CREATED_AT`, `UPDATED_AT`, `CREATED_BY`, `UPDATED_BY`) VALUES
(1, 'Tay cầm chơi game', NULL, 8, 1, '2024-05-03 06:26:28', '2024-05-03 06:26:28', 1, NULL),
(2, 'Headphone bluetooth', NULL, 5, 1, '2024-05-03 06:26:28', '2024-05-03 06:26:28', 1, NULL),
(3, 'Headphone có dây', '', 5, 1, '2024-05-03 06:26:28', '2024-05-03 06:26:28', 1, NULL),
(4, 'Chuột có dây', NULL, 2, 1, '2024-05-03 06:27:28', '2024-05-03 06:27:28', 1, NULL),
(5, 'Chuột không dây', NULL, 2, 1, '2024-05-03 06:27:28', '2024-05-03 06:27:28', 1, NULL),
(6, 'Thẻ nhớ', NULL, 10, 2, '2024-05-03 06:28:32', '2024-05-03 06:28:32', 1, NULL),
(7, 'Usb', NULL, 10, 2, '2024-05-03 06:28:32', '2024-05-03 06:28:32', 1, NULL),
(8, 'Đèn live - Đèn tiktok', NULL, 11, 2, '2024-05-03 06:30:27', '2024-05-03 06:30:27', 1, NULL),
(9, 'Gậy Selfie', NULL, 11, 2, '2024-05-03 06:30:27', '2024-05-03 06:30:27', NULL, NULL),
(10, 'Soundcard - Mic', NULL, 11, 2, '2024-05-03 06:30:27', '2024-05-03 06:30:27', NULL, NULL),
(11, 'Giá đỡ Tripod', NULL, 11, 2, '2024-05-03 06:30:27', '2024-05-03 06:30:27', 1, NULL),
(18, 'Cáp mạng', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL),
(19, 'Kích sóng wifi', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL),
(20, 'Router gắn sim', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL),
(21, 'Thiết bị chia mạng ( Switch )', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL),
(22, 'Thiết bị phát wifi', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL),
(23, 'Thiết bị thu wifi', NULL, 13, 2, '2024-05-03 06:33:25', '2024-05-03 06:33:25', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ID`, `NAME`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_authority_mapping`
--

CREATE TABLE `role_authority_mapping` (
  `ROLE_ID` int(11) NOT NULL,
  `AUTHORITY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_authority_mapping`
--

INSERT INTO `role_authority_mapping` (`ROLE_ID`, `AUTHORITY_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_category`
--

CREATE TABLE `sub_category` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_category`
--

INSERT INTO `sub_category` (`ID`, `NAME`, `DESCRIPTION`, `CATEGORY_ID`, `CREATED_AT`, `UPDATED_AT`, `CREATED_BY`, `UPDATED_BY`) VALUES
(1, 'BÀN PHÍM', NULL, 1, '2024-05-03 05:18:11', '2024-05-03 05:18:11', 1, NULL),
(2, 'CHUỘT', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:23:38', 1, NULL),
(3, 'LÓT CHUỘT', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:23:41', 1, NULL),
(4, 'LOA BLUETOOTH', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:23:43', 1, NULL),
(5, 'HEADPHONE', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:23:48', 1, NULL),
(6, 'LOA VI TÍNH', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:23:57', 1, NULL),
(7, 'ĐẾ TẢN NHIỆT LAPTOP', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:24:00', 1, NULL),
(8, 'TAY CẦM CHƠI GAME', NULL, 1, '2024-05-03 05:23:22', '2024-05-03 05:24:03', 1, NULL),
(9, 'MIC 3IN1 BLUETOOTH', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:28', 1, NULL),
(10, 'THẺ NHỚ - USB', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:40', 1, NULL),
(11, 'THIẾT BỊ LIVESTREAM - TIKTOK', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:43', 1, NULL),
(12, 'CAMERA - AN NINH', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:46', 1, NULL),
(13, 'THIẾT BỊ MẠNG', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:48', 1, NULL),
(14, 'CÁP DỮ LIỆU - NGUỒN - CHUYỂN ĐỔI - KĨ THUẬT', NULL, 2, '2024-05-03 05:27:16', '2024-05-03 05:27:51', 1, NULL),
(29, 'MIẾNG DÁN PPF', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(30, 'MIẾNG DÁN CƯỜNG LỰC', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(31, 'BỘ SẠC - CÓC SẠC', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(32, 'CÁP SẠC', NULL, 2, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(33, 'TAI NGHE', NULL, 2, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(34, 'PIN DỰ PHÒNG - PIN', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(35, 'ỐP LƯNG', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(36, 'BAO DA IPAD', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(37, 'PHỤ KIỆN AIRPOD - APPLE WATCH', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL),
(38, 'GIÁ ĐỠ - DÂY ĐEO - KẸP ĐIỆN THOẠI', NULL, 3, '2024-05-03 05:31:30', '2024-05-03 05:31:30', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `LOYAL_CUSTOMER_TYPE_ID` int(11) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `ACCUMULATED_POINTS` int(11) DEFAULT 0,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `PHONE_NUMBER`, `ADDRESS`, `LOYAL_CUSTOMER_TYPE_ID`, `ENABLED`, `ACCUMULATED_POINTS`, `CREATED_AT`, `FIRST_NAME`, `LAST_NAME`) VALUES
(1, 'admin', '1', 'chuvandiep2804@gmail.com', '0335659514', 'Xóm Hoa Thám, xã Hoa Thành, huyện Yên Thành, tỉnh Nghệ An', 4, 1, 0, '2024-05-03 04:25:28', 'Điệp', 'Chu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role_mapping`
--

CREATE TABLE `user_role_mapping` (
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CREATE_BY` (`CREATE_BY`),
  ADD KEY `UPDATE_BY` (`UPDATE_BY`);

--
-- Chỉ mục cho bảng `loyal_customer_type`
--
ALTER TABLE `loyal_customer_type`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUBCATEGORY_ID` (`SUBCATEGORY_ID`),
  ADD KEY `PRODUCT_TYPE_ID` (`PRODUCT_TYPE_ID`),
  ADD KEY `CREATED_BY` (`CREATED_BY`),
  ADD KEY `UPDATED_BY` (`UPDATED_BY`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SUBCATEGORY_ID` (`SUBCATEGORY_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `CREATED_BY` (`CREATED_BY`),
  ADD KEY `UPDATED_BY` (`UPDATED_BY`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `role_authority_mapping`
--
ALTER TABLE `role_authority_mapping`
  ADD PRIMARY KEY (`ROLE_ID`,`AUTHORITY_ID`),
  ADD KEY `AUTHORITY_ID` (`AUTHORITY_ID`);

--
-- Chỉ mục cho bảng `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `CREATED_BY` (`CREATED_BY`),
  ADD KEY `UPDATED_BY` (`UPDATED_BY`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LOYAL_CUSTOMER_TYPE_ID` (`LOYAL_CUSTOMER_TYPE_ID`);

--
-- Chỉ mục cho bảng `user_role_mapping`
--
ALTER TABLE `user_role_mapping`
  ADD PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  ADD KEY `ROLE_ID` (`ROLE_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authority`
--
ALTER TABLE `authority`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `loyal_customer_type`
--
ALTER TABLE `loyal_customer_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`CREATE_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`UPDATE_BY`) REFERENCES `user` (`ID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUBCATEGORY_ID`) REFERENCES `sub_category` (`ID`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`PRODUCT_TYPE_ID`) REFERENCES `product_type` (`ID`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`CREATED_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`UPDATED_BY`) REFERENCES `user` (`ID`);

--
-- Các ràng buộc cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`SUBCATEGORY_ID`) REFERENCES `sub_category` (`ID`),
  ADD CONSTRAINT `product_type_ibfk_2` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `product_type_ibfk_3` FOREIGN KEY (`CREATED_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `product_type_ibfk_4` FOREIGN KEY (`UPDATED_BY`) REFERENCES `user` (`ID`);

--
-- Các ràng buộc cho bảng `role_authority_mapping`
--
ALTER TABLE `role_authority_mapping`
  ADD CONSTRAINT `role_authority_mapping_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`),
  ADD CONSTRAINT `role_authority_mapping_ibfk_2` FOREIGN KEY (`AUTHORITY_ID`) REFERENCES `authority` (`ID`);

--
-- Các ràng buộc cho bảng `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `sub_category_ibfk_2` FOREIGN KEY (`CREATED_BY`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `sub_category_ibfk_3` FOREIGN KEY (`UPDATED_BY`) REFERENCES `user` (`ID`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`LOYAL_CUSTOMER_TYPE_ID`) REFERENCES `loyal_customer_type` (`ID`);

--
-- Các ràng buộc cho bảng `user_role_mapping`
--
ALTER TABLE `user_role_mapping`
  ADD CONSTRAINT `user_role_mapping_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `user_role_mapping_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
