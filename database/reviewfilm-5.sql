-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2015 at 05:18 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reviewfilm`
--
CREATE DATABASE IF NOT EXISTS `reviewfilm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `reviewfilm`;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `filmid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user`, `email`, `content`, `filmid`, `active`) VALUES
(7, 'blackcat', '', 'chêm được mấy câu không phải dạng vừa đâu \n\ngì toàn là zì , nói chung dịch thế cho trẻ con nó coi cũng được mà', 3, 1),
(10, 'trong-huy', '', 'Thấy cái Hotel 2 bản phụ đề dịch chả thấy hài hước lắm nhỉ ', 3, 1),
(11, 'SpacePolice ', '', 'Everest đã có review bên hdvietnam và gamevn , mình xin review sơ về maze runner phần 2 ! Mình thì chưa đọc tác phẩm truyện này ( nghe nói hay hơn phim ) , chỉ thấy tò mò đi coi thôi ! Ở phần 2 câu truyện tiếp tục với hành trình của nhóm bạn Thomas sau khi thoát khỏi mê cung bí ẩn , tuy nhiên , khác với p1 , phần 2 ko cho ta cảm giác tò mò , bí ẩn với cái mê cung và quá khứ của các nhân vật bị nhốt trong đấy ! P2 là một thế giới hoang tàn , với trái đất bị sa mạc hóa , con ng bị nhiễm virus như zombie ( trong world war Z ) . Ngoài ra sự xuất hiện của một tổ chức mới với tên gọi Right arm đối chọi với WICKED . Nếu bạn đã từng xem chán chê các phim zombie thì có thể mường tượng 80-90 % diễn biến trong phim , nghĩa là đi - gặp zombie - chạy - nghỉ ngơi - gặp zombie - lại chạy - bị cắn - thành zombie ... ! Về diễn xuất , mình đánh giá các dv trẻ trong phim diễn khá tròn vai , nhưng các nhân vật phản diện thì chưa đến độ badass cần thiết  ! Kỉ xảo trong phim vừa đủ ( về mặt zombie và cảnh trái đất hoang tàn ) , nhưng các pha bắn súng hay cháy nổ thì ít hoành tráng ( toàn phim chỉ có 3 chiếc máy bay và một khẩu 50 ly ) ! Cái mình hơi thất vọng nữa là quy mô của cái tổ chức kháng chiến , ko biết trong truyện mô tả thế nào chứ với cái quy mô cái bang như vậy thì tương lai nhân loại trông chờ vào nhóm này coi bộ cũng tăm tối ko kém , ít ra thì bọn WICKED cơ sở vật chất còn hiện đại hơn dù mục đích hơi tàn nhẫn ! Cuối phim là hành trình tiếp theo của Thomas chống lại tổ chức WICKED (một phiên bản Hunger Game nam nhi )  , nhưng nhìn trang bị thì có vẻ tồi tàn hơn hungergame rất nhiều  !!!', 6, 1),
(12, 'acbaby', '', 'Phim rất đáng xem nhé, nhất là sau vài tuần không có phim gì nổi trội.\nÂm thanh: Nhạc nền quá hay luôn, nhạc hơi hướng trầm và u ám, đôi lúc có cảm giác như muốn bóp nghẹt không khí trong rạp phim. Âm thanh rất trung thực, ngồi xem mà tiếng ù ù của gió thổi, tiếng ầm ầm của tuyết lở khiến mình cảm thấy đồng tiền bỏ ra đi xem rất là xứng đáng.\nHình ảnh: Quanh đi quẩn lại cũng chỉ có khung cảnh núi non và tuyết trắng xóa, thế nhưng lại không hề khiến người ta nhàm chán, vì sao thì có lý do bên dưới.\nNội dung: Kể lại câu chuyện của những con người thật, những câu chuyện thật xảy ra năm 1996. Mỗi người là một nhánh rẽ và chính điều này khiến người xem không thể rời mắt khỏi khung hình và quên đi sự tẻ nhạt của khung cảnh. Một điểm cộng nữa là đạo diễn chọn diễn viên nhìn khá giống người thật ở ngoài đời nên xem rất thật \n\nĐánh giá chung: 8/10. Phim này phải xem ngoài rạp, bác nào tiết kiệm chờ HD kéo thì phí của giời. Mình xem 2D thường, không biết bac nào xem IMAX thì âm thanh còn hay cỡ nào nữa.\nChốt một câu: HAY ', 6, 1),
(13, 'Maserati GranTurismo ', '', 'nói chung là film hay,nên coi ngoài rạp', 6, 1),
(14, 'Monk', '', 'Phim chỉ có độ sâu, không có độ nổi. Độ sâu của phim khá ấn tượng, nhất là cảnh núi non, khi các dãy núi như các bức tranh chồng lên nhau xem như thật. Tuy nhiên, do không có nhiều hiệu ứng 3D nên xem một lúc ta sẽ có cảm giác như xem 2D, thậm chí khán giả cạnh Monk còn than nhức đầu nữa. Có lẽ do không quen.', 6, 1),
(15, 'Ko', '', 'Phim có nhiều góc quay đẹp, nhất là cảnh quay khi băng qua vực, hay như cảnh máy quay bay qua đám mây khổng lồ. Nhiều cảnh quay khá mạo hiểm nhưng tạo cảm giác rất mạnh cho khán giả như thể họ đang cheo leo giữa lưng chừng núi vậy.', 6, 1),
(16, 'Trum nham', '', 'phim nói chung là vầy : có 1 thằng thanh niên đc ông nó mất để lại cho 1 trại cỏ rất lớn nhưng nó không thích mà thích thành 1 ngôi sao ca nhạc nên nó bán hết đi để lấy tiền rồi để lại 1 nửa và căn nhà cho bà mẹ và con em nuôi của nó . còn nó thì lên sài gòn lập nghiệp . lên sài gòn thì nó bị việt hương , trấn thành , thu trang (là 3 người mua trại cỏ của nó ) tìm đủ cách để cướp lại tiền , và họ đã thành công , nhóc này chán đời đi lang thang vì hết tiền rồi quen 1 nhóm hút cỏ , bị dụ dỗ rồi hút rồi nó cứ mơ mình là 1 ngôi sao ca nhạc rồi cũng sáng tác đc vài bài up lên youtube , rồi những bài hát đó lọt vào tai 1 thằng bầu nhảm , nó đạo nhạc 1 bài đã nổi tiếng thay lời rồi cho thằng này hát , rồi cuối cùng cũng bị phát hiện rồi thằng này lại bị đá ra đường . đau khổ quá nó về lại nhà thì thấy trại cỏ nhà nó đang bị cầy xé hết lên . nó quỳ gối van nài việt hương , trấn thành , thu trang ( e k nhớ tên trong phim ) rồi lúc sau mới vỡ lẽ ra họ làm vậy là đều có kế hoạch từ trước hết vì việt hương là chuyển giới , bồ cũ của bố nó , thằng bố nó là gay bị phát hiện nên k dám về nhà , nên việt hương phải thay bố nó âm thầm theo dõi và chăm sóc cho thằng nhóc đó ..\nmệt quá phim nhảm mà mình cũng rảnh nên viết bậy', 4, 1),
(17, 'aura', '', 'Phim chủ yếu nói về hút cần hay sao thế bác ?  xem mấy cái clip cứ thấy xưng hô "cậu - tớ" buồn cười vãi ', 4, 1),
(18, 'le_tam', '', 'ừ ngày coi xong Đội đặc nhiệm nhà C21, Phía trước là bầu trời, Những ngọn nến trong đêm, 7 ngày và 1 đời, Chàng trai đa cảm, Đất và người thì mình chả bao giờ xem film Việt Nam nữa.', 4, 1),
(19, 'titani', '', 'Cái em Hari Won nên chỉ diễn hài kịch, hát hò với đóng phim chả ra cái gì. Phim này là cái phim nối dài cho series "Trùm dở" và "Trùm nhảm" của phim Việt từ đầu năm.\n\nTháng 10 hóng cái hoa vàng cỏ xanh gì ấy của Victor Vũ xem sao.', 4, 1),
(20, 'Unknown', '', 'Phim này tên phim mới có một trùm, tui thì thấy phim này có tới mười cái trùm lận.\n1. Trùm đơ\nDiễn viên chính Quang Đăng diễn mặt đơ từ đầu đến cuối. Chụp bốc phân cảnh, buồn vui khóc giận đưa lại gần nhau, đố thử tìm được điểm khác nhau trong gương mặt của bốn tấm hình đó.\nCó những người được sinh ra để đóng phim, dù là phim đầu tiên họ đã thể hiện xuất sắc vai diễn của họ và Quang Đăng đách phải người như vậy.\n2. Trùm căng\nHari Won nhận giải. Nói thật là Hari đi dẫn chương trình và đóng hài ngắn ngắn, phim thì vai phụ dễ thương nhí nhảnh thôi. Chứ đóng phim vai mà có nội tâm dằn xé coi bị mệt. Nói như hét vào tai, đang ngủ cũng phải giật mình dậy vì tưởng ai hiếp mà la quá trời la.\nThà đóng ít như hồi 49 ngày vậy mà duyên hơn.\n3. Trùm lố\nTrấn Thành và bà Thu Trang nhận giải này. Hai người đảm nhận hai vai phải lố trong phim và đa làm tròn vai là rất lố. Gây yếu tố hài chính và đã làm tốt vai trò gây cười của mình.\nNói không ngoa thì hai vai này cứu nguyên bộ phim. Cơ mà theo mình thấy thì ít mảng miếng sân khấu lại một chút thì sẽ còn bùng nổ hơn nữa.\n4. Trùm bay\nAnh đạo diễn hình ảnh của phim này nghe nói thỉnh bên nước ngoài về nên bay cao muốn xỉu. Nhìn thì thương nhất là bên nào cho thuê cái flycam để quay, theo kiểu tao lỡ thuê rồi tao xài cho chết mẹ mày luôn. Vì lúc nào cũng thấy flycam.\nKhúc đầu đẹp choáng ngộp, khúc sau bị nhàm hết thấy đẹp mà thấy chóng mặt.\n5. Trùm nhây\nĐoạn Quang Đăng lọt vô ổ "chuyên cần" theo cá nhân mình thấy hơi dài dòng, mảng miếng trong đó ổn nhưng nếu ngắn lại chút thì hay hơn. Với lại, coi xong chỉ rút ra được thông điệp, có ước mơ nào thì đách cần tập luyện thực hiện đâu, hút cần vào là toại nguyện ngay.\n6. Trùm thú\nPhim có ba con thú là ngựa, chó và chim.\nQuang Đăng thể hiện bản thân thích cưỡi ngựa. Hari Won hay chơi với chó còn con chim của Việt Hương thì bự, nhiều lông cũng như cái mỏ lúc nào cũng động đậy.\n7. Trùm quảng cáo\nLướt qua là thấy diễn viên xài điện thoại mà ai cũng biết là điện thoại gì đó. Cứ nhân vật chính xuất hiện là quay từ bánh xe lên để thấy rõ hiệu xe gì.\nNói chung phim ra chưa biết lời lỗ ra sao nên có nhà tài trợ đỡ được phần nào hay phần đó.\n8. Trùm cảnh\nCảnh bao đẹp, quay ở Bù Đăng. Nhìn chung là điểm sáng nhất của phim khi đầu tư vào mặt hình ảnh rất tử tế. Có mấy cảnh hát giữa cái sân khấu có ca nô chạy qua vèo vèo tung nước tùm lum nữa, đẹp lắm.\n9. Trùm nhạc\nNhạc từ đầu đến đít như phim ca nhạc, có mấy đoạn nhạc tù chế lại nghe vui vui. Nhưng nhìn qua mặt Lệ Rơi thấy tuột mẹ hứng, không hiểu xuất hiện để làm gì hay chỉ đơn giản là có cho vui.\n10. Trùm bóng\nTrấn Thành đóng vai bóng, Thu Trang vô vai les. Cuối phim đùng một cái Việt Hương hiện hình chuyển giới. Kết thúc này nói bất ngờ thì đúng là bất ngờ, nhưng đạo diễn có khéo léo khi cài cắm từ đầu vài chi tiết cho thấy Quang Đăng bị ám ảnh chuyện của ba mình. Kết quả khán giả ra khỏi rạp hoang mang, chỉ còn biết hát câu... "Ôi nước tràn bờ đê, bê-đê kín một vùng quê..."\nTúm lại, phim này không tệ như "Tiên nữ không kiêng cữ" nhưng nói hay xuất sắc thì cũng không đúng.\nAi thích thì cứ ra rạp coi cho biết, nhưng nghe đồn nhiều người đi coi về chỉ thốt lên hai chữ, "Trùm dở" nên ai trùm sò thì ở nhà trùm mền hay kiếm người cùng trùm bao cho đỡ tốn tiền.', 4, 1),
(21, 'buongloi', '', '- phim này nội dung chủ yếu là giáo dục mọi người là nhiều, pha 1 ít hài vào thôi, chứ không phải là phim hài.\n- để mình tóm nội dung:\n1. Như: uống thuốc ngủ tự tử vì tức bà mẹ chồng, bị cho là không có khả năng sinh con, nhưng thật chất lại là tại thằng chồng bị yếu sinh lý.\n2. Tín: nhảy sông tự tử, vì bà mẹ làm lao công trong bar, vô tình bắt gặp những đứa bạn đi cũng nó vào quán ngày hôm ấy (thằng này bêđê).\n3. Thành: chết vì đi trả thù cho e gái bị 1 đám côn đồ hiếp dâm (thằng này bị thiểu năng).\nNhưng do còn những khuất mắt, những tâm nguyện chưa thực hiện đc, còn mang sự tức tối trong lòng nên đi theo Trường Giang để nhờ ông này hoàn thành các tâm nguyện.\n', 5, 1),
(22, 'marabunta92', '', 'Phim này hay nhất trong mấy phim VN mà mình xem, k phí 80k', 5, 1),
(23, 'q', 'q', 'q', 3, 0),
(24, 'H', '', 'G', 3, 0),
(25, 'Gg', '', 'Gg', 3, 0),
(26, 'Yg', '', 'Gh', 3, 0),
(27, 'G', '', 'H', 3, 0),
(28, 'Q', '', 'Df', 3, 0),
(29, 'none', '', 'oh my god', 3, 1),
(30, 'asd', '', 'asd', 3, 0),
(31, 'asd', '', 'asdasdasd', 3, 0),
(32, 'werw', '', 'werwer', 4, 1),
(33, 'werwe', '', 'rwerwe', 4, 1),
(34, 'wer', '', 'werwer', 4, 0),
(35, 'qweqw', '', 'qweqw', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL,
  `name` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `coverurl` varchar(400) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `upcoming` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `name`, `coverurl`, `active`, `upcoming`) VALUES
(3, 'Khách sạn huyền bí', 'https://www.galaxycine.vn/files/upload/movie/hotel_transylvania/520x520.jpg', 1, 1),
(4, 'TRÙM CỎ', 'https://www.galaxycine.vn/files/upload/movie/trum_co/520.jpg', 1, 0),
(5, '49 NGÀY', 'https://www.galaxycine.vn/files/upload/movie/49_Ngay/520(1).jpg', 1, 0),
(6, 'EVEREST', 'https://www.galaxycine.vn/files/upload/movie/Everest/520.jpg', 1, 0),
(7, 'SICARIO / RANH GIỚI', 'https://www.galaxycine.vn/files/upload/movie/sicario/520.jpg', 1, 0),
(8, 'MAZE RUNNER: THE SCORCH ', 'https://www.galaxycine.vn/files/upload/movie/The_maze_runner_2/520x520(1).jpg', 1, 0),
(9, 'ZIPPER 16+', 'https://www.galaxycine.vn/files/upload/movie/Zipper/520.jpeg', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
