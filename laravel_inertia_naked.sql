-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 11 2025 г., 01:21
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
(4, '2025_11_04_181815_create_posts_table', 1),
(5, '2025_11_10_213857_create_tags_table', 1),
(6, '2025_11_10_214759_create_post_tag_table', 1);

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
(1, 3, 'veritatis ut', 'Provident et.', 'veritatis-ut', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(2, 1, 'et ea doloremque', 'Tempore et enim.', 'et-ea-doloremque', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(3, 8, 'rerum', 'Nostrum a.', 'rerum', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(4, 2, 'omnis quos', 'Quam et quisquam.', 'omnis-quos', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(5, 10, 'voluptates', 'Rerum aut assumenda.', 'voluptates', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(6, 7, 'quo neque quam', 'Quis tempore.', 'quo-neque-quam', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(7, 9, 'eos', 'Vel aperiam.', 'eos', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(8, 8, 'est molestias', 'Illum inventore.', 'est-molestias', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(9, 8, 'aut', 'Voluptate labore.', 'aut', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(10, 8, 'consectetur et', 'Iusto quae.', 'consectetur-et', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(11, 7, 'consequuntur rerum', 'Reprehenderit nisi.', 'consequuntur-rerum', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(12, 3, 'esse', 'Necessitatibus.', 'esse', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(13, 4, 'saepe delectus', 'Omnis repellendus.', 'saepe-delectus', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(14, 9, 'nihil', 'Vel quia dolore.', 'nihil', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(15, 10, 'aut molestiae eum', 'Exercitationem ea.', 'aut-molestiae-eum', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(16, 4, 'voluptas recusandae', 'Laborum expedita.', 'voluptas-recusandae', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(17, 2, 'sed ratione', 'Quae necessitatibus.', 'sed-ratione', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(18, 4, 'reiciendis voluptatum', 'Maiores dolorum.', 'reiciendis-voluptatum', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(19, 7, 'ducimus', 'Commodi adipisci.', 'ducimus', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(20, 6, 'est error mollitia', 'Voluptatem et hic.', 'est-error-mollitia', '2025-11-10 19:19:55', '2025-11-10 19:19:55');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 3, 4, NULL, NULL),
(6, 4, 1, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 4, 4, NULL, NULL),
(9, 4, 5, NULL, NULL),
(10, 5, 2, NULL, NULL),
(11, 5, 5, NULL, NULL),
(12, 6, 1, NULL, NULL),
(13, 6, 2, NULL, NULL),
(14, 6, 3, NULL, NULL),
(15, 6, 4, NULL, NULL),
(16, 6, 5, NULL, NULL),
(17, 7, 1, NULL, NULL),
(18, 7, 2, NULL, NULL),
(19, 7, 4, NULL, NULL),
(20, 7, 5, NULL, NULL),
(21, 8, 1, NULL, NULL),
(22, 8, 2, NULL, NULL),
(23, 8, 4, NULL, NULL),
(24, 8, 5, NULL, NULL),
(25, 9, 1, NULL, NULL),
(26, 9, 2, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 10, 2, NULL, NULL),
(29, 10, 3, NULL, NULL),
(30, 11, 1, NULL, NULL),
(31, 11, 2, NULL, NULL),
(32, 11, 3, NULL, NULL),
(33, 11, 4, NULL, NULL),
(34, 11, 5, NULL, NULL),
(35, 12, 1, NULL, NULL),
(36, 12, 2, NULL, NULL),
(37, 12, 4, NULL, NULL),
(38, 12, 5, NULL, NULL),
(39, 13, 1, NULL, NULL),
(40, 13, 2, NULL, NULL),
(41, 13, 3, NULL, NULL),
(42, 13, 5, NULL, NULL),
(43, 14, 1, NULL, NULL),
(44, 14, 2, NULL, NULL),
(45, 14, 3, NULL, NULL),
(46, 14, 4, NULL, NULL),
(47, 14, 5, NULL, NULL),
(48, 15, 1, NULL, NULL),
(49, 15, 2, NULL, NULL),
(50, 15, 3, NULL, NULL),
(51, 15, 4, NULL, NULL),
(52, 15, 5, NULL, NULL),
(53, 16, 2, NULL, NULL),
(54, 16, 4, NULL, NULL),
(55, 16, 5, NULL, NULL),
(56, 17, 1, NULL, NULL),
(57, 17, 2, NULL, NULL),
(58, 17, 5, NULL, NULL),
(59, 18, 3, NULL, NULL),
(60, 18, 5, NULL, NULL),
(61, 19, 2, NULL, NULL),
(62, 19, 4, NULL, NULL),
(63, 19, 5, NULL, NULL),
(64, 20, 1, NULL, NULL),
(65, 20, 2, NULL, NULL),
(66, 20, 3, NULL, NULL),
(67, 20, 4, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'provident', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(2, 'qui', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(3, 'facere', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(4, 'cum', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(5, 'excepturi', '2025-11-10 19:19:55', '2025-11-10 19:19:55');

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
(1, 'Тарас Борисович Князев', 'bespalova.artur@example.com', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'Ex5jWZ8M4E', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(2, 'Князева Марина Александровна', 'donat09@example.net', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'HkeMj9ZliS', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(3, 'Лыткина Виктория Владимировна', 'gerasimov.elizaveta@example.net', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'TL4iN0mYXM', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(4, 'Сысоева Лидия Борисовна', 'ila36@example.com', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', '3jk5m8aAjM', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(5, 'Ефимова Зоя Алексеевна', 'hohlova.bronislav@example.com', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'MpSPFlmxn8', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(6, 'Моисеев Нестор Борисович', 'skomissarov@example.net', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'rffdLhDhPg', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(7, 'Рената Львовна Турова', 'lilia.sidorova@example.com', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'oge6rYNi9i', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(8, 'Мухин Илья Александрович', 'pahomova.ulij@example.com', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'WyyrOXc4Un', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(9, 'Елена Борисовна Носкова', 'lubov.belakov@example.net', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'P1pF65D37v', '2025-11-10 19:19:55', '2025-11-10 19:19:55'),
(10, 'Адриан Сергеевич Калинин', 'megorov@example.org', '2025-11-10 19:19:55', '$2y$12$igyt9pYZSKNqdyPpHXkjsulo1btxTRlrnIeS0LEUhAT1z3gZ710Tq', 'KWKxhl0T0U', '2025-11-10 19:19:55', '2025-11-10 19:19:55');

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
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tag_post_id_tag_id_unique` (`post_id`,`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_title_unique` (`title`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
