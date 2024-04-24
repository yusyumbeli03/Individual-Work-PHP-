-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2024 г., 02:45
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin03', '9d9d48d740e3600245c804c69d046db9', 'admin@mail.com', '', '2024-04-22 18:45:14');

-- --------------------------------------------------------

--
-- Структура таблицы `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Pizza Rancho', 'Rancho pizza is the perfect combination of Italian taste and American mood. The ingredients of this pizza create an explosion of flavor on your tongue.', '14.00', 'andy2.png'),
(2, 1, 'Pizza Toscana', 'The pizza is delicious, light and versatile. Toscana pizza is the choice of those who love the traditional taste of this dish.', '12.00', 'andy3.png'),
(4, 1, 'Pizza Margarita', 'The composition of this pizza is extremely simple, its main ingredient is mozzarella cheese, which gives it a unique taste and aroma.', '12.00', 'andy4.png'),
(5, 2, 'Hot Wings Bucket', 'Ce este de 20 de ori mai hot ca un Hot Wing? Hot Bucket, OFC, la care ai 20 de aripioare de pui picante! ', '15.00', 'kfc1.png'),
(6, 2, 'The Box (Crispy Strips)', 'The Box with Crispy Chicken Strips is the perfect combination of crispy shell and tender meat that will delight your taste. Each piece is a real treat, highlighted by the spicy sauce and juicy filling.', '18.00', 'kfc2.png'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Combo(Sandwitch, Cola, Fri)', 'Enjoy an unsurpassed taste with Kentucky Chicken Sandwich - a juicy piece of chicken meat wrapped in a fragrant bun with a crispy crust. Serve with a cold drink and French fries for a complete taste pleasure.', '11.00', 'kfc3.png'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '11.00', '606d7600dc54c.jpg'),
(11, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '11.00', '606d765f69a19.jpg'),
(12, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', '10.00', '606d76eedbb99.jpg'),
(13, 1, 'Pizza Pepperoni', 'A distinctive feature of Pepperoni pizza is its pungent taste. In this pizza, the main role is played by Pepperoni sausage, cut into small pieces.', '10.00', '6626c2cd2bf1c.png');

-- --------------------------------------------------------

--
-- Структура таблицы `remark`
--

CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2024-04-21 05:17:49'),
(2, 3, 'in process', 'none', '2024-04-22 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2024-04-20 11:11:41'),
(4, 3, 'closed', 'none', '2024-04-22 11:42:35'),
(5, 4, 'in process', 'none', '2024-04-22 11:42:55'),
(6, 1, 'rejected', 'none', '2024-04-21 11:43:26'),
(7, 7, 'in process', 'none', '2024-04-23 13:03:24'),
(8, 8, 'in process', 'none', '2024-04-22 13:03:38'),
(9, 9, 'rejected', 'thank you', '2024-04-22 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2024-04-21 13:04:33'),
(11, 8, 'closed', 'thanks ', '2024-04-21 13:05:24'),
(12, 5, 'closed', 'none', '2024-04-23 13:18:03'),
(13, 10, 'closed', 'Your order will arrive soon!', '2024-04-22 19:01:25'),
(14, 14, 'in process', 'thanks for your order!', '2024-04-23 07:39:06'),
(15, 17, 'rejected', 'sorry', '2024-04-23 20:39:20'),
(16, 16, 'rejected', 'ok', '2024-04-24 20:18:05');

-- --------------------------------------------------------

--
-- Структура таблицы `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Andy\'s Pizza', 'andyspizza@mail.com', '3547854700', 'https://www.andys.md', '8am', '8pm', 'mon-sat', 'str. Nicolay Testemitianu 63', 'andy.png', '2024-04-23 07:59:28'),
(2, 5, 'KFC', 'kfc@gmail.com', '068412456', 'https://kfc-md.md/', '9am', '8pm', 'mon-sat', 'str. Arborilor 21', '6627608aaaf50.png', '2024-04-23 07:17:30'),
(3, 2, 'Pegas', 'asiapalast@mail.com', '1458745855', 'www.asiapalast.com', '9am', '8pm', 'mon-sat', 'str. Albisoara 20/1', 'asiapalast.png', '2024-04-24 22:17:27'),
(4, 4, 'Bar & Grill', 'obshaga4@mail.com', '6545687458', 'www.obshaga4.com', '7am', '8pm', 'mon-sat', 'str. Tighina 2/4', '6290af6f81887.jpg', '2024-04-24 21:46:17');

-- --------------------------------------------------------

--
-- Структура таблицы `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2024-04-21 08:07:35'),
(2, 'Italian', '2024-04-20 08:45:23'),
(3, 'Chinese', '2024-04-21 08:45:25'),
(4, 'American', '2024-04-22 08:45:28'),
(5, 'Fast food', '2024-04-22 19:48:02');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'yusyumbeli03', 'Aliona', 'Iusiumbeli', 'yusyumbeli03@mail.ru', '+373-7838-6123', '108917ac210d59ff5cd03b2d0ce02df0', 'o. Chisinau str. G.Casu 30', 1, '2024-04-23 06:05:58'),
(2, 'ksenia_123', 'Ksenia', 'Levandovski', 'ksenia03@mail.ru', '78345146', 'ab6d10ee27a20f60fc19a826b82381f7', 'str.Tighina 2', 1, '2024-04-23 06:06:25'),
(3, 'nick88', 'Nikolay', 'Korar', 'korarnick@mail.ru', '079415782', 'be69ed8928b3a78543cbfbb36989cbb7', 'str.Arborilor 21', 1, '2024-04-23 06:06:35'),
(4, 'christine', 'Christine', 'Mokan', 'christine@mail.com', '7412580010', '5f4dcc3b5aa765d61d8327deb882cf99', '114 str. A.Mateevici', 1, '2024-04-23 06:15:24'),
(6, 'petya', 'Petya', 'Morov', 'petya123@mail.com', '7896969696', 'd7ba312b012b3374ef53eb2e3f9830a5', '122 str. Bucovei', 1, '2024-04-23 06:16:18'),
(10, 'erica', 'Erica', 'Lovansky', 'erica@mail.com', '1458965547', '0c720a14cbd1d0d40b51dd3b55305dac', '87 str.Albisoara', 1, '2024-04-23 06:16:36'),
(11, 'harry', 'Harry', 'Potter', 'harryh@mail.com', '3578545458', '861f647778673fc1d8b6ae2c706a345a', '33 str. Traian', 1, '2024-04-23 06:16:54'),
(13, 'vadim_07', 'Vadim', 'Moskov', 'vadim07@mail.ru', '078451246', 'd44b6f417793c0879e414434251af6d3', 'str. G.Casu 28/1', 1, '2024-04-23 20:25:55');

-- --------------------------------------------------------

--
-- Структура таблицы `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(3, 5, 'Chicken Madeira', 1, '23.00', 'closed', '2024-04-22 11:42:35'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'closed', '2024-04-22 13:18:03'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'closed', '2024-05-22 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'rejected', '2024-04-22 13:03:53'),
(12, 10, ' Buffalo Wings', 1, '11.00', NULL, '2024-04-23 06:18:03'),
(13, 10, 'Meatballs Penne Pasta', 1, '10.00', NULL, '2024-04-23 06:18:03'),
(14, 1, 'Pizza Margarita', 1, '12.00', 'in process', '2024-04-23 07:39:06'),
(15, 1, 'Pizza Pepperoni', 1, '10.00', NULL, '2024-04-23 07:38:31'),
(17, 1, 'Vegetable Fried Rice', 1, '5.00', 'rejected', '2024-04-23 20:39:20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Индексы таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Индексы таблицы `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Индексы таблицы `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Индексы таблицы `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
