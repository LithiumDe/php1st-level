-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 02 2018 г., 16:57
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `HW5`
--

-- --------------------------------------------------------

--
-- Структура таблицы `img`
--

CREATE TABLE `img` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Path` varchar(100) NOT NULL,
  `Tmp` varchar(100) NOT NULL,
  `smallPath` varchar(100) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `img`
--

INSERT INTO `img` (`Id`, `Name`, `Path`, `Tmp`, `smallPath`, `num`) VALUES
(55, 'IMG_5036.JPG', 'files/IMG_5036.JPG', 'C:OSPaneluserdata	empphp2E07.tmp', 'small/pic_1525265369.jpg', 0),
(56, 'IMG_5115.JPG', 'files/IMG_5115.JPG', 'C:OSPaneluserdata	empphp7F21.tmp', 'small/pic_1525265456.jpg', 0),
(57, 'IMG_5076.JPG', 'files/IMG_5076.JPG', 'C:OSPaneluserdata	empphp1CF1.tmp', 'small/pic_1525265824.jpg', 0),
(58, 'IMG_5115.JPG', 'files/IMG_5115.JPG', 'C:OSPaneluserdata	empphpDA09.tmp', 'small/pic_1525265872.jpg', 0),
(59, 'IMG_5115.JPG', 'files/IMG_5115.JPG', 'C:OSPaneluserdata	empphp2798.tmp', 'small/pic_1525265957.jpg', 0),
(60, 'IMG_5115.JPG', 'files/IMG_5115.JPG', 'C:OSPaneluserdata	empphp3418.tmp', 'small/pic_1525266026.jpg', 0),
(61, 'IMG_5120.JPG', 'files/IMG_5120.JPG', 'C:OSPaneluserdata	empphp74E6.tmp', 'small/pic_1525266108.jpg', 0),
(62, 'IMG_5115.JPG', 'files/IMG_5115.JPG', 'C:OSPaneluserdata	empphp5421.tmp', 'small/pic_1525266296.jpg', 0),
(63, 'IMG_5009.JPG', 'files/IMG_5009.JPG', 'C:OSPaneluserdata	empphpAA68.tmp', 'small/pic_1525266646.jpg', 0),
(64, 'IMG_5036.JPG', 'files/IMG_5036.JPG', 'C:OSPaneluserdata	empphp64D0.tmp', 'small/pic_1525266694.jpg', 0),
(65, 'IMG_4954.JPG', 'files/IMG_4954.JPG', 'C:OSPaneluserdata	empphpCF3.tmp', 'small/pic_1525266803.jpg', 0),
(66, 'IMG_4954.JPG', 'files/IMG_4954.JPG', 'C:OSPaneluserdata	empphpA740.tmp', 'small/pic_1525266842.jpg', 0),
(67, 'IMG_4954.JPG', 'files/IMG_4954.JPG', 'C:OSPaneluserdata	empphpF012.tmp', 'small/pic_1525266861.jpg', 0),
(68, 'IMG_5031.JPG', 'files/IMG_5031.JPG', 'C:OSPaneluserdata	empphp2324.tmp', 'small/pic_1525266939.jpg', 0),
(69, 'IMG_5009.JPG', 'files/IMG_5009.JPG', 'C:OSPaneluserdata	empphp53D0.tmp', 'small/pic_1525267083.jpg', 0),
(70, 'IMG_5164.JPG', 'files/IMG_5164.JPG', 'C:OSPaneluserdata	empphp5F4C.tmp', 'small/pic_1525267282.jpg', 0),
(71, 'IMG_5120.JPG', 'files/IMG_5120.JPG', 'C:OSPaneluserdata	empphp739B.tmp', 'small/pic_1525267353.jpg', 0),
(72, 'IMG_5076.JPG', 'files/IMG_5076.JPG', 'C:OSPaneluserdata	empphp63E0.tmp', 'small/pic_1525267742.jpg', 0),
(73, 'IMG_5031.JPG', 'files/IMG_5031.JPG', 'C:OSPaneluserdata	empphp2381.tmp', 'small/pic_1525268316.jpg', 0),
(74, 'IMG_5166.JPG', 'files/IMG_5166.JPG', 'C:OSPaneluserdata	empphpDA07.tmp', 'small/pic_1525268493.jpg', 0),
(75, 'IMG_4993.JPG', 'files/IMG_4993.JPG', 'C:OSPaneluserdata	empphp62DF.tmp', 'small/pic_1525268528.jpg', 0),
(76, 'IMG_5076.JPG', 'files/IMG_5076.JPG', 'C:OSPaneluserdata	empphp44E3.tmp', 'small/pic_1525268586.jpg', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `img`
--
ALTER TABLE `img`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
