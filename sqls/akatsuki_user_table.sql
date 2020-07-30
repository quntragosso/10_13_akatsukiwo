-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-30 15:16:20
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

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `akatsuki_user_table`
--
ALTER TABLE `akatsuki_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `akatsuki_user_table`
--
ALTER TABLE `akatsuki_user_table`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
