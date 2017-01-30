-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2017 г., 10:14
-- Версия сервера: 5.5.53
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `airline`
--

CREATE TABLE `airline` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `foundation_year` text NOT NULL,
  `address` text NOT NULL,
  `president` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `airline`
--

INSERT INTO `airline` (`id`, `name`, `foundation_year`, `address`, `president`) VALUES
(1, 'Австрійські авіалінії', '1957', 'Вена, Австрия', 'Андреас Бирвирт'),
(2, 'Пегасус', '1989', 'Стамбул, Турция', 'Али Сабанджи'),
(3, 'МАУ', '1992', 'Київ, Україна', ' Юрій Мірошников'),
(4, 'Люфтганза', '1953', 'Кельн, Німеччина', 'Карстен Шпор');

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `name` text NOT NULL,
  `country` text NOT NULL,
  `population` int(11) NOT NULL,
  `mayor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `flight_title` text NOT NULL,
  `company_name` text NOT NULL,
  `city_​​from` text NOT NULL,
  `city_in` text NOT NULL,
  `ticket_price` int(11) NOT NULL,
  `time` time NOT NULL,
  `airplane_mark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flight`
--

INSERT INTO `flight` (`id`, `flight_title`, `company_name`, `city_​​from`, `city_in`, `ticket_price`, `time`, `airplane_mark`) VALUES
(1, 'AUA381', 'Австрійські авіалінії', 'ВІДЕНЬ', 'ЛЬВІВ', 350, '15:30:00', 'Boeing 737'),
(2, 'PGT634', 'Пегасус', 'СТАМБУЛ', 'ЛЬВІВ', 600, '13:25:00', 'Airbus a320'),
(3, 'AUI783', 'МАУ', 'ЛЬВІВ', 'ТЕЛЬ-АВІВ', 1300, '16:50:00', 'Ан-158'),
(4, 'DLH2551', 'Люфтганза', 'ЛЬВІВ', 'МЮНХЕН', 758, '20:00:00', 'Boeing 737');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `airline`
--
ALTER TABLE `airline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
