-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2018 г., 11:01
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-kovtun`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `firstname`, `lastname`, `country`, `city`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'info@mail.com', '$2y$10$A3zMFjW1M95VhGDXOZ36BOp8MYruymgcVj29RS1Xg8SOu1ihYvd4S', 'admin', 'Мила', 'Ковтун', 'Россия', 'Воронеж', '1226356906.jpg', '48-1226356906.jpg', 'cyLIPiBM6s49ntZ', 0),
(2, 'user@mail.com', '$2y$10$Yj6hddriRZjmGv6EL63Nl.TgpwRpfdjoDDNr/RwqtGr/VsUgL.TF.', 'user', 'Емельян', 'Казаков', '', 'Рязань', '1229698198.jpg', '48-1229698198.jpg', 'KytPYfXnxEhgqBa', 0),
(10, 'user2@mail.com', '$2y$10$0110snDgMedFH1spjjI18ebq9FeN6IAUVjovs85wRINO.EL5n7WHC', 'user', 'Василий', 'Давыдов', 'Украина', 'Киев', '1193344438.jpg', '48-1193344438.jpg', NULL, NULL),
(11, 'user3@mail.com', '$2y$10$g1fiknActb/CUk9bXYOBuOxFk/n3REgCDxOz3HGlMpsCfTm6FuiH6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
