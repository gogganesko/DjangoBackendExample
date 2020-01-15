-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 25 2019 г., 02:35
-- Версия сервера: 10.4.10-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `typography`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Тип клиента', 1, 'add_clienttype'),
(2, 'Can change Тип клиента', 1, 'change_clienttype'),
(3, 'Can delete Тип клиента', 1, 'delete_clienttype'),
(4, 'Can view Тип клиента', 1, 'view_clienttype'),
(5, 'Can add Работник', 2, 'add_worker'),
(6, 'Can change Работник', 2, 'change_worker'),
(7, 'Can delete Работник', 2, 'delete_worker'),
(8, 'Can view Работник', 2, 'view_worker'),
(9, 'Can add Клиент', 3, 'add_client'),
(10, 'Can change Клиент', 3, 'change_client'),
(11, 'Can delete Клиент', 3, 'delete_client'),
(12, 'Can view Клиент', 3, 'view_client'),
(13, 'Can add Тип печати', 4, 'add_printtype'),
(14, 'Can change Тип печати', 4, 'change_printtype'),
(15, 'Can delete Тип печати', 4, 'delete_printtype'),
(16, 'Can view Тип печати', 4, 'view_printtype'),
(17, 'Can add Услуга', 5, 'add_service'),
(18, 'Can change Услуга', 5, 'change_service'),
(19, 'Can delete Услуга', 5, 'delete_service'),
(20, 'Can view Услуга', 5, 'view_service'),
(21, 'Can add Акция', 6, 'add_sale'),
(22, 'Can change Акция', 6, 'change_sale'),
(23, 'Can delete Акция', 6, 'delete_sale'),
(24, 'Can view Акция', 6, 'view_sale'),
(25, 'Can add Отзыв', 7, 'add_review'),
(26, 'Can change Отзыв', 7, 'change_review'),
(27, 'Can delete Отзыв', 7, 'delete_review'),
(28, 'Can view Отзыв', 7, 'view_review'),
(29, 'Can add Заказ', 8, 'add_order'),
(30, 'Can change Заказ', 8, 'change_order'),
(31, 'Can delete Заказ', 8, 'delete_order'),
(32, 'Can view Заказ', 8, 'view_order'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add permission', 10, 'add_permission'),
(38, 'Can change permission', 10, 'change_permission'),
(39, 'Can delete permission', 10, 'delete_permission'),
(40, 'Can view permission', 10, 'view_permission'),
(41, 'Can add group', 11, 'add_group'),
(42, 'Can change group', 11, 'change_group'),
(43, 'Can delete group', 11, 'delete_group'),
(44, 'Can view group', 11, 'view_group'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add content type', 13, 'add_contenttype'),
(50, 'Can change content type', 13, 'change_contenttype'),
(51, 'Can delete content type', 13, 'delete_contenttype'),
(52, 'Can view content type', 13, 'view_contenttype'),
(53, 'Can add session', 14, 'add_session'),
(54, 'Can change session', 14, 'change_session'),
(55, 'Can delete session', 14, 'delete_session'),
(56, 'Can view session', 14, 'view_session'),
(57, 'Can add Отзыв', 15, 'add_review'),
(58, 'Can change Отзыв', 15, 'change_review'),
(59, 'Can delete Отзыв', 15, 'delete_review'),
(60, 'Can view Отзыв', 15, 'view_review'),
(61, 'Can add Ответ', 16, 'add_reviewanswer'),
(62, 'Can change Ответ', 16, 'change_reviewanswer'),
(63, 'Can delete Ответ', 16, 'delete_reviewanswer'),
(64, 'Can view Ответ', 16, 'view_reviewanswer'),
(65, 'Can add Сообщение', 17, 'add_orderchatmessage'),
(66, 'Can change Сообщение', 17, 'change_orderchatmessage'),
(67, 'Can delete Сообщение', 17, 'delete_orderchatmessage'),
(68, 'Can view Сообщение', 17, 'view_orderchatmessage');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$oNtZZdTDRL2b$zV99trMBaqOg59oz1M1fBg9Aw8gQrLp69U/V5o0mAa0=', '2019-12-25 01:19:45.819946', 1, 'admin', '', '', 'admin@sad.cs', 1, 1, '2019-12-08 13:09:21.101413'),
(3, 'pbkdf2_sha256$150000$QudXAVywO8z8$5UeL6kbTIhTUiKA9So+Fgv03Ri6R9EblQ+uWXxKYsEQ=', '2019-12-25 01:20:00.995915', 0, 'test1', '', '', '', 0, 1, '2019-12-15 13:12:27.771964'),
(4, 'pbkdf2_sha256$150000$Lwx79Ey4cDop$VHTZ+TO8pI9jbc7SCWz/K88eGHJRkb5vrGgYexJ0nI0=', '2019-12-22 06:10:08.365888', 0, 'test2', '', '', '', 0, 1, '2019-12-15 13:12:48.539204'),
(5, 'pbkdf2_sha256$150000$UN6YidCOJe3W$2cl+R36tCmTt08Y0ZmEQUvn7VrOtxbbW5mKA6AmIoQQ=', NULL, 0, 'test3', '', '', '', 0, 1, '2019-12-15 13:13:07.994460'),
(6, 'pbkdf2_sha256$150000$n5tiGt2Nl1xn$lRgA0WryJbx7J8bybp3KyEZghVfxVjJLZPScYA4Pyjk=', '2019-12-21 08:39:19.360607', 0, 'test4', '', '', '', 0, 1, '2019-12-21 08:14:26.640498'),
(7, 'pbkdf2_sha256$150000$pAWFU0ur7zc3$iehT7ryr/U6KxZrPQqEqjs8tHgJsmXp0Vxl7GcsSwj0=', '2019-12-25 01:08:01.124798', 0, 'test5', '', '', '', 0, 1, '2019-12-21 08:14:43.684825'),
(8, 'pbkdf2_sha256$150000$d9PgNIHsHAS2$b4gQcZT7EkiYeSBcJx9H3Q1KrExYtoPV7NFrOGG2bEA=', NULL, 0, 'proverka', '', '', 'proverka@mail.ry', 0, 1, '2019-12-22 08:40:19.527298');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-12-08 13:10:39.962780', '1', 'Тестовый тип печати', 1, '[{\"added\": {}}]', 4, 1),
(2, '2019-12-08 13:11:19.835615', '1', 'УслТестовыТИпечта', 1, '[{\"added\": {}}]', 5, 1),
(3, '2019-12-08 13:11:48.285517', '1', 'ТестоваяАкция', 1, '[{\"added\": {}}]', 6, 1),
(4, '2019-12-08 13:24:24.933424', '1', 'ТестоваяАкция', 2, '[]', 6, 1),
(5, '2019-12-08 13:58:14.763686', '1', 'Тихонов Елизавета Ивановна', 1, '[{\"added\": {}}]', 2, 1),
(6, '2019-12-08 13:58:37.927911', '2', 'Клюева Михаила Федоровна', 1, '[{\"added\": {}}]', 2, 1),
(7, '2019-12-08 13:58:51.013453', '1', 'Физическое лицо', 1, '[{\"added\": {}}]', 1, 1),
(8, '2019-12-08 13:59:16.530769', '1', 'Клиентов Херачила Заборное', 1, '[{\"added\": {}}]', 3, 1),
(9, '2019-12-08 13:59:46.066088', '1', 'Review object (1)', 1, '[{\"added\": {}}]', 15, 1),
(10, '2019-12-08 14:00:09.114044', '1', 'ReviewAnswer object (1)', 1, '[{\"added\": {}}]', 16, 1),
(11, '2019-12-08 14:00:10.735695', '1', 'ReviewAnswer object (1)', 2, '[]', 16, 1),
(12, '2019-12-08 14:39:53.064192', '2', 'ReviewAnswer object (2)', 1, '[{\"added\": {}}]', 16, 1),
(13, '2019-12-08 15:16:43.566541', '2', 'Усл2', 1, '[{\"added\": {}}]', 5, 1),
(14, '2019-12-10 10:11:09.038671', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_service\"]}}]', 6, 1),
(15, '2019-12-10 10:11:22.891813', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_service\"]}}]', 6, 1),
(16, '2019-12-10 13:36:09.586216', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(17, '2019-12-10 13:40:29.594212', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(18, '2019-12-10 13:42:11.217592', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(19, '2019-12-10 13:43:14.917326', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(20, '2019-12-10 13:49:49.371768', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(21, '2019-12-10 14:16:20.746475', '1', 'ТестоваяАкция', 2, '[]', 6, 1),
(22, '2019-12-10 14:16:27.889598', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(23, '2019-12-10 14:16:58.455774', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(24, '2019-12-10 14:21:15.541947', '1', 'ТестоваяАкция', 2, '[]', 6, 1),
(25, '2019-12-10 14:32:45.071262', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(26, '2019-12-10 14:40:52.693065', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(27, '2019-12-10 14:55:23.310872', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(28, '2019-12-10 14:59:46.509874', '1', 'ТестоваяАкция', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(29, '2019-12-10 16:30:39.212613', '1', 'Печать на кружках', 2, '[{\"changed\": {\"fields\": [\"service_name\", \"service_price\", \"service_description\"]}}]', 5, 1),
(30, '2019-12-10 16:31:00.111235', '2', 'Печать на тарелках', 2, '[{\"changed\": {\"fields\": [\"service_name\", \"service_price\", \"service_description\"]}}]', 5, 1),
(31, '2019-12-10 16:31:12.672866', '1', 'Печать на кружках', 2, '[{\"changed\": {\"fields\": [\"service_image\"]}}]', 5, 1),
(32, '2019-12-10 16:32:36.274185', '2', 'Печать на тарелках', 2, '[{\"changed\": {\"fields\": [\"service_image\"]}}]', 5, 1),
(33, '2019-12-10 16:33:04.281756', '2', 'Печать на тарелках', 2, '[]', 5, 1),
(34, '2019-12-10 16:35:40.117107', '2', 'Точилов Петр Михалыч', 2, '[{\"changed\": {\"fields\": [\"worker_name\", \"worker_image\"]}}]', 2, 1),
(35, '2019-12-10 16:36:48.641634', '1', 'Мышиная Елена Дмитриевна', 2, '[{\"changed\": {\"fields\": [\"worker_name\", \"worker_image\"]}}]', 2, 1),
(36, '2019-12-10 16:39:08.793749', '3', 'Печать на ложках', 1, '[{\"added\": {}}]', 5, 1),
(37, '2019-12-10 16:39:24.534610', '1', 'Печать на посуде', 2, '[{\"changed\": {\"fields\": [\"printtype_name\"]}}]', 4, 1),
(38, '2019-12-10 16:41:00.681938', '2', 'Review object (2)', 1, '[{\"added\": {}}]', 15, 1),
(39, '2019-12-10 16:42:08.903236', '3', 'ReviewAnswer object (3)', 1, '[{\"added\": {}}]', 16, 1),
(40, '2019-12-10 16:43:48.032998', '3', 'Review object (3)', 1, '[{\"added\": {}}]', 15, 1),
(41, '2019-12-10 16:45:02.572702', '1', 'ТорелкоЛожка', 2, '[{\"changed\": {\"fields\": [\"sale_name\", \"sale_description\", \"sale_service\"]}}]', 6, 1),
(42, '2019-12-10 16:45:57.650812', '2', 'КружкоЛожка', 1, '[{\"added\": {}}]', 6, 1),
(43, '2019-12-10 16:46:04.968746', '1', 'ТорелкоЛожка', 2, '[{\"changed\": {\"fields\": [\"sale_image\"]}}]', 6, 1),
(44, '2019-12-10 16:46:38.678020', '3', 'ТарелкоКружко', 1, '[{\"added\": {}}]', 6, 1),
(45, '2019-12-10 17:00:34.522171', '1', 'Мышиная Елена Дмитриевна', 2, '[{\"changed\": {\"fields\": [\"worker_service\"]}}]', 2, 1),
(46, '2019-12-10 17:03:39.129226', '1', 'ТорелкоЛожка', 2, '[{\"changed\": {\"fields\": [\"sale_description\"]}}]', 6, 1),
(47, '2019-12-12 07:59:18.282051', '4', 'Печать для проверки пагинатора', 1, '[{\"added\": {}}]', 5, 1),
(48, '2019-12-12 07:59:51.648970', '4', 'Печать для проверки пагинатора', 2, '[{\"changed\": {\"fields\": [\"service_image\"]}}]', 5, 1),
(49, '2019-12-12 08:00:44.869029', '5', 'Печать для проверки пагин2', 1, '[{\"added\": {}}]', 5, 1),
(50, '2019-12-12 09:42:01.947179', '2', 'Тест поиска', 1, '[{\"added\": {}}]', 4, 1),
(51, '2019-12-12 09:42:13.994595', '5', 'Печать для проверки пагин2', 2, '[{\"changed\": {\"fields\": [\"service_printtype\"]}}]', 5, 1),
(52, '2019-12-12 09:42:18.187970', '4', 'Печать для проверки пагинатора', 2, '[{\"changed\": {\"fields\": [\"service_printtype\"]}}]', 5, 1),
(53, '2019-12-12 13:24:43.079613', '3', 'Тест1', 1, '[{\"added\": {}}]', 2, 1),
(54, '2019-12-12 13:24:59.769652', '4', 'т2', 1, '[{\"added\": {}}]', 2, 1),
(55, '2019-12-12 13:25:15.654544', '5', 'т3', 1, '[{\"added\": {}}]', 2, 1),
(56, '2019-12-12 13:34:19.112545', '4', 'Review object (4)', 1, '[{\"added\": {}}]', 15, 1),
(57, '2019-12-12 13:34:33.745934', '5', 'Review object (5)', 1, '[{\"added\": {}}]', 15, 1),
(58, '2019-12-12 13:35:54.678574', '6', 'Review object (6)', 1, '[{\"added\": {}}]', 15, 1),
(59, '2019-12-12 14:06:10.117601', '6', 'Review object (6)', 3, '', 15, 1),
(60, '2019-12-15 08:53:35.697012', '2', 'test', 1, '[{\"added\": {}}]', 12, 1),
(61, '2019-12-15 08:56:20.531936', '1', 'Test', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 3, 1),
(62, '2019-12-15 08:58:54.152119', '1', 'Test', 3, '', 3, 1),
(63, '2019-12-15 09:01:24.741398', '2', 'Тестовый тествич юзеров', 1, '[{\"added\": {}}]', 3, 1),
(64, '2019-12-15 09:29:14.419674', '1', 'Order object (1)', 1, '[{\"added\": {}}]', 8, 1),
(65, '2019-12-15 09:29:40.342808', '2', 'Order object (2)', 1, '[{\"added\": {}}]', 8, 1),
(66, '2019-12-15 09:29:54.551791', '3', 'Order object (3)', 1, '[{\"added\": {}}]', 8, 1),
(67, '2019-12-15 09:30:09.159315', '4', 'Order object (4)', 1, '[{\"added\": {}}]', 8, 1),
(68, '2019-12-15 12:35:50.208654', '7', 'Review object (7)', 1, '[{\"added\": {}}]', 15, 1),
(69, '2019-12-15 12:53:51.604560', '3', 'ТарелкоКружко', 3, '', 6, 1),
(70, '2019-12-15 12:53:51.660758', '2', 'КружкоЛожка', 3, '', 6, 1),
(71, '2019-12-15 12:53:51.700769', '1', 'ТорелкоЛожка', 3, '', 6, 1),
(72, '2019-12-15 12:54:06.583188', '2', 'Тест поиска', 3, '', 4, 1),
(73, '2019-12-15 12:54:06.634457', '1', 'Печать на посуде', 3, '', 4, 1),
(74, '2019-12-15 12:54:20.222939', '2', 'Тестовый тествич юзеров', 3, '', 3, 1),
(75, '2019-12-15 12:54:29.681019', '5', 'т3', 3, '', 2, 1),
(76, '2019-12-15 12:54:29.741195', '4', 'т2', 3, '', 2, 1),
(77, '2019-12-15 12:54:29.776741', '3', 'Тест1', 3, '', 2, 1),
(78, '2019-12-15 12:54:29.908565', '2', 'Точилов Петр Михалыч', 3, '', 2, 1),
(79, '2019-12-15 12:54:29.941373', '1', 'Мышиная Елена Дмитриевна', 3, '', 2, 1),
(80, '2019-12-15 12:54:38.024870', '1', 'Физическое лицо', 3, '', 1, 1),
(81, '2019-12-15 12:54:57.696392', '2', 'test', 3, '', 12, 1),
(82, '2019-12-15 13:12:27.944835', '3', 'test1', 1, '[{\"added\": {}}]', 12, 1),
(83, '2019-12-15 13:12:48.705221', '4', 'test2', 1, '[{\"added\": {}}]', 12, 1),
(84, '2019-12-15 13:13:08.164863', '5', 'test3', 1, '[{\"added\": {}}]', 12, 1),
(85, '2019-12-15 13:13:33.221165', '2', 'Физическое лицо', 1, '[{\"added\": {}}]', 1, 1),
(86, '2019-12-15 13:13:39.746162', '3', 'Юридическое лицо', 1, '[{\"added\": {}}]', 1, 1),
(87, '2019-12-15 13:14:04.063183', '3', 'Тюхай Иван Михалыч', 1, '[{\"added\": {}}]', 3, 1),
(88, '2019-12-15 13:14:34.734846', '4', 'Точилов Петр Михалыч', 1, '[{\"added\": {}}]', 3, 1),
(89, '2019-12-15 13:15:16.589570', '5', 'Минзуркин Семён Палыч', 1, '[{\"added\": {}}]', 3, 1),
(90, '2019-12-15 13:15:32.064874', '3', 'Печать на посуде', 1, '[{\"added\": {}}]', 4, 1),
(91, '2019-12-15 13:15:43.513602', '4', 'Печать на одежде', 1, '[{\"added\": {}}]', 4, 1),
(92, '2019-12-15 13:16:18.704836', '5', 'Гравировка', 1, '[{\"added\": {}}]', 4, 1),
(93, '2019-12-15 13:16:49.649805', '6', 'Печать на футболках', 1, '[{\"added\": {}}]', 5, 1),
(94, '2019-12-15 13:18:04.894563', '7', 'Печать на кружках', 1, '[{\"added\": {}}]', 5, 1),
(95, '2019-12-15 13:18:35.184743', '8', 'Печать на рюкзаках', 1, '[{\"added\": {}}]', 5, 1),
(96, '2019-12-15 13:18:56.729805', '9', 'Гравировка на чехлах', 1, '[{\"added\": {}}]', 5, 1),
(97, '2019-12-15 13:19:59.689261', '4', '2 гравировки по цене одной', 1, '[{\"added\": {}}]', 6, 1),
(98, '2019-12-15 13:20:18.284099', '9', 'Гравировка на чехлах', 2, '[{\"changed\": {\"fields\": [\"service_image\"]}}]', 5, 1),
(99, '2019-12-15 13:21:16.104842', '5', '2 футболки по цене одной', 1, '[{\"added\": {}}]', 6, 1),
(100, '2019-12-15 13:22:33.799681', '6', 'Мышиная Елена Дмитриевна', 1, '[{\"added\": {}}]', 2, 1),
(101, '2019-12-15 13:23:09.059693', '7', 'Михалычев Михалыч Михалыч', 1, '[{\"added\": {}}]', 2, 1),
(102, '2019-12-15 13:24:18.823370', '5', 'Order object (5)', 1, '[{\"added\": {}}]', 8, 1),
(103, '2019-12-15 13:24:51.651735', '6', 'Order object (6)', 1, '[{\"added\": {}}]', 8, 1),
(104, '2019-12-15 13:25:27.145153', '8', 'Review object (8)', 1, '[{\"added\": {}}]', 15, 1),
(105, '2019-12-15 13:26:18.059080', '9', 'Review object (9)', 1, '[{\"added\": {}}]', 15, 1),
(106, '2019-12-15 13:26:41.583638', '4', 'ReviewAnswer object (4)', 1, '[{\"added\": {}}]', 16, 1),
(107, '2019-12-15 13:27:41.253489', '6', 'Мышиная Елена Дмитриевна', 2, '[{\"changed\": {\"fields\": [\"worker_service\"]}}]', 2, 1),
(108, '2019-12-15 13:27:46.043560', '7', 'Михалычев Михалыч Михалыч', 2, '[{\"changed\": {\"fields\": [\"worker_service\"]}}]', 2, 1),
(109, '2019-12-17 07:47:55.904420', '5', 'Order object (5)', 2, '[{\"changed\": {\"fields\": [\"order_payed\"]}}]', 8, 1),
(110, '2019-12-17 09:11:09.119938', '9', 'Order object (9)', 3, '', 8, 1),
(111, '2019-12-17 09:11:16.631686', '8', 'Order object (8)', 3, '', 8, 1),
(112, '2019-12-17 09:11:29.747009', '7', 'Order object (7)', 3, '', 8, 1),
(113, '2019-12-17 09:15:56.184841', '10', 'Order object (10)', 3, '', 8, 1),
(114, '2019-12-17 09:21:23.233829', '11', 'Order object (11)', 3, '', 8, 1),
(115, '2019-12-17 09:30:25.945399', '12', 'Order object (12)', 3, '', 8, 1),
(116, '2019-12-17 09:36:38.464452', '13', 'Order object (13)', 3, '', 8, 1),
(117, '2019-12-17 09:41:48.205285', '14', 'Order object (14)', 3, '', 8, 1),
(118, '2019-12-17 09:43:13.204382', '15', 'Order object (15)', 3, '', 8, 1),
(119, '2019-12-17 09:44:42.204001', '16', 'Order object (16)', 3, '', 8, 1),
(120, '2019-12-17 10:14:33.045326', '23', 'Order object (23)', 3, '', 8, 1),
(121, '2019-12-17 10:14:33.099989', '22', 'Order object (22)', 3, '', 8, 1),
(122, '2019-12-17 10:14:33.145489', '21', 'Order object (21)', 3, '', 8, 1),
(123, '2019-12-17 10:14:33.264054', '20', 'Order object (20)', 3, '', 8, 1),
(124, '2019-12-17 10:14:33.310976', '19', 'Order object (19)', 3, '', 8, 1),
(125, '2019-12-17 10:14:33.370022', '18', 'Order object (18)', 3, '', 8, 1),
(126, '2019-12-17 10:14:33.401770', '17', 'Order object (17)', 3, '', 8, 1),
(127, '2019-12-17 12:15:55.631485', '10', 'Review object (10)', 3, '', 15, 1),
(128, '2019-12-19 14:57:59.642184', '31', 'Order object (31)', 3, '', 8, 1),
(129, '2019-12-19 14:57:59.642184', '30', 'Order object (30)', 3, '', 8, 1),
(130, '2019-12-19 14:57:59.642184', '29', 'Order object (29)', 3, '', 8, 1),
(131, '2019-12-19 14:57:59.642184', '28', 'Order object (28)', 3, '', 8, 1),
(132, '2019-12-19 14:57:59.657810', '27', 'Order object (27)', 3, '', 8, 1),
(133, '2019-12-19 14:57:59.657810', '26', 'Order object (26)', 3, '', 8, 1),
(134, '2019-12-19 14:57:59.657810', '25', 'Order object (25)', 3, '', 8, 1),
(135, '2019-12-21 08:14:26.753953', '6', 'test4', 1, '[{\"added\": {}}]', 12, 1),
(136, '2019-12-21 08:14:43.859688', '7', 'test5', 1, '[{\"added\": {}}]', 12, 1),
(137, '2019-12-21 08:14:59.577299', '7', 'Михалычев Михалыч Михалыч', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 2, 1),
(138, '2019-12-21 08:15:05.336526', '6', 'Мышиная Елена Дмитриевна', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 2, 1),
(139, '2019-12-21 08:36:44.448322', '33', 'Order object (33)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(140, '2019-12-21 08:37:02.419101', '32', 'Order object (32)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(141, '2019-12-21 08:37:17.375294', '24', 'Order object (24)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(142, '2019-12-21 10:40:43.420875', '34', 'Order object (34)', 3, '', 8, 1),
(143, '2019-12-21 12:44:10.559961', '1', 'OrderChatMessage object (1)', 1, '[{\"added\": {}}]', 17, 1),
(144, '2019-12-21 13:53:26.997236', '36', 'Order object (36)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(145, '2019-12-21 14:07:26.617018', '13', 'OrderChatMessage object (13)', 3, '', 17, 1),
(146, '2019-12-21 14:07:26.617018', '12', 'OrderChatMessage object (12)', 3, '', 17, 1),
(147, '2019-12-21 14:07:26.617018', '11', 'OrderChatMessage object (11)', 3, '', 17, 1),
(148, '2019-12-21 14:07:26.632643', '10', 'OrderChatMessage object (10)', 3, '', 17, 1),
(149, '2019-12-22 06:11:03.165464', '41', 'Order object (41)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(150, '2019-12-22 06:11:08.573351', '40', 'Order object (40)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(151, '2019-12-22 06:11:16.419441', '39', 'Order object (39)', 2, '[{\"changed\": {\"fields\": [\"order_worker\", \"order_comment\"]}}]', 8, 1),
(152, '2019-12-24 08:26:09.020626', '19', 'OrderChatMessage object (19)', 3, '', 17, 1),
(153, '2019-12-24 08:26:09.022626', '18', 'OrderChatMessage object (18)', 3, '', 17, 1),
(154, '2019-12-24 08:36:55.344274', '20', 'OrderChatMessage object (20)', 3, '', 17, 1),
(155, '2019-12-24 08:53:12.343644', '23', 'OrderChatMessage object (23)', 3, '', 17, 1),
(156, '2019-12-24 08:53:12.346655', '22', 'OrderChatMessage object (22)', 3, '', 17, 1),
(157, '2019-12-24 08:53:12.348636', '21', 'OrderChatMessage object (21)', 3, '', 17, 1),
(158, '2019-12-24 08:53:12.352643', '17', 'OrderChatMessage object (17)', 3, '', 17, 1),
(159, '2019-12-24 08:53:12.355655', '16', 'OrderChatMessage object (16)', 3, '', 17, 1),
(160, '2019-12-24 08:53:12.358657', '15', 'OrderChatMessage object (15)', 3, '', 17, 1),
(161, '2019-12-24 08:53:12.361656', '14', 'OrderChatMessage object (14)', 3, '', 17, 1),
(162, '2019-12-24 08:53:12.364639', '9', 'OrderChatMessage object (9)', 3, '', 17, 1),
(163, '2019-12-24 08:53:12.366641', '8', 'OrderChatMessage object (8)', 3, '', 17, 1),
(164, '2019-12-24 08:53:12.370639', '7', 'OrderChatMessage object (7)', 3, '', 17, 1),
(165, '2019-12-24 08:53:12.373658', '6', 'OrderChatMessage object (6)', 3, '', 17, 1),
(166, '2019-12-24 08:53:12.376640', '5', 'OrderChatMessage object (5)', 3, '', 17, 1),
(167, '2019-12-24 08:53:12.379659', '4', 'OrderChatMessage object (4)', 3, '', 17, 1),
(168, '2019-12-24 08:53:12.381656', '3', 'OrderChatMessage object (3)', 3, '', 17, 1),
(169, '2019-12-24 08:53:12.386643', '2', 'OrderChatMessage object (2)', 3, '', 17, 1),
(170, '2019-12-24 08:53:12.388642', '1', 'OrderChatMessage object (1)', 3, '', 17, 1),
(171, '2019-12-24 09:53:10.506396', '29', 'OrderChatMessage object (29)', 3, '', 17, 1),
(172, '2019-12-24 09:53:10.512396', '28', 'OrderChatMessage object (28)', 3, '', 17, 1),
(173, '2019-12-25 01:16:48.223147', '32', 'OrderChatMessage object (32)', 3, '', 17, 1),
(174, '2019-12-25 01:19:54.792052', '33', 'OrderChatMessage object (33)', 3, '', 17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(11, 'auth', 'group'),
(10, 'auth', 'permission'),
(12, 'auth', 'user'),
(13, 'contenttypes', 'contenttype'),
(8, 'orders', 'order'),
(17, 'orders', 'orderchatmessage'),
(15, 'orders', 'review'),
(16, 'orders', 'reviewanswer'),
(4, 'services', 'printtype'),
(7, 'services', 'review'),
(6, 'services', 'sale'),
(5, 'services', 'service'),
(14, 'sessions', 'session'),
(3, 'users', 'client'),
(1, 'users', 'clienttype'),
(2, 'users', 'worker');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-12-08 13:01:08.522772'),
(2, 'auth', '0001_initial', '2019-12-08 13:01:09.897243'),
(3, 'admin', '0001_initial', '2019-12-08 13:01:16.597474'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-12-08 13:01:17.962773'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-08 13:01:18.027181'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-12-08 13:01:18.626795'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-12-08 13:01:19.889026'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-12-08 13:01:20.137059'),
(9, 'auth', '0004_alter_user_username_opts', '2019-12-08 13:01:20.181493'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-12-08 13:01:21.146832'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-12-08 13:01:21.239117'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-12-08 13:01:21.354842'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-12-08 13:01:21.578026'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-12-08 13:01:21.802675'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-12-08 13:01:21.891466'),
(16, 'auth', '0011_update_proxy_permissions', '2019-12-08 13:01:21.962768'),
(17, 'sessions', '0001_initial', '2019-12-08 13:01:22.199091'),
(18, 'services', '0001_initial', '2019-12-08 13:02:21.743040'),
(19, 'users', '0001_initial', '2019-12-08 13:02:26.132673'),
(20, 'orders', '0001_initial', '2019-12-08 13:02:32.778243'),
(21, 'services', '0002_delete_review', '2019-12-08 13:56:29.477790'),
(22, 'orders', '0002_review_reviewanswer', '2019-12-08 13:56:30.000260'),
(23, 'services', '0003_auto_20191210_2123', '2019-12-10 13:23:34.480576'),
(24, 'services', '0004_auto_20191210_2313', '2019-12-10 15:13:23.236507'),
(25, 'users', '0002_worker_worker_image', '2019-12-10 15:16:45.752855'),
(26, 'users', '0003_auto_20191215_1650', '2019-12-15 08:55:38.502404'),
(27, 'users', '0004_auto_20191215_1652', '2019-12-15 08:55:39.331473'),
(28, 'users', '0005_auto_20191215_1657', '2019-12-15 08:58:12.288995'),
(29, 'users', '0006_auto_20191215_1700', '2019-12-15 09:00:47.631316'),
(30, 'orders', '0003_order_order_count', '2019-12-15 11:23:17.904138'),
(31, 'users', '0007_worker_user', '2019-12-21 08:13:02.223655'),
(32, 'orders', '0004_auto_20191221_1652', '2019-12-21 08:52:41.730075'),
(33, 'orders', '0005_review_review_name', '2019-12-21 09:07:35.713328'),
(34, 'orders', '0006_auto_20191221_1711', '2019-12-21 09:11:05.244744'),
(35, 'orders', '0007_order_order_name', '2019-12-21 09:26:02.047566'),
(36, 'orders', '0008_auto_20191221_1742', '2019-12-21 09:42:24.681050'),
(37, 'orders', '0009_orderchatmessage', '2019-12-21 12:40:24.579143'),
(38, 'orders', '0010_auto_20191221_2043', '2019-12-21 12:43:41.519533'),
(39, 'orders', '0011_orderchatmessage_message_image', '2019-12-25 00:55:53.778311');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2e7s4q922ej49pcyjgdlrfgpkklp8ka4', 'ZmRlOGU2OTc0ZmVmMmIxOTA1NTc3ZmIyMDZhNDlmYTZlNjEzMWU3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MzdjN2Q4NGViNzkzOTFkM2IzMTgxNzcyNGJkZTkxOGMxZDBmMzZlIn0=', '2019-12-31 12:17:17.771635'),
('il9u4ml9uaiio2budcbs30co6889jinv', 'NzQzNDhjNGYxZTM3NzhkNzhkMWIyM2VjYjJkZTUxNzRiOGQzNjgzMTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5M2JhOWIzMzk1MDhiMzk4NWEzNjY2YWNiNGM3NmE2ZDViYzVjZjgzIn0=', '2020-01-08 00:46:50.929956'),
('nxwrf7879zqp5iz0b4av0s17u6m53z1d', 'ZDM2M2I5MDdhNzVlODVmMDdjMTQzYmUxMTk2MTIxNDdhMWVmYWYwZjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlY2VlZDg3MWYwZGNmMzU0ODY3MzE3YjAwOGE0NGY1MThjMjdmNGM4In0=', '2020-01-08 01:08:01.140425'),
('qcsvz4wawdv43iuwq10vvbnixzncoedr', 'NzQzNDhjNGYxZTM3NzhkNzhkMWIyM2VjYjJkZTUxNzRiOGQzNjgzMTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5M2JhOWIzMzk1MDhiMzk4NWEzNjY2YWNiNGM3NmE2ZDViYzVjZjgzIn0=', '2020-01-08 01:20:01.011544');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_state` varchar(100) NOT NULL,
  `order_price` double NOT NULL,
  `order_payed` double NOT NULL,
  `order_comment` longtext NOT NULL,
  `order_image` varchar(100) NOT NULL,
  `order_client_id` int(11) DEFAULT NULL,
  `order_service_id` int(11) NOT NULL,
  `order_count` bigint(20) NOT NULL,
  `order_name` varchar(50) DEFAULT NULL,
  `order_email` varchar(50) DEFAULT NULL,
  `order_telephonenumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_date`, `order_state`, `order_price`, `order_payed`, `order_comment`, `order_image`, `order_client_id`, `order_service_id`, `order_count`, `order_name`, `order_email`, `order_telephonenumber`) VALUES
(5, '2019-12-15 13:23:35.000000', 'обработка', 300, 250, 'Вредный', 'sal2_gSykix9.png', 3, 6, 2, NULL, NULL, NULL),
(6, '2019-12-15 13:24:24.000000', 'оплачен', 500, 500, 'Норм', 'ser4_qcJUQeM.jpg', 3, 7, 1, NULL, NULL, NULL),
(24, '2019-12-17 18:17:36.000000', 'обработка', 1200, 0, 'as', 'ser3.jpg', 3, 8, 5, NULL, NULL, NULL),
(32, '2019-12-19 22:58:19.000000', 'обработка', 1600, 0, 'as', 'ser2.jpg', 3, 9, 5, NULL, NULL, NULL),
(33, '2019-12-20 15:31:42.000000', 'обработка', 1800, 0, 'assa', 'ser1.jpg', 3, 6, 6, NULL, NULL, NULL),
(35, '2019-12-21 18:41:24.085849', 'обработка', 240, 0, '', 'ser4.jpg', NULL, 7, 2, 'Тестнезарег', 'nezareg@mail.ru', '88005553535'),
(36, '2019-12-21 18:41:48.000000', 'обработка', 240, 0, 'as', 'mouse_nY4xxIL.jpg', 3, 7, 2, NULL, NULL, NULL),
(37, '2019-12-21 18:42:19.168803', 'обработка', 240, 0, '', 'ser4.jpg', NULL, 7, 2, 'rabotnik', 'rab@exampl.org', '88005553535'),
(38, '2019-12-21 20:16:48.442102', 'обработка', 300, 0, '', 'ser1.jpg', NULL, 6, 1, 'Тестнезарегзаказ2', 'testotzivanezareganniy@asdasd.co', '2323123'),
(39, '2019-12-22 14:10:20.000000', 'обработка', 720, 0, 's', 'ser3.jpg', 4, 8, 3, NULL, NULL, NULL),
(40, '2019-12-22 14:10:26.000000', 'обработка', 120, 0, 's', 'ser4.jpg', 4, 7, 1, NULL, NULL, NULL),
(41, '2019-12-22 14:10:35.000000', 'обработка', 1200, 0, 's', 'ser1.jpg', 4, 6, 4, NULL, NULL, NULL),
(42, '2019-12-22 15:19:27.992786', 'обработка', 240, 0, '', 'ser3.jpg', NULL, 8, 1, 'sss', 'asd@ads.dsf', '1234567890');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_orderchatmessage`
--

CREATE TABLE `orders_orderchatmessage` (
  `id` int(11) NOT NULL,
  `message_date` datetime(6) NOT NULL,
  `message_text` longtext NOT NULL,
  `message_order_id` int(11) NOT NULL,
  `message_author` varchar(100) NOT NULL,
  `message_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders_orderchatmessage`
--

INSERT INTO `orders_orderchatmessage` (`id`, `message_date`, `message_text`, `message_order_id`, `message_author`, `message_image`) VALUES
(24, '2019-12-24 16:53:42.056616', 'Check', 36, 'Тюхай Иван Михалыч', NULL),
(25, '2019-12-24 16:55:33.095961', '', 36, 'Тюхай Иван Михалыч', NULL),
(26, '2019-12-24 17:41:56.368806', 'ыфв', 36, 'Мышиная Елена Дмитриевна', NULL),
(27, '2019-12-24 17:42:51.954430', 'sss', 36, 'Мышиная Елена Дмитриевна', NULL),
(30, '2019-12-24 19:18:35.482256', 'qwert', 5, 'Мышиная Елена Дмитриевна', NULL),
(31, '2019-12-25 08:47:22.464647', 'привет', 36, 'Тюхай Иван Михалыч', NULL),
(34, '2019-12-25 09:20:15.857164', 'картинка', 5, 'author', 'ser3_9cCbUY5_Y9dybEB.jpg'),
(35, '2019-12-25 09:24:53.586729', 'картинка', 5, 'author', 'mouse_X9P6gUq.jpg'),
(36, '2019-12-25 09:25:02.812873', 'картинка', 5, 'author', 'sal2_OGp6vPB_t0HSDJN.png'),
(37, '2019-12-25 09:30:19.936768', 'картинка', 5, 'author', 'mouse_SKCavxh.jpg'),
(38, '2019-12-25 09:30:28.697739', 'ghbdt', 5, 'Мышиная Елена Дмитриевна', ''),
(39, '2019-12-25 09:30:35.823451', 'картинка', 5, 'author', 'sal2_gSykix9.png');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_order_order_worker`
--

CREATE TABLE `orders_order_order_worker` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders_order_order_worker`
--

INSERT INTO `orders_order_order_worker` (`id`, `order_id`, `worker_id`) VALUES
(5, 5, 6),
(6, 5, 7),
(7, 6, 6),
(8, 6, 7),
(11, 24, 7),
(10, 32, 6),
(9, 33, 6),
(12, 36, 6),
(13, 36, 7),
(16, 39, 6),
(15, 40, 6),
(14, 41, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_review`
--

CREATE TABLE `orders_review` (
  `id` int(11) NOT NULL,
  `review_pubdate` datetime(6) NOT NULL,
  `review_telephonenumber` varchar(11) NOT NULL,
  `review_email` varchar(254) NOT NULL,
  `review_text` longtext NOT NULL,
  `review_screenshot` varchar(100) NOT NULL,
  `review_client_id` int(11) DEFAULT NULL,
  `review_service_id` int(11) NOT NULL,
  `review_worker_id` int(11) NOT NULL,
  `review_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders_review`
--

INSERT INTO `orders_review` (`id`, `review_pubdate`, `review_telephonenumber`, `review_email`, `review_text`, `review_screenshot`, `review_client_id`, `review_service_id`, `review_worker_id`, `review_name`) VALUES
(8, '2019-12-15 13:24:59.000000', '123', 'sss@sss.ss', 'ЫЫы', 'rew1.jpg', 3, 9, 6, NULL),
(9, '2019-12-15 13:25:29.000000', '123', 'qq@qq.qq', 'asdasd', 'rew3.jpg', 3, 8, 6, NULL),
(11, '2019-12-17 20:16:24.555907', '88005553535', 'mihalich@mail.ru', 'sadasd', 'rew1.jpg', 3, 6, 6, NULL),
(12, '2019-12-17 20:16:59.460440', '88005553535', 'mihalich@mail.ru', 'rukaz', 'rew1.jpg', 3, 8, 7, NULL),
(13, '2019-12-21 17:07:51.845846', '1234567890', 'testotzivanezareganniy@asdasd.co', 'TestOtzivaNezareganniy', 'rew1.jpg', NULL, 6, 6, 'Тестотзыванезареганный'),
(14, '2019-12-21 17:08:44.528175', '12343234', 'testotzivaotrabotnika@mail.com', 'TestOtzivaOtRabotnika', 'rew1.jpg', NULL, 6, 6, 'Тестотзываотработника'),
(15, '2019-12-21 17:09:19.352527', '88005553535', 'mihalich@mail.ru', 'Тестотзываотклиента', 'rew1.jpg', 3, 6, 6, NULL),
(16, '2019-12-23 16:58:44.406234', '1234567890', 'sad@sad.as', 'sadsad', 'rew1.jpg', NULL, 6, 6, 'sadas');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_reviewanswer`
--

CREATE TABLE `orders_reviewanswer` (
  `id` int(11) NOT NULL,
  `reviewanswer_text` longtext NOT NULL,
  `reviewanswer_author_id` int(11) NOT NULL,
  `reviewanswer_review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders_reviewanswer`
--

INSERT INTO `orders_reviewanswer` (`id`, `reviewanswer_text`, `reviewanswer_author_id`, `reviewanswer_review_id`) VALUES
(4, 'Просто отвечаю на отзывы. Люблю мышей', 6, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `services_printtype`
--

CREATE TABLE `services_printtype` (
  `id` int(11) NOT NULL,
  `printtype_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services_printtype`
--

INSERT INTO `services_printtype` (`id`, `printtype_name`) VALUES
(3, 'Печать на посуде'),
(4, 'Печать на одежде'),
(5, 'Гравировка');

-- --------------------------------------------------------

--
-- Структура таблицы `services_sale`
--

CREATE TABLE `services_sale` (
  `id` int(11) NOT NULL,
  `sale_name` varchar(100) NOT NULL,
  `sale_datestart` datetime(6) NOT NULL,
  `sale_dateend` datetime(6) NOT NULL,
  `sale_description` longtext NOT NULL,
  `sale_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services_sale`
--

INSERT INTO `services_sale` (`id`, `sale_name`, `sale_datestart`, `sale_dateend`, `sale_description`, `sale_image`) VALUES
(4, '2 гравировки по цене одной', '2019-12-01 13:19:30.000000', '2019-12-31 13:19:34.000000', 'Только в декабре 2 гравировки по цене одной', 'sal2_P6bMK9V.png'),
(5, '2 футболки по цене одной', '2019-12-15 13:20:36.000000', '2019-12-29 13:20:38.000000', '2 недели можешь взять 2 футболки по цене 1', 'sal5.png');

-- --------------------------------------------------------

--
-- Структура таблицы `services_sale_sale_service`
--

CREATE TABLE `services_sale_sale_service` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services_sale_sale_service`
--

INSERT INTO `services_sale_sale_service` (`id`, `sale_id`, `service_id`) VALUES
(9, 4, 9),
(10, 5, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `services_service`
--

CREATE TABLE `services_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(200) NOT NULL,
  `service_price` double NOT NULL,
  `service_description` longtext NOT NULL,
  `service_printtype_id` int(11) NOT NULL,
  `service_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services_service`
--

INSERT INTO `services_service` (`id`, `service_name`, `service_price`, `service_description`, `service_printtype_id`, `service_image`) VALUES
(6, 'Печать на футболках', 300, 'Печать на обыкновенных х/б футболках', 4, 'ser1.jpg'),
(7, 'Печать на кружках', 120, 'Печать на кружках', 3, 'ser4.jpg'),
(8, 'Печать на рюкзаках', 240, 'Печать на рюкзаках', 4, 'ser3.jpg'),
(9, 'Гравировка на чехлах', 320, 'Гравировка на чехлах', 5, 'ser2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users_client`
--

CREATE TABLE `users_client` (
  `id` int(11) NOT NULL,
  `client_telephonenumber` varchar(11) NOT NULL,
  `client_email` varchar(254) NOT NULL,
  `client_birthdaydate` date NOT NULL,
  `client_type_id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users_client`
--

INSERT INTO `users_client` (`id`, `client_telephonenumber`, `client_email`, `client_birthdaydate`, `client_type_id`, `client_name`, `user_id`) VALUES
(3, '88005553535', 'mihalich@mail.ru', '1999-11-12', 3, 'Тюхай Иван Михалыч', 3),
(4, '88005543636', 'toch@example.org', '1999-11-11', 2, 'Точилов Петр Михалыч', 4),
(5, '89000554343', 'semi@examople.org', '1998-12-20', 2, 'Минзуркин Семён Палыч', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users_clienttype`
--

CREATE TABLE `users_clienttype` (
  `id` int(11) NOT NULL,
  `clienttype_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users_clienttype`
--

INSERT INTO `users_clienttype` (`id`, `clienttype_name`) VALUES
(2, 'Физическое лицо'),
(3, 'Юридическое лицо');

-- --------------------------------------------------------

--
-- Структура таблицы `users_worker`
--

CREATE TABLE `users_worker` (
  `id` int(11) NOT NULL,
  `worker_name` varchar(100) NOT NULL,
  `worker_telephonenumber` varchar(11) NOT NULL,
  `worker_password` varchar(200) NOT NULL,
  `worker_email` varchar(254) NOT NULL,
  `worker_birthdaydate` date NOT NULL,
  `worker_image` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users_worker`
--

INSERT INTO `users_worker` (`id`, `worker_name`, `worker_telephonenumber`, `worker_password`, `worker_email`, `worker_birthdaydate`, `worker_image`, `user_id`) VALUES
(6, 'Мышиная Елена Дмитриевна', '88881233232', 'ыфв', 'wex@xew.ru', '2019-12-15', 'mouse.jpg', 7),
(7, 'Михалычев Михалыч Михалыч', '89085671232', 'ыфвфыв', 'miha@miha.ru', '2019-12-15', 'Vanka.jpg', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `users_worker_worker_printtype`
--

CREATE TABLE `users_worker_worker_printtype` (
  `id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `printtype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users_worker_worker_printtype`
--

INSERT INTO `users_worker_worker_printtype` (`id`, `worker_id`, `printtype_id`) VALUES
(6, 6, 3),
(7, 6, 4),
(8, 6, 5),
(9, 7, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users_worker_worker_service`
--

CREATE TABLE `users_worker_worker_service` (
  `id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users_worker_worker_service`
--

INSERT INTO `users_worker_worker_service` (`id`, `worker_id`, `service_id`) VALUES
(9, 6, 6),
(10, 6, 7),
(13, 7, 6),
(11, 7, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_order_client_id_9a7e55b1_fk_users_client_id` (`order_client_id`),
  ADD KEY `orders_order_order_service_id_e61d271c_fk_services_service_id` (`order_service_id`);

--
-- Индексы таблицы `orders_orderchatmessage`
--
ALTER TABLE `orders_orderchatmessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderchatmess_message_order_id_61f9c213_fk_orders_or` (`message_order_id`);

--
-- Индексы таблицы `orders_order_order_worker`
--
ALTER TABLE `orders_order_order_worker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_order_worker_order_id_worker_id_e97e81f4_uniq` (`order_id`,`worker_id`),
  ADD KEY `orders_order_order_worker_worker_id_d8e0c0d9_fk_users_worker_id` (`worker_id`);

--
-- Индексы таблицы `orders_review`
--
ALTER TABLE `orders_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_review_review_client_id_b0058967_fk_users_client_id` (`review_client_id`),
  ADD KEY `orders_review_review_service_id_e7cc13fb_fk_services_service_id` (`review_service_id`),
  ADD KEY `orders_review_review_worker_id_301ff144_fk_users_worker_id` (`review_worker_id`);

--
-- Индексы таблицы `orders_reviewanswer`
--
ALTER TABLE `orders_reviewanswer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_reviewanswer_reviewanswer_author__3fe2f0ed_fk_users_wor` (`reviewanswer_author_id`),
  ADD KEY `orders_reviewanswer_reviewanswer_review__a43d5175_fk_orders_re` (`reviewanswer_review_id`);

--
-- Индексы таблицы `services_printtype`
--
ALTER TABLE `services_printtype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_sale`
--
ALTER TABLE `services_sale`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_sale_sale_service`
--
ALTER TABLE `services_sale_sale_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_sale_sale_service_sale_id_service_id_e40be726_uniq` (`sale_id`,`service_id`),
  ADD KEY `services_sale_sale_s_service_id_b7807f5e_fk_services_` (`service_id`);

--
-- Индексы таблицы `services_service`
--
ALTER TABLE `services_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_service_service_printtype_id_d6d65318_fk_services_` (`service_printtype_id`);

--
-- Индексы таблицы `users_client`
--
ALTER TABLE `users_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_client_user_id_06d1c832_uniq` (`user_id`),
  ADD KEY `users_client_client_type_id_652ca4b7_fk_users_clienttype_id` (`client_type_id`);

--
-- Индексы таблицы `users_clienttype`
--
ALTER TABLE `users_clienttype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_worker`
--
ALTER TABLE `users_worker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users_worker_worker_printtype`
--
ALTER TABLE `users_worker_worker_printtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_worker_worker_prin_worker_id_printtype_id_abdeff7c_uniq` (`worker_id`,`printtype_id`),
  ADD KEY `users_worker_worker__printtype_id_c0d4e1f1_fk_services_` (`printtype_id`);

--
-- Индексы таблицы `users_worker_worker_service`
--
ALTER TABLE `users_worker_worker_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_worker_worker_service_worker_id_service_id_d09946c9_uniq` (`worker_id`,`service_id`),
  ADD KEY `users_worker_worker__service_id_880ebbdb_fk_services_` (`service_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `orders_orderchatmessage`
--
ALTER TABLE `orders_orderchatmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `orders_order_order_worker`
--
ALTER TABLE `orders_order_order_worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `orders_review`
--
ALTER TABLE `orders_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `orders_reviewanswer`
--
ALTER TABLE `orders_reviewanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `services_printtype`
--
ALTER TABLE `services_printtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `services_sale`
--
ALTER TABLE `services_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `services_sale_sale_service`
--
ALTER TABLE `services_sale_sale_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `services_service`
--
ALTER TABLE `services_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users_client`
--
ALTER TABLE `users_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users_clienttype`
--
ALTER TABLE `users_clienttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users_worker`
--
ALTER TABLE `users_worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users_worker_worker_printtype`
--
ALTER TABLE `users_worker_worker_printtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users_worker_worker_service`
--
ALTER TABLE `users_worker_worker_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_order_client_id_9a7e55b1_fk_users_client_id` FOREIGN KEY (`order_client_id`) REFERENCES `users_client` (`id`),
  ADD CONSTRAINT `orders_order_order_service_id_e61d271c_fk_services_service_id` FOREIGN KEY (`order_service_id`) REFERENCES `services_service` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_orderchatmessage`
--
ALTER TABLE `orders_orderchatmessage`
  ADD CONSTRAINT `orders_orderchatmess_message_order_id_61f9c213_fk_orders_or` FOREIGN KEY (`message_order_id`) REFERENCES `orders_order` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_order_order_worker`
--
ALTER TABLE `orders_order_order_worker`
  ADD CONSTRAINT `orders_order_order_worker_order_id_da22e015_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_order_order_worker_worker_id_d8e0c0d9_fk_users_worker_id` FOREIGN KEY (`worker_id`) REFERENCES `users_worker` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_review`
--
ALTER TABLE `orders_review`
  ADD CONSTRAINT `orders_review_review_client_id_b0058967_fk_users_client_id` FOREIGN KEY (`review_client_id`) REFERENCES `users_client` (`id`),
  ADD CONSTRAINT `orders_review_review_service_id_e7cc13fb_fk_services_service_id` FOREIGN KEY (`review_service_id`) REFERENCES `services_service` (`id`),
  ADD CONSTRAINT `orders_review_review_worker_id_301ff144_fk_users_worker_id` FOREIGN KEY (`review_worker_id`) REFERENCES `users_worker` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_reviewanswer`
--
ALTER TABLE `orders_reviewanswer`
  ADD CONSTRAINT `orders_reviewanswer_reviewanswer_author__3fe2f0ed_fk_users_wor` FOREIGN KEY (`reviewanswer_author_id`) REFERENCES `users_worker` (`id`),
  ADD CONSTRAINT `orders_reviewanswer_reviewanswer_review__a43d5175_fk_orders_re` FOREIGN KEY (`reviewanswer_review_id`) REFERENCES `orders_review` (`id`);

--
-- Ограничения внешнего ключа таблицы `services_sale_sale_service`
--
ALTER TABLE `services_sale_sale_service`
  ADD CONSTRAINT `services_sale_sale_s_service_id_b7807f5e_fk_services_` FOREIGN KEY (`service_id`) REFERENCES `services_service` (`id`),
  ADD CONSTRAINT `services_sale_sale_service_sale_id_f23f6b7f_fk_services_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `services_sale` (`id`);

--
-- Ограничения внешнего ключа таблицы `services_service`
--
ALTER TABLE `services_service`
  ADD CONSTRAINT `services_service_service_printtype_id_d6d65318_fk_services_` FOREIGN KEY (`service_printtype_id`) REFERENCES `services_printtype` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_client`
--
ALTER TABLE `users_client`
  ADD CONSTRAINT `users_client_client_type_id_652ca4b7_fk_users_clienttype_id` FOREIGN KEY (`client_type_id`) REFERENCES `users_clienttype` (`id`),
  ADD CONSTRAINT `users_client_user_id_06d1c832_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_worker`
--
ALTER TABLE `users_worker`
  ADD CONSTRAINT `users_worker_user_id_d7337389_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_worker_worker_printtype`
--
ALTER TABLE `users_worker_worker_printtype`
  ADD CONSTRAINT `users_worker_worker__printtype_id_c0d4e1f1_fk_services_` FOREIGN KEY (`printtype_id`) REFERENCES `services_printtype` (`id`),
  ADD CONSTRAINT `users_worker_worker__worker_id_b4a4f8b7_fk_users_wor` FOREIGN KEY (`worker_id`) REFERENCES `users_worker` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_worker_worker_service`
--
ALTER TABLE `users_worker_worker_service`
  ADD CONSTRAINT `users_worker_worker__service_id_880ebbdb_fk_services_` FOREIGN KEY (`service_id`) REFERENCES `services_service` (`id`),
  ADD CONSTRAINT `users_worker_worker__worker_id_4ce6378c_fk_users_wor` FOREIGN KEY (`worker_id`) REFERENCES `users_worker` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
