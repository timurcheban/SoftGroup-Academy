-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2017 г., 16:03
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `planes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `airline`
--

CREATE TABLE IF NOT EXISTS `airline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `foundation_year` text NOT NULL,
  `address` text NOT NULL,
  `president` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `population` int(11) NOT NULL,
  `mayor` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`, `country`, `population`, `mayor`) VALUES
(1, 'ВІДЕНЬ', 'Австрія', 1775846, 'М.Хойпль'),
(2, 'ЛЬВІВ', 'Україна', 728350, 'А.Садовий'),
(3, 'СТАМБУЛ', 'Туреччина', 14657434, 'Кадір Топбаш'),
(4, 'ТЕЛЬ-АВІВ', 'Ізраїль', 405000, 'Рон Хульдаї'),
(5, 'МЮНХЕН', 'Німеччина', 1424604, 'Дітер Райтер');

-- --------------------------------------------------------

--
-- Структура таблицы `flight`
--

CREATE TABLE IF NOT EXISTS `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flight_title` text NOT NULL,
  `company_name` text NOT NULL,
  `city_​​from` text NOT NULL,
  `city_in` text NOT NULL,
  `ticket_price` int(11) NOT NULL,
  `time` time NOT NULL,
  `airplane_mark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `flight`
--

INSERT INTO `flight` (`id`, `flight_title`, `company_name`, `city_​​from`, `city_in`, `ticket_price`, `time`, `airplane_mark`) VALUES
(1, 'AUA381', 'Австрійські авіалінії', 'ВІДЕНЬ', 'ЛЬВІВ', 350, '15:30:00', 'Boeing 737'),
(2, 'PGT634', 'Пегасус', 'СТАМБУЛ', 'ЛЬВІВ', 600, '13:25:00', 'Airbus a320'),
(3, 'AUI783', 'МАУ', 'ЛЬВІВ', 'ТЕЛЬ-АВІВ', 1300, '16:50:00', 'Ан-158'),
(4, 'DLH2551', 'Люфтганза', 'ЛЬВІВ', 'МЮНХЕН', 758, '20:00:00', 'Boeing 737');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
