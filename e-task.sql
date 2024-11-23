-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 نوفمبر 2024 الساعة 23:50
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-task`
--

-- --------------------------------------------------------

--
-- بنية الجدول `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `count`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 0, '2024-11-21 14:35:14', '2024-11-21 19:41:10');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Update Category', 'http://127.0.0.1:8000/images/20241123170019.jpg', '2024-11-20 20:19:19', '2024-11-23 14:00:19'),
(7, 'New Category', 'http://127.0.0.1:8000/images/20241120231927.png', '2024-11-20 20:19:27', '2024-11-20 20:19:27');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `kunden`
--

CREATE TABLE `kunden` (
  `id` int(11) NOT NULL,
  `anrede` varchar(10) NOT NULL,
  `vorname` varchar(255) NOT NULL,
  `nachname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gebDatum` date NOT NULL,
  `telnummer` varchar(20) NOT NULL,
  `str` varchar(255) NOT NULL,
  `strNum` varchar(10) NOT NULL,
  `plz` varchar(10) NOT NULL,
  `stadt` varchar(255) NOT NULL,
  `familienstand` varchar(50) DEFAULT NULL,
  `kvNummer` varchar(20) DEFAULT NULL,
  `rvNummer` varchar(20) DEFAULT NULL,
  `geburtsort` varchar(255) DEFAULT NULL,
  `Nationalität` varchar(255) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `letzterbesuch` timestamp NULL DEFAULT NULL,
  `USER` varchar(50) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_token` varchar(255) DEFAULT NULL,
  `hashed_id_column` varchar(256) DEFAULT NULL,
  `register` timestamp NULL DEFAULT NULL,
  `notizen` text DEFAULT NULL,
  `telnummergultig` tinyint(1) NOT NULL DEFAULT 1,
  `referral` varchar(255) DEFAULT NULL,
  `Sprache` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_07_12_165031_create_categories_table', 1),
(11, '2023_09_05_012906_create_products_table', 1),
(12, '2023_09_05_013141_create_product_images_table', 1),
(13, '2024_09_18_121517_create_carts_table', 1),
(14, '2024_09_18_123927_add_stock_to_products_table', 1),
(15, '2024_11_21_172644_cart_items', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('178589688fa76afd9a860c18a383a7774b48a3b015396bb55c843284078647bb1f6b541f3f50cc18', 1, 1, 'token', '[]', 0, '2024-11-22 16:22:29', '2024-11-22 16:22:29', '2025-05-22 19:22:29'),
('316c9c83c76befb7c729748e3d1578741a1e636b8200ddc05eace8a9820f72769591400bede22b21', 1, 1, 'token', '[]', 0, '2024-11-22 16:22:26', '2024-11-22 16:22:26', '2025-05-22 19:22:26'),
('3d086d64a02ebada71692e73d2b4da6b5d2f614f10c41ae037d2ef758cda7eea9ef9d324e50d0c94', 1, 1, 'token', '[]', 0, '2024-11-22 16:22:42', '2024-11-22 16:22:42', '2025-05-22 19:22:42'),
('8d5f445d18689004562b2f422203760078f88e930f8a1b5fa99e43c92580331433894e6dfeea0167', 1, 1, 'token', '[]', 0, '2024-11-23 19:20:21', '2024-11-23 19:20:21', '2025-05-23 22:20:21'),
('a685c8edbaa90173df8a4e4dd930552923773156a94b13c8d6a47edbb47fd9c18247f8c0466a8943', 9, 1, 'token', '[]', 0, '2024-11-23 19:44:35', '2024-11-23 19:44:35', '2025-05-23 22:44:35'),
('b3193949fdcd79d912ab47db07a4d29a286e8c5ddff75ad5ffbbc63a96dad0a3722e99ec0d1b5ade', 1, 1, 'token', '[]', 0, '2024-11-21 15:39:45', '2024-11-21 15:39:45', '2025-05-21 18:39:45'),
('b60e2b06b5df52827bdf68b9c0268b2496d7501bba78f2dc4d102e05fc72eeac53ef6b506b2c5d8d', 1, 1, 'token', '[]', 0, '2024-11-21 15:39:58', '2024-11-21 15:39:58', '2025-05-21 18:39:58'),
('c0968f1598a3aba5a1dd6724cd35a3982e4485fb44ec8fb22e57f1c47e7f1df4ab097736b11ff1a2', 1, 1, 'token', '[]', 0, '2024-11-20 19:51:42', '2024-11-20 19:51:42', '2025-05-20 22:51:42');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '16JYHJ4wk1ajdUGjeDTW6csfNIGmrfh2CvuiAxyM', NULL, 'http://localhost', 1, 0, 0, '2024-11-20 19:47:58', '2024-11-20 19:47:58');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-20 19:47:58', '2024-11-20 19:47:58');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `rating` varchar(255) NOT NULL DEFAULT '0',
  `ratings_number` varchar(255) NOT NULL DEFAULT '0',
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT 0,
  `About` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `category`, `title`, `description`, `rating`, `ratings_number`, `price`, `discount`, `stock`, `About`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'New Product', 'Lorem Ipsum', '0', '0', '15', '12', 5, 'Fabric J', 'draft', '2024-11-20 20:24:11', '2024-11-20 20:24:11'),
(5, 2, 'New Product', 'Lorem Ipsum', '0', '0', '15', '12', 5, 'Fabric J', 'draft', '2024-11-20 20:25:51', '2024-11-20 20:25:51'),
(6, 2, 'New Product', 'Lorem Ipsum', '0', '0', '15', '12', 5, 'Fabric J', 'draft', '2024-11-20 20:26:01', '2024-11-20 20:26:01'),
(8, 2, 'New Product', 'Lorem Ipsum', '0', '0', '15', '12', 5, 'Fabric J', 'published', '2024-11-20 20:27:28', '2024-11-20 20:27:28'),
(15, 7, 'Laptop', 'Laptop Like Some Laptops', '0', '0', '520', '448', 6, 'Eos officia a consequuntur nisi aut.', 'published', '2024-11-23 17:42:57', '2024-11-23 17:42:57'),
(16, 7, 'Power Bank', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In est ante in nibh mauris cursus mattis molestie a. Vitae tempus quam pellentesque nec nam. Suspendisse ultrices gravida dictum fusce. Magna eget est lorem ipsum. Purus viverra accumsan in nisl nisi scelerisque. Suspendisse faucibus interdum posuere lorem ipsum dolor. Sem integer vitae justo eget magna. Nascetur ridiculus mus mauris vitae ultricies. Id neque aliquam vestibulum morbi blandit cursus. Turpis egestas integer eget aliquet nibh praesent tristique. Libero id faucibus nisl tincidunt eget nullam non nisi est. Sed sed risus pretium quam vulputate dignissim', '5', '0', '120', '100', 5, 'Non doloribus qui iure fugit molestiae.', 'published', '2024-11-23 19:10:09', '2024-11-23 19:10:09'),
(17, 7, 'New Screen', 'Et atque earum repellendus et dolores voluptas eligendi nihil.', '5', '0', '500', '450', 8, 'About The Product', 'published', '2024-11-23 19:10:40', '2024-11-23 19:10:40');

-- --------------------------------------------------------

--
-- بنية الجدول `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 8, 'http://127.0.0.1:8000/images/202411202327281.jpg', '2024-11-20 20:27:28', '2024-11-20 20:27:28'),
(2, 8, 'http://127.0.0.1:8000/images/202411202327282.png', '2024-11-20 20:27:28', '2024-11-20 20:27:28'),
(7, 15, 'http://127.0.0.1:8000/images/202411232042571.jpg', '2024-11-23 17:42:57', '2024-11-23 17:42:57'),
(8, 15, 'http://127.0.0.1:8000/images/202411232042572.jpg', '2024-11-23 17:42:57', '2024-11-23 17:42:57'),
(10, 16, 'http://127.0.0.1:8000/images/202411232210091.webp', '2024-11-23 19:10:09', '2024-11-23 19:10:09'),
(11, 17, 'http://127.0.0.1:8000/images/202411232210401.jpg', '2024-11-23 19:10:40', '2024-11-23 19:10:40'),
(12, 17, 'http://127.0.0.1:8000/images/202411232210402.jpg', '2024-11-23 19:10:40', '2024-11-23 19:10:40');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT '2001',
  `google_id` varchar(255) DEFAULT NULL,
  `google_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `google_id`, `google_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2024-11-20 19:47:41', '$2y$10$wyaF6AQIN29/CrjT5QhIHeS1IzIUxwJ6hx0QRWb3wS8j8jcaf/RuG', '1995', NULL, NULL, 'CGIwDHaR6V', '2024-11-20 19:47:41', '2024-11-20 19:47:41'),
(4, 'AhmedSasdfasdf', 'ahmed2@gmail.com', NULL, '$2y$10$oGZ1WkumpY.vvzZxcdo43.2KI4SG9h5S.uScIygTCKgddIksIO8h.', '2001', NULL, NULL, NULL, '2024-11-20 20:02:36', '2024-11-23 13:15:39'),
(8, 'V', 'v@gmail.com', NULL, '$2y$10$X/8/TQVDFyja17STbT1CjOfoZkoMkK6k42WEDHi6q8BlUqz4QSHG6', '2001', NULL, NULL, NULL, '2024-11-23 13:08:58', '2024-11-23 13:08:58'),
(9, 'Nageeb', 'nag@gmail.com', NULL, '$2y$10$YS1QQbFH0lPJglbfIkoOj.Jd9dRW1j1LALHF4F0Q4.csNmQDOyh/W', '2001', NULL, NULL, NULL, '2024-11-23 19:44:34', '2024-11-23 19:44:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_foreign` (`category`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- قيود الجداول `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_foreign` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- قيود الجداول `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
