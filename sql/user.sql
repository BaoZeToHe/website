SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS=0;


CREATE TABLE `user`(
    `id` int(11)  NOT NULL  AUTO_INCREMENT,
    `name` varchar(40) collate utf8_unicode_ci NOT NULL,
    `password` varchar(10) collate utf8_unicode_ci NOT NULL,
    `email`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    `code`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    `authentication_time`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    PRIMARY KEY  (`id`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE `ticket`(
    `id_ticket` int(11) NOT NULL ,
    `ten_ve`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    `gia_ve` varchar(10) collate utf8_unicode_ci NOT NULL , 
    PRIMARY KEY  (`id_ticket`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE `movie`(
    `id_movie` int(11)  NOT NULL  AUTO_INCREMENT,
    `id_ticket` int(11)  collate utf8_unicode_ci NOT NULL,
    `name_movie` varchar(40) collate utf8_unicode_ci NOT NULL,
    `dao_dien_movie` varchar(40) collate utf8_unicode_ci NOT NULL , 
    `dien_vien_movie` varchar(100) collate utf8_unicode_ci NOT NULL,
    `quoc_gia_move` varchar(40) collate utf8_unicode_ci NOT NULL,
    `img_movie` varchar(200) collate utf8_unicode_ci NOT NULL,
    `thoiluong_moive` varchar(10) collate utf8_unicode_ci NOT NULL,
    `thongtin_movie`  varchar(1000) collate utf8_unicode_ci NOT NULL ,
    `theloai_movie`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    `old_movie`  varchar(40) collate utf8_unicode_ci NOT NULL ,
    FOREIGN KEY(`id_ticket`) REFERENCES `ticket`(id_ticket),
    PRIMARY KEY  (`id_movie`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO movie(id_movie,id_ticket,name_movie,dao_dien_movie,dien_vien_movie,quoc_gia_move,img_movie,thoiluong_moive,thongtin_movie,theloai_movie,old_movie) VALUES(1,1,"Điệp viên không không thấy","David Kerr","Rowan Atkinson , Ben Miller ,Olga Kurylenko ,Jake Lacy ,Adam James ,Emma Thompson","Mỹ","https://rapchieuphim.com/photos/9/phim-tong-hop/phim-Johnny-English-Tai-Xuat-Giang-Ho.jpg" ,"88 phút","Johnny English, một nhân viên của Cục tình báo Anh quốc MI7, mơ mình trở thành một điệp viên số 1 (Agent One), lần lượt vượt qua các hàng rào bảo vệ (với chó bảo vệ, các tay súng bắn tỉa...) và cuối cùng bị một người đàn bà xinh đẹp khống chế bằng súng. Johnny English vô hiệu hóa đối thủ bằng một cử chỉ lãng mạn và cả hai tiến gần nhau chuẩn bị hôn thì English bị đánh thức bởi phụ tá Angus Bough để chuẩn bị tài liệu cho điệp viên Agent One. Sau khi Agent One nhận nhiệm vụ, anh ta kịp báo về trung tâm chỉ huy rằng có một tổ chức tội phạm đang âm mưu nhằm vào vương miện của Nữ hoàng Anh, nhưng chưa kịp điều tra rõ thì bị trừ khử. Trong tang lễ của Agent One, English ngớ ngẩn để lọt một quả bom cài đặt sẵn vào trong nhà tang lễ và phát nổ và toàn bộ các điệp viên của MI7 bị thiệt mạng, ngoại trừ Johnny English và phụ tá Angus Bough. Theo yêu cầu của Thủ tướng Anh, Giám đốc MI7, mật danh Pegasus, đã phải bổ nhiệm điệp viên duy nhất còn lại là Johnny English làm điều tra viên chính cho vụ á","Hành Động","P");

INSERT INTO movie(id_movie,id_ticket,name_movie,dao_dien_movie,dien_vien_movie,quoc_gia_move,img_movie,thoiluong_moive,thongtin_movie,theloai_movie,old_movie) VALUES(2,1,"Warcraft (film)","Duncan Jones","Travis Fimmel , Paula Patton , Ben Foster ,Dominic Cooper ,Toby Kebbell ,Ben Schnetzer ,Robert Kazinsky, Daniel Wu","Mỹ","https://m.media-amazon.com/images/M/MV5BMjIwNTM0Mzc5MV5BMl5BanBnXkFtZTgwMDk5NDU1ODE@._V1_.jpg" ,"123 phút","Warcraft (alternatively known as Warcraft: The Beginning)[4] is a 2016 action fantasy film based on the video game series of the same name. Directed by Duncan Jones and written by Charles Leavitt and Jones, it stars Travis Fimmel, Paula Patton, Ben Foster, Dominic Cooper, Toby Kebbell, Ben Schnetzer, Robert Kazinsky, and Daniel Wu. The film follows Anduin Lothar of Stormwind and Durotan of the Frostwolf clan as heroes set on opposite sides of a growing war, as the warlock Gul'dan leads the Horde to invade Azeroth using a magic portal. Together, a few human heroes and dissenting Orcs must attempt to stop the true evil behind this war and restore peace.The film was first announced in 2006 as a project partnership between Legendary Pictures and the game's developer, Blizzard Entertainment.[5] Warcraft premiered in Paris on May 24, 2016, and was released by Universal Pictures in the United States on June 10, 2016.[6] Though it underperformed domestically[7] and received generally negativ","Hành Động","16 P");

INSERT INTO movie(id_movie,id_ticket,name_movie,dao_dien_movie,dien_vien_movie,quoc_gia_move,img_movie,thoiluong_moive,thongtin_movie,theloai_movie,old_movie) VALUES(3,2,"Justice League (film)","Zack Snyder","Ben Affleck ,Henry Cavill,Amy Adams,Gal Gadot,Ezra Miller,Jason Momoa,cá đuối,Jeremy Sắt,Ngõ Diane,Connie Nielsen,JK Simmons","Mỹ","https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/justice-league-2017/large_justice_league_ver20.jpg","120 phút","Justice League is a 2017 American superhero film based on the DC Comics superhero team of the same name. Produced by Warner Bros. Pictures, DC Films, RatPac-Dune Entertainment,[b] Atlas Entertainment, and Cruel and Unusual Films and distributed by Warner Bros. Pictures, it is the fifth installment in the DC Extended Universe (DCEU). Directed by Zack Snyder and written by Chris Terrio and Joss Whedon, the film features an ensemble cast including Ben Affleck, Henry Cavill, Amy Adams, Gal Gadot, Ezra Miller, Jason Momoa, Ray Fisher, Jeremy Irons, Diane Lane, Connie Nielsen, and J. K. Simmons. In the film, following the events of Batman v Superman: Dawn of Justice (2016) Batman and Wonder Woman recruit The Flash, Aquaman, and Cyborg after the death of Superman to save the world from the catastrophic threat of Steppenwolf and his army of Parademons.Warner Bros. began to develop a live-action Justice League film in 2007 with George Miller set to direct, but the project was canceled due ","Hành Động","16 P");

INSERT INTO movie(id_movie,id_ticket,name_movie,dao_dien_movie,dien_vien_movie,quoc_gia_move,img_movie,thoiluong_moive,thongtin_movie,theloai_movie,old_movie) VALUES(4,2,"The Iron Lady (film)","Phyllida Lloyd","Meryl Streep ,Jim Broadbent ,Olivia Colman ,Roger Allam ,Susan Brown ,Nick Dunning ,Nicholas Farrell ,Iain Glen ,Richard E. Grant","Mỹ","https://m.media-amazon.com/images/M/MV5BODEzNDUyMDE3NF5BMl5BanBnXkFtZTcwMTgzOTg3Ng@@._V1_.jpg","104 Phút","The Iron Lady is a 2011 biographical drama film based on the life and career of Margaret Thatcher, a British politician who was the longest-serving Prime Minister of the United Kingdom of the 20th century and the first woman to hold the office.[5] The film was directed by Phyllida Lloyd and written by Abi Morgan. Thatcher is portrayed primarily by Meryl Streep,[6] and, in her formative and early political years, by Alexandra Roach. Thatcher's husband, Denis Thatcher, is portrayed by Jim Broadbent, and by Harry Lloyd as the younger Denis. Thatcher's longest-serving cabinet member and eventual deputy, Geoffrey Howe, is portrayed by Anthony Head.[7]Despite the film's mixed reception, Streep's performance was widely acclaimed. She received her 17th Oscar nomination for her portrayal and ultimately won the award for the third time, 29 years after her second Oscar win. She also earned her third Golden Globe Award for Best Actress  Motion Picture Drama award (her eighth Golden Globe Awar","Hành Động","16 P");

INSERT INTO movie(id_movie,id_ticket,name_movie,dao_dien_movie,dien_vien_movie,quoc_gia_move,img_movie,thoiluong_moive,thongtin_movie,theloai_movie,old_movie) VALUES(5,1,"Nhà Bà Nữ","Trấn Thành","Trấn Thành ,Lê Giang ,NSND Ngọc Giàu ,Uyển Ân ,Khả Như ,NSND Việt Anh ,NSƯT Công Ninh ,Ngân Quỳnh .Song Luân,Lê Dương Bảo Lâm","Việt Nam","https://touchcinema.com/uploads/m3gan/nbn-main-poster-2-1-poster.jpg","102 Phút","Nhà Bà Nữ là bộ phim điện ảnh chiếu Tết do chính Trấn Thành làm đạo diễn. Phim xoay quanh gia đình của bà Nữ (nghệ sĩ Lê Giang đảm nhận) - người làm nghề bán bánh canh cùng nhiều câu chuyện dở khóc dở cười, hứa hẹn là phim Tết không thể bỏ lỡ tại rạp.Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính 'Mỗi gia đình đều có những bí mật' chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm.","Gia Đình","16 P");


INSERT INTO ticket(id_ticket,ten_ve,gia_ve)VALUES(1,"2D","45000");
INSERT INTO ticket(id_ticket,ten_ve,gia_ve)VALUES(2,"3D","60000");
