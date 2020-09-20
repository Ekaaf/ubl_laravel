-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 10:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubl`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `contact_message` text COLLATE utf8_unicode_nopad_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contact_name`, `contact_email`, `contact_number`, `contact_message`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaa@gmail.com', '111', '1111', '2020-09-19 20:43:45', '2020-09-19 20:43:45'),
(2, 'asdasd', 'asdas@gmail.com', '1231231', '12312', '2020-09-19 20:45:44', '2020-09-19 20:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chamber_name` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `chamber_address` text COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `chamber_name`, `chamber_address`, `created_at`, `updated_at`) VALUES
(1, 15, 'chambername', 'chamberaddress', '2020-09-20 19:04:02', '2020-09-20 19:32:16');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0520481ea847b0589d706ff493d53e907a1efc139897e19dbc3b45c8e058eb9e8e31d19ead57aef2', 9, 3, 'MyApp', '[]', 0, '2020-09-20 04:00:04', '2020-09-20 04:00:04', '2021-09-20 10:00:04'),
('0c024f6ee8948aeb4bae6fb963f487be9cddfe9f0a2e59f17367e7949678fa9f797be5d21804e987', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:37:04', '2020-09-20 03:37:04', '2021-09-20 09:37:04'),
('1a0e6fd60b0df6ed553a5b17042ec3e9baa62b32ab37078a9f57b1ccc4c4bea98d6fff293b925fe1', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:37:23', '2020-09-20 03:37:23', '2021-09-20 09:37:23'),
('1a291a6364f4a5be0bb8640e00101c592293824c04de26307f47595031e69cb0402f5c12aed37f72', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:06:59', '2020-09-16 08:06:59', '2021-09-16 14:06:59'),
('20361892ce512de30d455fb5ce3b70c13c0fc8217c10df8003cd46a5665ac7a3e8d1f8d1249d0fb0', 9, 3, 'MyApp', '[]', 0, '2020-09-19 13:22:54', '2020-09-19 13:22:54', '2021-09-19 19:22:54'),
('217d5c6fc45ff65f85a9afefc3a6a1b7c9b6d58295a1a9daddfe5e23319fcdde38d74840b3730a8f', 9, 3, 'MyApp', '[]', 0, '2020-09-19 13:23:27', '2020-09-19 13:23:27', '2021-09-19 19:23:27'),
('217fc08a102f315699a6bf1d6ba03b5ba5c958d6679804c4de425fc785972b49e22f16a29160855d', 16, 3, 'MyApp', '[]', 0, '2020-09-20 13:38:58', '2020-09-20 13:38:58', '2021-09-20 19:38:58'),
('23773f45199aefa35148ffeb1f49e4aaae338e40ef21b893d7069b839155b9aaaa96f60f632d5ec0', 15, 3, 'MyApp', '[]', 0, '2020-09-20 13:06:51', '2020-09-20 13:06:51', '2021-09-20 19:06:51'),
('25ea97a5ef26aaf36877616c1fbf9355e2c06977ff39056ee4d82cc07bd400b28c2528128bfca413', 9, 3, 'MyApp', '[]', 0, '2020-09-20 13:36:54', '2020-09-20 13:36:54', '2021-09-20 19:36:54'),
('26f8d03015f14f3111b53aaa9de6a7304315c5ad685bb72897e1ff4eeb70b270a2b1ad1a5f507d4d', 9, 3, 'MyApp', '[]', 0, '2020-09-20 13:37:09', '2020-09-20 13:37:09', '2021-09-20 19:37:09'),
('2724ab1c37cde05513357691f9bee2b8c26a6451bb7bfa711e11c457aaebdf834e9a2dc083f2a41b', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:41:35', '2020-09-20 03:41:35', '2021-09-20 09:41:35'),
('2d38ea3de9126f0c0f87504686dc78c3e32d00484d7db950927069d633748b3dea82a6e362b6f3b1', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:07:06', '2020-09-16 08:07:06', '2021-09-16 14:07:06'),
('30d72b798471763e545200133de82c24d34d1b1417cde0495f13e48e4a72bd72874a262544dc1ec7', 15, 3, 'MyApp', '[]', 0, '2020-09-20 14:13:37', '2020-09-20 14:13:37', '2021-09-20 20:13:37'),
('3386bf5f140e0a59ca8e5fc036153241f599c05c015cde2a699aeab1bd4ed19aaf39a622c2cfd38f', 9, 3, 'MyApp', '[]', 0, '2020-09-20 04:24:30', '2020-09-20 04:24:30', '2021-09-20 10:24:30'),
('3c8c59fc86f6a3a0299884fe1e31d460afde557da34a9323992a1746061ed269d265fb6a9c2f6969', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:01:31', '2020-09-16 08:01:31', '2021-09-16 14:01:31'),
('42b41faf45bb6c4e9672d5ef72524be8e3708541052aaba5c1b3f78d654d3dc5cb6451764fe76feb', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:06:58', '2020-09-16 08:06:58', '2021-09-16 14:06:58'),
('4317b0e8882ac8563e114b278d59cf8f056ed8b467860b5c0c2b6d1971543ce188decdceb5dd9ff9', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:41:47', '2020-09-20 03:41:47', '2021-09-20 09:41:47'),
('4e7fa8fecd276b76ee331a85266770e9b4a104b7e2092c4c14025884249747efcdf3765ae5af56c5', 9, 3, 'MyApp', '[]', 0, '2020-09-19 12:59:45', '2020-09-19 12:59:45', '2021-09-19 18:59:45'),
('55b19069079cbd0ad09c50fcc874b0a19c02b2cbcfed1c229894f10f776e2e41ebb709479d3b2822', 1, 1, 'MyApp', '[]', 0, '2020-09-16 05:05:44', '2020-09-16 05:05:44', '2021-09-16 11:05:44'),
('627f426dc638a5758e15655408a4c3f44dc846b165f4bbe4a4011bbb74117b8a12d25d66468a5a26', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:05:55', '2020-09-16 08:05:55', '2021-09-16 14:05:55'),
('62a91ec937b32c2254efc6736466d305f65747c702569052cface47f44c38ab02b6961ba33e089ae', 1, 1, 'MyApp', '[]', 0, '2020-09-16 05:06:02', '2020-09-16 05:06:02', '2021-09-16 11:06:02'),
('73ecd11015df96ef6110bb61301b5011a6086ea8020eb9a3208556db5faa6e8e8341bdfbb8831f85', 16, 3, 'MyApp', '[]', 0, '2020-09-20 13:39:54', '2020-09-20 13:39:54', '2021-09-20 19:39:54'),
('8a66b69321ebeaf040aaa5d790d4bd59f59bef5d743237bf95eee76ac4cd6e4f94ec8c0acbc0633a', 9, 3, 'MyApp', '[]', 0, '2020-09-20 12:56:29', '2020-09-20 12:56:29', '2021-09-20 18:56:29'),
('969115f67cef4a2168dc4743dc6f6947d6234c13d05b35a25b9a03e3135d26e5caddea84244b544a', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:52:07', '2020-09-20 03:52:07', '2021-09-20 09:52:07'),
('998bca25ad27e01e70c2e50eef6f0ec470c927476b6990464fd78ee96a1aae279e1a56513da63564', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:05:35', '2020-09-16 08:05:35', '2021-09-16 14:05:35'),
('a3805ad9a9814ecb88d51d70df62111e0770f72f0199efb5008c62f578c68ef2723459cc78cc372a', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:03:48', '2020-09-16 08:03:48', '2021-09-16 14:03:48'),
('a7c29450c22d52b49692b2e4a80351c2f2118b6def56550c8f1407c5b5fa544d553f2698a4c3191d', 16, 3, 'MyApp', '[]', 0, '2020-09-20 14:07:03', '2020-09-20 14:07:03', '2021-09-20 20:07:03'),
('a7d3d763368d4ccec94937cb2b96ea83c8b0855ee56e7c34db780dbb06d05da96e7645569e6b5ea9', 16, 3, 'MyApp', '[]', 0, '2020-09-20 14:09:32', '2020-09-20 14:09:32', '2021-09-20 20:09:32'),
('bccec8e69c27886996de74664064600901f8407dfb7665e73260928d7cade803cf0558a861c0e522', 9, 3, 'MyApp', '[]', 0, '2020-09-19 13:23:03', '2020-09-19 13:23:03', '2021-09-19 19:23:03'),
('bcfd3be90bd7ee08366cc7a7f379386d2205e358dc12cb15744a2be30f41cfd7c6d6a07a7e5fe5ab', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:06:24', '2020-09-16 08:06:24', '2021-09-16 14:06:24'),
('cc920b3d60a8cc5fb9fb1ed94ee35d9e2e018bd413a3f656a83c1e66cf4c0595b0205d59a4dd14a9', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:02:26', '2020-09-16 08:02:26', '2021-09-16 14:02:26'),
('d0c244b11d7670affc13ac7be5326718501835003f660d3234b0e0e3771c6c434e5cc14b399ab633', 9, 1, 'MyApp', '[]', 0, '2020-09-16 07:00:07', '2020-09-16 07:00:07', '2021-09-16 13:00:07'),
('d9ed738611e6f074b28823efa33acaa67bbb357bb3cd7ff076a61728a9f5a529ed7dedd3d6cc3df3', 9, 3, 'MyApp', '[]', 0, '2020-09-20 13:35:12', '2020-09-20 13:35:12', '2021-09-20 19:35:12'),
('e6d1cd5e174438000aca41f223d132978106f68fe0fcc41a546b8cecc61349c3c00ea752745d3ff6', 9, 3, 'MyApp', '[]', 0, '2020-09-20 12:54:01', '2020-09-20 12:54:01', '2021-09-20 18:54:01'),
('eaad3ab9f02a6e83a5ef901ac66faba1168432723a32024be7918a5f39863a90da85c29f02149213', 9, 3, 'MyApp', '[]', 0, '2020-09-20 03:39:36', '2020-09-20 03:39:36', '2021-09-20 09:39:36'),
('f1d518c9771f9c8d0b39a5da0a26e6552d81e0988b2dceea6656579d685225f33259025bdd90ac9f', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:07:05', '2020-09-16 08:07:05', '2021-09-16 14:07:05'),
('fa389057b937b54d6f6dc9fb04ffb20f626d089e1e1ff0c9fa1591dccbb76b42ae38f968234093e6', 9, 1, 'MyApp', '[]', 0, '2020-09-16 08:06:11', '2020-09-16 08:06:11', '2021-09-16 14:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Kgr8kaugNHt8AId7C5ZxuW9dYW9utuWCYD3O05ek', NULL, 'http://localhost', 1, 0, 0, '2020-09-16 04:19:26', '2020-09-16 04:19:26'),
(2, NULL, 'Laravel Password Grant Client', 'C8Ek1M7LJtObvOiaoAITte5ztf3PdU6jVtu4TK2J', 'users', 'http://localhost', 0, 1, 0, '2020-09-16 04:19:26', '2020-09-16 04:19:26'),
(3, NULL, 'Laravel Personal Access Client', 'k7HOD6Zv9XsfERWlmfzbdQ1tfKGLPAsITezFoXuO', NULL, 'http://localhost', 1, 0, 0, '2020-09-19 12:59:32', '2020-09-19 12:59:32'),
(4, NULL, 'Laravel Password Grant Client', 'uAvRsRWN1NhdS5UfaKrF3YXVyABpth8d8flmTFC6', 'users', 'http://localhost', 0, 1, 0, '2020-09-19 12:59:32', '2020-09-19 12:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-16 04:19:26', '2020-09-16 04:19:26'),
(2, 3, '2020-09-19 12:59:32', '2020-09-19 12:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `reg_dental_camp`
--

CREATE TABLE `reg_dental_camp` (
  `id` int(11) NOT NULL,
  `reg_name` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `reg_email` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `reg_phone` int(11) NOT NULL,
  `reg_type` varchar(20) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `reg_info` text COLLATE utf8_unicode_nopad_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `reg_dental_camp`
--

INSERT INTO `reg_dental_camp` (`id`, `reg_name`, `reg_email`, `reg_phone`, `reg_type`, `reg_info`, `created_at`, `updated_at`) VALUES
(1, 'asdas', 'test@gmail.com', 123123, 'Doctor', '123', '2020-09-19 20:20:51', '2020-09-19 20:20:51'),
(2, 'das', 'aaa@gmail.com', 213123, 'Doctor', '3213', '2020-09-19 20:27:38', '2020-09-19 20:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testuser', 'testuser', 0, '2020-11-10 18:00:00', '$2y$10$bjD2cxCCKG3ziQg/VQ0deuJDR1R715VL3xVRrPKujB/gWJLTKOku6', 2, NULL, NULL, NULL),
(2, 'asda', 'asdas', 0, NULL, '$2y$10$P3IEfS5i8qXE69uH5EpkIe/H.XK9JliZoKsobxb1IVXT7TN7rNBci', 2, NULL, '2020-09-16 06:43:41', '2020-09-16 06:43:41'),
(4, '11', 'admin', 0, NULL, '$2y$10$56.iZZqmEUc4HJZpl8Sn4.Ng.5CURWs.3xOxQ6uH.Z4WXjEscrBw.', 2, NULL, '2020-09-16 06:45:07', '2020-09-16 06:45:07'),
(6, 'asdxcwdf', 'adminaa', 0, NULL, '$2y$10$vun25XvoZIK2KGBt9tBD.ud4jhTO20nMiHO9t8PGTJdSlm9KTS9Dm', 2, NULL, '2020-09-16 06:48:42', '2020-09-16 06:48:42'),
(7, '11sds', 'sdsa', 0, NULL, '$2y$10$uCipcFNP6NQ0efXuIS9buOD2m0nkMiq8Y/esczRtJtSBWes2jB7QG', 2, NULL, '2020-09-16 06:49:29', '2020-09-16 06:49:29'),
(8, '123213', '234343`', 0, NULL, '$2y$10$G.dH/1Gm.DI07NGNmOn96elu5XMQ4Xdf4gULCChbaMqvC/tT8P4sy', 3, NULL, '2020-09-16 06:49:57', '2020-09-16 06:49:57'),
(9, 'test', 'test@gmail.com', 0, NULL, '$2y$10$rkg0mY7yOpzvl3qX.03dpe4YZcvtZRMcZj7UXQ6TYaU6dBisa6BiK', 2, NULL, '2020-09-16 06:53:16', '2020-09-16 06:53:16'),
(10, 'test1', 'test1@gmail.com', 0, NULL, '$2y$10$is3TFIWmVCQmg2Zo9Nun.u0jB/dZ83SkUzLgdK.fgXJdxTeg3uWk2', 2, NULL, '2020-09-16 07:23:26', '2020-09-16 07:23:26'),
(11, 'test2', 'test2@gmail.com', 1234, NULL, '$2y$10$kdb1uNbcaJPrEXBlb.mgOufQvzf3fss07uSh6QR9wd2KPtCRnNz7m', 2, NULL, '2020-09-20 12:51:32', '2020-09-20 12:51:32'),
(12, 'aaa', 'aaa@gmail.com', 1234, NULL, '$2y$10$3CXGQ48P7ftXklxlRmd1i.rNfEpd9IFSwLwCUQcqJDNKFtfPvo9K6', 2, NULL, '2020-09-20 12:53:52', '2020-09-20 12:53:52'),
(15, 'doctor1', 'doctor1@gmail.com', 12341, NULL, '$2y$10$u7ncyUXpvMjIidCBo/.tyOlDz1XD2k.3be04VkCYRyS03feQ17iOy', 2, NULL, '2020-09-20 13:04:02', '2020-09-20 14:15:53'),
(16, 'user', 'user@gmail.com', 12345, NULL, '$2y$10$doFDNbn37wzO7Jb2ycdX0.Sbmgsjh.dRxD.PG39i6dreEDatX8GRi', 3, NULL, '2020-09-20 13:38:43', '2020-09-20 14:12:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reg_dental_camp`
--
ALTER TABLE `reg_dental_camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reg_dental_camp`
--
ALTER TABLE `reg_dental_camp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
