-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 12, 2017 lúc 07:16 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sgc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', '5c5ca2ca10bd5d843628909e166609fe', 'Admin SDC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_recruit` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `office_en` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `company_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `phone`, `email`, `email_recruit`, `address`, `address_en`, `office`, `office_en`, `company`, `company_en`) VALUES
(1, '02462 532 635', 'nhansu@sdcmedia.com.vn', 'tuyendung.sgcvietnam@gmail.com', 'Số 18, Lô 5, Đền Lừ 2, Tổ 44, Phường Hoàng văn Thụ, Quận Hoàng Mai, Thành Phố Hà Nội', 'So 18, Lo 5, Den Lu 2, To 44, Phuong Hoang Van Thu, Quan Hoang Mai, Ha Noi', 'Tầng 3, Số 206, đường Đê La Thành, P. Thổ Quan, Q.Đống Đa, TP. Hà Nội.', 'Tang 3, So 206, duong De La Thanh, phuong Tho Quan, quan Dong Da, Ha Noi', 'CÔNG TY CỔ PHẦN TRUYỀN THÔNG SGC VIỆT NAM', 'Vietnam SGC Media ., JSC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1: dich vu, 2: timeline, 3: phong cach',
  `prioriti` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `icon` varchar(40) NOT NULL,
  `time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`id`, `type`, `prioriti`, `title`, `title_en`, `content`, `content_en`, `icon`, `time`) VALUES
(1, 2, 1, 'Về chúng tôi', 'Về chúng tôi', '<p>C&ocirc;ng ty cổ phần truyền th&ocirc;ng SGC Việt Nam, hoạt động trong c&aacute;c lĩnh vực kinh doanh ch&iacute;nh l&agrave; dịch vụ nội dung số, tư vấn cung cấp c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ trong lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin. Được th&agrave;nh lập v&agrave;o năm 2012, c&aacute;c dịch vụ, sản phẩm của c&ocirc;ng ty đ&atilde; nhanh ch&oacute;ng c&oacute; mặt tr&ecirc;n thị trường trong nước v&agrave; quốc tế, c&aacute;c ứng dụng được đưa ra hợp t&aacute;c với c&aacute;c đối trong nước v&agrave; quốc tế như: &nbsp;VMG, Index corp (thailand)ltd, singapore,...</p>\r\n', '<p>C&ocirc;ng ty cổ phần truyền th&ocirc;ng SGC Việt Nam, hoạt động trong c&aacute;c lĩnh vực kinh doanh ch&iacute;nh l&agrave; dịch vụ nội dung số, tư vấn cung cấp c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ trong lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin. Được th&agrave;nh lập v&agrave;o năm 2012, c&aacute;c dịch vụ, sản phẩm của c&ocirc;ng ty đ&atilde; nhanh ch&oacute;ng c&oacute; mặt tr&ecirc;n thị trường trong nước v&agrave; quốc tế, c&aacute;c ứng dụng được đưa ra hợp t&aacute;c với c&aacute;c đối trong nước v&agrave; quốc tế như: &nbsp;VMG, Index corp (thailand)ltd, singapore,...</p>\r\n', '', '0'),
(2, 2, 2, 'Sứ mệnh', 'Sứ mệnh', '<p>SGC Việt Nam được th&agrave;nh lập với sứ mệnh mang lại c&aacute;c phần mềm, ứng dụng tr&ecirc;n mobile, c&aacute;c trang th&ocirc;ng tin điện tử tốt nhất d&agrave;nh cho người d&ugrave;ng.&nbsp;<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; l&agrave;m ngắn lại khoảng c&aacute;ch giữa c&aacute;c bạn với th&ocirc;ng tin tr&ecirc;n to&agrave;n cầu, l&agrave;m thỏa m&atilde;n tối đa mọi nhu cầu cuộc sống của bất kỳ ai, d&ugrave; ở bất cứ đ&acirc;u, d&ugrave; l&agrave;m bất cứ ng&agrave;nh nghề.</p>\r\n', '<p>SGC Việt Nam được th&agrave;nh lập với sứ mệnh mang lại c&aacute;c phần mềm, ứng dụng tr&ecirc;n mobile, c&aacute;c trang th&ocirc;ng tin điện tử tốt nhất d&agrave;nh cho người d&ugrave;ng.&nbsp;<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; l&agrave;m ngắn lại khoảng c&aacute;ch giữa c&aacute;c bạn với th&ocirc;ng tin tr&ecirc;n to&agrave;n cầu, l&agrave;m thỏa m&atilde;n tối đa mọi nhu cầu cuộc sống của bất kỳ ai, d&ugrave; ở bất cứ đ&acirc;u, d&ugrave; l&agrave;m bất cứ ng&agrave;nh nghề.</p>\r\n', '', '0'),
(3, 2, 3, 'Thế mạnh', 'Thế mạnh', '<p>Quy tụ đ&ocirc;ng đảo đội ngũ c&oacute; kinh nghiệm về c&aacute;c c&ocirc;ng nghệ: React Native, Unity, Java, HTML5, PHP...</p>\r\n\r\n<p>C&oacute; c&aacute;c giải ph&aacute;p v&agrave; kinh nghiệm trong lĩnh vực ph&aacute;t triển phần mềm tr&ecirc;n mobile, thiết kế website, cổng thanh to&aacute;n điện tử,...</p>\r\n\r\n<p>Cơ sở hạ tầng hiện đại với hệ thống m&aacute;y m&oacute;c trang thiết bị bao gồm hệ thống m&aacute;y chủ (server) v&agrave; d&agrave;n PC, laptop hiện đại. Hệ thống m&aacute;y m&oacute;c hiện đại đủ sức đ&aacute;p ứng mọi c&ocirc;ng tr&igrave;nh, dự &aacute;n viễn th&ocirc;ng phức tạp nhất.</p>\r\n\r\n<p>H&igrave;nh thức hợp t&aacute;c mềm dẻo gi&uacute;p kh&aacute;ch h&agrave;ng c&acirc;n bằng được chi ph&iacute; v&agrave; rủi ro về c&ocirc;ng nghệ cũng như nh&acirc;n lực thực hiện dự &aacute;n.</p>\r\n', '<p>Quy tụ đ&ocirc;ng đảo đội ngũ c&oacute; kinh nghiệm về c&aacute;c c&ocirc;ng nghệ: React Native, Unity, Java, HTML5, PHP...</p>\r\n\r\n<p>C&oacute; c&aacute;c giải ph&aacute;p v&agrave; kinh nghiệm trong lĩnh vực ph&aacute;t triển phần mềm tr&ecirc;n mobile, thiết kế website, cổng thanh to&aacute;n điện tử,...</p>\r\n\r\n<p>Cơ sở hạ tầng hiện đại với hệ thống m&aacute;y m&oacute;c trang thiết bị bao gồm hệ thống m&aacute;y chủ (server) v&agrave; d&agrave;n PC, laptop hiện đại. Hệ thống m&aacute;y m&oacute;c hiện đại đủ sức đ&aacute;p ứng mọi c&ocirc;ng tr&igrave;nh, dự &aacute;n viễn th&ocirc;ng phức tạp nhất.</p>\r\n\r\n<p>H&igrave;nh thức hợp t&aacute;c mềm dẻo gi&uacute;p kh&aacute;ch h&agrave;ng c&acirc;n bằng được chi ph&iacute; v&agrave; rủi ro về c&ocirc;ng nghệ cũng như nh&acirc;n lực thực hiện dự &aacute;n.</p>\r\n', '', '0'),
(4, 2, 4, 'Mục tiêu', 'Muc tieu', '<p>Trở th&agrave;nh c&ocirc;ng ty cung cấp dịch vụ thiết kế website, cổng th&ocirc;ng tin điện tử lớn nhất Việt Nam Trở th&agrave;nh nh&agrave; ph&aacute;t triển, cung cấp c&aacute;c sản phẩm ứng dụng h&agrave;ng đầu tr&ecirc;n nền tảng thiết bị di động Cung cấp cho kh&aacute;ch h&agrave;ng hệ thống cổng thanh to&aacute;n điện tử, dịch vụ đầu số tốt nhất, an to&agrave;n nhất. Mở rộng thị trường ra nước ngo&agrave;i</p>\r\n', '<p>Trở th&agrave;nh c&ocirc;ng ty cung cấp dịch vụ thiết kế website, cổng th&ocirc;ng tin điện tử lớn nhất Việt Nam Trở th&agrave;nh nh&agrave; ph&aacute;t triển, cung cấp c&aacute;c sản phẩm ứng dụng h&agrave;ng đầu tr&ecirc;n nền tảng thiết bị di động Cung cấp cho kh&aacute;ch h&agrave;ng hệ thống cổng thanh to&aacute;n điện tử, dịch vụ đầu số tốt nhất, an to&agrave;n nhất. Mở rộng thị trường ra nước ngo&agrave;i</p>\r\n', '', '0'),
(6, 1, 0, 'Thiết kế website', 'Thiết kế website', 'Sử dụng công nghệ mới để xây dựng website chuyên nghiệp, xứng tầm thương hiệu nhằm quảng bá thông tin, sản phẩm dịch vụ của công ty', 'Sử dụng công nghệ mới để xây dựng website chuyên nghiệp, xứng tầm thương hiệu nhằm quảng bá thông tin, sản phẩm dịch vụ của công ty', 'fa-desktop', '0'),
(7, 1, 0, 'Game, ứng dụng Mobile', 'Game, ứng dụng Mobile', 'Chúng tôi phát triển các game mobile online, ứng dụng cho thiết bị di động trên các platform IOS, Android, WindowsPhone', 'Chúng tôi phát triển các game mobile online, ứng dụng cho thiết bị di động trên các platform IOS, Android, WindowsPhone', 'fa-mobile', '0'),
(8, 1, 0, 'Dịch vụ nội dung số', 'Dịch vụ nội dung số', 'Chúng tôi cung cấp chuyên nghiệp các dịch vụ SMS, giải pháp CNTT tích hợp trên nền tảng SMS Gateway dưới nhiều hình thức hợp tác nhằm đáp ứng tối ưu mọi nhu cầu của khách hàng.', 'Chúng tôi cung cấp chuyên nghiệp các dịch vụ SMS, giải pháp CNTT tích hợp trên nền tảng SMS Gateway dưới nhiều hình thức hợp tác nhằm đáp ứng tối ưu mọi nhu cầu của khách hàng.', 'fa-futbol-o', '0'),
(9, 3, 0, 'Không đồng phục công sở', 'No uniform', 'Đến với SGC, chỉ cần trang phục lịch sự, phù hợp với môi trường Công ty. Chúng tôi tôn trọng sở thích và phong cách ăn mặc của bạn.', 'Đến với SGC, chỉ cần trang phục lịch sự, phù hợp với môi trường Công ty. Chúng tôi tôn trọng sở thích và phong cách ăn mặc của bạn.', 'fa-female', '0'),
(10, 3, 0, 'Tôn trọng ý kiến cá nhân', 'Tôn trọng ý kiến cá nhân', 'Tranh luận – mâu thuẫn vì mục tiêu chung của Công ty. SGC chúng tôi khuyến khích các bạn.', 'Tranh luận – mâu thuẫn vì mục tiêu chung của Công ty. SGC chúng tôi khuyến khích các bạn.', 'fa-flag-o', '0'),
(11, 3, 0, 'Hoạt động – phong trào thú vị', 'Hoạt động – phong trào thú vị', 'Bạn sẽ được tham gia các hoạt động thể dục – thể thao, các trò chơi, các chương trình giao lưu,… nhằm đòi hỏi tinh thần đồng đội và ý chí, sáng tạo của mỗi thành viên.', 'Bạn sẽ được tham gia các hoạt động thể dục – thể thao, các trò chơi, các chương trình giao lưu,… nhằm đòi hỏi tinh thần đồng đội và ý chí, sáng tạo của mỗi thành viên.', 'fa-futbol-o', '0'),
(12, 3, 0, 'Không phân biệt bạn là ai? Như thế nào?', 'Không phân biệt bạn là ai? Như thế nào?', 'Cho dù bạn không có bằng cấp, cho dù bạn là người nước nào,…? Chỉ cần bạn có năng lực, SGC chúng tôi luôn sẵn sàng cộng tác làm việc cùng bạn.', 'Cho dù bạn không có bằng cấp, cho dù bạn là người nước nào,…? Chỉ cần bạn có năng lực, SGC chúng tôi luôn sẵn sàng cộng tác làm việc cùng bạn.', 'fa-handshake-o', '0'),
(13, 3, 0, 'Học hỏi kinh nghiệm – phát huy năng lực', 'Học hỏi kinh nghiệm – phát huy năng lực', 'Bạn sẽ được trau dồi, mở mang thêm kiến thức, tích lũy thêm kinh nghiệm từ các đồng nghiệp của mình, cũng như phát huy được khả năng sáng tạo, năng lực làm việc của bạn.', 'Bạn sẽ được trau dồi, mở mang thêm kiến thức, tích lũy thêm kinh nghiệm từ các đồng nghiệp của mình, cũng như phát huy được khả năng sáng tạo, năng lực làm việc của bạn.', 'fa-level-up', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_recruit`
--

CREATE TABLE `email_recruit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_recruit`
--

INSERT INTO `email_recruit` (`id`, `name`, `email`, `status`, `created`) VALUES
(1, 'tung', 'tungnt93@gmail.com', 1, 1508725476);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `intro` varchar(255) NOT NULL,
  `intro_en` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `title_en`, `content`, `content_en`, `intro`, `intro_en`, `img`, `created`) VALUES
(9, 'ĐỂ ', '', '<p><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">ĐỂ &quot;THỨ HAI&quot; KH&Ocirc;NG C&Ograve;N L&Agrave; NỖI SỢ !</span></span></strong></span></p>\r\n\r\n<p><span style=\"background-color:white\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">23-10-2017</span></span></span></p>\r\n\r\n<p><span style=\"background-color:white\"><span style=\"font-size:10.0pt\">&ldquo;H&ocirc;m nay l&agrave; thứ mấy? Chắc chắn l&agrave; thứ Hai!&rdquo; l&agrave; c&acirc;u n&oacute;i ngắn gọn nhưng c&oacute; khả năng khiến mọi thần d&acirc;n trong C&ocirc;ng ty phải &ldquo;đắng l&ograve;ng&rdquo; mỗi khi nghe thấy. Kể cũng đ&uacute;ng, mới nghỉ c&oacute; một/hai ng&agrave;y cuối tuần, chưa xả l&aacute;ng bao nhi&ecirc;u đ&atilde; vội quay lại l&agrave;m việc, kh&ocirc;ng buồn sao được. Tuy nhi&ecirc;n, chỉ cần nắm trong tay 5 b&iacute; k&iacute;p n&agrave;y, Vui Vẻ tin rằng d&acirc;n văn ph&ograve;ng ch&uacute;ng ta sẽ chẳng c&ograve;n ai bị thứ Hai &ldquo;ăn hiếp&rdquo; nữa!</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"background-color:white\"><strong><span style=\"font-size:10.0pt\">1. Đừng l&agrave;m &ldquo;c&uacute; đ&ecirc;m&rdquo; v&agrave;o Chủ Nhật</span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"background-color:white\"><span style=\"font-size:10.0pt\">Một lời khuy&ecirc;n ch&acirc;n th&agrave;nh của Vui Vẻ, đ&oacute; l&agrave; h&atilde;y &ldquo;x&otilde;a&rdquo; v&agrave;o tối thứ Bảy, đừng chọn Chủ Nhật nếu bạn muốn &ldquo;sống s&oacute;t&rdquo; qua ng&agrave;y thứ Hai. Giấc ngủ rất quan trọng v&agrave; đ&oacute; l&agrave; thời điểm duy nhất để cơ thể của bạn phục hồi năng lượng. Cho n&ecirc;n nếu thức khuya v&agrave; ngủ thiếu giấc, đảm bảo thứ Hai bạn sẽ ngủ g&agrave; ngủ gật, ngo&agrave;i ra cơ thể c&ograve;n uể oải, đầu &oacute;c chưa kịp minh mẫn trở lại,&hellip; Vậy th&igrave; l&agrave;m sao c&oacute; thể tập trung l&agrave;m việc tốt được phải kh&ocirc;ng n&agrave;o?<br />\r\n<br />\r\n<strong>2. Ực liền ly nước khi thức dậy</strong><br />\r\nKhi ch&uacute;ng ta ngủ th&igrave; c&aacute;c cơ quan trong cơ thể vẫn hoạt động v&agrave; ti&ecirc;u thụ lượng nước như b&igrave;nh thường. V&igrave; vậy sau khi thức dậy, cơ thể của bạn sẽ bị rơi v&agrave;o t&igrave;nh trạng &ldquo;kh&ocirc; h&eacute;o&rdquo;. Ngay lập tức, h&atilde;y &ldquo;tưới&rdquo; cho cơ thể m&igrave;nh một ly nước, trước hết l&agrave; để m&igrave;nh &ldquo;tươi&rdquo; lại đ&atilde;. Kh&ocirc;ng chỉ vậy, uống nước v&agrave;o s&aacute;ng sớm c&ograve;n gi&uacute;p bạn thanh lọc v&agrave; tăng sức đề kh&aacute;ng cho cơ thể, tr&aacute;nh xa c&aacute;c bệnh đường ruột v&agrave; c&oacute; một l&agrave;n da căng b&oacute;ng nữa đ&oacute;.<br />\r\n<br />\r\n<strong>3. Nhiều chuyện l&uacute;c n&agrave;o cũng được, trừ s&aacute;ng thứ Hai</strong><br />\r\nKh&ocirc;ng kh&iacute; tại c&aacute;c c&ocirc;ng ty v&agrave;o s&aacute;ng thứ Hai thường x&ocirc;n xao cực kỳ. L&iacute; do l&agrave; sau hơn một ng&agrave;y kh&ocirc;ng gặp th&igrave; mọi người c&oacute; đủ thứ chuyện để kể cho nhau nghe; số kh&aacute;c th&igrave; &ldquo;bu&ocirc;n chuyện&rdquo; cốt cũng chỉ để tỉnh ngủ, khởi động lại đầu &oacute;c cho l&agrave;m việc hiệu quả. Tuy nhi&ecirc;n theo một số nghi&ecirc;n cứu, mọi người n&ecirc;n d&agrave;nh thời gian để l&agrave;m việc v&agrave;o s&aacute;ng thứ Hai thay v&igrave; &ldquo;t&aacute;m&rdquo; v&igrave; đ&acirc;y l&agrave; khoảng thời gian tốt nhất để bộ n&atilde;o c&oacute; thể hoạt động hết năng suất. Do đ&oacute; h&atilde;y tận dụng l&uacute;c n&agrave;y để tập trung l&agrave;m việc nh&eacute;!<br />\r\n<br />\r\n<strong>4. Ch&agrave;o ng&agrave;y mới bằng điều m&igrave;nh th&iacute;ch</strong><br />\r\nKh&ocirc;ng c&oacute; g&igrave; tuyệt vời bằng cảm gi&aacute;c được l&agrave;m những điều m&igrave;nh th&iacute;ch. Cho n&ecirc;n nếu bạn bắt đầu ng&agrave;y mới bằng việc l&agrave;m những điều m&agrave; bản th&acirc;n cảm thấy thoải m&aacute;i, phấn khởi th&igrave; sự ch&aacute;n chường, uể oải sẽ biến mất nhanh th&ocirc;i. Vui Vẻ c&oacute; th&oacute;i quen bật những bản nhạc t&acirc;m đắc v&agrave;o mỗi s&aacute;ng, c&ocirc;ng nhận hiệu quả cực k&igrave;. Nội c&aacute;i việc lắng nghe giai điệu bắt tai sau đ&oacute; vu vơ h&aacute;t theo th&ocirc;i cũng đ&atilde; l&agrave;m Vui Vẻ tho&aacute;t khỏi cơn buồn ngủ, tinh thần sảng kho&aacute;i tr&agrave;n đầy năng lượng đủ để bắt đầu &ldquo;chiến đấu&rdquo; với lượng c&ocirc;ng việc v&agrave; deadline của tuần mới rồi.<br />\r\n<br />\r\n<strong>5. Tuyệt đối kh&ocirc;ng được bỏ ăn s&aacute;ng</strong><br />\r\nSau bữa ăn tối, cơ thể kh&ocirc;ng được cung cấp thức ăn kh&aacute; l&acirc;u từ 10-12 giờ n&ecirc;n đường huyết đ&atilde; giảm thấp, rất cần năng lượng cho c&aacute;c hoạt động thể lực v&agrave; tr&iacute; lực khi bắt đầu ng&agrave;y mới. Buổi s&aacute;ng lại l&agrave; thời điểm khởi đầu cho một ng&agrave;y l&agrave;m việc k&eacute;o d&agrave;i n&ecirc;n đ&ograve;i hỏi cơ thể của bạn phải được nạp dưỡng chất đầy đủ. V&igrave; vậy, mọi buổi s&aacute;ng chứ chẳng ri&ecirc;ng g&igrave; thứ Hai, bạn tuyệt đối kh&ocirc;ng được bỏ bữa để cơ thể c&oacute; đủ năng lượng l&agrave;m việc một c&aacute;ch tốt nhất.<br />\r\n<br />\r\n( Nguồn : HRinside)</span></span></p>\r\n', '', '', '', 'llll.jpg', 1508829729);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link_iOS` varchar(255) NOT NULL,
  `link_android` varchar(255) NOT NULL,
  `link_windowphone` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `department` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `expired_date` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `department`, `title`, `title_en`, `content`, `content_en`, `expired_date`, `created`) VALUES
(1, 1, 'Tuyển dụng lập trình viên PHP', 'Tuyển dụng lập trình viên PHP', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N PHP</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng game tr&ecirc;n nền Web</p>\r\n\r\n<p>- X&acirc;y dựng c&aacute;c hệ thống website dịch vụ cho c&ocirc;ng ty</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c dịch vụ ph&aacute;t triển</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về web d&ugrave;ng &nbsp;PHP &nbsp;hoặc&nbsp;C#, ASP.NET...</p>\r\n\r\n<p>- C&oacute; kinh nghiệm font-end : Javascript, CSS, Ajax...</p>\r\n\r\n<p>- Th&agrave;nh thạo 1 trong c&aacute;c cở sở dữ liệu: PHP, MySQL, &nbsp;SQL Server&hellip;&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng lập tr&igrave;nh game web với flash l&agrave; một ưu thế</p>\r\n\r\n<p>- C&oacute; khả năng xử l&yacute; cache với lượng truy cập lớn ph&iacute;a server</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao&nbsp;&nbsp;</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i&nbsp;</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- C&oacute; khả năng đọc, hiểu t&agrave;i liệu Tiếng Anh&nbsp;</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung@sdcmedia.com.vn hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p>- Li&ecirc;n hệ số&nbsp;điện thoại: 02462532635</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 31/10/2017</p>\r\n', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N PHP</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng game tr&ecirc;n nền Web</p>\r\n\r\n<p>- X&acirc;y dựng c&aacute;c hệ thống website dịch vụ cho c&ocirc;ng ty</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c dịch vụ ph&aacute;t triển</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về web d&ugrave;ng &nbsp;PHP &nbsp;hoặc&nbsp;C#, ASP.NET...</p>\r\n\r\n<p>- C&oacute; kinh nghiệm font-end : Javascript, CSS, Ajax...</p>\r\n\r\n<p>- Th&agrave;nh thạo 1 trong c&aacute;c cở sở dữ liệu: PHP, MySQL, &nbsp;SQL Server&hellip;&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng lập tr&igrave;nh game web với flash l&agrave; một ưu thế</p>\r\n\r\n<p>- C&oacute; khả năng xử l&yacute; cache với lượng truy cập lớn ph&iacute;a server</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao&nbsp;&nbsp;</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i&nbsp;</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- C&oacute; khả năng đọc, hiểu t&agrave;i liệu Tiếng Anh&nbsp;</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung@sdcmedia.com.vn hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p>- Li&ecirc;n hệ số&nbsp;điện thoại: 02462532635</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 31/10/2017</p>\r\n', 1509318000, 1513050987),
(2, 4, 'Tuyển dụng thực tập viên lập trình ứng dụng trên di động', 'Tuyển dụng thực tập viên lập trình ứng dụng trên di động', '<h1>Lập tr&igrave;nh ứng dụng tr&ecirc;n di động</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Số lượng: 05 người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng tr&ecirc;n J2ME, Adroid v&agrave; IPhone.&nbsp;</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c&nbsp;<a href=\"http://mywork.com.vn/tuyen-dung/57/dich-vu.html\">dịch vụ</a>&nbsp;ph&aacute;t triển&nbsp;</p>\r\n\r\n<p>- Chịu tr&aacute;ch nhiệm trước c&aacute;n bộ quản l&yacute;&nbsp;<a href=\"http://mywork.com.vn/tuyen-dung/78/hoach-dinh-du-an.html\">dự &aacute;n</a>&nbsp;về tiến độ v&agrave; chất lượng c&ocirc;ng việc được giao.</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Sinh vi&ecirc;n năm 3, 4, 5 hoặc mới tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin hoặc li&ecirc;n quan.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm về lập tr&igrave;nh game mobile, java, Unity.</p>\r\n\r\n<p>- C&oacute; khả năng l&agrave;m việc nh&oacute;m, độc lập v&agrave; l&agrave;m việc dưới &aacute;p lực cao.</p>\r\n\r\n<p>- Kỹ năng giao tiếp tốt.</p>\r\n\r\n<p>- Ham học hỏi, đam m&ecirc; c&ocirc;ng nghệ v&agrave; c&oacute; khả năng tự nghi&ecirc;n cứu tốt.</p>\r\n\r\n<p>- C&oacute; khả năng quản l&yacute; thời gian để l&agrave;m việc một c&aacute;ch hiệu quả.</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>-&nbsp;Được&nbsp;đ&agrave;o tạo v&agrave; tham gia m&ocirc;i trường l&agrave;m việc năng&nbsp;động, chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>- Cơ hội học tập v&agrave; thăng tiến với c&aacute;c vị tr&iacute; quan trọng của C&ocirc;ng ty&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Với c&aacute;c sinh vi&ecirc;n vượt qua b&agrave;i test sẽ&nbsp;được hưởng lương CTV h&agrave;ng th&aacute;ng.</p>\r\n\r\n<p><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>C&aacute;c ứng vi&ecirc;n gửi CV về địa chỉ email: tuyendung.sgcvietnam@gmail.com hoặc&nbsp;<a href=\"mailto:nhansu@sdcmedia.com.vn\">nhansu@sdcmedia.com.vn</a>&nbsp;</p>\r\n\r\n<p>Nộp trực&nbsp;tiếp tại văn ph&ograve;ng c&ocirc;ng ty: tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan. Q. Đống Đa, HN</p>\r\n\r\n<p>ĐT LH: 02462532635 - 0962461300&nbsp;(Chị Thuận)</p>\r\n\r\n<p>Hạn nộp hồ sơ: 30/11/2015 (Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n nộp hồ sơ sớm)</p>\r\n', '<h1>Lập tr&igrave;nh ứng dụng tr&ecirc;n di động</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Số lượng: 05 người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng tr&ecirc;n J2ME, Adroid v&agrave; IPhone.&nbsp;</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c&nbsp;<a href=\"http://mywork.com.vn/tuyen-dung/57/dich-vu.html\">dịch vụ</a>&nbsp;ph&aacute;t triển&nbsp;</p>\r\n\r\n<p>- Chịu tr&aacute;ch nhiệm trước c&aacute;n bộ quản l&yacute;&nbsp;<a href=\"http://mywork.com.vn/tuyen-dung/78/hoach-dinh-du-an.html\">dự &aacute;n</a>&nbsp;về tiến độ v&agrave; chất lượng c&ocirc;ng việc được giao.</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Sinh vi&ecirc;n năm 3, 4, 5 hoặc mới tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin hoặc li&ecirc;n quan.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm về lập tr&igrave;nh game mobile, java, Unity.</p>\r\n\r\n<p>- C&oacute; khả năng l&agrave;m việc nh&oacute;m, độc lập v&agrave; l&agrave;m việc dưới &aacute;p lực cao.</p>\r\n\r\n<p>- Kỹ năng giao tiếp tốt.</p>\r\n\r\n<p>- Ham học hỏi, đam m&ecirc; c&ocirc;ng nghệ v&agrave; c&oacute; khả năng tự nghi&ecirc;n cứu tốt.</p>\r\n\r\n<p>- C&oacute; khả năng quản l&yacute; thời gian để l&agrave;m việc một c&aacute;ch hiệu quả.</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>-&nbsp;Được&nbsp;đ&agrave;o tạo v&agrave; tham gia m&ocirc;i trường l&agrave;m việc năng&nbsp;động, chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>- Cơ hội học tập v&agrave; thăng tiến với c&aacute;c vị tr&iacute; quan trọng của C&ocirc;ng ty&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Với c&aacute;c sinh vi&ecirc;n vượt qua b&agrave;i test sẽ&nbsp;được hưởng lương CTV h&agrave;ng th&aacute;ng.</p>\r\n\r\n<p><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>C&aacute;c ứng vi&ecirc;n gửi CV về địa chỉ email: tuyendung.sgcvietnam@gmail.com hoặc&nbsp;<a href=\"mailto:nhansu@sdcmedia.com.vn\">nhansu@sdcmedia.com.vn</a>&nbsp;</p>\r\n\r\n<p>Nộp trực&nbsp;tiếp tại văn ph&ograve;ng c&ocirc;ng ty: tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan. Q. Đống Đa, HN</p>\r\n\r\n<p>ĐT LH: 02462532635 - 0962461300&nbsp;(Chị Thuận)</p>\r\n\r\n<p>Hạn nộp hồ sơ: 30/11/2015 (Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n nộp hồ sơ sớm)</p>\r\n', 1511910000, 1513051022),
(3, 8, 'Tuyển dụng thực tập viên test game', 'Tuyển dụng thực tập viên test game', '<h1>Thực tập vi&ecirc;n test Game</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute;: THỰC TẬP VI&Ecirc;N TEST GAME</strong></p>\r\n\r\n<p>Số lượng: 05 người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Tham gia chơi game v&agrave; test lỗi game, hỗ trợ member c&agrave;i đặt, hướng&nbsp;<br />\r\ndẫn c&aacute;ch chơi&nbsp;<br />\r\n- Lập kế hoạch test game, c&oacute; khả năng vẽ lược đồ test UML, Use Case.&nbsp;<br />\r\n- Nghi&ecirc;n cứu về c&aacute;c game của đối thủ.&nbsp;<br />\r\n- Tổ chức thực hiện c&aacute;c chương tr&igrave;nh, event ingame v&agrave; offline game.&nbsp;<br />\r\n- Ưu ti&ecirc;n người đ&atilde; chơi nhiều loại game kh&aacute;c nhau : PC, webgame, ưu ti&ecirc;n sinh vi&ecirc;n đang li&ecirc;n th&ocirc;ng, người c&oacute; thời gian rảnh rỗi để sống c&ugrave;ng game.</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Am hiểu về Game Online, biết nhiều thể loại game&nbsp;<br />\r\n- C&oacute; thể nắm bắt tiếp thu v&agrave; biết đ&aacute;nh gi&aacute; chất lượng game, nhiệt t&igrave;nh năng động&nbsp;<br />\r\n- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm về game Online.&nbsp;<br />\r\n- L&agrave; người ham học hỏi</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Được học hỏi, l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Nếu l&agrave;m việc tốt sẽ nhận l&agrave;m nh&acirc;n vi&ecirc;n ch&iacute;nh thức</p>\r\n\r\n<p><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể gửi CV về địa chỉ Email: tuyendung@sdcmedia.com.vn hoặc nhansu@sdcmedia.com.vn</p>\r\n\r\n<p>Hoặc nộp trực tiếp tại văn ph&ograve;ng c&ocirc;ng ty, địa chỉ: Tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan, Q.Đống Đa, H&agrave; Nội</p>\r\n\r\n<p>ĐTLH: 0462532635 - 0969003878 (Chị Thuận)</p>\r\n', '<h1>Thực tập vi&ecirc;n test Game</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute;: THỰC TẬP VI&Ecirc;N TEST GAME</strong></p>\r\n\r\n<p>Số lượng: 05 người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Tham gia chơi game v&agrave; test lỗi game, hỗ trợ member c&agrave;i đặt, hướng&nbsp;<br />\r\ndẫn c&aacute;ch chơi&nbsp;<br />\r\n- Lập kế hoạch test game, c&oacute; khả năng vẽ lược đồ test UML, Use Case.&nbsp;<br />\r\n- Nghi&ecirc;n cứu về c&aacute;c game của đối thủ.&nbsp;<br />\r\n- Tổ chức thực hiện c&aacute;c chương tr&igrave;nh, event ingame v&agrave; offline game.&nbsp;<br />\r\n- Ưu ti&ecirc;n người đ&atilde; chơi nhiều loại game kh&aacute;c nhau : PC, webgame, ưu ti&ecirc;n sinh vi&ecirc;n đang li&ecirc;n th&ocirc;ng, người c&oacute; thời gian rảnh rỗi để sống c&ugrave;ng game.</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n\r\n<p>- Am hiểu về Game Online, biết nhiều thể loại game&nbsp;<br />\r\n- C&oacute; thể nắm bắt tiếp thu v&agrave; biết đ&aacute;nh gi&aacute; chất lượng game, nhiệt t&igrave;nh năng động&nbsp;<br />\r\n- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm về game Online.&nbsp;<br />\r\n- L&agrave; người ham học hỏi</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Được học hỏi, l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Nếu l&agrave;m việc tốt sẽ nhận l&agrave;m nh&acirc;n vi&ecirc;n ch&iacute;nh thức</p>\r\n\r\n<p><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể gửi CV về địa chỉ Email: tuyendung@sdcmedia.com.vn hoặc nhansu@sdcmedia.com.vn</p>\r\n\r\n<p>Hoặc nộp trực tiếp tại văn ph&ograve;ng c&ocirc;ng ty, địa chỉ: Tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan, Q.Đống Đa, H&agrave; Nội</p>\r\n\r\n<p>ĐTLH: 0462532635 - 0969003878 (Chị Thuận)</p>\r\n', 1509318000, 1513051039),
(4, 3, 'Tuyển dụng lập trình viên Javascript', 'Tuyển dụng lập trình viên Javascript', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N JAVASCRIPT</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng game tr&ecirc;n nền Web</p>\r\n\r\n<p>- X&acirc;y dựng c&aacute;c hệ thống website dịch vụ cho c&ocirc;ng ty</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c dịch vụ ph&aacute;t triển</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về web d&ugrave;ng &nbsp;PHP &nbsp;hoặc&nbsp;C#, ASP.NET...</p>\r\n\r\n<p>- C&oacute; kinh nghiệm font-end : Javascript, CSS, Ajax...</p>\r\n\r\n<p>- Th&agrave;nh thạo 1 trong c&aacute;c cở sở dữ liệu: PHP, MySQL, &nbsp;SQL Server&hellip;&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng lập tr&igrave;nh game web với flash l&agrave; một ưu thế</p>\r\n\r\n<p>- C&oacute; khả năng xử l&yacute; cache với lượng truy cập lớn ph&iacute;a server</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao&nbsp;&nbsp;</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i&nbsp;</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- C&oacute; khả năng đọc, hiểu t&agrave;i liệu Tiếng Anh&nbsp;</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung@sdcmedia.com.vn hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 30/11/2017</p>\r\n', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N JAVASCRIPT</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c ứng dụng game tr&ecirc;n nền Web</p>\r\n\r\n<p>- X&acirc;y dựng c&aacute;c hệ thống website dịch vụ cho c&ocirc;ng ty</p>\r\n\r\n<p>- Hỗ trợ vận h&agrave;nh khai th&aacute;c c&aacute;c dịch vụ ph&aacute;t triển</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về web d&ugrave;ng &nbsp;PHP &nbsp;hoặc&nbsp;C#, ASP.NET...</p>\r\n\r\n<p>- C&oacute; kinh nghiệm font-end : Javascript, CSS, Ajax...</p>\r\n\r\n<p>- Th&agrave;nh thạo 1 trong c&aacute;c cở sở dữ liệu: PHP, MySQL, &nbsp;SQL Server&hellip;&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng lập tr&igrave;nh game web với flash l&agrave; một ưu thế</p>\r\n\r\n<p>- C&oacute; khả năng xử l&yacute; cache với lượng truy cập lớn ph&iacute;a server</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao&nbsp;&nbsp;</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i&nbsp;</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- C&oacute; khả năng đọc, hiểu t&agrave;i liệu Tiếng Anh&nbsp;</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung@sdcmedia.com.vn hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 30/11/2017</p>\r\n', 1511910000, 1513051056),
(5, 4, 'Lập trình viên Java', 'Lập trình viên Java', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N JAVA</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Tham gia đội ngũ ph&aacute;t triển game nhiều thể loại của c&ocirc;ng ty</p>\r\n\r\n<p>- T&igrave;m hiểu v&agrave; ph&aacute;t triển c&ocirc;ng nghệ mới trong lĩnh vực lập tr&igrave;nh game mobile</p>\r\n\r\n<p>- Chi tiết c&ocirc;ng việc sẽ trao&nbsp;đổi cụ thể khi phỏng vấn</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>Chuy&ecirc;n ng&agrave;nh Cao Đẳng hoặc Đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin hoặc Điện tử viễn th&ocirc;ng.</p>\r\n\r\n<p>- Nắm vững Java cơ bản</p>\r\n\r\n<p>- Tư duy thuật to&aacute;n logic tốt.</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- Khả năng nắm bắt, nghi&ecirc;n cứu c&ocirc;ng nghệ mới nhanh</p>\r\n\r\n<p>- Nắm vững kiến lập tr&igrave;nh hướng đối tượng.</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung.sgcvietnam@gmail.com&nbsp;hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 30/11/2017</p>\r\n', '<h1>TUYỂN DỤNG LẬP TR&Igrave;NH VI&Ecirc;N JAVA</h1>\r\n\r\n<p>Số lượng: 03&nbsp;người</p>\r\n\r\n<p><strong>1. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Tham gia đội ngũ ph&aacute;t triển game nhiều thể loại của c&ocirc;ng ty</p>\r\n\r\n<p>- T&igrave;m hiểu v&agrave; ph&aacute;t triển c&ocirc;ng nghệ mới trong lĩnh vực lập tr&igrave;nh game mobile</p>\r\n\r\n<p>- Chi tiết c&ocirc;ng việc sẽ trao&nbsp;đổi cụ thể khi phỏng vấn</p>\r\n\r\n<p><strong>2. Y&ecirc;u cầu c&ocirc;ng việc</strong></p>\r\n\r\n<p>Chuy&ecirc;n ng&agrave;nh Cao Đẳng hoặc Đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin hoặc Điện tử viễn th&ocirc;ng.</p>\r\n\r\n<p>- Nắm vững Java cơ bản</p>\r\n\r\n<p>- Tư duy thuật to&aacute;n logic tốt.</p>\r\n\r\n<p>- Trung thực, nhiệt t&igrave;nh, năng động, s&aacute;ng tạo, chịu được c&ocirc;ng việc c&oacute; &aacute;p lực cao</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc, v&agrave; c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i</p>\r\n\r\n<p>- Cần c&ugrave; chịu kh&oacute;, nhiệt t&igrave;nh, tr&aacute;ch nhiệm</p>\r\n\r\n<p>- Khả năng nắm bắt, nghi&ecirc;n cứu c&ocirc;ng nghệ mới nhanh</p>\r\n\r\n<p>- Nắm vững kiến lập tr&igrave;nh hướng đối tượng.</p>\r\n\r\n<p><strong>3. Quyền lợi:</strong></p>\r\n\r\n<p>- Lương thỏa thuận, t&ugrave;y năng lực v&agrave; kinh nghiệm l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- Được ưu ti&ecirc;n cung cấp c&aacute;c thiết bị hiện đại như m&aacute;y t&iacute;nh cấu h&igrave;nh cao, laptop&hellip; cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc&nbsp;</p>\r\n\r\n<p>- &nbsp;M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n&nbsp;</p>\r\n\r\n<p>- Được hỗ trợ ăn trưa v&agrave; c&aacute;c chi ph&iacute; hỗ trợ cho c&ocirc;ng việc&nbsp;</p>\r\n\r\n<p>- Ch&iacute;nh s&aacute;ch BHXH, BHYT v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c theo đ&uacute;ng quy định của Luật lao động.</p>\r\n\r\n<p><strong>4. Hồ sơ bao gồm:</strong></p>\r\n\r\n<p>- Ứng vi&ecirc;n gửi CV ghi r&otilde; qu&aacute; tr&igrave;nh học tập, kinh nghiệm l&agrave;m việc, th&agrave;nh t&iacute;ch đạt được trong qu&aacute; tr&igrave;nh học tập, l&agrave;m việc.<br />\r\n- CV gửi về địa chỉ email: tuyendung.sgcvietnam@gmail.com&nbsp;hoặc&nbsp;nhansu@sdcmedia.com.vn&nbsp;</p>\r\n\r\n<p><strong>Hạn nộp hồ sơ:</strong>&nbsp;đến hết ng&agrave;y 30/11/2017</p>\r\n', 1511910000, 1513051074),
(6, 4, 'Thực tập lập trình viên Unity', 'Thực tập lập trình viên Unity', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Thực tập lập tr&igrave;nh vi&ecirc;n Unity</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Số lượng: 05 người</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- Thực hiện c&ocirc;ng việc cụ thể, c&oacute; mục ti&ecirc;u v&agrave; thời hạn r&otilde; r&agrave;ng trong dự &aacute;n về Unity;<br />\r\n- Tập huấn để t&igrave;m hiểu, thực h&agrave;nh c&ocirc;ng nghệ, kỹ năng mới;<br />\r\n- Trao đổi với anh chị c&oacute; kinh nghiệm đi trước để nhận c&aacute;c lời khuy&ecirc;n;<br />\r\n<strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">- C&oacute; đam m&ecirc; v&agrave; muốn thử sức với lập tr&igrave;nh Unity;<br />\r\n- C&oacute; mong muốn trở th&agrave;nh lập tr&igrave;nh vi&ecirc;n chuy&ecirc;n nghiệp;<br />\r\n- C&oacute; kiến thức về lập tr&igrave;nh C#;<br />\r\n- C&oacute; kiến thức về Unity v&agrave; c&aacute;c tools 2D, 3D;<br />\r\n- C&oacute; khả năng đọc hiểu t&agrave;i liệu Tiếng Anh;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>3. Quyền lợi:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">- Được t&iacute;ch lũy kinh nghiệm v&agrave; c&oacute; cơ hội học tập, đ&agrave;o tạo bởi những kỹ sư nhiều kinh nghiệm;<br />\r\n- Được trải nghiệm với những c&ocirc;ng nghệ, dự &aacute;n mới lạ c&ugrave;ng kh&aacute;ch h&agrave;ng nước ngo&agrave;i;<br />\r\n- Được l&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động;<br />\r\n- Hưởng lương, thưởng theo năng lực, kh&ocirc;ng ph&acirc;n biệt bằng cấp, tuổi t&aacute;c;<br />\r\n- C&oacute; cơ hội trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức tại c&ocirc;ng ty;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">C&aacute;ch li&ecirc;n hệ: Nộp trực tuyến, Gửi k&egrave;m File, Trực tiếp</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">M&ocirc; tả:</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:.5in; margin-right:0in\"><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><strong><em><span style=\"color:#333333\">- C&aacute;c ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi hồ sơ trực tuyến, gửi k&egrave;m file hoặc nộp trực tiếp tại c&ocirc;ng ty.</span></em></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#333333\">T&ecirc;n li&ecirc;n hệ: Ms. Thuận -&nbsp;P.HCNS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">ĐTLHH: 02462532635 - 0962461300</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Email: tuyendung.sgcvietnam@gmail.com</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Nộp trược tiếp tại văn ph&ograve;ng c&ocirc;ng ty: tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan. Q. Đống Đa, HN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Hạn nộp hồ sơ: 15/12/2017&nbsp;(Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n nộp hồ sơ sớm)</span></span></p>\r\n', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Thực tập lập tr&igrave;nh vi&ecirc;n Unity</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Số lượng: 05 người</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>1. M&ocirc; tả c&ocirc;ng việc:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- Thực hiện c&ocirc;ng việc cụ thể, c&oacute; mục ti&ecirc;u v&agrave; thời hạn r&otilde; r&agrave;ng trong dự &aacute;n về Unity;<br />\r\n- Tập huấn để t&igrave;m hiểu, thực h&agrave;nh c&ocirc;ng nghệ, kỹ năng mới;<br />\r\n- Trao đổi với anh chị c&oacute; kinh nghiệm đi trước để nhận c&aacute;c lời khuy&ecirc;n;<br />\r\n<strong>2. Y&ecirc;u cầu c&ocirc;ng việc:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">- C&oacute; đam m&ecirc; v&agrave; muốn thử sức với lập tr&igrave;nh Unity;<br />\r\n- C&oacute; mong muốn trở th&agrave;nh lập tr&igrave;nh vi&ecirc;n chuy&ecirc;n nghiệp;<br />\r\n- C&oacute; kiến thức về lập tr&igrave;nh C#;<br />\r\n- C&oacute; kiến thức về Unity v&agrave; c&aacute;c tools 2D, 3D;<br />\r\n- C&oacute; khả năng đọc hiểu t&agrave;i liệu Tiếng Anh;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>3. Quyền lợi:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">- Được t&iacute;ch lũy kinh nghiệm v&agrave; c&oacute; cơ hội học tập, đ&agrave;o tạo bởi những kỹ sư nhiều kinh nghiệm;<br />\r\n- Được trải nghiệm với những c&ocirc;ng nghệ, dự &aacute;n mới lạ c&ugrave;ng kh&aacute;ch h&agrave;ng nước ngo&agrave;i;<br />\r\n- Được l&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động;<br />\r\n- Hưởng lương, thưởng theo năng lực, kh&ocirc;ng ph&acirc;n biệt bằng cấp, tuổi t&aacute;c;<br />\r\n- C&oacute; cơ hội trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức tại c&ocirc;ng ty;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>4. Th&ocirc;ng tin li&ecirc;n hệ:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">C&aacute;ch li&ecirc;n hệ: Nộp trực tuyến, Gửi k&egrave;m File, Trực tiếp</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#333333\">M&ocirc; tả:</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:.5in; margin-right:0in\"><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><strong><em><span style=\"color:#333333\">- C&aacute;c ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi hồ sơ trực tuyến, gửi k&egrave;m file hoặc nộp trực tiếp tại c&ocirc;ng ty.</span></em></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#333333\">T&ecirc;n li&ecirc;n hệ: Ms. Thuận -&nbsp;P.HCNS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">ĐTLHH: 02462532635 - 0962461300</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Email: tuyendung.sgcvietnam@gmail.com</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Nộp trược tiếp tại văn ph&ograve;ng c&ocirc;ng ty: tầng 3 số 206 Đ&ecirc; La Th&agrave;nh, P.Thổ Quan. Q. Đống Đa, HN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Hạn nộp hồ sơ: 15/12/2017&nbsp;(Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n nộp hồ sơ sớm)</span></span></p>\r\n', 1513206000, 1513051092);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_recruit`
--

CREATE TABLE `user_recruit` (
  `id` int(11) NOT NULL,
  `id_recruitment` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_recruit`
--
ALTER TABLE `email_recruit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_recruit`
--
ALTER TABLE `user_recruit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `email_recruit`
--
ALTER TABLE `email_recruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_recruit`
--
ALTER TABLE `user_recruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
