-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Tem 2020, 15:38:51
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `okulveritabani`
--
CREATE DATABASE IF NOT EXISTS `okulveritabani` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `okulveritabani`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolumler`
--

CREATE TABLE `bolumler` (
  `BolumID` int(11) NOT NULL,
  `FakulteID` int(11) NOT NULL,
  `BolumAdi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Gorunur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `bolumler`
--

INSERT INTO `bolumler` (`BolumID`, `FakulteID`, `BolumAdi`, `Gorunur`) VALUES
(1, 1, 'Bilgisayar Mühendisliği', 1),
(5, 1, 'Biyomedikal Mühendisliği', 1),
(6, 1, 'Çevre Mühendisliği', 1),
(7, 1, 'Elektronik ve Haberleşme Mühendisliği', 1),
(8, 1, 'Endüstri Mühendisliği', 1),
(9, 1, 'İnşaat Mühendisliği', 1),
(10, 1, 'Makine Mühendisliği', 1),
(11, 1, 'Tekstil Mühendisliği', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `DersID` int(11) NOT NULL,
  `DersKodu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DersAdi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Teorik` int(11) NOT NULL,
  `Uygulamali` int(11) NOT NULL,
  `Yariyil` int(11) NOT NULL,
  `HocaID` int(11) NOT NULL,
  `BolumID` int(11) NOT NULL,
  `FakulteID` int(11) NOT NULL,
  `Uzaktan` int(11) NOT NULL,
  `Gorunur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`DersID`, `DersKodu`, `DersAdi`, `Teorik`, `Uygulamali`, `Yariyil`, `HocaID`, `BolumID`, `FakulteID`, `Uzaktan`, `Gorunur`) VALUES
(1, 'BMB103', 'Bilgisayar Mühendisliğine Giriş', 3, 0, 1, 1, 1, 1, 0, 1),
(2, 'FZK107', 'Fizik I', 3, 1, 1, 3, 1, 1, 0, 1),
(3, 'LIC002', 'Lineer Cebir', 3, 1, 1, 4, 1, 1, 0, 1),
(4, 'MAT111', 'Matematik I', 3, 1, 1, 5, 1, 1, 0, 1),
(5, 'TBT001', 'Temel Bilgi Teknolojileri Kullanımı', 2, 1, 1, 6, 1, 1, 0, 1),
(6, 'TDİ101', 'Türk Dili I', 2, 0, 1, 7, 1, 1, 1, 1),
(7, 'YDİ109', 'Yabancı Dil I (İngilizce)', 3, 0, 1, 8, 1, 1, 1, 1),
(8, 'ATİ101', 'Atatürk İlkeleri ve İnkılâp Tarihi I', 2, 0, 3, 11, 1, 1, 1, 1),
(9, 'DFD002', 'Diferansiyel Denklemler', 3, 1, 3, 12, 1, 1, 0, 1),
(10, 'EMB201', 'Elektrik Devre Temelleri\r\n', 4, 2, 3, 13, 1, 1, 0, 1),
(11, 'BMB201', 'Nesneye Dayalı Programlama', 3, 2, 3, 14, 1, 1, 0, 1),
(12, 'SYA002', 'Sayısal Analiz', 2, 1, 3, 15, 1, 1, 0, 1),
(13, 'YD003', 'Yabancı Dilde Okuma ve Konuşma', 2, 0, 3, 8, 1, 1, 0, 1),
(14, 'BMB309', 'Bilgisayar Ağlarına Giriş', 3, 0, 5, 1, 1, 1, 0, 1),
(15, 'BMB301', 'İşletim Sistemleri I', 3, 0, 5, 19, 1, 1, 0, 1),
(16, 'LMİ104', 'Mesleki İngilizce II', 2, 0, 5, 10, 1, 1, 0, 1),
(17, 'BMB307', 'Otomata Teorisi', 3, 2, 5, 20, 1, 1, 0, 1),
(18, 'BMB303', 'Sayısal Bilgisayar I', 4, 0, 5, 2, 1, 1, 0, 1),
(19, 'BMB305', 'Web Tasarımı ve Programlama', 3, 2, 5, 18, 1, 1, 0, 1),
(20, 'İSGL101', 'İş Sağlığı ve Güvenliği I\r\n', 2, 0, 7, 21, 1, 1, 0, 1),
(21, 'BMB407', 'Proje I\r\n', 3, 1, 7, 23, 1, 1, 0, 1),
(22, 'BMSB419', 'Ağ Tabanlı Programlama\r\n', 3, 0, 7, 9, 1, 1, 0, 1),
(23, 'BMSB417', 'Çevik Yazılım Geliştirme\r\n', 3, 0, 7, 19, 1, 1, 0, 1),
(24, 'BMSB433', 'Derin Öğrenmenin Temelleri\r\n', 3, 0, 7, 20, 1, 1, 0, 1),
(25, 'BMSB406', 'Makine Öğrenmesine Giriş\r\n', 3, 0, 7, 9, 1, 1, 0, 1),
(26, 'BMSB436', 'Python Programlamaya Giriş\r\n', 3, 0, 7, 18, 1, 1, 0, 1),
(27, 'BMSB423', 'Sayısal Hesaplama Programları\r\n', 3, 0, 7, 6, 1, 1, 0, 1),
(28, 'BMSB421', 'Veri Sıkıştırma Yöntemleri\r\n', 3, 0, 7, 2, 1, 1, 0, 1),
(29, 'BMB102', 'Bilgisayar Programlama\r\n', 3, 2, 2, 6, 1, 1, 0, 1),
(30, 'FZK108', 'Fizik II\r\n', 3, 1, 2, 3, 1, 1, 0, 1),
(31, 'MAT114', 'Matematik II\r\n', 3, 1, 2, 5, 1, 1, 0, 1),
(32, 'TDİ102', 'Türk Dili II\r\n', 2, 0, 2, 7, 1, 1, 1, 1),
(33, 'BMB104', 'Web ve İnternet Teknolojileri\r\n', 2, 2, 2, 9, 1, 1, 0, 1),
(34, 'YDİ110', 'Yabancı Dil II (İngilizce)\r\n', 3, 0, 2, 8, 1, 1, 1, 1),
(35, 'AKİ001', 'Akademik İngilizce\r\n', 2, 0, 2, 10, 1, 1, 0, 1),
(36, 'GST001', 'Genel Sanat Tarihi\r\n', 2, 0, 2, 10, 1, 1, 0, 1),
(37, 'ATİ102', 'Atatürk İlkeleri ve İnkılâp Tarihi II\r\n', 2, 0, 4, 11, 1, 1, 1, 1),
(38, 'BMB208', 'Ayrık Matematik\r\n', 3, 0, 4, 16, 1, 1, 0, 1),
(39, 'BMB210', 'Elektroniğe Giriş\r\n', 3, 1, 4, 13, 1, 1, 0, 1),
(40, 'LMİ103', 'Mesleki İngilizce I\r\n', 2, 0, 4, 8, 1, 1, 0, 1),
(41, 'BMB206', 'Olasılık ve İstatistik\r\n', 3, 0, 4, 17, 1, 1, 0, 1),
(42, 'BMB202', 'Veritabanı Yönetimi\r\n', 3, 2, 4, 18, 1, 1, 0, 1),
(43, 'BMB204', 'Veri Yapıları\r\n', 3, 2, 4, 14, 1, 1, 0, 1),
(44, 'BMB308', 'Bilgisayar Ağları\r\n', 3, 0, 6, 1, 1, 1, 0, 1),
(45, 'YD002', 'İş Hayatında Yabancı Dil\r\n', 2, 0, 6, 10, 1, 1, 0, 1),
(46, 'BMB302', 'İşletim Sistemleri II\r\n', 3, 2, 6, 19, 1, 1, 0, 1),
(47, 'BMB304', 'Sayısal Bilgisayar II\r\n', 4, 0, 6, 2, 1, 1, 0, 1),
(48, 'BMB310', 'Sistem Analizi ve Tasarım\r\n', 3, 0, 6, 20, 1, 1, 0, 1),
(49, 'BMB306', 'Yazılım Mühendisliği\r\n', 4, 0, 6, 19, 1, 1, 0, 1),
(50, 'İSGL102', 'İş Sağlığı ve Güvenliği II\r\n', 2, 0, 8, 22, 1, 1, 0, 1),
(51, 'BMB408', 'Proje II\r\n', 3, 1, 8, 23, 1, 1, 0, 1),
(52, 'BMSB428', 'Gömülü Sistemler\r\n', 3, 0, 8, 2, 1, 1, 0, 1),
(53, 'BMSB402', 'Görüntü İşleme\r\n', 3, 0, 8, 6, 1, 1, 0, 1),
(54, 'BMSB434', 'Python ile Derin Öğrenme\r\n', 3, 0, 8, 1, 1, 1, 0, 1),
(55, 'BMSB403', 'Veri Madenciliği\r\n', 3, 0, 8, 9, 1, 1, 0, 1),
(56, 'BMSB425', 'Yapay Öğrenme ve Yapay Sinir Ağları\r\n', 3, 0, 8, 20, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersprogrami`
--

CREATE TABLE `dersprogrami` (
  `ID` int(11) NOT NULL,
  `DersId` int(11) NOT NULL,
  `SinifNo` int(11) NOT NULL,
  `Saat` time NOT NULL,
  `hocaId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fakulteler`
--

CREATE TABLE `fakulteler` (
  `FakulteID` int(11) NOT NULL,
  `FakulteAdi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Gorunur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `fakulteler`
--

INSERT INTO `fakulteler` (`FakulteID`, `FakulteAdi`, `Gorunur`) VALUES
(1, 'Çorlu Mühendislik Fakültesi', 1),
(2, 'Diş Hekimliği Fakültesi', 1),
(3, 'Fen Edebiyat Fakültesi', 1),
(4, 'Güzel Sanatlar Tasarım ve Mimarlık Fakültesi', 1),
(5, 'Hukuk Fakültesi', 1),
(6, 'İktisadi ve İdari Bilimler Fakültesi', 1),
(7, 'İlahiyat Fakültesi', 1),
(8, 'Tıp Fakültesi', 1),
(9, 'Veteriner Fakültesi', 1),
(10, 'Ziraat Fakültesi', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hocalar`
--

CREATE TABLE `hocalar` (
  `HocaID` int(11) NOT NULL,
  `HocaAdiSoyadi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Gorunur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `hocalar`
--

INSERT INTO `hocalar` (`HocaID`, `HocaAdiSoyadi`, `Gorunur`) VALUES
(1, 'ERCAN BULUŞ', 1),
(2, 'HALİL NUSRET BULUŞ', 1),
(3, 'TANJU GÜREL', 1),
(4, 'DİLEK BAYRAK', 1),
(5, 'NURAY EROĞLU', 1),
(6, 'AHMET SAYGILI', 1),
(7, 'KEVSER SELVİ', 1),
(8, 'BİLGE ÖZLÜŞEN', 1),
(9, 'ERKAN ÖZHAN', 1),
(10, 'UFUK ÇETİN', 1),
(11, 'HATİCE BAYRAKTAR', 1),
(12, 'RAFAYEL SHKHALIYEV', 1),
(13, 'RABİA KORKMAZ TAN', 1),
(14, 'PINAR CİHAN', 1),
(15, 'ERTUĞRUL ORDU', 1),
(16, 'KADİR ERTÜRK', 1),
(17, 'PELİN GÜRKAN ÜNAL', 1),
(18, 'ERDİNÇ UZUN', 1),
(19, 'ALPAY DORUK', 1),
(20, 'PINAR TÜFEKÇİ', 1),
(21, 'CAN BURAK ÖZKAL', 1),
(22, 'İBRAHİM FEDA ARAL', 1),
(23, 'yok yok', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bolumler`
--
ALTER TABLE `bolumler`
  ADD PRIMARY KEY (`BolumID`),
  ADD KEY `FakulteID` (`FakulteID`) USING BTREE;

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`DersID`),
  ADD KEY `HocaID` (`HocaID`) USING BTREE,
  ADD KEY `FakulteID` (`FakulteID`) USING BTREE,
  ADD KEY `BolumID` (`BolumID`) USING BTREE;

--
-- Tablo için indeksler `dersprogrami`
--
ALTER TABLE `dersprogrami`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DersId` (`DersId`),
  ADD KEY `hocaId` (`hocaId`);

--
-- Tablo için indeksler `fakulteler`
--
ALTER TABLE `fakulteler`
  ADD PRIMARY KEY (`FakulteID`);

--
-- Tablo için indeksler `hocalar`
--
ALTER TABLE `hocalar`
  ADD PRIMARY KEY (`HocaID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bolumler`
--
ALTER TABLE `bolumler`
  MODIFY `BolumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `DersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `dersprogrami`
--
ALTER TABLE `dersprogrami`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `fakulteler`
--
ALTER TABLE `fakulteler`
  MODIFY `FakulteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `hocalar`
--
ALTER TABLE `hocalar`
  MODIFY `HocaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `dersler`
--
ALTER TABLE `dersler`
  ADD CONSTRAINT `dersler_ibfk_1` FOREIGN KEY (`HocaID`) REFERENCES `hocalar` (`HocaID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `dersler_ibfk_2` FOREIGN KEY (`FakulteID`) REFERENCES `fakulteler` (`FakulteID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `dersler_ibfk_3` FOREIGN KEY (`BolumID`) REFERENCES `bolumler` (`BolumID`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
