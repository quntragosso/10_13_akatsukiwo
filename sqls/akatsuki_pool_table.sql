-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-31 16:42:23
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
  `card_category` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `akatsuki_pool_table` (`card_id`, `card_name`, `card_class`, `card_category`, `asa`, `yoru`, `text`, `effect1`, `effect2`, `effect3`) VALUES
(3, '猪', 'inoshishi', 'kemonohuda', 3, 3, '獣札。3点を得る。', NULL, NULL, NULL),
(4, '鹿', 'shika', 'kemonohuda', 1, 4, '獣札。朝ならば1点を得る。夜ならば4点を得る。', NULL, NULL, NULL),
(5, '蝶', 'chou', 'kemonohuda', 4, 1, '獣札。朝ならば4点を得る。夜ならば1点を得る。', NULL, NULL, NULL),
(6, '亀', 'kame', 'kemonohuda', 3, 3, '獣札。3点を得る。', NULL, NULL, NULL),
(7, '春', 'haru', 'kisetsuhuda', 3, 1, '季節札。朝ならば3点を得る。夜ならば1点を得る。', NULL, NULL, NULL),
(8, '夏', 'natsu', 'kisetsuhuda', 1, 3, '季節札。朝ならば1点を得る。夜ならば3点を得る。', NULL, NULL, NULL),
(9, '秋', 'aki', 'kisetsuhuda', 3, 1, '季節札。朝ならば3点を得る。夜ならば1点を得る。', NULL, NULL, NULL),
(10, '冬', 'huyu', 'kisetsuhuda', 1, 3, '季節札。朝ならば1点を得る。夜ならば3点を得る。', NULL, NULL, NULL),
(11, '桜', 'sakura', 'ko-o-huda', 2, 2, '呼応札。2点を得る。直前に春を使用していたならば代わりに6点を得る。', 'haru', NULL, NULL),
(12, '雨', 'ame', 'ko-o-huda', 2, 2, '呼応札。2点を得る。直前に夏を使用していたならば代わりに6点を得る。', 'natsu', NULL, NULL),
(13, '月', 'tsuki', 'ko-o-huda', 2, 2, '呼応札。2点を得る。直前に秋を使用していたならば代わりに6点を得る。', 'aki', NULL, NULL),
(14, '雪', 'yuki', 'ko-o-huda', 2, 2, '呼応札。2点を得る。直前に冬を使用していたならば代わりに6点を得る。', 'huyu', NULL, NULL),
(15, '曙', 'akebono', 'oo-huda', 1, 0, '大札。夜ならば1点を得る。朝ならば相手の得る点数を代わりに獲得し、相手の得る点数を0にする。', NULL, '夜', NULL),
(16, '暁', 'akatsuki', 'oo-huda', 0, 1, '大札。朝ならば1点を得る。夜ならば相手の得る点数を代わりに獲得し、相手の得る点数を0にする。', NULL, '朝', NULL),
(17, '紫', 'murasaki', 'irohuda', 1, 1, '色札。1点を得る。相手が大札ならば、更に相手は-6点を得る(大札の効果とは別に発動する)。', NULL, NULL, 'oo-huda'),
(18, '茜', 'akane', 'irohuda', 1, 1, '色札。1点を得る。相手が大札ならば、更に相手は-6点を得る(大札の効果とは別に発動する)。', NULL, NULL, 'oo-huda');

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
