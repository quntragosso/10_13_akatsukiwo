-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-30 15:15:00
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

-- --------------------------------------------------------

--
-- テーブルの構造 `akatsuki_user_table`
--

CREATE TABLE `akatsuki_user_table` (
  `user_id` int(12) NOT NULL,
  `user_username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `user_visible_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `user_rating_point` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `akatsuki_user_table`
--

INSERT INTO `akatsuki_user_table` (`user_id`, `user_username`, `user_password`, `user_visible_id`, `user_rating_point`) VALUES
(2, 'hogehoge', 'test', '65014013', 1501),
(3, 'QunQuuun', 'test', '66254693', 1500);

-- --------------------------------------------------------

--
-- テーブルの構造 `battle_monsters`
--

CREATE TABLE `battle_monsters` (
  `id` int(12) NOT NULL,
  `monstername` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `hitpoint` int(4) NOT NULL,
  `attack` int(4) NOT NULL,
  `magic` int(4) NOT NULL,
  `barrier` int(4) NOT NULL,
  `powerlevel` int(4) NOT NULL,
  `reward` int(4) NOT NULL,
  `img` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `battle_monsters`
--

INSERT INTO `battle_monsters` (`id`, `monstername`, `hitpoint`, `attack`, `magic`, `barrier`, `powerlevel`, `reward`, `img`) VALUES
(1, 'スライム', 50, 10, 10, 10, 1, 10, 'm000.png'),
(2, 'スライム', 55, 12, 12, 12, 1, 15, 'm000.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_favo_table`
--

CREATE TABLE `kqfm_favo_table` (
  `favo_id` int(12) NOT NULL,
  `favo_username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `favo_news_id` int(12) NOT NULL,
  `favo_rating` int(1) NOT NULL,
  `favo_comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `favo_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `kqfm_favo_table`
--

INSERT INTO `kqfm_favo_table` (`favo_id`, `favo_username`, `favo_news_id`, `favo_rating`, `favo_comment`, `favo_created_at`) VALUES
(1, 'hogehoge', 1, 2, 'コメントテスト', '2020-07-17 13:58:26'),
(2, 'hogehoge', 1, 5, 'コメントテスト２２２２', '2020-07-17 13:59:16'),
(3, 'いいねするマン', 4, 5, 'こいつぁすごい！', '2020-07-18 02:34:59'),
(4, 'いいねするマン', 3, 2, 'そんなにすごくない。', '2020-07-18 02:36:36'),
(5, 'いいねするマン', 1, 3, 'けっこうすごい！！', '2020-07-18 02:39:36');

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_news_table`
--

CREATE TABLE `kqfm_news_table` (
  `news_id` int(12) NOT NULL,
  `news_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `news_comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_created_at` datetime NOT NULL,
  `news_updated_at` datetime NOT NULL,
  `news_is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `kqfm_news_table`
--

INSERT INTO `kqfm_news_table` (`news_id`, `news_title`, `news_category`, `news_url`, `news_username`, `news_comment`, `news_created_at`, `news_updated_at`, `news_is_deleted`) VALUES
(1, 'economic news', 'economic', 'https://appmarketinglabo.net/lifull-homes/', 'hogehoge', 'test', '2020-07-16 23:16:55', '2020-07-16 23:16:55', 0),
(2, 'tech news', 'e', 'techurl', 'hogehoge', 'techtech', '2020-07-17 15:11:25', '2020-07-17 15:11:25', 0),
(3, 'economic news', 'economic', 'hogehoge', 'hogehoge', 'これはテストです。これはテストです。本当にテストなんです。', '2020-07-16 23:16:55', '2020-07-16 23:16:55', 0),
(4, 'economic news', 'economic', 'hogehoge', 'QunQuuun', 'あまりコメントを多くしたくはないのですが、それはそれで寂しいものですね。', '2020-07-16 23:16:55', '2020-07-16 23:16:55', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_user_table`
--

CREATE TABLE `kqfm_user_table` (
  `user_id` int(12) NOT NULL,
  `user_username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_is_deleted` int(1) NOT NULL,
  `user_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `kqfm_user_table`
--

INSERT INTO `kqfm_user_table` (`user_id`, `user_username`, `user_password`, `user_is_deleted`, `user_created_at`) VALUES
(1, 'QunQuuun', '12341234', 0, '2020-07-16 22:02:50'),
(2, 'hogehoge', 'hogegege', 0, '2020-07-16 23:22:05'),
(4, 'いいねするマン', 'sugoirt', 0, '2020-07-17 15:00:50');

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(1, 6, 1, '2020-07-18 14:27:34'),
(2, 6, 3, '2020-07-18 14:27:36'),
(3, 6, 5, '2020-07-18 14:27:37'),
(4, 6, 7, '2020-07-18 14:27:38'),
(5, 6, 8, '2020-07-18 14:27:39'),
(6, 6, 9, '2020-07-18 14:27:40'),
(7, 6, 10, '2020-07-18 14:27:41'),
(8, 6, 14, '2020-07-18 14:27:42');

-- --------------------------------------------------------

--
-- テーブルの構造 `monster_database`
--

CREATE TABLE `monster_database` (
  `id` int(11) NOT NULL,
  `monstername` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `attack` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `magic` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `barrier` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `life` int(8) NOT NULL,
  `evobonus` int(4) NOT NULL,
  `training` int(8) NOT NULL,
  `meal` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `toilet` int(8) NOT NULL,
  `sleep` int(8) NOT NULL,
  `evopattern` int(4) NOT NULL,
  `bonus` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `monster_database`
--

INSERT INTO `monster_database` (`id`, `monstername`, `attack`, `magic`, `barrier`, `life`, `evobonus`, `training`, `meal`, `toilet`, `sleep`, `evopattern`, `bonus`, `img`) VALUES
(1, 'スライム', 'a:2:{i:0;s:2:\"10\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"10\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"10\";i:1;s:1:\"1\";}', 14400, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 20, 30, 0, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm000.png'),
(2, 'いぬ', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 5400, 1, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm001.png'),
(3, 'とり', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 5400, 2, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm002.png'),
(4, 'ふぐ', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"12\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"2\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 5400, 3, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm003.png'),
(5, 'うま', 'a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 5400, 4, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm004.png'),
(6, 'オオカミ', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 10, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 5, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm005.png'),
(7, 'ハイエナ', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 5, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm006.png'),
(8, 'バク', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 8, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm007.png'),
(9, '軍鶏', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 6, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm008.png'),
(10, 'ハゲワシ', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 10, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 6, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm009.png'),
(11, '食べる青い鳥', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 43200, 0, 0, 'a:2:{i:0;s:1:\"5\";i:1;i:0;}', 900, 10800, 9, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm010.png'),
(12, 'イルカ', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 7, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm011.png'),
(13, 'ハナヒゲウツボ', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 43200, 10, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 7, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm012.png'),
(14, 'サザエ', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 43201, 10, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm013.png'),
(15, 'キリン', 'a:2:{i:0;s:2:\"18\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"18\";i:1;s:1:\"1\";}', 'a:2:{i:0;s:2:\"18\";i:1;s:1:\"1\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 11, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm014.png'),
(16, 'ユニコーン', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 12, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm015.png'),
(17, 'ゴロゴロしてる馬', 'a:2:{i:0;s:2:\"17\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"17\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"17\";i:1;s:1:\"3\";}', 43200, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 7200, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm016.png'),
(18, 'ケルベロス', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm017.png'),
(19, 'メガテリウム', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm018.png'),
(20, 'ヒポグリフ', 'a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm019.png'),
(21, '燃え上がる青い鳥', 'a:2:{i:0;s:2:\"30\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm020.png'),
(22, 'レヴィアタン', 'a:2:{i:0;s:2:\"22\";i:1;s:1:\"4\";}', 'a:2:{i:0;s:2:\"22\";i:1;s:1:\"4\";}', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"3\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm021.png'),
(23, 'アンモナイト', 'a:2:{i:0;s:2:\"10\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"18\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"32\";i:1;s:1:\"1\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 28801, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm022.png'),
(24, '麒麟', 'a:2:{i:0;s:2:\"22\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"22\";i:1;s:1:\"3\";}', 'a:2:{i:0;s:2:\"22\";i:1;s:1:\"3\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm023.png'),
(25, 'ユニコーン企業', 'a:2:{i:0;s:2:\"15\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}', 28800, 0, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 1800, 3600, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm024.png'),
(26, '魔王', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"0\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"0\";}', 'a:2:{i:0;s:2:\"25\";i:1;s:1:\"0\";}', 14400, 999, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 5, 14401, 13, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm025.png'),
(27, '宇宙人', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"10\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"10\";}', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"10\";}', 28800, 999, 0, 'a:2:{i:0;s:2:\"10\";i:1;i:0;}', 28801, 28801, 14, 'a:3:{i:0;i:0;i:1;i:0;i:2;i:0;}', 'm026.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `news_table`
--

CREATE TABLE `news_table` (
  `id` int(12) NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `news_table`
--

INSERT INTO `news_table` (`id`, `title`, `category`, `url`, `username`, `comment`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'economic news', 'b', 'hogehoge', 'hogehoge', 'test', '2020-07-16 17:34:10', '2020-07-16 17:34:10', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `quixo_database`
--

CREATE TABLE `quixo_database` (
  `id` int(12) NOT NULL,
  `game_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `row` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_game` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `quixo_database`
--

INSERT INTO `quixo_database` (`id`, `game_id`, `row`, `col`, `status`, `is_game`) VALUES
(162, '367337', NULL, NULL, NULL, 1),
(163, '367337', 'r1', 'c1', 'none', 0),
(164, '367337', 'r1', 'c2', 'none', 0),
(165, '367337', 'r1', 'c3', 'none', 0),
(166, '367337', 'r1', 'c4', 'none', 0),
(167, '367337', 'r1', 'c5', 'none', 0),
(168, '367337', 'r2', 'c1', 'none', 0),
(169, '367337', 'r2', 'c2', 'none', 0),
(170, '367337', 'r2', 'c3', 'none', 0),
(171, '367337', 'r2', 'c4', 'none', 0),
(172, '367337', 'r2', 'c5', 'none', 0),
(173, '367337', 'r3', 'c1', 'none', 0),
(174, '367337', 'r3', 'c2', 'none', 0),
(175, '367337', 'r3', 'c3', 'none', 0),
(176, '367337', 'r3', 'c4', 'none', 0),
(177, '367337', 'r3', 'c5', 'none', 0),
(178, '367337', 'r4', 'c1', 'none', 0),
(179, '367337', 'r4', 'c2', 'none', 0),
(180, '367337', 'r4', 'c3', 'none', 0),
(181, '367337', 'r4', 'c4', 'none', 0),
(182, '367337', 'r4', 'c5', 'none', 0),
(183, '367337', 'r5', 'c1', 'none', 0),
(184, '367337', 'r5', 'c2', 'none', 0),
(185, '367337', 'r5', 'c3', 'none', 0),
(186, '367337', 'r5', 'c4', 'none', 0),
(187, '367337', 'r5', 'c5', 'none', 0),
(214, '222999', NULL, NULL, NULL, 1),
(215, '222999', 'r1', 'c1', 'circle', 0),
(216, '222999', 'r1', 'c2', 'none', 0),
(217, '222999', 'r1', 'c3', 'circle', 0),
(218, '222999', 'r1', 'c4', 'none', 0),
(219, '222999', 'r1', 'c5', 'cross', 0),
(220, '222999', 'r2', 'c1', 'none', 0),
(221, '222999', 'r2', 'c2', 'none', 0),
(222, '222999', 'r2', 'c3', 'none', 0),
(223, '222999', 'r2', 'c4', 'none', 0),
(224, '222999', 'r2', 'c5', 'none', 0),
(225, '222999', 'r3', 'c1', 'none', 0),
(226, '222999', 'r3', 'c2', 'none', 0),
(227, '222999', 'r3', 'c3', 'none', 0),
(228, '222999', 'r3', 'c4', 'none', 0),
(229, '222999', 'r3', 'c5', 'none', 0),
(230, '222999', 'r4', 'c1', 'none', 0),
(231, '222999', 'r4', 'c2', 'none', 0),
(232, '222999', 'r4', 'c3', 'none', 0),
(233, '222999', 'r4', 'c4', 'none', 0),
(234, '222999', 'r4', 'c5', 'cross', 0),
(235, '222999', 'r5', 'c1', 'none', 0),
(236, '222999', 'r5', 'c2', 'none', 0),
(237, '222999', 'r5', 'c3', 'none', 0),
(238, '222999', 'r5', 'c4', 'none', 0),
(239, '222999', 'r5', 'c5', 'none', 0),
(240, '626723', NULL, NULL, NULL, 1),
(241, '626723', 'r1', 'c1', 'none', 0),
(242, '626723', 'r1', 'c2', 'circle', 0),
(243, '626723', 'r1', 'c3', 'cross', 0),
(244, '626723', 'r1', 'c4', 'cross', 0),
(245, '626723', 'r1', 'c5', 'circle', 0),
(246, '626723', 'r2', 'c1', 'none', 0),
(247, '626723', 'r2', 'c2', 'circle', 0),
(248, '626723', 'r2', 'c3', 'circle', 0),
(249, '626723', 'r2', 'c4', 'circle', 0),
(250, '626723', 'r2', 'c5', 'none', 0),
(251, '626723', 'r3', 'c1', 'cross', 0),
(252, '626723', 'r3', 'c2', 'cross', 0),
(253, '626723', 'r3', 'c3', 'cross', 0),
(254, '626723', 'r3', 'c4', 'cross', 0),
(255, '626723', 'r3', 'c5', 'cross', 0),
(256, '626723', 'r4', 'c1', 'none', 0),
(257, '626723', 'r4', 'c2', 'none', 0),
(258, '626723', 'r4', 'c3', 'none', 0),
(259, '626723', 'r4', 'c4', 'none', 0),
(260, '626723', 'r4', 'c5', 'none', 0),
(261, '626723', 'r5', 'c1', 'none', 0),
(262, '626723', 'r5', 'c2', 'none', 0),
(263, '626723', 'r5', 'c3', 'none', 0),
(264, '626723', 'r5', 'c4', 'none', 0),
(265, '626723', 'r5', 'c5', 'none', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `stroop_data_table`
--

CREATE TABLE `stroop_data_table` (
  `id` int(12) NOT NULL,
  `user_id_isdata` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `get_point` int(3) NOT NULL,
  `answer_point` int(3) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `stroop_user_table`
--

CREATE TABLE `stroop_user_table` (
  `id` int(12) NOT NULL,
  `username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `sugoroku_cells`
--

CREATE TABLE `sugoroku_cells` (
  `id` int(12) NOT NULL,
  `game_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `cell_number` int(4) DEFAULT NULL,
  `stage_number` int(2) NOT NULL,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `sugoroku_cells`
--

INSERT INTO `sugoroku_cells` (`id`, `game_id`, `cell_number`, `stage_number`, `status`, `comment`) VALUES
(9, '00000000', NULL, 0, 'step_one', '1マス進む'),
(10, '00000000', NULL, 0, 'step_two', '2マス進む'),
(11, '00000000', NULL, 0, 'back_one', '1マス戻る'),
(12, '00000000', NULL, 0, 'back_two', '2マス戻る'),
(13, '00000000', NULL, 0, 'back_start', '中継地点に戻る'),
(14, '00000000', NULL, 0, 'level_up', 'レベルアップ'),
(75, '92919211', 0, 0, 'start', NULL),
(76, '92919211', 1, 0, 'step_one', NULL),
(77, '92919211', 2, 0, 'back_one', NULL),
(78, '92919211', 3, 0, 'level_up', NULL),
(79, '92919211', 4, 0, 'back_one', NULL),
(80, '92919211', 5, 0, 'step_one', NULL),
(81, '92919211', 6, 0, 'none', NULL),
(82, '92919211', 7, 0, 'step_two', NULL),
(83, '92919211', 8, 0, 'back_start', NULL),
(84, '92919211', 9, 0, 'goal', NULL),
(85, '92919211', 0, 1, 'start', NULL),
(86, '92919211', 1, 1, 'step_one', NULL),
(87, '92919211', 2, 1, 'level_up', NULL),
(88, '92919211', 3, 1, 'back_one', NULL),
(89, '92919211', 4, 1, 'back_start', NULL),
(90, '92919211', 5, 1, 'step_one', NULL),
(91, '92919211', 6, 1, 'back_one', NULL),
(92, '92919211', 7, 1, 'none', NULL),
(93, '92919211', 8, 1, 'step_two', NULL),
(94, '92919211', 9, 1, 'goal', NULL),
(95, '99717171', 0, 1, 'start', NULL),
(96, '99717171', 1, 1, 'level_up', NULL),
(97, '99717171', 2, 1, 'none', NULL),
(98, '99717171', 3, 1, 'none', NULL),
(99, '99717171', 4, 1, 'none', NULL),
(100, '99717171', 5, 1, 'back_one', NULL),
(101, '99717171', 6, 1, 'step_one', NULL),
(102, '99717171', 7, 1, 'goal', NULL),
(103, '99717171', 0, 2, 'start', NULL),
(104, '99717171', 1, 2, 'none', NULL),
(105, '99717171', 2, 2, 'none', NULL),
(106, '99717171', 3, 2, 'none', NULL),
(107, '99717171', 4, 2, 'step_one', NULL),
(108, '99717171', 5, 2, 'level_up', NULL),
(109, '99717171', 6, 2, 'back_one', NULL),
(110, '99717171', 7, 2, 'goal', NULL),
(111, '99717171', 0, 3, 'start', NULL),
(112, '99717171', 1, 3, 'none', NULL),
(113, '99717171', 2, 3, 'level_up', NULL),
(114, '99717171', 3, 3, 'step_one', NULL),
(115, '99717171', 4, 3, 'none', NULL),
(116, '99717171', 5, 3, 'none', NULL),
(117, '99717171', 6, 3, 'back_one', NULL),
(118, '99717171', 7, 3, 'goal', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `sugoroku_games`
--

CREATE TABLE `sugoroku_games` (
  `id` int(8) NOT NULL,
  `game_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `stage` int(2) NOT NULL,
  `player1` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `player2` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `player3` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `player4` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `nowplayer` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `finalsave` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `sugoroku_games`
--

INSERT INTO `sugoroku_games` (`id`, `game_id`, `stage`, `player1`, `player2`, `player3`, `player4`, `nowplayer`, `finalsave`) VALUES
(14, '99717171', 3, 'cpu', 'cpu', 'cpu', 'cpu', 'player1', '2020-07-09');

-- --------------------------------------------------------

--
-- テーブルの構造 `sugoroku_images`
--

CREATE TABLE `sugoroku_images` (
  `id` int(8) NOT NULL,
  `img` mediumblob NOT NULL,
  `img_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `sugoroku_images`
--

INSERT INTO `sugoroku_images` (`id`, `img`, `img_name`) VALUES
(4, 0x89504e470d0a1a0a0000000d49484452000000b4000000b408060000003dcd06320000000473424954080808087c0864880000005f7a5458745261772070726f66696c652074797065204150503100000899e34a4fcd4b2dca4c562828ca4fcbcc49e552000363132e134b134ba3440303030b0308303430303604924640b6395428d1000598989ba501a1b959b2992988cf05004fba15681b2dd88c0000200049444154789cecbd7bd46d59551ff89b6badbdcff9beefde5b2f0aa82a8a024d5041796884928224bea2898f449298317c444ccb4b0a0475a41bdb243dbadbd149db09022a44934e2b6a46348ea46d9b56400d8f2a0a41031911448502aa6e3d847addc7f79db3f75a6bf61f73fed6da1f11aaa8baf75681df1aa3eabebe73ce3e7bcf35d79cbff99bbf091cada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b48ed6d13a5a47eb681dada375b43e75c9c37d019f0feb25ef3cf94521866f42a9570bea9b4b8c978452bf2505b95a45ee4b31dca25a9fb199cabe48d81f86786fcef50941f40301907b0fca5bc72102297dfc675efd981be5571eee6ff4b9bb8e0cfa01aeef7debc7fece1fbdf6a77ef319af7ae58fec243c0b085f5655e394754704ebaac03024d4aa9020d05a516b450c012945a016e4aa988b22c5008142210822a8aa80084402b69b4dad90a0b5debcdedbfdad58a6bb5ffdac2bfefb87fbfb7faeac2383fe0ceba5ef38f90f7656e11b44c233abea1304508d49a4564c394315880254550c415054918ba2a89aa156c56a8818a32057c5942b62b0df071100f6f3430a503563e7aa2ad8590f1000b5941c033e797a936f39b6933e326bfdf99fbaf6716f7ad86ecc23781d19b4af7ffd877afcedb77dfca9eb217ee318c35fab559fbeb74ea3422050e45c3144c1662eed350a2008e00ed67e0590ab19a608b01e22a65ca15000d26eb8193430958a28821080cd5c11051031a357558c29604c110ac15c145981dd01980afea8e67cfb308637fdc4b3aefadf2fe8cd7a04af3ff706fd57fec94f1d7bc6df78de1b8620cfcd45af9c55d21000d58a00a0a8a256fbd9e45e38ba77358316a82aaa02a52a6210c428cdb84310cca536030e623fc74d50abfd5aaaa2548508102500a2d8e68af510110488c136c366ae185240566095125415017a5f05de32437ffdb5cfbce2e71e9e3bf9c8587f6e0dfa05efb8e51f1e1bd2df0a015f1ad3703ce78c692e5035a31c82a0c26ed0542aa066bc310ae65ca100562920068b81ab02ea21872a00683356b83197a2580d165e28805c2cc60e01a85531c4808d872516ca58389342400cf0d728862810113b1500a80a524a0014a5d61be752def2baafbaea7f7a38eeebc3bdfedc19f40bdef6f1ff716788dfb95a0d5f52cd0a3d81b318d66d0f3ba379c65c1522822957402da16338306733f95c14dbb958b2e7de362fde2b88257f298a7967d88d570572b5cd52aa626f9d1083bda6aac5df80fd700a82c9bdf3980214b641fa86b2eb44880822c8259f99b2beeef5cfb9ea472eec1d7e78d79f1b837ec54db7fdae2abe7c18c6586b867a1ca16e08a5aa21146206287ecc0f31e0ec36a31445a9c09c0b8a7b5e055a9800b53fa71030e582aa8a3145846021c9e096ba998abf573de46501fbbcece189087110c1980276d71122408a01295848535591a2a0567a72c15ced42249871e79cffb4d4fcc36f78ee356f7c38eefb855e9ff706fdfd379c7cc34e0a2f8a29629af2c203da31af00b4028079bb10a42111dba9603b571c4c052198979d73458c82e89ba025837e270500c18a210654356fce554ac594ed752282d510fabfb54dd5e3edda5eea709f088eef24a468af65a8238eaa2c37180450041489909aef78ddb3afbce2bcdde847c8fabc35e817df78f29b47c53f59edacff529eb68841dc332a86641eb07ad810dd58698c07db8cfd6d31b481f1b31b3b60b12fe3641a19e0891b510a8fb3696caaf63ac0bc29141852006031f7d24bcfb9fa6bd4bdbe601c22d4439394a4bd7e3d048c43b0583f578c2920170b4142106c67fb1e438aa808d09a6f78ddb3af7ace057d1817707dde19f44b6fbaf38509e57b83c8b522015a0a20e68d831fd5413acc1604d8e68aaa8a9c15b9f430623b17fb190f1b00fb3d1d6072779f733d8425dbe6a9a86a06ba0c675a98e1ef5bdcc801fbbb7108161b2741ceb6e1c6216035446ce7d2bcbe88f806b2ab590d013b636c270514a8003673b124d337f4b85e01357f54545ff9cf9f75e57fbc90cfe642accf2b83feaeb7dcfced97edad7e21a43448cdf6e5dc7868a453056214ec44c1a96d412e8aa08ad3fb19430acdf097095e29ea209d192894501b50aa79f82105433f2ccf6c9b0830cf3cc48018e550b2d8c202375081786c6d17de2207b18d0748fb3e96689ab71f073364ad808862678cd85945400da1998bc5d7d537701a06e4aa1f9be7f91ffff4731ef7f317f4219de7f57963d02f7fd71d6f11c1d70d01a8b5a2b8614281b956a8085641f0dc47efe09275c2e53b09a7a782f7ddb98fb79e3c83a476b4d7aa1886d0bc5f71032c6e9c551586c489a31c669029857633e93de75c1d7356ac5709395787ea1c99e08688a119682ebd2833a4d0428fb6c960270700c41030978add55c4d611905a150753c11805971c1f91a215644ab10412b093a5a8a0d63aabc41b5ef7558ff9ea0bf9accee7fabc30e81f7eef277f4f812f973a3b0edc93b07daff07ddb3527f0c4132bafec196e9cfc287edbcdf7e28d1fba072786d08c31978addf58052b5255ff4cc8c85171fd3bcaee1cae6696b35a30d012d4eb62249681b63a2914743544a512b8d7b68b31a0282ff3c8b389ba998c7167b4d4ad292c99c2be01b2305c1ee3af630c94f8414040a4b5a431a30cfd3c75f7ded95d77c3e18c3e7f477f8bedff9f82bf6d6e90710d313a6edd662500f152082198aeb1eb5832fbf7c07630ccdcb1e4601805353c1abdf73a795a8d56a807beba18706be68c0f49853b65082bc8cb958ac4c9c5860e18d61d838143bdba631ef6f49a05d53556dd739a4e0b1b9853adca8dc1c7cddce985a52a96ef8b956c7a315db39e392e3a36d80d031f183b92005c1308e28257fe035d75ef994f3f8b82ec8fa9c35e81f78f71dd74f73799dc5ac15a5561c5b25a4187076ae78e2b184af7cd40eae39b16a1e99953ff8afe2b0d8a654fc1fefb913ea71a8417468586f8c01c5918dea862902048f69a3279b73a9488e86f0bd6bd5160b334104d08cb37a4c4fe4a478a14501ac86e8a1464f2c091172330491169accb960e5dc9118fa4973769331240b41d60bb404407b8f388c2839dffc09ec7cfb1b9f75d17b2ff0e33c672bdcff8f3cf2d65ff9d50f5c9b04af1128a2285629e0d82a35e8ed6b1ebb8b6fffc28b71cd8995793c775f0226575e1471be455560157a81825c0b26769b6dc6d94dc676b6a33e08a05531978a39572f852bc6642423860df4a073e9bf57352cbad68e60704314f7aa10ab54aec6d88a2886815bac0e5818133c7498e682522b86140101c6147a95d28b43b900fb9b8aed545ad188d7b3cd15dbed1690f0c44bcbd9b7fcedb77ee4b917f4819ec3951eee0bf86c9702f8a1c75df25b53ae217ab2963c6e3d3d573ceba211cf7ccc2eb645ddc005158ad88e747b9f56b410e0ccb6e0de5c31a033e6c421b53957640f235643c03844c400339e45c9797043dbce5684518f9d0566d0a7f7e756baae21609a2d19a4a734a3b6f7211c581789a82ab0b38e98e7ead72f00c47920167ed460b09f08304df6593106ac5768d8f63d67335653414a01ab142060ec5e91f30c11b9f8ea63ebd70278c6057aa4e7747d4e851cffe803773fe5ece9ed6f579547d7925bdc0811ac83e09b1e7f1c57ee0dcd0b031e36c08e2222bef4d4442bde7deb69fcea474fe358322f1802b01e037657099bb9a0aa2550038f7e3ff6c7183095ea8426431c564368b1304bd8eb21e0602a984b6d89610a016737d9f8d35eb12cd578d52945af62322cf1f70a82c94f09405af184a5fad9374c70b4a6900fe2d7934b45769c7c355a51663dc6b6c9d54fb39806682def7ecdb5575c7bbe9fe9b95e9f3321c7dfffad8f7ef57df71dbca9203cba948ca2e6991482dd00fccd6b4ee00927c643dc8865058ee1852e7e2d6af4d00f9e9a70c94ec489dd01975f3ce2a2bd013babd43ce3f278a641c263661af8ecbce6d19344c6dfe2851bc08c38401083257b17ef0db8f8d880e3bb09c756093b6e5cd35ca0b090845e9a4518fb7eb6631953f3bbc628ed9af979b9544cb960ceb5258321080eb6a59d0e290886681bc378b033d6abf159af78f7edffe67c3fd773bd3e670c7a4cf1d5730d8f9fb6532b10c428c8507cef175f86c7ec261ce46a30993ff0a2bdac5c3c316432c8f58b7f721fee55603d58199a8b1832c4ba52a2c7ab01f6fbe40630a6d00c22d78afdad1923ff3de71eb658dc8bc6d4cbb56f98f52ae0c4ee804b8e0f8d626a74d58018024a35efaa1598e68ae29b893064c7c4812997f64daa6fb85caae1d77eef42109cdecfd84c059bb9348660f4ebde6cb688826fffbedffed80b2fc0e33d67eb73c2a05ff88e5b7f721c86a7a166abb879a234a4806f7adc710c91dc61207b5c6b5e4a9a3b6632476356006ffdf829dcb93fa3b8f72a158d421a9d731cc4781451ac7345fc8857d8cfa81b7d10c1ee2ab59083477b4a56921e1d7e339442da0621a38f9f9b62c06a340f9e926d1485b56f55ffac5a6d33306e875f4b8ca11585ac6180f1b697ec45a09e77440f87787201308e0bac2bc73689ee1edf1bffe5cb7ef7f6e75db087fd10d7e78441279117a0663bce03b04e01130ccd78f2a56bf3ca028b3fdd50181a083c86760424b8f1dd74e73efef3bd1356515a81234569461544b0990aa248eb1b547835d1a99aa556a4145a0c5b3cd62d1e6acc1e1f9371d7d10a33b495a311b9aa1ff9fd3d42b00dbb1a83b1eb42e8bc6cc0cadd701811ac6a56cc736d27114bf1295aa2c9d3a4aa22d7da3cbb5518ad944f6c5dd578e22201b1ea3fbaf04ffdc1ad47b4412b801ffcdd3bee14c1984b75480dd816c5171c1bf04517afdcfb3acb0dfd0b2df1e6000b1b82084e4d156f3b7906bf7bd7066b2bb721060b1d68a8d51b5a2fda1db0b78ead4790e14b8afc59fbb4c14bca02e34e04b138591d02a4b7062cf4590f11a52ace6e33a65c0f65e6a313f8f75609ab145aa7cc25c72dbedf5b1b9cc78496451e71cf0fc0094feaf834da86aafe33c6f9308f6ed72d2db90deedded3c02e679464ac3d35f76d3adffe23c3ce273be1ed106fdf21b6fff85a2f268a86267881e02006772c5b32edf31328f0280b740a1277f4c0e2b80e821c2bddb8c377dfc146efac40112cc7302bd40b134ba5532486d33d5d62b98bc0062656b693c0dab10f6be3fc01a0144ccd8a363dc868c88bfc662e2d9316bf39066fc44418833b3741e44b0b74e78d445238ead2d698d2140023b1c2db4588d7eaf828510863d0b86c1bed338460c5e51b5c4dabeaf6fdb56bc312721c839a366bcf87bdefce1eb2ee0e37f50eb116bd0dff3ff7df009aafaf7228ce39ba28513dba278c6252b5c7d7c44f630605e749070555d786b01ce4c156ffce37b71fb41c1180c7960df1e2b67f6ab85150013499724e0d10e56d9ecd3ccfb9a51d0c045a4794b9ab8368fe94db4302f3978c843a3252b6e2ed52a7e8ea5ab7fd62a45ccd9e8a58f3ab1c2de3a60b32d5e95ac2e9f804617555831461598a6d2421fc09191c056308babadc9c1fe6ef010af940a84b8b3b7bb7addf97dea0f7d3d620d7aefc4897f176348d98fc2ed6c249e4da978da653b00ece219172bb37769340d4bba04383357fcdb0fdf8b0260f00a9b35b80604014e1d644cd97a025b98e00f384569b09d75748716bba62806b5d57edcb7b239d08dd7edbf13fc7b4834176dc65ad4c2107ee7c16138525415d6091e427f70ab31e2a263c9637afb20d254e762c57ead6a89a4178a0486490b80bd75c2ec7020f9240ce168fc31004350ac86f48ceb6f3cf9ff9ef787ff10d623b252f8d21b4efee3d56afdcc6973d0780c003055c5d32f5de371c7074c459b5148fb5f5f34e64d51fcab0fdd0301b0332cba39dc58ab0a4eec243f7e6b7b9faa8a6db64247b5001555880e50bec0bc384bcdb55ad32b6371ab129ae1642f9e4447076934c499b96118fa08eccf5b8fb15991b470cad97aaa2859b13b26ec8e76724cb9627f93db77cca59a9402456e4ac59983193bab84137bc94229af3a4eb9a056ab36e652615a2096581e5b9b2a54847cfd797cf40f793d223df4ce18ffee20a51b0ecc70e60a5cb193cc1ba313df99100aa4fd398ac910fcec1fde8d9c2b8ac7ab4cea14c09c7b0b5672e88cc6b64a013b837123ea2224d9cca55d138b27a5da0922d229a9295a193bbae133d94b4b6fcfdffb0953bd52c8c2cfb4c0968358c845b4861b2b05c3bfe7523157c3bff776061cdf1d70e98911bbab687fb74e588f018fbd648d8b8f8dd859c776aa54f7ec430cadc731fa49b33b9af7df7ab1675c0dc32bde7ddbef5c609378c0eb1167d03f70d3edaf43485fba9de6c6608b2d1e553cf5f29d5681a311dbbf2d1223c79f7ffbe3a77190ad830360e997920515b9d6663c542932c80a0dc76542c8d72b8083a9342360329a16713100df40b51dfddb5c3a85d4bfeb1003d643c46a30a34bd1cbd6dae5c480c34424386a312f5bb71c720bfef9417ab3c2f1dd84633b09971c1b70f9452b8c8395f407e791108ee47556c7ec89c18b38516a885675dc4e902acf79e1ef7cecbbce9f153cf8f58833e824785ecdb965fd4cbf520cb8726fc44e0a8b4ee86ec40a40fcefe75af1b65bcfe07df76d31782c3844f3969413080ed79113cdc2862107d2689921508bce3cec10ba179b8bab28a957164b6d3a1ec69db060793544c4101cfb2567c2be5972d483c64b1c7a8801d5bf9b803fe3f7c8cbd7c5a9a9151ee7a680d121446bbd322a6a8a6c08ee2cc2e8a710d97cfc8fc92f3705b1710af0e4aa48434abb3be9e5e7cb061eca7a4419f4cb6fbaed5512e395b51a01e7d83a61950c73cda56227f49b0d74ef0c74e69c2af0e65b4ee3a6bb0e1c67ee6d4ddc1c0753699dd73b436c386df1f89ae105ffb330a2777c28ec21cf9ec8993e86a5a8412800e3aa4a5531e582e89e0ee8fce95a3ba744163c0b55f56e17f5ef466526343c79f00a63082667c082cd542c8e0e028c29625b2ab673c566aeee819d8bedb76ef2a604563b5998e2c6e452b55362678898e70908c357bee23d77fef2f9b28507bb1e514961ad7841750116008018641483408aa000986a45efde734375a313015efb5fef4251e084172f08a989584c5ab3b3dda2255c3ac15974c094d54bcd24e01bac6695433864e77133fcbdbd1861e1065a51826a4643148c2935ec9ac95a10f5d08146ebf059fb736db838af875e5c55518026113665dbaaac6eae075377a271f2fd818eb400380433a6d8fb27ab3719cc7eef0321405548a0204e4608e16bcebd153cb4f588f1d0d7df78dbff50154fdc6c73bb99395b0788d12e15a7b35aa820bda40d9841de727a8b5ffcd03d28aa48c193483e3cedbc899d21ba14001a336eca1529183f78997c0196cc0184d56c73644fbe2c9490c647a6318bd8f1bf33c6161a00704e466947bb85397ee483cdb7306fb9789d416c0601b2f137fa7d39bdc9d866c3a1b7b9342f9f426808d1e4c6c8ee173b616a434e18f600f0d2bde1f453ae8e72749e892d41324ef8653f70d31d8f282984478c41ef8ee185ebc13c8e38c04caeef9802d629e2d454f06b1fbb0ff74d1559150106e5fdf13d1bfcf2474ee1f64df632b719638a243175e460e30645588c985f7136dc614fd855418dd6e95a1b9e3415af105a42470e8936bc77cada187bdb5c71fa20f7b62e91466462a12313fff6d875eb06b54ad17b0fb5e9d9b19ab71e225629622a15bb63c2ca5bac2c2fb00d4ddcbcfafbb7f8d84f80b9d4d6ad933d2e1f42a7ccb27a4977cf93683bcd10e8b7bef2c3faa5e7df421ed87a44841c2f7ae7ad2fce1a9e98e7d9c20df79e50f3c2f46041157f74df84db36f7e2d231601d026e3e3d615314a329d0baa7f28e6b4f06b773efb14b9ebd53a7630801512ccca95551b168540d402dbd110062da74b6d18c57d249ff6645c51ff698c40b158200fbb9299bc79f5da7c35aae82175fb4c17073b64681550a38b3cd1853f444b3b6ea5d55005e116411e8ec949b22aaf2fb459336985a2827de79de37a084d01118b5d3270bda3d540028682114dbc94200aa04c977dcfe7f0278e6c3643e87d623c243ef0ce955d39c51fc86354e84f8712bf44882b5c77ab79dcdf8c8e90900b012472da234c6dde0b200b99a32e836572faac06134e32e6f73817a6cdbe24d08e66a1b23bb9197066799812797c18d415a71651c025629b69085c73879d93c250c0767e2a987ba67827b6e62d47ba3c9e402808408a401051105010e532378c29982b82c42274389002905ec0ec9432ab4ea27af2f7b48c7700bb08d65317a274851d2777494a754054a460c78da77bfebf62f399f36f240d7c3eea1bff9877ee951310d8f2ff9a01f6f8e2844319e2f1f2821345bec19042ae34d7534da8d5fc462c72105a3458eb165f44394f679d12b81210684bcc5e69e3f458d2386dd1318860454aba0cda59a484bf512b4383ce63205b19dcbd2e25333d87068b3964582480d0ef39882a2155505ea90e06a3471f3ed76c6d9db6ec607dffc1fb1bee4721cbffc3178fc573e1738710203bada3fb5ab012fcfa33743cca5cba165edd452f5df434c507d59ee0f6202ecb3f342b8f988c6d8f709e325b5fc1c1e015e5aeeff47ceef7ad90db7fd9794c2976929ce8c03d8f84f227c51ebd438753003004eeca426fc929cdcc344ad54f6e0995153c465ca5da6969b8114d00a40b4e2137ff241fcbbbffff5c87e6d573dfdabf0552f79152e7ff297373c96b86d8cd2e26b01b0b74a8620f8716fc7ba279494ce052133471402905d89946882c5ca96a496aa58ad120eeebd1b3ff975ffad0314002ffecd3fc0ee2597419df4cf2dd52413144dcc71a9fa54fcf7b6a9abf742983930b7e075c46065710a56e66c0dbee47a5400a5eafe8913c71ef74f9f7af13de7c7521ed87a58438eeb6fb8f50531862fabc56e561469490b009c9d2ba6aa78e2b11112d00a1ad4ba60058d0661a56297bc127f80fe605bcca89d7c34976aeafc71c00d3ffbcff18b0b63068093ef7b17fefd8bbe1537ffa75f87c484d1ab8834ba0eaa196aa000aa87332c9713ae638ccce44ca1d0aa0d45e1ca7cad5ffb7c7080fff043cfff33ef9f02f8996f780a4e9fd9b7c95b1e4234fe8b27a04c06d98e65e47dc5662e4e4c72680576e2dcb33fe39e3353fb7e44514b359489d5489b0563d5d782b07bfaf4d9b73d786b3837eb6135e8d590ae1f9c1a4a1c37881d8d33806f7edc315cff2597e25b1e7f1c2ffea24bf19d4fba04277652ab1c0268bd794407aa52219449995349c51a5859091ca3c7bb31e1ee0f7f10eff937affeb4d7f9ae37fc18a6bb6ec7385a84c66e6b265d2992978d663893b3e2b87918de301f2025d5ba55c222e6b56b1b93603d26dcf2a10fe2e4fbdffd69afad0038f9deb763aebd654c9d029b9234788fa14858dca3758aadb961e5320dab14b03746a41830314461c608cb2bc87eb4e6047344512b4aa94f79d13b6efdf18766150f6d3dac062dc035d36c3ed1e1553bc6a1f8ab8fdec1d32edf69c41d11e0aabd01dff2b863d8b8c861a9daa03955c5184906d296b0c5d805cc8bb22cdd0b22b5ce78eb3ffde1cf789df79dbc056fffc91f437108901451c2612c55dbf730d982bd756aa47e2bfad87f29740d0f26984515fb53691d2c9b5c30cd152a111ffcb5fb17073d7df2a318bca2aa0062f4c477ee89b0390af7a6cc436491a082f09cddafb5eb8f98fa6a27480d49da7362b383bd3f10630a01f8eb0fc616ced57ad80cfa077fef13bfa4215e549ddf10bde51e007652c0d32fdfc55cd19876f470571e1f8defebb56ec6d931d8380662a74cd458461e9cc7bc4e867513831d04b8ebc31fbadfebbdfa2b9f0b55f124525aec089897e5e632382b348e71a9f0628f97c575417af223847a782b67e4ad9c90bf99328e5ff9c4fbbdb65bdfff5e48306a2c29a040af9e0216f3af52c4c637cec1543a7fa4b8508d17a314c09804638ced339843503a811b98e298361a2343a14f7efe7ffad877dfef459fa7f5b0197499f2b34bcead3f8fe0be04c171afd8b17b9b0f45d1c9f14cb0365369d2b7349ae89013bd8e11886a83b5469f53b24a0161b583277dfddfbcdfeb4d7b27103d8e6702a7555bd53238a63dbaa4adc02a818363cc9bd9b4a8e98583f4420a6146f0fb899844182a9efab79f7fbfd7f6e46ffc36d46212bbcb0aa7bdaf1196b42a92082eda19b03b464448631ec660d7bf992d84a85571665bdafd5f8ae650aa2c04a796468635840a838c9087ada9f66131e817bcf3e4f510b926a0a31124e214555cb9939aa18867df8490ee383bb76a19a74b0140923e06c226b89a91ac078b47f75676f34787f08a5a9c5b72c6d3ffcef7deef355ffd8c6b514b699e694cc1a03e426e5ed0e9d78cd605621ddb70bd3bfb9e3ca6575e3421762c5ed0c83e58e8c44517e15bffd9bffeb4d7b57be2627cc1755f0b2d0563ea7d91f4b89440b004b878e531344213b1f583b9780b97398af5a7cc7ec9d5126ea0e3e9bc0f811b520168c5eeeefa2fbee89d277ff481dac3b95c0f8b41ef465ccf98d9f066690f5f1478dfbd5bdcb329def5d191c528827bb6c53d8ac57329980456a9d5a4ad3c490b9eac24012ac512610598e24ca0ed5cb09d665cf6854fc6dffa897ffb675eeb08e07b7ff91db8e8b2cb1043d7992bcdfb76984b61bc09f2213673c1944db98830da7a08ce1894866957c790b35f177164abf8157cf1d77e33beedd5bff8675edf77bef1cd18566b8874761c71628195b0f7c6889d2162e5c9a79d5006918e31a014bb2fbb636a3ad3a25da1b44b063b95d74fa2218997debb9403af7910bcf8211bca8358171c87fee6ffe7434f7bd2a32f7eaf6a49cd932d2a7576df04cfbc6c8de75cb1878342769ddde8d7fc974f40453046697d7db33793b68653b18aa102b8ef20bb2734e5c418c4b9c200c4055c1418572bdc7beb4771f33b7e03b7fdc1fbf1c76ffe5500c077fdf2bb70fcca6ba0b5b4239c4af84b557f1a6c1bf6a37dd41ac44e86d307b9fd1df91a53362f3aba7062a9542f02b6b3a9f30b044522caf600b7bdef2694b842393883c73de35a60b58b5a9c61e79c0bf12289008ea058c97e6f4cc8aa107521498749d9cf68f75f7a6573611d6c396392ebd873e3786477d9d151aa1803f6e7f2a29f79eee37ee6bc1bd5625d7083befe86933785189fa525774fe2214770638600f7cd15cfbbfa18fec2c56b9c990b8a02bff291fb706a2a58b3bd290882fa41a8d600cb840af0d10c7ebc1a3189952d4b640eb2368eb04187016948988b623d5af166bbd9b499864bfd0e1ab0fdda5ba138894a208e12c088fa9ed42a3ab9087081fb02979f0000200049444154c6d815fa4bad0881526068f83c0014154bfe28669e4b3b99e8d673ad18fcf5abc4a606744296a33c10c7a91754d75c01152ba24c45b1e7629510f3f45b6f57e349c0843b86e0145d13bb14512bd36bbdfdb5cfbeeaca0b655bc00536e8e7bff3b6ef3811f48d412470c024e0adf490d6dd4c43e1809fc1bdceecc956ae8a95f7bfcda56270fc7a3745cca5628c826d568c2e7db04a1602a82a267585202faa1c2cfaf6784a58854fdb75f4aa622f40b060b11a4921d55e39f4b83f842e4caeda6c0ec092d4449e756fdeb57fef1bc71daeb3ff38a3a59f106332ae00b53822bc031e86180dde051e04d8f5e9b49b42f933c526576cbdc05214d8341529bb7fa6f46fe57bdb9b7dd40671f68005c6ed1b512562caf3cbdef09cab7ff2bc1ad6625dd018fa44c48f8510430a467b14172fac4a3e702f2e0c316037058c6e0c2152e70d4d126c2ed5996c5eda859a978e828bd71117ad238eb9ca50f082ba6d0ec7b5c492c928865727e7493346e775502e97c514008d166ad5b9aec9d1a03035aa27d03bbce36203cf2e2cb9e42157df5483438b1c5bc101a1ec8c21cd9b9364697c4180a0767f5631607788d81b029208f68680e363c410046310ecc6805530cfbb3bd8cf32040c1e8ac42038bdc9edf9a8f622116f20efbd784e404e89155c809d6178e9f9b2a73f6b5d3083fefe1b4e3e5f243c21897adcd64554b20fd8e90a411cec8e862294a2ad9ba338761dfc86463f12772245bcdd3305c13a19657408013bc91e740a01630046f77e2cb400764c137160d2173c50e4f07ad38f8ebda1b6b040625ceed18f7aea7ed09b36ae850a72ed080e409c3860774c8076823dc956cb695c94cd15ff0cde3bbe9735112892f4b6aa310a563180a4d1315a72b88e767facbf3038c9ca36dfc1649ddea576d8b1a93b39779c5458ce82b169018ce515aafa452fbdf1c2211e17cca05308af1a9397519904fa111fc46ea6c59dae9209c7699dd4cee3190038160da21ebb7ac9198a750ac6b9203db3f62200b0a06b360fdc75369631c1d6a50fecfac46778b3e99455c1fe7e338b0eb513a5c4432981853167b6b37b3ed7e740d7901674088c387a0ae6f58664f138430af51bc118b6786f626685d49362f19fe1a0206581c7bde7e0f75c0044fe177bc8476f4dec4461a15208d66c407257ab13686f68b01a40450c2201b86092bc17c4a0ffbbdfb9e5fb428c4f9aa6dc8e55c6aa84eb8a9f6373a96dbaeae1d67a83e8d8eb171dd263493605f33436479b49977acaefc8420ce024577a752217e42b88c77f6c4055eded4b22563ea68c4155346d3a019a11d37854d919b238cabd24ed5fa371b6895b53443d3a10df44d5d10d98af1b93856d445d985f287cae8b7624835555826f7355ccb55893af27740a3456e25caa535e0dd51962e74a7388686f12ee8d01ab21b6d3b4d48aed949186d5d52fbbe1e405413b2e88415f7662fdb3414b2b7af0f653599edd1e10b4916850b4923063d7062b3955128a6ef05efaaeb02240760cb02890b5f7181a45d5e509d4c281291b34681ed1bbae555b569f62c0d607f380d7e6a1c8da5586183eb0ec5e1de26a6d4d62459429d78e1668c7b5ab871514d0294e0ce2804e7a6b80e23be6e9bbc6889d14d4b5b3bcd6072609b02dc50a3bd54af6b92aa602ccfe33541fb5998c0a76d7d361f074003a0d95a108b48b578af04434e86e3504d43c2157bdff72ec3958e71de578e93b6ffd8df57af50dd366db8e334bbc7a99baad85f7263a404f2ca1ff7b00bba7d9596199fdee18adc4db0a074e6a17b493a12a90610f71ce1567e7eaa55c699e89c76caeda1e9e1db7a171b3e915d5e366721a9ad268e8aaa79cf31d449a5afede2ab5075074c10581b41c839f171c31a1a171aef866eeba1b0a75ef2458793cbef6fb004752d68be958d539265355dfec76dfb7d5bdb7df0736559002db884d701a6abb3b768fc7d43be459d6cf1548296193cbafbffeba2bbfe5fc581adafd3c6febc5ef38f992ddf5f0d3f3342de232c3e058615b56b744acd050fdc8a5a4ad35b04a3f6e4300e50e82e3bd43e81cdd917120ac8832c660b20362895b758f9d1dbe630300c3114acc5248661c42334a002d94e02661927448ecb174488db01d402eb5b63c60f68e6e6ede1805a500b9648c436aa4205dc074eb31da38b9d21b07acd8a1ad67728cd6cb38a680a02eaeeec65daa7336a0a86af748c4545c373e8996c515a07f3e791b6dec1dbf0f934074c11e7a75bb9f86dc0409f31da7f5e9bff875577ce07cd9dc796bc1fad1f7dff1c43307fabf6a2987bdb07fd93661d5ab64aa7d8c43f0f062726e86c0bce9e0bce3ea25ab28366201b084287a86bec9da3c9bc0c62313362bccda5ddd3eab6245a69a5f2b131d55b5f72d84166db11181713040dcb81bddce18bdec5d1b6f82b0db76ce88ee7551ac18123d593bbbbfc51f7ffc93b8ef60c2632edec35f7cfca30cc9405776da4c65c1e0eb5cf208f18daad01ab01a3c0c0801dba2c8736d214e4f8c6155bd292330c1eb4e17009aa7866ff65afbe8664e1f583e3fe643552d49cff0932cc5e1f263f92700fcb5736f717eade7eb8d4f9dd55f48295d6a535eb5dd14424fd43a26f445b143767ed06313bb254f42e02473f47ebeb95a08b1ad269d7be031ec5ced35457571bcc27527145b8f3de7b94285a3db02d663afdc8d2e3db6bf9df191dbeec2073ef6a7f8f06d77613b6588277b4312176541d3c7637239fab807eee9d9b546b6b93498cd60af88ed94f19e0fdd8633d38c1805b77ee23edc7cf22ed7d5000c1dea3c8de49f63f16c17b9298669a254bb2767e78203ef0a1209a8106c0a706a5bb02daedb21a177bc1700ba6c42a88d3a3af9a950fd3e2ad04e5b9b4b6ef020a7071c4c9cb6a5d0322384f0f5cfffed8f7ec7f9b2bbf3e2a15ff2f65b6e48437cb696dcb8cab9681bce1ebc72c54e6a72875599d458c1c58a78b5fdbdcfba6c4284c9195e551541fb71c7846715c3221115283a7ab272357b7286ad99d462515e2be7a5008a5beebc17f7ec6f9162c0fe34e34f4f1fe04baf7e142e39b1eb065530176b32c88be49148019b61554d803c572bcdb32c7fcfbd6770cb27ee036a4551e3540f6302609b42ab95cd976c3f1ef16654bd697859de4fe21372ddedf204916090e6fee413b3c413700998fcfae76cd8f3e01dedea084a0886d67484a83f37a8a28ae534830b59337cd9ce15c31070d1eef823007ee97cd8de39f7d0d7bff3e40f0f437a769e676b8f2a4699249445b16ef6bd6de7dac62fb0f245beb1695b981723bf975e907c08851d990d09511272424bfca6d98cc7845fd03c281fce32e4813ac60db4637e1ca291f2a78c920bf23603a5e27d1fbe03b77fe23e67d3d9063898fb4835c6dc4c3ac96463277a4a0167f6677cf4e45d78df47eec069df3034e6aac0a517ed36cf984b75f1726d9264db5c9b871c928726904363e32c0cb1f2b64251a597da55ec994cb9e2eca6783fa46df43145ecaeecbb6f670b73287fb0f21121aa868c462fecf0bb53d3a37ab10a7eaf93288284a7bcfcc6dbce4babd6394d0aafbfe9b61f1f053f2c308d35ceeaa3f1b071936d53647c5901c0de836d42ab31423d3963c862c9861da510f330ebd18c7bceda62371e8fd4762b9eb58f3e8407424c559bd5114e946678763d4c5c3f7ceb5df8f8274f59c12204946ce5c15215638cf882ab2ec589bd1d9b2bd892a22e7d00a04193808d503e79e73db8f9ce7bad62aa404c36cab8aa759e3cf9f197e3b1975d64e1895fae2a9a304da9d670c0b6aa65573b37fbee1841fd3a0ad8900ca640138da90a3ff57a7b98421125345a02bbd7db774197136602bff5902aba7e4a100b8dce6eb3d167c788200115baff9a6bafdc3b97f6079c63837ee90d273f31a6f8a85a4b1b29c66a1c6037a9250e9ef9c21394add344593de48d2fc58e607a064349ecf3d8c6649ec8c208c6e2630c8d9044a4841dd64c52472f735332abf19a2be1a80eb9e552f027b7de85fb369361c541508b224f197188c8a5204270c565c771f9257b18070b17d6ab849c0b581dfde43d6730e78293779fc13c1704d70056858d44765cf88a8bf7f0a46b2eb7dec24592c5d3649bad3cc8f16e34f4ec9d3fa4db72439207c3dc04f0d6317f1e844987441c1a8d1f42632f7e529862abd50e5ba2ec6d67d0053f473b557633d7f60c8614501030cff57d3f79dd15e774a6f83933e857dc74fb1f8610bf689ee746471c6227e88705bc438a284941a5d43ef05216422c6e566cdc9c736dda1dd5ff9e06470fdf148b040d0e5b38c68634b449ad6edc9fca76a3b6b3255fd212a4ff7af31db877df5afc99aed6629203f627f7da8389da1c5f27dc7366db442789f204886f8ad2f822dbb9e0b213bb78e21597e0c4b11dd7bfe8b309a1b6d115e6e1ab1a5cb9c4f71b820133700be92c1ce1068e515a48c0ef0ba09d9a3ce1d6436c9d3d4bcaab82859fdef245f891e42a01bc89d6bcf7540c5b5f39db4f00200d38d86c7efe0dcfbdfa7bce8d159e23837ee5efdefefe210d4f2db38d2d26463a7aa979493a9a7c38bc7db8b41b0874c3a5314eb93468a9944eb554f44ee661f1c04340a339b20b66f9bef4d4144054f51233d03d8e767e30431643327862284e1f6cf147b77e1267b7b90937f2bf526a178c99edfacb9ca12c8e780550bc1ece1279ce05975fb487275df3e876adcb708dda1a6b3fb95806671e800564a8409fdd0d33ace4e84b8b6d6bd7e02b952430a7b93ab29162172e2e9e9446093e02c3084eec33a4e103e694d875cf36b9039f4e9b9ccf1d83f88984edbf78e663d7e7c20e817360d02fbff1d6d74b1a5f1c3537ecb2cdd86e9867372e2a0771b77227934b2b8b9fe1ef59c0e0f1c978929b86a5651e69561e771930cfc299fd2bccfbb212c72240516bd3b20aa0b4a495deaeaac582ec4c1700f79edde023b7dd85536727a4213a0fb8e7d979cea8851d318395a24b4588c1fe4d0d23beecd81a4fb8f252ecedac4025a6f68016a70f40240680a3310a9b53ceca5f5777eac42a6e305658ed7dec5bb05c5d153eafdcc290d5a203068b9330b404172de0a88e3c717c8882b98735def2746562bcbce66188988bdefdea673df6b2876a8b7c2e0f7abdf0c63b5f787cd09fd6a27129f8c77716a07d01558e1c8657e55891431b5f06b8dc16f9cd8b0d61309e36288c5c83f645a4e3a11cbf307867cb102d86eb43800c5d618180a8ca76b6d16ee49050a48544f8ecde955452d370063e7ccb9fe2f4c18cfb3653a78c968a3c65d45ab1de5bb77b9267933c5b0d09575eb287cb4eec626767d562cd29dbec17e2d70d8d8127c3d02699bbcda5793c7bfb7e1af27ec822f4b257a395e875e1d5bbb294fd5414bb77cc2fec73f4503cef911d86d4a78b2d4522a7ac0dfdb009bb686d6a4cd05314200dd84cd36fbeeeda2bbff1a1d8a3dfe207b7fede6f7deccbaf3a36be0722412938527b9240f80de815251a02ab4b3c566934ed41a0ab8ea66815412af6687bc77e24b363c4d47eaca2b81479c9d5780fbba379510f8fdb6bcf6e0b8ead523b162d79f40de3e10ebf1337148096d832be9e73c1e9b31b1c4c199ff8e429dc756683133b23d2989062c0ee6ac0c5c7d658af46eced8cde7e659647914455ea3a8b37e5dab576e69f19103df9c661428ed6e086e409d93169b446809677f8bdac5ecc5a3a04c6f56dd34bbf1fa4090096405b35520e19541353f78dca7638ab3f54441798af8ed62854e78a7ff6d3d75df5aa076b93cbcfffacd7cb6eb8f5bd08e92b228a977cc949306363e2c52f6ebd6c0c0d2c5e25b5d1fad2a4f5dcb1bdde6e0cda43e0d5f2bd68007ccf5682adbdad0a40eba88e1e6b32be632c327b5c3ffb68871842839d1a07457a418131391340c6f5438ce4001bcbcf3bc349d201d0b80df4fe005ad8c4d028b801f4619a87495cd618dc93d64ffd99a5f7e5c9c7fbc0f7e7df0bc8dceba790fa3d10f034ec88876db80e6b2e0d9e2d5a8025a4bcfe1e6edaaf2d94736736c4604dcba83840fca67f75dd156f7a102609e04116565e71e36dbf368ce35748cd9d3c243d99e2b241e9fd818b7f09cec7e691153c365b8f5db69523ce0cc7f4813a621b8195456039acd26e3489334d14059df5c530a6544b60a65a0fcbf706c1902c2cd9df669cd966d799ee0d0934e6eac7af3aa40558c8421525a8358bdac9551b5596492971f1f540a8ceeed3996dc6d94dee6198f493047049afdc9b027471bfb92168c80c018c02ebcc3f7406a19d96b555f1687c544d55ed33c7970d163cf928d6c3d06139a39117632d5a7e528bf41932e8f7dc9ea322c684e3497eee9b7ee323cf7d3076093c08837ef10db77c5f857ecbec6afb6a4eadc546021756f19b2bee79891933a908625c0ca00fc2e4b39932b15f2b564f5ebda2c111d7a61752c03157342210430ab64391b1c76e71f6c26527ec03444fd4bdb860d7a756b17c4d5e0929ae8c372b5a77860b4276e3e2e01d8abef42e13df548eb303f65d7686d8be430a7d7027154d195fb70e9418da2c744a3b30be67d847aa2b8036d3702eff6dc709d0f17e43552ccca30649f2ef31fae96bd7d3512be63afc4c0e1aaa6e24532eed948672224068275d2919298647fd858b777ef5b3b54baecfdaa077d2f08f528ccd33989189f707a2255d004bc9e8027fdaa1b7ac647ca119580882dd55c4b1756a19b6d103287fdb337b862b36e4bd34cc93f16183bb54bdc2d58b2c542622438ebf02ddbbb51924d2e1beea9ffba9744eea81f061c580a6236d278c79e2b563b03176b119ce3724313f7acccf5987c4f319719062da7314e2c7e642d85000ed5a1afc5e41a4cd3464e8439487c4ac25f575294049448493b7e894a8194d580f40bb97001aff1bc02128957b88a7740b3b7346125cfe7d6fbff94135047c5606fdb21b4ffe764ae9f15a2dee214eab40a371b2ec498a68a92e7fa51d8b2ed5fadc564334d2fb549cf3e1f1a93006f4b26a53e7b1cfe8cda67e0caa1b0fe831cc3b44e90a45c66fd01ed77bf6bf1ea88157dbcd15f4449365e5ec1eb57898426116caff527865f26eee1e527589032b2c494350ece836eb0ad2bb60ac8cdc912072b8014b42b5a10d1e8604fbb9cd5cfc24b31080c803af937400aa8c923527c272badddfa19d982e3d3c84f67b3e6f42a851a461da3678c85eb7cd05a73633a6d21123f1b06f59c4b2d637e378739355084eacd66f783006fd8093c297df74fb77afc6d5cf73a03cd43c4df678902b396ca56219304bc4f0b88b0f96378478f198fa31c68db2140ba41a3f6505669eebe8953c7a3541d769668cca2404e882e3b11537e00db1dab0667ecee41b834510605100f2f79add03b17a66e885f72f2e203e556d08cb544c108648093173f2251acac3cf7183b266ddb218cd619fb7f2ca2493cd65d18ac8482ed55019f7e41c6a4f4348c978282cb4945adb77075874b11d40c1c965024a8890d7bb2cd5f379b2fb86f319b9914d182742610e70b51e01ad7ff0e37fe9319fd584ad07eca1b5eaff52f2b4e0c852ba55bd43393488881dd0d50d85e6de62dd282d04e0314bf194e471206fa008b5d5d060aab9aa753e4b273a3169a497849ad1b479de5e2cb1465641088cb5a579618be3a84d67d73df86b46f7780753c5994d6eb121dba500a068f504347498cbbfb731d5b849ecf30ee6d2f0595534fdea56f4412f5058386531f4616d0c8726733f498298d8390957dcdcdcb81c76bf75a8b0b55a159b38bb1c6f67a797191965c33653310e4de9fc6b26e72ddc537326e4883004a2336492ce3c8c2ab4559d865a32248d4f79d9bb4efe6fe7dca0ffe17beef8bf8fefadaf496215a4287d3825336763c579054a7b57444f8e7adf1ab4270eeca83663efa56dc685346af8972732b01a4c80903d6c8492f656113b636cf8b0e0303b8dd7c5523221c621891ba577700769136b43301c9ce4261134da262b7336c8b253538b1fa53c35547b82a8d558707bab84e3ebd420c996480b33ffc3735cf8b9a45b13c92122a4da1b2272668595275ed7af1658b8d71443a52768f153ee39d07b166bd54e210537b475dd328e6e130962b0c14ac1a909d24f5e480f5b8ca64abfdee727cea5623ad82049f8acb4a61f904117c8d76e375b946af08e425b52d0b27f4ffba918efb7bc65b3148021a19e22891663d756bc68f1a2f4b896b01b7901022b9dc6e65dc2427ba213664cc68af3add18caec345bda39a0db19e5b5992e6782fb16785cd1f5f7beccffb3078556fe5554962dc4c82884850f2603d5294c54fbb05f201f41876d9690d74ad6b1a1bdf9388c5e08294299a8726943aa4c38aa7344e26e42c800196c02fabb6d53f23b9b173f318bbce2aae1cf3d69b8b6bdb84406f50e67b32c154983d317424f2c5d11d0285c474d5cbdf75c73b1e9035e30174acbce4edb7bcbe54ddd305c552d570444b026af3b04c6eec66bb97c22271aa1c39a63df973461ebd72d5dafad6ec27155281c98d9cf11863518519ea38c60ee3b917de1923f6b7b995b479c3d96a446482a4ff287d2609074cf669b4162e90fe6a461e1cd7859f086684db5c1ab446ef1c837560574fe68298f8b909928746e84ad19223543bf9c01e3ef1e40cc0808edf4fae374d8a26d00b284c3a8d226acf85b12fb9c900a08bbf5378f36fd1f6b9bc57446018fef104399cebf898687a792f78b5220b8c2d1987d04e6a62fa13498575d1055f3352942f7ca0067dbf1e7a18d357d0e391f740ac320669c91ce01ea79aee328b150077a52204aa61dac74ea5365e47eb24d6ce69d8e68ad9817f16311afce68d00501cee3841c7935581dd556a858c650183638d45ba0e1d8b2e8023068bc46bebf013a1420e26e286a204d634570ceea1ed3dfa83a647ef423b3d811a9c0da7da37334305116b066687f921e3f21627f6599265c710ce4e5169271331fc52d5e2eed2433e8aea881b15da7b48834e99081a8f8408484f02ed19195233fa49c33a80089a2c422eda38d236025a7d9e8ecb502ccaf408e98aefbff1b6fff9211bf45f7fd3cdd746e02bd4e703138568460daac3db97b9fbf484fbce666ca68afbce66704620f14de29fcbd2368fb2682c9606f1008ee17adc1c3cb3a8345c3f3e897372c07df6e3b1c7aeb69198a44eb379231ecf0269822f5c36c83e5af2e89b79f6a39082e955d1e24968e73788bb461af07213c5e09e38f7d087f095486f4b23334ddd503dc4ee187eed52090daff7bc26176dba78247f31b4dbfafc95ee7917c524a06d52f1fbd31499a43f276b69eb8387a2231e73ee0d001c972702479900a02ba632710c0138739031f9442dc6fba40147df90520b56297ee74336e82fbc64fc0e893128130bcfe80ea6d29222c69da7f6738392866410d2dda7271c6cad3b9a45051edb62aed6133a2b2eb06710024742acaf0de850d810c4304b740d39c6cd7c18b9f4694f5581e3eb04ca23c4d80d038e38f0e62fb3747a3796d953085ecce86388d5f306865ad13bbc6a652b92bda6b527cde5d0514dd8923c964ef5ec0592c67b5612e66d73907bbc448506d7c2eec38bfc410ada3d5258f3414b82ab2115a3d366d993983d36678595920c6d9a9847c85b4ff86ce33844e8350a4e2f604cbd84f8ee3e3de1eed3b34d51982b72014e1f645770f2d3cc73a25a0b6aad5ff0d21b6efd1b0fc9a055e5abc59e5abb8195d9ba74233bbb298b42469f4c3a0e11dbb9f7b71934d533e81883210c5ebeb58cde36cf8e4bbf02fd4836024faff4019d9e6a614007d693bfb7c086590e91ed5ef6138cf9f9f34d1445d16035a2096c531298dcd8c1c41e3eb4e202ff3df8666865f24599b9aa36a57b7eaf140c0de8125c68df4315580f8b34477ba2264261457a6f7b4607536df7a4142666da871d89734ebc2cbd9d6b8302633095569e76a32780fcfea5f8e45de75e339c5047b756c90a60dca09c86cba470e39a80fb1b3b296c0b595871e01c9625cf9a545abb978228f2f50fc9a093e032c6345cd6bede55322d0b76e59d52ad3dde77308fc9a9718f010e95e7cd6dc99f1b7a2b0a88579664812da31390e07f4f2f16a457c658ac594282a4382e3b4bd8bd21edbbf9eff570be1023d550fb201ec6782dcc8025713c8a015e9f77d348476972b54a290d3300cd23321768e576ffbc5cb5f150083fb6b85f4917ed5e997ce6e849779bf15d894df7b0c18849a418d4867eb0134604ed3a18fff39e0d49b01e5dd03185b67101c3e51b6fddbdf8c15470765bda1b34fcbfea42c384ba1fb629e6e6b571bf4596cf88728420c7457a66dfe2a6d8bb4bb67335c9da64dac33c3a8b6fc124aec79022a21846bb998bc7d01617b3d0c8ead6544a8bb379542569e7668b3bf96fa5022a76414104b574faa855e2ec671a94143c060ffc54699538ea7db4b2ba1b4710603b2f8b1616be703351c928ab7965267fc45a6308a85a5afcc97984a5f6e210bd73582692da0b32fd7b5b60c06a27c39f5e4e4637c4aa87e89ea52caa73e821db361700a161e0b651cd097183896f12f10dc842082a0db32c502636359bf927c6cb99cdd10a95dead44eaafb112ed7338e6c3ae4711204fbc3f83fe8c1eda4f4f83543c66b6a46d8151b281d35fd0985e9eb543389ad776f862b775a82ff424ca62d0b6a1fafc42f48a21772dab8bf4284c3eed751e92a81ed292039ccd07965cd1864d8a58c99e1bb7b53279dc1f63af6e89f4b0802c3a8660f4ee9c0e35156da80d80364a63e3c73d0b2b342ef05a948a48d5c32a6d9206ed54f0f08ba71139275909a5312790434e82657262c251bc33bb3066ef4db73d6e068a9fc6ed3fa0554a193f133962324878910ea2fa2c9a3957d35411b397147b7f236d8414d518041ac27214fb9fb93ead877ef94db7bd30c6b8b7d94efe7022004b76588fe731c9b269f4508237a4e1d222d8df963eb7233a8948a86a697e9215b7564c508bcb5a22e448c398a4753ff047d9d11283a0c204bdb9cbaa9a703ae75f7763e895c15215059d3c45798414c4a5b87a79178a06a3b53e397f5873e564824e331da269c79176d966a1b8455437b06188ad9b9bc9236a3fe21558203e0039050e00190c472f5d810cb64f49f3bc5c4308de60ac0dcaa3f87ba9d60b48d890492d83a95a8d4cb4bfcd8db0941d9969d09e9f02b9566ca7825c05aab585542ce9ab1e36604b8281107bd5d4d88715e90178e84f6bd012a07345cbc4d58f4066ee07534114603b158cad666ff8308fbc148d43c131c5f79d9d71c9f111a432f21e2fbddd38c4a6e95155dbd4a6c65188686df540c7af2d11eb9a7284c8a26bbc11c79ee9cdfce81e1c2ea491088031f53f9b51db86eb6881bde7540e2b872a88fb86e6ddd493eab537d1aad3121bd2c1fb2d7d68125ba9cac28be6f6b3d29a03f89902ab368ebe2106472c2c817616dff2e47102d6b6f60659ca0b4cb92c9a5917851541e3b920d873174f30936b7891e9cc8700001b26494441546faced047bebd43eab38ff05e8f723c5d0466c50526109141071b22151bdeb492862f2600cfabe83f2bee3c32213f5acd714e53b0d90a4128af391f45316ac31c36a2da33ed866ecae12487f2478ce1d4b45d2293bbe1a7ba1a5faf71962c0c15c0ef10e586dac0a04b51b4d1e2fc319f8e64c9163e49cb40e76cd483b8ee7452c4d4cb871b141dc377812662e925e95f125374414b8f0bab6b27a1083ff04ddabb5e415e630f87e0c5fb64e5fb56a24ef6b7f669387235539f24200ef9a4922087179bf028a5ab5d3be5ba7eeceb50bc42c43ad219ac1911b4e6e47f2f7e4268bfe5907db8c53fb1625b0d22a129c8589c668e4a9423b4951da545e3e63c3f6e5ae076dd02bc1ce7a35629e2614f5c65101460f01b267e4e3100e9588cdb35a1364531b2d8a10036204f6b715b566ac4602f79e693bb446bc9655b35c14e3109cf6b87ce8b6785dc5af87730a9b07f4cc7f778c0bcc3540520f2da6b9b8a7eda32724e8e2a676823c2999d6a748cfc35987a119314f34411f475795c230f61e36a7dc1c4105b08a1143f06e6e502eadf7faa5248bb0c20c8a94531a37b9def0fbc44a2abd7d5585d6ee0486243e2fc5e3deca7c004dbf2405df609e28aa1adbd14e8fd0663346c7b6ab1a34b771152ba85feb1030cf9daeca6be2e6e37383d96f4b14e1f74eab96fb33e84f9b14fecbbf7cf5dbb5e403c389eda1b3a5064a44a27bb03e21a9776b37c577f77c9bc93cc8d96d69dd2cbc60af5260888263ab8410043bab88183c13965e2153057657b18511c5891d2c8103665cc4517b3861d93360afa11e5ea3a7fa094143004306e9a803e35bc28b0c63982013862411882807e3f114434382c8296153026772f3f399901a21085023b61de25218e738ba069dc7ac736d49f39028c3e5d7e9278f118b0a72ab5a6a2bdcf0b464477eef3a51af4318f59586d7465554bbaff79c99b1bf5dc8c1796e34cda539b925dcd943337b3f8657ac3e16bf07b5944f3e68830680a9e263dbdcd94f24e57b9305520838b13b34de6d6a4985627f9371b0cd7ec176b3c6a14fbada38af98e5d5e81e995e69f09e34ba1b554b44882030a65e720898c55b91c3e2b3f5c0567953c22427834a9c64c0652549a973b50d79080d61a1719271d6a89dd2ab94c5e3d5d5d0a9a6809d1c0c75c8cb5e3b3415c44617d398c7181bb783f76fed54d9bd313a636e91a05675a52371b25367254e7ecab44d100deb5d0fa672baefa10d8710ad1c4e2449cb5888d47fb63c609a6be3f0cc857d8166f0a70f327266974ccf8f829822ac4715cda8bb94721772df4c05fb536905a621f28de48fefcfa03f230e5d6bfd5808e18b831688b2ed5eda71ca522a13c25c9c52291d13a5b69a8865c280c77863c466aab8ebd4844b8e8d2ddb673248f82d78bc977d876361c446dbb4a9b2b52e6763776f2e6e84c552688cae08542bdb946a2b4894455c4f1482cc3aaa3331ce66f8416e079b4d69e49313a78872a81a02e266ee618b49d58a761c1662210725ca9a03708f68fd8901075ada756425c784dadaa125814483dabc9862df61147b1fc02150182f39570b9178fc5bd86706ccaef61d67e901c0ce6058f1c1b69ae26c0a00ba50273b6e78da306620b2c11cc0a810153beeb446a7e2b2122a021ce4f27bf767d09fd1436f7379670a46ae18daceedb82ffbebf6d6a46ed62e62e237c2b2541c32146e88d510b0992bee3e33e1f441765cda6fb8b70a05dfe263ea6aa24401ec01775199e8e84bd1ce2b6098c09b46fc9c82e7d14f037a27a0e3aac6c9b0d891c2387c3d374c27db2f6eaa27576c3e60c8133d0c21b7bb3a7b88facdd61b684638faf71b5dcb2ef9d88c39d74613758b37c8ce3bb47b0b148dc53e8b14ce558a8dff41288e88932a2ce770ec78774c4dd34ffde757a97be31804673705f79c9eb1bfcdad9023fc9e311c4ac0adc0d29b11544dfc1ef0029873dc77791278b77fae8aed9c752ef13fdf9f417f460fbdb38af729fa43241189fc6678bcb5e3de3686f029a419aa5c760a6303d3837303a2609a0d64df4e0517ed0d409043f12dd065c0189f9b969ab6b6a5c68320c2e2c88c885d0bd96712bbc758b92a3df522a2b7e01f4c86058f29980a3dd822d48d861b65495ce70662c329e3eccddc5583881868356f454891484ef2cf633ccda0ab7af66f896eaf9232895b0d119ba9604c1e8796ae4ac5f8d47ee955561ae91803547ad99eaaafdbec0aa70ea50dc2d17256283bb53f2d9e7768501f9d0db9e6ab31b66be998b31ac2026d6235277693c1b4e8842c8122c4849af33bfeafbf7ad55beecfa03fa3877eedb3ae7c5daefa87f0d22b3b7c890ff3c2558071101c4cb9155cb803c9722b1598e682f568b1602d24d9b8fe5c8a0821e0cc41c1a9fd0c85296d16e74f90d5454a28c9414bfaa4f10f00b831054133cec1132bc6bc8025594d62cbf91206218666a473a98754edb979d88ba7bed9180bb2197572995c2244341ebb1e6d3903c0e4cee151b57065eb1df02c7a6c9c62491981e4f83400d7baebc91cdf87a11bb9314470ccacede5433403d2caea5e771c416c925624590a827bcfceb8ebd484537ea20e29603dc643b8ba82e1999fd45e1564e5b5295749af74eead6223687158149b8a112214f2fbf767ccc003e858d94cf947d7517e258620732e5018afc232e5ceec5a8dd1c9fd9dc80d6f63827b32fe4c4a06acb34b9ac803e3a9339b8c29b3135adaf80691ce62a3815099a78939fa83a24724e185e49e52b479f92917e4dc1f1ef1e09577534ca5423dd13c984a4b3683f4d1c0aca201b6a978120c8bbf6752b53b466c9c2e6923364213295fc58083a9340d6d364fd48a8639af92b1126dd825acead9ca2d1603b3f0c236ae9523213492b91874c8fc8302f114099260e4fd011662ee4f190707c54fa39eb41f96f035386f6f9d6c23f9f78e2140fc5417f7cc5635b437127708430c1818028a0f50f513c626d3e6bb4eee9f79dd033168b9ff1f015efc8e93ef1f5378aa686d47ec323ee59b54559cdecf7624b3dd487b02400336a28e1e920e007a058b312ca5092873909265f1294a9b38cbe3b82ad58b42831299180ddeb0d90a11fef7767832b6ed4595ea9b8b5d37946950f40dd5f4f2dc18783fba42a7b47b42c149c282dc77641e12d7277b9027209b2858ac28da05e119d31303168fa5a377df57b529afcbc6d783d960d3c11358760bf179f03d7351dc7b766a5a7d4c7a216872096c6e1074614d4be82b54098f7a070f4be7aa6df68b00edc4b8fca2d1f1e80011ab2cee6f3354818b8fef60caf5077ffaba2b5e7dce0cfa996ffcfda73dfd9a47bf6f6ff4d8a81ddbd46e234e6b47d4a983dce234c0082d2986a63aca5a3e5f43888ddd1c2975d92d5ea56192eed9a24f8af58dc0014366d4160b9364ceaa57bb162628d2e5bb801ea3a74592c29bcef0c99927ad38270e9bf1359dba4ac8aab7368520c82e2f0be93c6ca23a8c7b53ec02964b63246fa4e1b5cc06fd3e71f3ae526c08111c81e2ac4416ae5888ea6c45fbbcc9c7dba97a674fe8cfa0f147588d75636ef203b56b1cb611d2e8a7afaad9cd947b4c3f0e1117ef59399a680837e1942b240dd05a7fe7f5cfb9f26b1e889dbaa93cb0f59d6ff9d8ab1f7be9b157e4edc6e246f75a4c1804d2a46ce75c716a3fb7d8704856212a95b0596da147136fcc7dec81551f15552bb2ebdc8d4340ce96155b6ce95c8dd8a5a8d8be33e582558ad85d279452bdecda8d12ea0232a16b56b3ed8963cc98fc91cf40fe08158954d114f58b233b3c7e790c84d09552e981972395470a95576d344a62779d0aaa6de35868e0af75eeb16d563334d60ab8785d336504bcc9c1c8f69684cf84fefc67586ba0c1a96ad3fcb098bb87520c558208e65c1a4c3879fcdf901341cb370abbba8375d09fd81d3cfcebbc0ddbbc01a5e2f46bbeea8a130fd4463f2b83068057dc74c7dbaaea5f0689ee7eb1cba398f3f1e66cd8a482fc86da80f58610b4e379a9c161a102995ca393668ab3f91ae760516ae726a1df9b170fa0d6eaad49f63ecb36fe5c142776069017dcbd21554d3dc1f1b8941e4d1c8b4f8998b671ae6b451bc659d51f9e5acc4af2110b43f3e2a12f251d424083ec9624ac5ecd742902d5d6dc4be3b2d8dd91a56a505e90e00c3e6d25ee14c54941c066caedb8574f56ad3caecd51d030b9df78ef19469048258b7f6738c9260e0e093dd866940a5c767cc08e373073d32bd094ae6a5a63b3ddbcf2f5cfbef227ce9b4103c0f5efbafdc351e40ba005a23e923848ab1e2da1260130cd8a7d6fbd11785747b10482a5586683e43530fb07eca110bae30d0c22d859a5c603aeaa588fc93d702fe08460ba79c4ad83b052a6cda898c0f23338b385c49c9d5574fcb927724d8d34f676261ad9e08959ce946c404bd2b84948b8e706b6f11ca14d15a0c17074068f755193eb22c2736693b1b74e966ccdd6c6c2bba9eab451df1031f493906aaf74e6d3dc7b2a196670a3413bb1a82a9aa133041a9cb0c6f08c5d34001a1c671edceec76a08b868cfbcf2d6e36b0a6d02cefc1b07cc39ff879fbaeeaae77db6f6f9594f92ad71735d2ceb0f86385c5ce6d9325d3fa69795444248c7762352129c3d30d92b9bdf11fb111c04baa83e123d588fe441778a246025d4529da013eccfd9b1d6a625e7c648e3889ea4f03420832df80cbfed5c7c9678b0ae94208d0fbcbf2d2df64b512152ba8100987cc30c1edb17f7e44c7882278ab5644b8eb493eb993f6c73c118a327ab24efd866012c11eb9b2ff8f7b62205855a68e4c943b15a151940d0ce1be1fb3289a3b133815ec6fb6d6c8463ee075b47791ce1d0faa95553dba1fcb71805ea70669bab325acc4cceb3a0b30b8d192a0869c0366fdff6faebaefeac8d1978101e9aeb95efbefdf7631a9eb1dd6c1be65b152dae6b4733ba00e266ebb3b53df19bfc2814880fdaec5c8bd5108deee809e8dcc4503ac32f88c1853106e4dc3d992520b5511d05cc9da465f38079353e88a597ed09987dd7ea096374ef6b465bb11a1366f7d0e310fcf5ec62576314867e1cd7aa6db027bde9129561dec506e09657f89616f4419efc4e0d228bc4baab13a3e450f29a736d9b9a4846e7e678dccfe7e7553ec0de8f892ef39071305e06e37e4a453403957e9ab260b41a02f656b1c5c80c574b550c21a00a1063c29cf3bfffa9ebaefabb0fd62eef5768e6d3ad6f7de66f3c739ea71b4308ed3835a16e12caa561a9569409d8db89b8682fe1d84e32455218c1897444710fc3ccb87574bbf12a2c46b4e30dc6ebf04adb52597476927a2bec788c089822906ac73f594458f989c084865ce976e3171b2504c1dae7a6b04b471a06cdb1c7cbae152fff8b3700a4d0b5f784a397b58d9266b998f173942514f92931992feb18419b42051099b00db89d0b0eb6b911cd4cbed63a788af34ec4d18fec3fbf990c3a5b0d46881a87e0b25f8b5318ddd04dbcd392cded549a50faa34e8c38be935ac3323bbb455cd90980aa6ca63cfffc433166e0217868ae97bce3e4afeeecac9e8792914b6958338f5ba0977779fc325e3dbbc998338f73396494807962220024c5f3d863e2c5f081c84beb2427aa15c491978e79171eb9eee17a12d8e13d66f080623b512241300c9def61e84739545924eac33f97621c051ecb54169d6613699f72c5ee3a2d8a32ea3d87bab8a6da365625da818eccb0c81163d7d0a6dd938a4a1d4012ad8892f0759c62c6bdc28d6170a30fccf47b52176a56f6593defe03d4cd11cc6f1dd8418020e3cf9b47ba72dd7da5d0d48c38069b3fd07afbdeeaaffbfbd730bb5f3a8e2f87f2edfb7f73ebb6d62299a4b83a428a662c5165b138c8528853ea9f521d43e050d12149516144114fba00fbe6829be997a7950f182149116950a2135b45085c6da4a4d4d9393466d6caac9397b7fdf5c960f336be6dbc52298739254d7ef299c9ccbb7f75e33b3d67f5de65b176a8f176cd000b0ef91e31f998e46f72aadae45a80fce8106509b6a5ba3f3fd1a5503e581881c24960b1c752d72e75db804863a1514c5b8580108a01eebc8c1518ee87992536bcd42951d77cd0c7d7596cd581fe660a9b8285942ec73670cd7312c8d1bf42ea0c995749c4ae77628ee409f771e3112c6f9185679b1f62eb9632cfe515632f828e75a0f4eb5f34948943287ce4544101a6b4a000796cdf242f73ebdd75523ceda7a5e2c6546b61d2a4c69ba15cfe848230fa89430f062b54615298e3bbf73b93ae62e94de54ad75d299299e3af5d2d9fd3fba7dc7c36b618b6b62d0cc8143cbdfbfea8af19d3104509eefc03b12d74570d090769b5ade08a41addce137a17b0daa5638f775fde5114eac8000e84ea6e9b0c3466d780031a0e5cca42038ff1caaa0aefe8a81dd13a3ba9ec3bf2bc0ba2641036d732cffa50aa0615d24ec8b515449c84e2d79ba28a95b987ca4a4d3ae6ab84c7a7549f6737f3fbc6ed4a5c3600a02c82a4efd65885177c8a676acf64976fb60506710bd56b3a6a81114af2c9e59e4105941821e4c5ab503782c62a4c4706d3b14d6a4d568202519154f95929f77e3ac257beb173d3e7d7d206d7d4a001e0734fbe7c77379b7fa6b1663362c03c1ba55675be831de8985c57cc7a3565ddc9c594540150d2af91d287c1bb2f077c6d63ca2ecebfd3663949abda1c4ac9c6071579283e30019877a144fc9c9e1dbaac43696be8028052b0e7b3126173f1150d9e91e18414fba2a9bea4a68e29cb9a44298dcc037478612a95dae05846e3ab1c582de0ad9ddd9474bd5a528678e328d941a2728202e9b9bdafd2a1d669c76f726306bf17e9aa6595654485a5b12daa85d1a916044a653d3dbb8f56a705ad0d56e6fd533de92f7df33d9b7fbcb6d6b70e06cd7cf2b1d35f1c6bfd05658c8d316075d6e7629b1c31231944e9895375c211ef56dca13d1c4d1b22a1ebd36dacded78e110045a500aacb60b45a4840f0cecb2f9e950400c5a0d83042562fd85f64ff95fb187dd959b3ce5adc947a616518f89bec93724d30efa63e448c5b5ba439a0fadfc30955fc35de9939f134ac7de1ba93b2e8f2bf794a942d416c354ea0162795134aa77881627d4f7c88988e931b32199952d0c50d00fcb3456c55a9a02a42416b03509811f4f7bef6ae37ec5f2fbb5b378306800ffff2d8eeaba793cf8eacbe3690ba318480d62c76a624fbaa8fc1bb9e1e3c1967ead887ac9dd8c8d9c07a4d5a3ac2ebb0749e873cbc3aaeb800033d989301466b0c6f566d1b5d9205ec0bf34ec4c1aecfe95c4eb117576060c8c628ccbb500a89d8c8d2ae4918b57641c3661d9ddd0ece52b2dcd6649f9635e5521b0dce54e6c137831e4aae13e153509702b2b4adb3df9f7e1f4fc3ca29fafc86f0f76855a728ad7661e135a75bcf143a0f8c47165def97b58acfdcb76beb6deb6a705867831ef28947970f8edaf6dd08fe2d515b500c401cc854945a7bd830add165d84b933b51b8490040316ecfc5fcd9674bd5672aebb26947e391b4e50ab5fc3bd2cf985c508e45570355e518d611b352a0b2c261b31e8b85e741d939bb3e949622b0fb42e5905838ad78474eff97024ea0263e80bc084d4a670f4b64f9fbd2eb02923a938e7e0d94f24c7602b818a86974b9068217db70a675ba71220ffaf13c173ba5a8d9d5e1a0391061d4b64949f2e14cefc3735ad3d1fb766e5db71df9955c3483663efdf8dff68170870fe1ba51dbbccdfb7cc1bbd5d0aa46db406d11e239178d4947981b46d69e16930840091a4b7963047c08c565b046c3aa943d6303e7a3d985e4bba760a626005ca83ef5ac4b09a12b264d31f06122a10c7144ad922b92620e165905e0821e2ed28a84daee45d500cb4e991fd6eaa4dcb0eb331d5904aa861acacaaf8b35b592d5316a40a9852aa500ecc2959204c5dd31b55329e64dc61a9d6a55ac81521ad17b1fb4fda9425cbe7fe7a67bd6db96fe1d17dda087ecfff589036d6bee688ddad11abd41d96643ef1cbc4bdd101a5848db0283418303590d2cede59f31a6065244839ba4f202e106590e8e80aa640c457f50f549819aea3ddf794c1a6e2c481f72ce12a373b114d8f0dfe792d910a95c9d366c2d23d441374c2460d67bf0b8619d7f3707d81135e02cef475e38d351ad68f02175c0b02a54f47ecacdb8aa76b270da5dab7c0b58ac2a158f3e483bb1826d9a3440c7f527c898672d117d7dd7e6ff38ee76bdb9a4063de49edf9c7a9f03de1109778d274b3745d797c2a4102288f29b0d140398bb583a46b4aea59d403dd2799418efccc889643efa87e3ae5c565508a9ae9865c624e5d6d1c14bad2d6e070f792975d640e91df483c48742d5c489788c58d5d8d3f7541587b5dbac9e15d586fd7293d3dfcec76cb0badcf6a5a08ae172428b4f3b00a519824933aed31f2b5ddae0b921a9582838071742af957221d29fa0d47767a49f7e60f7e687d6c722fe3b2e1b831e72d7e1bfecc16cd65e331ddddbfbe0b536d78f1bfdba0028ad722d45180c4541ea7be39d97a37496065332a36628190e1a39b0e4d1057d88980cb275ec93f2d4d3615d33801220f19d2f259ba7d8c0aadbc04925f69d8737657160ca81311bb4cb29646ecf1ab67cadf6a1b83b3c368003347ebd2c4b0218a82fe92b56e760194084c6b84d594c8af11f04f53c40aef3e1f71471d447f3d8037bb61c5e8fcf7cadb82c0dfa951080bd0f1ddbbd69c3e89dc6b6ef8d14b7471fb758838d8022a39561bf15480323732b632aca69d218b1a49ea8522bcd0e3bf72272e037ebd385383ca398dbe9975a5b76560560ee631e81a0ab561c38a9919eddf0a047e4b91f44a5ed6bb8ab733038eb7ca91b61d785fb01c74d9e39524e0eb550229b5c8534d466dc9832670439c8e4803210403122c610add1ab2084483477918e68adce9e39ef7ef283dbdef8f38bf0d1ae39af09837e350e1c3979cb9f5f3cb7b2e39a8d7b8dd51fea5d58691bab1b8d1b8cb563ef3d6276526c715df26c364e9783773fe44540383773f09170f5b42df2578ae8abdfca32200ff5e1b732f9f11c4ce68e6a4291e73868acc32a6b40ca054a0a80a35ad4cf2e86354903e6d97f7cc55f6b52ab5963342804448a64b48a0afab4328a7a1757430c67a0f4c610e2b3469b7f42d1d973f3f9c3dfd9b37d4d52ce970baf69837e353e76f885dd56c59b01603c995cefbbf9d9a669b6f62e6cd61ae318e2366bf419053521d0a6aca7ad18a3362ad34cbbae078cc5a43170ce974dce7bdf2ba55ad3b4e8bb39acd12f6ba5a6b61d35d1f7e78c52571261958c590280f9ac4304c5b61d690a21cd780b118aa26bc793c6753317a19ba66de1faf92a454041b5edb8b5abb3f969a218dac6ead178b2657565f5af5aab17346048a18b919a68ecef9cf36ea2d546339d3e07ef1a37effedec770e2aa25fbdbafdeb4f9e94bfa415c02fe270dfa42605f97de0aa83fa4afed7be4d85d9ed48ba306ddc15baf3bf4a923276f77a4ae9c58f5d224c467bebc6bdba9fdbff8e3f6156a47e7bb607ef6fe373d050077feeaf88daf9f366f2660e9fe5d5bbffdf14797ef56ca3c61dad1f1e7978fd1831fbcf924007ce0874fdef0e0deb71fe567f8e8a193b71cbc75dbe317ffd50b822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008c2ff23ff027a4d95c27162e2130000000049454e44ae426082, 'スライム');

-- --------------------------------------------------------

--
-- テーブルの構造 `sugoroku_users`
--

CREATE TABLE `sugoroku_users` (
  `id` int(12) NOT NULL,
  `username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `passphrase` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `gold` int(12) NOT NULL,
  `img` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `sugoroku_users`
--

INSERT INTO `sugoroku_users` (`id`, `username`, `passphrase`, `is_admin`, `is_deleted`, `gold`, `img`) VALUES
(1, 'QunQuuun', 'qwertyasdfgh', 1, 0, 1000, 'default'),
(5, 'QunQuuun2', 'asdfgzxcvbn', 0, 0, 1000, 'default'),
(6, 'QunQuuun4', '44444444', 0, 0, 1000, 'default');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `image`, `created_at`, `updated_at`) VALUES
(1, '二回目のSQL', '2020-06-27', NULL, '2020-06-20 15:29:24', '2020-06-27 16:07:03'),
(3, 'これはテストですか？', '2020-06-27', NULL, '2020-06-20 15:29:59', '2020-06-20 15:29:59'),
(7, '残念、これはテストでした！', '2020-06-24', NULL, '2020-06-20 15:31:49', '2020-06-20 15:31:49'),
(9, 'はい、これはテストです。', '2020-06-24', NULL, '2020-06-20 15:32:38', '2020-06-20 15:32:38'),
(10, 'todoなんだが？', '2020-06-21', NULL, '2020-06-20 16:13:27', '2020-06-20 16:13:27'),
(14, 'todoなんだってさ', '2020-06-27', NULL, '2020-06-27 14:50:37', '2020-06-27 14:50:37'),
(15, 'だんだんtodoではなくなってきている。', '2020-07-18', 'upload/20200718083617b9ce7ab1953b5217d2bef8da21a277c5.png', '2020-07-18 15:36:17', '2020-07-18 15:36:17'),
(16, 'まっとうにtodoしたい！', '2020-07-19', NULL, '2020-07-18 15:38:47', '2020-07-18 15:38:47');

-- --------------------------------------------------------

--
-- テーブルの構造 `useraction_table`
--

CREATE TABLE `useraction_table` (
  `id` int(12) NOT NULL,
  `news_id` int(12) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `action_comment` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `useraction_table`
--

INSERT INTO `useraction_table` (`id`, `news_id`, `username`, `rating`, `action_comment`, `created_at`) VALUES
(1, 1, 'hogehoge', 3, 'いいねtest', '2020-07-16 17:36:56'),
(2, 1, 'hogehoge', 3, 'testtest', '2020-07-17 02:02:11'),
(3, 1, 'hogehoge', 5, '2222', '2020-07-17 02:02:46');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `passphrase` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `passphrase`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'QunQuuun', 'qwertyasdfgh', 1, 0, '2020-06-29 15:41:48', '2020-07-18 15:41:12'),
(2, 'QunQuuun2', 'asdfgzxcvbn', 0, 0, '2020-06-29 15:43:31', '2020-07-18 15:41:05'),
(4, 'QunQuuun2', 'asdfgzxcvbn', 0, 1, '2020-06-29 15:44:27', '2020-07-18 15:41:17'),
(5, 'QunQuuun3', 'kojihugyft', 0, 0, '2020-06-29 15:45:01', '2020-06-29 15:45:01'),
(6, 'いいねするマン', 'sugoirt', 0, 0, '2020-07-18 14:27:18', '2020-07-18 14:27:18');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_database`
--

CREATE TABLE `user_database` (
  `id` int(11) NOT NULL,
  `username` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `userID` text COLLATE utf8_unicode_ci NOT NULL,
  `passphrase` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `userdata` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_database`
--

INSERT INTO `user_database` (`id`, `username`, `userID`, `passphrase`, `userdata`) VALUES
(37, 'QunQuuun', '628816694675', 'qunqunqun', 'a:10:{s:4:\"name\";s:8:\"QunQuuun\";s:10:\"passphrase\";s:9:\"qunqunqun\";s:4:\"gold\";s:3:\"500\";s:10:\"background\";s:29:\"url(\'img/bg_img/default.jpg\')\";s:6:\"userID\";s:12:\"628816694675\";s:9:\"foodStock\";a:5:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";}s:10:\"nowMonster\";a:13:{s:11:\"monstername\";s:15:\"ヒポグリフ\";s:3:\"img\";s:8:\"m019.png\";s:6:\"attack\";a:2:{i:0;s:2:\"20\";i:1;s:1:\"3\";}s:5:\"magic\";a:2:{i:0;s:2:\"25\";i:1;s:1:\"5\";}s:7:\"barrier\";a:2:{i:0;s:2:\"15\";i:1;s:1:\"3\";}s:4:\"life\";s:5:\"28800\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:3:\"NaN\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:2:\"10\";i:1;s:1:\"0\";}s:6:\"toilet\";s:4:\"1800\";s:5:\"sleep\";s:4:\"3600\";s:10:\"evoPattern\";s:3:\"NaN\";}s:12:\"monsterStock\";a:3:{i:0;a:13:{s:11:\"monstername\";s:0:\"\";s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}i:1;a:12:{s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}i:2;a:12:{s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}}s:8:\"playTime\";s:1:\"0\";s:11:\"cheeredTime\";a:3:{i:0;s:3:\"240\";i:1;s:3:\"240\";i:2;s:3:\"240\";}}'),
(38, 'QunQuuun', '806827798586', 'qwe', 'a:10:{s:4:\"name\";s:8:\"QunQuuun\";s:10:\"passphrase\";s:3:\"qwe\";s:4:\"gold\";s:3:\"500\";s:10:\"background\";s:29:\"url(\'img/bg_img/default.jpg\')\";s:6:\"userID\";s:12:\"806827798586\";s:9:\"foodStock\";a:5:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";}s:10:\"nowMonster\";a:13:{s:11:\"monstername\";s:6:\"うま\";s:3:\"img\";s:8:\"m004.png\";s:6:\"attack\";a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}s:5:\"magic\";a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}s:7:\"barrier\";a:2:{i:0;s:2:\"14\";i:1;s:1:\"2\";}s:4:\"life\";s:5:\"28800\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:3:\"NaN\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:2:\"10\";i:1;s:1:\"0\";}s:6:\"toilet\";s:4:\"1800\";s:5:\"sleep\";s:4:\"5400\";s:10:\"evoPattern\";s:3:\"NaN\";}s:12:\"monsterStock\";a:3:{i:0;a:13:{s:11:\"monstername\";s:0:\"\";s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}i:1;a:13:{s:11:\"monstername\";s:0:\"\";s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}i:2;a:13:{s:11:\"monstername\";s:0:\"\";s:3:\"img\";s:0:\"\";s:6:\"attack\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"magic\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"barrier\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:4:\"life\";s:1:\"0\";s:5:\"bonus\";a:3:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";}s:8:\"evoBonus\";s:1:\"0\";s:8:\"training\";s:1:\"0\";s:4:\"meal\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"toilet\";s:1:\"0\";s:5:\"sleep\";s:1:\"0\";s:10:\"evoPattern\";s:1:\"0\";}}s:8:\"playTime\";s:1:\"0\";s:11:\"cheeredTime\";a:3:{i:0;s:3:\"240\";i:1;s:3:\"240\";i:2;s:3:\"240\";}}');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `akatsuki_pool_table`
--
ALTER TABLE `akatsuki_pool_table`
  ADD PRIMARY KEY (`card_id`);

--
-- テーブルのインデックス `akatsuki_user_table`
--
ALTER TABLE `akatsuki_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- テーブルのインデックス `battle_monsters`
--
ALTER TABLE `battle_monsters`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `kqfm_favo_table`
--
ALTER TABLE `kqfm_favo_table`
  ADD PRIMARY KEY (`favo_id`);

--
-- テーブルのインデックス `kqfm_news_table`
--
ALTER TABLE `kqfm_news_table`
  ADD PRIMARY KEY (`news_id`);

--
-- テーブルのインデックス `kqfm_user_table`
--
ALTER TABLE `kqfm_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `monster_database`
--
ALTER TABLE `monster_database`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `news_table`
--
ALTER TABLE `news_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `quixo_database`
--
ALTER TABLE `quixo_database`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `stroop_data_table`
--
ALTER TABLE `stroop_data_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `stroop_user_table`
--
ALTER TABLE `stroop_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `sugoroku_cells`
--
ALTER TABLE `sugoroku_cells`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `sugoroku_games`
--
ALTER TABLE `sugoroku_games`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `sugoroku_images`
--
ALTER TABLE `sugoroku_images`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `sugoroku_users`
--
ALTER TABLE `sugoroku_users`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `useraction_table`
--
ALTER TABLE `useraction_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_database`
--
ALTER TABLE `user_database`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `akatsuki_pool_table`
--
ALTER TABLE `akatsuki_pool_table`
  MODIFY `card_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルのAUTO_INCREMENT `akatsuki_user_table`
--
ALTER TABLE `akatsuki_user_table`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `battle_monsters`
--
ALTER TABLE `battle_monsters`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `kqfm_favo_table`
--
ALTER TABLE `kqfm_favo_table`
  MODIFY `favo_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルのAUTO_INCREMENT `kqfm_news_table`
--
ALTER TABLE `kqfm_news_table`
  MODIFY `news_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `kqfm_user_table`
--
ALTER TABLE `kqfm_user_table`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `monster_database`
--
ALTER TABLE `monster_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- テーブルのAUTO_INCREMENT `news_table`
--
ALTER TABLE `news_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `quixo_database`
--
ALTER TABLE `quixo_database`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- テーブルのAUTO_INCREMENT `stroop_data_table`
--
ALTER TABLE `stroop_data_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `stroop_user_table`
--
ALTER TABLE `stroop_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `sugoroku_cells`
--
ALTER TABLE `sugoroku_cells`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- テーブルのAUTO_INCREMENT `sugoroku_games`
--
ALTER TABLE `sugoroku_games`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルのAUTO_INCREMENT `sugoroku_images`
--
ALTER TABLE `sugoroku_images`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `sugoroku_users`
--
ALTER TABLE `sugoroku_users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルのAUTO_INCREMENT `useraction_table`
--
ALTER TABLE `useraction_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルのAUTO_INCREMENT `user_database`
--
ALTER TABLE `user_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
