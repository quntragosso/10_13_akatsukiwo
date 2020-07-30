-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-30 15:16:29
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd06_13`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `akatsuki_pool_table`
--

CREATE TABLE `akatsuki_pool_table` (
  `card_id` int(4) NOT NULL,
  `card_name` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `card_class` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `asa` int(2) NOT NULL,
  `yoru` int(2) NOT NULL,
  `text` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `effect1` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `effect2` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `effect3` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `akatsuki_pool_table`
--

INSERT INTO `akatsuki_pool_table` (`card_id`, `card_name`, `card_class`, `asa`, `yoru`, `text`, `effect1`, `effect2`, `effect3`) VALUES
(3, '猪', 'inoshishi', 1, 1, '猪テキスト。', NULL, NULL, NULL),
(4, '鹿', 'shika', 2, 2, '鹿テキスト。', NULL, NULL, NULL),
(5, '蝶', 'chou', 3, 3, '蝶テキスト。', NULL, NULL, NULL),
(6, '亀', 'kame', 4, 4, '亀テキスト。', NULL, NULL, NULL),
(7, '春', 'haru', 5, 5, '春テキスト。', NULL, NULL, NULL),
(8, '夏', 'natsu', 6, 6, '夏テキスト。', NULL, NULL, NULL),
(9, '秋', 'aki', 7, 7, '秋テキスト。', NULL, NULL, NULL),
(10, '冬', 'huyu', 8, 8, '冬テキスト。', NULL, NULL, NULL),
(11, '桜', 'sakura', 9, 9, '桜テキスト。', NULL, NULL, NULL),
(12, '雨', 'ame', 10, 10, '雨テキスト。', NULL, NULL, NULL),
(13, '月', 'tsuki', 11, 11, '月テキスト。', NULL, NULL, NULL),
(14, '雪', 'yuki', 12, 12, '雪テキスト。', NULL, NULL, NULL),
(15, '暁', 'akatsuki', 13, 13, '暁テキスト。', NULL, NULL, NULL),
(16, '曙', 'akebono', 14, 14, '曙テキスト。', NULL, NULL, NULL),
(17, '紫', 'murasaki', 15, 15, '紫テキスト。', NULL, NULL, NULL),
(18, '茜', 'akane', 16, 16, '茜テキスト。', NULL, NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `akatsuki_pool_table`
--
ALTER TABLE `akatsuki_pool_table`
  ADD PRIMARY KEY (`card_id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `akatsuki_pool_table`
--
ALTER TABLE `akatsuki_pool_table`
  MODIFY `card_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
