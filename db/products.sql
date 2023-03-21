-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 21, 2023 at 09:19 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_status` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_status`, `category`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mobile', '2023-03-21 07:15:06', '2023-03-21 07:10:20'),
(2, 0, 'Fashion', '2023-03-21 07:15:06', '2023-03-21 07:10:20'),
(3, 0, 'Electronics', '2023-03-21 07:15:06', '2023-03-21 07:10:20'),
(4, 1, 'Cameras', '2023-03-21 07:15:06', '2023-03-21 07:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_28_204540_create_addons_table', 0),
(6, '2023_02_28_204540_create_category_table', 0),
(7, '2023_02_28_204540_create_failed_jobs_table', 0),
(8, '2023_02_28_204540_create_password_resets_table', 0),
(9, '2023_02_28_204540_create_personal_access_tokens_table', 0),
(10, '2023_02_28_204540_create_products_table', 0),
(11, '2023_02_28_204540_create_products_addons_table', 0),
(12, '2023_02_28_204540_create_users_table', 0),
(13, '2023_03_20_194413_create_permission_tables', 2),
(14, '2023_03_21_205008_create_category_table', 0),
(15, '2023_03_21_205008_create_failed_jobs_table', 0),
(16, '2023_03_21_205008_create_model_has_permissions_table', 0),
(17, '2023_03_21_205008_create_model_has_roles_table', 0),
(18, '2023_03_21_205008_create_password_resets_table', 0),
(19, '2023_03_21_205008_create_permissions_table', 0),
(20, '2023_03_21_205008_create_personal_access_tokens_table', 0),
(21, '2023_03_21_205008_create_products_table', 0),
(22, '2023_03_21_205008_create_role_has_permissions_table', 0),
(23, '2023_03_21_205008_create_roles_table', 0),
(24, '2023_03_21_205008_create_users_table', 0),
(25, '2023_03_21_205009_add_foreign_keys_to_model_has_permissions_table', 0),
(26, '2023_03_21_205009_add_foreign_keys_to_model_has_roles_table', 0),
(27, '2023_03_21_205009_add_foreign_keys_to_role_has_permissions_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(2, 'role-create', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(3, 'role-edit', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(4, 'role-delete', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(5, 'product-list', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(6, 'product-create', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(7, 'product-edit', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26'),
(8, 'product-delete', 'web', '2023-03-20 14:27:26', '2023-03-20 14:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '4101650ff0b890400625a008d3c13e49ab82bfa06c536b6ce45b55a69c96a6f4', '[\"*\"]', NULL, '2023-03-21 10:19:52', '2023-03-21 10:19:52'),
(2, 'App\\Models\\User', 1, 'auth_token', 'a707455547858275f99c46a9f7f88ffa198d1cceffddc62693e43c8ea75fd321', '[\"*\"]', '2023-03-21 10:51:34', '2023-03-21 10:50:50', '2023-03-21 10:51:34'),
(3, 'App\\Models\\User', 1, 'auth_token', 'dfa317c2de7ed490cc198cdb902822e34dc6a76348704acc1f297fef6a415117', '[\"*\"]', NULL, '2023-03-21 10:59:19', '2023-03-21 10:59:19'),
(4, 'App\\Models\\User', 1, 'auth_token', '2b4e19a92f2919757bf7ac4a2b3fa6b01d4156e019b566cfdb7231488c56e628', '[\"*\"]', NULL, '2023-03-21 10:59:20', '2023-03-21 10:59:20'),
(5, 'App\\Models\\User', 1, 'auth_token', 'e1ef27ef77276efbe8d09b4555ae9686ca5460a33024d5405d43a5bfad0ac4ab', '[\"*\"]', NULL, '2023-03-21 10:59:20', '2023-03-21 10:59:20'),
(6, 'App\\Models\\User', 1, 'auth_token', '4f9e5432c9bd97c64daa46bb0429b76d3db843199fe85b60e5c04f02e3127bd2', '[\"*\"]', NULL, '2023-03-21 10:59:21', '2023-03-21 10:59:21'),
(7, 'App\\Models\\User', 1, 'auth_token', '05cab61009127fe8892a644d0bd48ca9c99fd552c376bf7a008d9cd012449066', '[\"*\"]', NULL, '2023-03-21 10:59:21', '2023-03-21 10:59:21'),
(8, 'App\\Models\\User', 1, 'auth_token', '1856bd5524d1b48c5f9b45b51cac427fa9f71f6756771998057f7dff5313a394', '[\"*\"]', NULL, '2023-03-21 10:59:33', '2023-03-21 10:59:33'),
(9, 'App\\Models\\User', 1, 'auth_token', '40a4d6b8782cc34e6f82c7fe7a0e54ae9039ea44c8dd3ad92657940e8def17d6', '[\"*\"]', NULL, '2023-03-21 10:59:44', '2023-03-21 10:59:44'),
(10, 'App\\Models\\User', 1, 'auth_token', '52a80f20ef2af58dea8c778ad7280230555352e48d3d03014ef6522cb8a1746e', '[\"*\"]', NULL, '2023-03-21 10:59:44', '2023-03-21 10:59:44'),
(11, 'App\\Models\\User', 1, 'auth_token', 'c872dbc34971b77423aca7f638ef02e1f43423a5104471440ceb692aa04aa35e', '[\"*\"]', NULL, '2023-03-21 10:59:45', '2023-03-21 10:59:45'),
(12, 'App\\Models\\User', 1, 'auth_token', '69061fba3ab31b4dc4fe21d12e1c1b57e09be384c77f1c25e6e975ff7244ae94', '[\"*\"]', NULL, '2023-03-21 11:00:14', '2023-03-21 11:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_status` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_code` varchar(100) DEFAULT NULL,
  `products` varchar(200) NOT NULL,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `image` varchar(200) DEFAULT NULL,
  `image_1` varchar(100) DEFAULT NULL,
  `image_2` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_status`, `category_id`, `product_code`, `products`, `price`, `image`, `image_1`, `image_2`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'QD32MPA5', 'Branded Shirt 1', 100.00, 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png', '', '', '2023-02-28 09:17:40', '2023-03-21 03:06:27'),
(2, 0, 1, 'RWN4CYHG', 'Branded Shirt 2', 100.00, '1679385351-1x1-q1.png', 'ykIikqfc97tlTOBg9FcVevdNOwYbiArW4otoYoVl.png', 'KAN4JXIWbjyNsKbfMh0GRLLyv4skvKHQ5c6hd7SB.png', '2023-02-28 09:17:40', '2023-03-21 02:49:30'),
(3, 0, 1, 'AFG3CSF3', 'Branded Shirt 3', 100.00, 'EmHNmah6F9aC0Gndl5cHOLqPKkfnzYlr9KM4P2KB.jpg', '', '', '2023-02-28 09:17:40', '2023-03-21 02:50:08'),
(4, 0, 1, '4TQH1AOW', 'Branded Shirt 4', 100.00, 'zZPpvcISEpfdUXjl467OVil0gAnTm5XR2ye5KWV5.jpg', '', '', '2023-02-28 09:17:40', '2023-03-21 02:50:10'),
(5, 0, 1, '6546CNUE', 'Branded Shirt 5', 100.00, '8QAENks1COZIasSGSsalGv2nQWsueFniPd5fnpnW.webp', '', '', '2023-02-28 09:17:40', '2023-03-21 02:50:13'),
(6, 0, 1, 'SVJJ6FYO', 'Branded Shirt 6', 100.00, 'H75o7yW21J5rQ7BkOeDaH8cTAXPeg6zSr8z9FZdN.webp', '', '', '2023-02-28 09:17:40', '2023-03-21 02:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-03-20 14:29:16', '2023-03-20 14:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$SXUi1LZmzS8hyyxBxonp1u/LdyPuxCPjqxrmrT8YsJqR/aEgRJxM.', NULL, '2023-02-24 03:55:01', '2023-02-24 03:55:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
