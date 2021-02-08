-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Kas 2020, 18:59:52
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dbo_uni`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolum`
--

CREATE TABLE `bolum` (
  `id` int(6) NOT NULL,
  `bolum_adi` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bolum`
--

INSERT INTO `bolum` (`id`, `bolum_adi`) VALUES
(1, 'Türkçe'),
(2, 'Matematik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `degerlendirme`
--

CREATE TABLE `degerlendirme` (
  `id` int(5) NOT NULL,
  `puan` int(1) NOT NULL,
  `oturum` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `degerlendirme`
--

INSERT INTO `degerlendirme` (`id`, `puan`, `oturum`) VALUES
(1, 0, 'd@gmail.com'),
(2, 0, 'd@gmail.com'),
(3, 0, 'd@gmail.com'),
(4, 3, 'd@gmail.com'),
(5, 3, 'd@gmail.com'),
(6, 3, 'd@gmail.com'),
(7, 0, 'd@gmail.com'),
(8, 0, 'd@gmail.com'),
(9, 0, 'd@gmail.com'),
(10, 0, 'd@gmail.com'),
(11, 5, 'd@gmail.com'),
(12, 4, 'd@gmail.com'),
(13, 3, 'z@gmail.com'),
(14, 3, 'h@gmail.com'),
(15, 3, 'h@gmail.com'),
(16, 3, 'h@gmail.com'),
(17, 3, 'h@gmail.com'),
(18, 3, 'h@gmail.com'),
(19, 3, 'h@gmail.com'),
(20, 3, 'h@gmail.com'),
(21, 3, 'h@gmail.com'),
(22, 0, 'h@gmail.com'),
(23, 0, 'h@gmail.com'),
(24, 0, 'h@gmail.com'),
(25, 0, 'h@gmail.com'),
(26, 0, 'h@gmail.com'),
(27, 3, 'h@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders`
--

CREATE TABLE `ders` (
  `id` int(5) NOT NULL,
  `ders_adı` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ders`
--

INSERT INTO `ders` (`id`, `ders_adı`) VALUES
(1, 'MATAMATIK,TURKCE,FEN,SOSYAL'),
(2, 'TURKCE,MATAMATIK,FEN,SOSYAL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gonderilenodev`
--

CREATE TABLE `gonderilenodev` (
  `id` int(5) NOT NULL,
  `dosyaadi` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `detay` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `gonderilenodev`
--

INSERT INTO `gonderilenodev` (`id`, `dosyaadi`, `detay`) VALUES
(1, '57530990_2138328279598943_7833726675220168704_o.jpg', 'aaa'),
(2, '57530990_2138328279598943_7833726675220168704_o.jpg', 'aaa'),
(3, 'BİLGİ VE BİLGİ TÜRLERİ.pptx', ''),
(4, 'BİLGİ VE BİLGİ TÜRLERİ.pptx', ''),
(5, 'BİLGİ VE BİLGİ TÜRLERİ.pptx', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hoca`
--

CREATE TABLE `hoca` (
  `id` int(5) NOT NULL,
  `kulanıcı_id` int(5) NOT NULL,
  `ders_id` int(5) NOT NULL,
  `bolum_id` int(5) NOT NULL,
  `veli_pm` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hoca`
--

INSERT INTO `hoca` (`id`, `kulanıcı_id`, `ders_id`, `bolum_id`, `veli_pm`) VALUES
(1, 3, 1, 1, ''),
(2, 2, 2, 2, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kulanici`
--

CREATE TABLE `kulanici` (
  `id` int(5) NOT NULL,
  `ad` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyad` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_turkish_ci NOT NULL,
  `yetki_yts` int(5) NOT NULL,
  `yetki_obs` int(5) NOT NULL,
  `yetki_zyr` int(11) NOT NULL,
  `yts_menu` int(1) NOT NULL,
  `obs_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kulanici`
--

INSERT INTO `kulanici` (`id`, `ad`, `soyad`, `email`, `yetki_yts`, `yetki_obs`, `yetki_zyr`, `yts_menu`, `obs_menu`) VALUES
(1, 'Hüseyin', 'Altun', 'a@gmail.com', 1, 0, 0, 1, 0),
(2, 'FuatH', 'kadri', 'b@gmail.com', 1, 0, 0, 0, 0),
(3, 'altunH', 'ferat', 'c@gmail.com', 1, 0, 0, 0, 0),
(4, 'harıka', 'abdul', 'd@gmail.com', 0, 1, 0, 0, 1),
(5, 'ayşe', 'guzel', 'e@gmail.com', 0, 1, 0, 0, 1),
(6, 'furkan', 'delıbas', 'f@gmail.com', 0, 1, 0, 0, 1),
(7, 'arif', 'kudur', 'g@gmail.com', 0, 1, 0, 0, 1),
(8, 'aslan', 'delıbas', 'h@gmail.com', 0, 1, 0, 0, 0),
(9, 'haysunur', 'kudur', 'i@gmail.com', 0, 1, 0, 0, 0),
(10, 'kahraman', 'abdul', 'aa@gmail.com', 0, 1, 0, 0, 0),
(11, 'aysev', 'guzel', 'bb@gmail.com', 0, 1, 0, 0, 0),
(12, 'zehra', 'karkez', 'z@gmail.com', 0, 0, 1, 0, 0),
(28, 'deneme', 'denemes', 'denemeee@gmail.com', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kziyaret`
--

CREATE TABLE `kziyaret` (
  `id` int(5) NOT NULL,
  `ad` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kziyaret`
--

INSERT INTO `kziyaret` (`id`, `ad`, `soyad`, `email`) VALUES
(35, 'deneme', 'denemes', 'denemeee@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE `ogrenci` (
  `id` int(5) NOT NULL,
  `kulanıcı_id` int(5) NOT NULL,
  `ders_id` int(5) NOT NULL,
  `bolum_id` int(3) NOT NULL,
  `sınavnotu` int(3) NOT NULL,
  `odevnotu` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`id`, `kulanıcı_id`, `ders_id`, `bolum_id`, `sınavnotu`, `odevnotu`) VALUES
(1, 4, 1, 1, 0, 0),
(2, 5, 1, 1, 0, 0),
(3, 6, 2, 2, 0, 0),
(4, 7, 1, 1, 90, 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `omesaj`
--

CREATE TABLE `omesaj` (
  `id` int(5) NOT NULL,
  `gonderen` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `alici` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `mesaj` varchar(300) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `omesaj`
--

INSERT INTO `omesaj` (`id`, `gonderen`, `alici`, `mesaj`) VALUES
(34, 'z@gmail.com', 'a@gmail.com', '      sadasd  '),
(38, 'h@gmail.com', 'a@gmail.com', '        sadasd'),
(39, 'h@gmail.com', 'b@gmail.com', '        sadads');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sinavb`
--

CREATE TABLE `sinavb` (
  `id` int(5) NOT NULL,
  `dosyaadi` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `detay` text COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sinavb`
--

INSERT INTO `sinavb` (`id`, `dosyaadi`, `detay`) VALUES
(1, 'ingilizce.pdf', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sinavs`
--

CREATE TABLE `sinavs` (
  `id` int(5) NOT NULL,
  `dosyaadi` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `detay` text COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sohbet`
--

CREATE TABLE `sohbet` (
  `id` int(5) NOT NULL,
  `sohbet` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `alıcı` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sohbet`
--

INSERT INTO `sohbet` (`id`, `sohbet`, `mail`, `alıcı`) VALUES
(1, 'SADADS', 'h@gmail.com', 'a@gmail.com'),
(2, 'sadasddas', 'b@gmail.com', 'a@gmail.com'),
(3, 'sadsaddsa', 'a@gmail.com', 'a@gmail.com'),
(4, 'sadsaddsa', 'a@gmail.com', 'a@gmail.com'),
(5, '', 'z@gmail.com', ''),
(6, 'SADASDSAD', 'h@gmail.com', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `veli`
--

CREATE TABLE `veli` (
  `id` int(5) NOT NULL,
  `kulanıcı_id` int(5) NOT NULL,
  `ogr_klnc_id` int(5) NOT NULL,
  `veli_pm` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `veli`
--

INSERT INTO `veli` (`id`, `kulanıcı_id`, `ogr_klnc_id`, `veli_pm`) VALUES
(1, 11, 1, ''),
(2, 10, 3, ''),
(3, 9, 4, ''),
(4, 8, 2, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `verilenodev`
--

CREATE TABLE `verilenodev` (
  `id` int(5) NOT NULL,
  `dosyaadi` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `detay` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `verilenodev`
--

INSERT INTO `verilenodev` (`id`, `dosyaadi`, `detay`) VALUES
(1, '75bb3369-1cdb-4b12-8b73-b1bf0e42012f.jpg', ''),
(2, 'ingilizce.pdf', ''),
(3, '19612061_ingilizce.pdf', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `id` int(5) NOT NULL,
  `kulanıcı_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`id`, `kulanıcı_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `id` int(5) NOT NULL,
  `yorum` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `alıcı` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`id`, `yorum`, `mail`, `alıcı`) VALUES
(19, 'Neden calısmıyorsun', 'a@gmail.com', ''),
(20, 'suan calısıyor :D', 'a@gmail.com', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bolum`
--
ALTER TABLE `bolum`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `degerlendirme`
--
ALTER TABLE `degerlendirme`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ders`
--
ALTER TABLE `ders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gonderilenodev`
--
ALTER TABLE `gonderilenodev`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hoca`
--
ALTER TABLE `hoca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kulanıcı_id` (`kulanıcı_id`),
  ADD KEY `ders_id` (`ders_id`),
  ADD KEY `bolum_id` (`bolum_id`);

--
-- Tablo için indeksler `kulanici`
--
ALTER TABLE `kulanici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `kziyaret`
--
ALTER TABLE `kziyaret`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kulanıcı_id` (`kulanıcı_id`),
  ADD KEY `ders_id` (`ders_id`),
  ADD KEY `bolum_id` (`bolum_id`);

--
-- Tablo için indeksler `omesaj`
--
ALTER TABLE `omesaj`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sinavb`
--
ALTER TABLE `sinavb`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sinavs`
--
ALTER TABLE `sinavs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sohbet`
--
ALTER TABLE `sohbet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `veli`
--
ALTER TABLE `veli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kulanıcı_id` (`kulanıcı_id`),
  ADD KEY `ogr_klnc_id` (`ogr_klnc_id`);

--
-- Tablo için indeksler `verilenodev`
--
ALTER TABLE `verilenodev`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kulanıcı_id` (`kulanıcı_id`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bolum`
--
ALTER TABLE `bolum`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `degerlendirme`
--
ALTER TABLE `degerlendirme`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `ders`
--
ALTER TABLE `ders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `gonderilenodev`
--
ALTER TABLE `gonderilenodev`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hoca`
--
ALTER TABLE `hoca`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `kulanici`
--
ALTER TABLE `kulanici`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `kziyaret`
--
ALTER TABLE `kziyaret`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `ogrenci`
--
ALTER TABLE `ogrenci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `omesaj`
--
ALTER TABLE `omesaj`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `sinavb`
--
ALTER TABLE `sinavb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sinavs`
--
ALTER TABLE `sinavs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sohbet`
--
ALTER TABLE `sohbet`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `veli`
--
ALTER TABLE `veli`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `verilenodev`
--
ALTER TABLE `verilenodev`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yorum`
--
ALTER TABLE `yorum`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `hoca`
--
ALTER TABLE `hoca`
  ADD CONSTRAINT `hoca_ibfk_1` FOREIGN KEY (`kulanıcı_id`) REFERENCES `kulanici` (`id`),
  ADD CONSTRAINT `hoca_ibfk_2` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`id`),
  ADD CONSTRAINT `hoca_ibfk_3` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`id`);

--
-- Tablo kısıtlamaları `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD CONSTRAINT `ogrenci_ibfk_1` FOREIGN KEY (`kulanıcı_id`) REFERENCES `kulanici` (`id`),
  ADD CONSTRAINT `ogrenci_ibfk_2` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`id`),
  ADD CONSTRAINT `ogrenci_ibfk_3` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`id`);

--
-- Tablo kısıtlamaları `veli`
--
ALTER TABLE `veli`
  ADD CONSTRAINT `veli_ibfk_1` FOREIGN KEY (`kulanıcı_id`) REFERENCES `kulanici` (`id`),
  ADD CONSTRAINT `veli_ibfk_2` FOREIGN KEY (`ogr_klnc_id`) REFERENCES `ogrenci` (`id`);

--
-- Tablo kısıtlamaları `yonetici`
--
ALTER TABLE `yonetici`
  ADD CONSTRAINT `yonetici_ibfk_1` FOREIGN KEY (`kulanıcı_id`) REFERENCES `kulanici` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
