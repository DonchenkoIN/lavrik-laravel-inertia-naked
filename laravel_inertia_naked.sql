-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 05 2025 г., 03:45
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_inertia_naked`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_04_181815_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `url`, `created_at`, `updated_at`) VALUES
(2, 2, 'est cumque', 'Earum recusandae.', 'est-cumque', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(3, 3, 'perferendis ea', 'Voluptatibus.', 'perferendis-ea', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(4, 8, 'cum', 'Est corporis iure.', 'cum', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(5, 7, 'praesentium atque', 'Quaerat aut unde.', 'praesentium-atque', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(6, 3, 'eius', 'Nihil qui ut.', 'eius', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(7, 6, 'sed', 'Enim dolorem.', 'sed', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(8, 9, 'vero repudiandae', 'Vel aut hic facilis.', 'vero-repudiandae', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(9, 2, 'ipsam magnam dolores', 'Facere sapiente.', 'ipsam-magnam-dolores', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(10, 2, 'eligendi perspiciatis', 'Maiores officiis ex.', 'eligendi-perspiciatis', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(11, 6, 'aspernatur', 'Ab ex debitis eaque.', 'aspernatur', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(12, 2, 'voluptatibus facilis', 'Repudiandae.', 'voluptatibus-facilis', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(13, 9, 'id sit ea', 'Et ut voluptatum.', 'id-sit-ea', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(14, 2, 'ut eum', 'Culpa expedita.', 'ut-eum', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(15, 5, 'quod autem harum', 'Voluptate numquam.', 'quod-autem-harum', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(16, 2, 'et', 'Corrupti iusto et.', 'et', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(17, 8, 'quo delectus illum', 'Aliquid sit debitis.', 'quo-delectus-illum', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(18, 10, 'ipsam id', 'Voluptatem natus.', 'ipsam-id', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(19, 1, 'maiores eum voluptate', 'Itaque aut et qui.', 'maiores-eum-voluptate', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(20, 1, 'sint dolores', 'Tempora suscipit.', 'sint-dolores', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(21, 5, 'Ab atque laborum qui', 'Rerum nostrud in seq', 'ab-atque-laborum-qui', '2025-11-04 20:14:49', '2025-11-04 20:14:49'),
(22, 9, 'Voluptatem voluptate', 'Exercitation ut esse', 'voluptatem-voluptate', '2025-11-04 20:15:28', '2025-11-04 20:15:28'),
(24, 1, 'Ex obcaecati commodi', 'Iure suscipit qui eo', 'ex-obcaecati-commodi', '2025-11-04 20:19:03', '2025-11-04 20:19:03'),
(25, 9, 'Iure vero hic laudan', 'Et consequatur culpa', 'iure-vero-hic-laudan', '2025-11-04 20:19:31', '2025-11-04 20:19:31'),
(26, 2, 'Harum facilis quaera', 'Ut in aliquip duis v', 'harum-facilis-quaera', '2025-11-04 20:19:43', '2025-11-04 20:19:43'),
(27, 10, 'Dolorum elit recusa', 'Aliquam voluptas fug', 'dolorum-elit-recusa', '2025-11-04 20:30:27', '2025-11-04 20:30:27'),
(28, 1, 'Aliquip voluptas con', 'Magnam unde qui comm', 'aliquip-voluptas-con', '2025-11-04 20:35:20', '2025-11-04 20:35:20'),
(29, 9, 'Eos omnis ut quibus', 'Mollit nisi vero cum', 'eos-omnis-ut-quibus', '2025-11-04 20:39:57', '2025-11-04 20:39:57');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('wznLVfUzOE0cYtixNFCg370b76yIF1XC3M3689Wa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGJJckZBbW81dlZpWHBtZDVGWDJZdUxKM1hjdG1pc1Vsa0ZuamZvaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cyI7czo1OiJyb3V0ZSI7czoxMToicG9zdHMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762303511);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Мельникова Зинаида Дмитриевна', 'trofim.kabanov@example.com', '2025-11-04 16:16:46', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', '0ZaZoD5fwI', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(2, 'Мамонтов Дмитрий Евгеньевич', 'amerkuseva@example.com', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'p5c4lBMZNT', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(3, 'Трофимова Инна Львовна', 'ekaterina37@example.com', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'aCZlOpnmct', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(4, 'Рафаил Александрович Ситников', 'apollon.afanaseva@example.net', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'HshcIIDTEJ', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(5, 'Даниил Сергеевич Самсонов', 'nelli12@example.net', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'kUbgtpYizU', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(6, 'Селиверстова Ульяна Дмитриевна', 'egorova.anastasia@example.com', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'DoKj44Kc7j', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(7, 'Гришин Донат Максимович', 'ananij64@example.net', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'vpL0x2rO4I', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(8, 'Изабелла Львовна Матвеева', 'lukin.lubov@example.net', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'lHGa5ACmC5', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(9, 'Зинаида Евгеньевна Рябова', 'aksenova.diana@example.com', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'WVVXkdBo6Q', '2025-11-04 16:16:47', '2025-11-04 16:16:47'),
(10, 'Шилова Лидия Евгеньевна', 'miroslav20@example.com', '2025-11-04 16:16:47', '$2y$12$Rft.jtZ48jRD1sagY.zLfOI3KePKOWLMr2yzcMLZPyxkLr.Jl3bYu', 'kEWhbTon4c', '2025-11-04 16:16:47', '2025-11-04 16:16:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_url_unique` (`url`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
