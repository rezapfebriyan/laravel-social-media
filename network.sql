-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2022 at 09:23 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `network`
--

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(2, 12, '2022-06-28 07:53:31', '2022-06-28 07:53:31'),
(3, 12, '2022-06-28 07:53:31', '2022-06-28 07:53:31'),
(4, 11, '2022-06-28 07:52:57', '2022-06-28 07:52:57'),
(6, 11, '2022-06-28 07:52:02', '2022-06-28 07:52:02'),
(7, 11, '2022-06-28 07:52:02', '2022-06-28 07:52:02'),
(8, 11, '2022-06-28 07:52:57', '2022-06-28 07:52:57'),
(11, 6, '2022-06-28 00:50:09', '2022-06-28 00:50:09'),
(11, 7, '2022-06-28 00:50:07', '2022-06-28 00:50:07'),
(11, 8, '2022-06-28 00:50:05', '2022-06-28 00:50:05'),
(11, 12, '2022-06-28 00:49:03', '2022-06-28 00:49:03'),
(12, 8, '2022-06-28 00:55:17', '2022-06-28 00:55:17'),
(12, 11, '2022-06-28 00:55:00', '2022-06-28 00:55:00');

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
(5, '2022_03_08_080010_create_statuses_table', 1),
(6, '2022_03_16_072707_create_follows_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `identifier`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'jqkmqzy1jv1e6fegvz5kcqx0rbhoijmw', 'Ab ea unde eaque a.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(2, 1, 'fx9jvxwhihgcujxx3rcrav8l2sa2rdud', 'Unde eos et repellendus iure.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(3, 1, 'kvluacptx8iyxss7ldpgbour8zdvbiqr', 'Quod ut accusamus eum.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(4, 1, 'c2zfrvetw8jevlfowqhpkq3ns6fnu3vy', 'Repudiandae et totam asperiores nisi veniam sit amet.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(5, 1, '36kursields8awhi4siyo21hn5esl6og', 'Facilis temporibus numquam aut.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(6, 2, 'f76cv3ee7zkqi4ofzwlg8dnszlclvahz', 'In mollitia quidem qui quasi ipsam.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(7, 2, 'xhsnkr2ftfddgdkbblnxks5q7nhj9iyw', 'Commodi voluptatem vitae delectus ea nulla sint.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(8, 2, 'bgofu0hc1nzem9o73ubskfycf7paub2k', 'Blanditiis facere nulla corrupti dicta.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(9, 2, '2kldwtev590qmtkyvynlkxdgmgn9pnwf', 'Eum et quia eaque perferendis culpa.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(10, 2, 'wxcvssgftv9gyzjmuavw7pjwvvureeeq', 'Aut cupiditate dolor numquam distinctio.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(11, 3, 'of06bwr65kx9sfmymokpkmmfgdkzhqum', 'Incidunt occaecati ex in ea.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(12, 3, 'auajhdxrwnekq45a5yrskiqqu5j1afno', 'Amet enim quia veritatis voluptatem.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(13, 3, 'rltwi3hun7ou2zebnacq3ffa3haprfe5', 'Eaque et rerum officiis eos voluptas est optio laborum.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(14, 3, 'xec7c6x24x6qdjj8xuhljvuq8lz0on1c', 'Possimus ducimus sed quis nobis cupiditate sed quam sit.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(15, 3, 'n1nzsncw3dwpf3hze8apaquztfptja72', 'Id repellendus et occaecati nemo facilis esse.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(16, 4, 'jzcdqwdxfw8anmudcq6ppn743ohcyeyw', 'Qui voluptatem commodi commodi omnis.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(17, 4, 'dzeafrnfq5qcp2xvw8cohsxtddfuqiwu', 'Laudantium repudiandae est beatae nihil autem inventore incidunt.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(18, 4, 'hzgynpo8kwhuyfjpdozpmnpmumhcdafn', 'Eaque modi voluptas voluptas autem laborum qui.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(19, 4, '863lrh3rqztjoqgupt1lcscaaaxzjl0y', 'Consequatur accusantium dolor molestiae dolorem necessitatibus est et.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(20, 4, 'daoktbinqdwawoz5clh6t7jlxkydejtq', 'Harum ea ut qui molestias explicabo est eum.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(21, 5, 'fimr2ng7r4xup1ldhcgpqiuxz1gbeznb', 'Consequuntur qui perspiciatis possimus et veritatis ex.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(22, 5, 'qsoxevw9q8dhtjiyqncccfbvzgvwmz5q', 'Ea quo quis mollitia repellendus nesciunt.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(23, 5, '5qap9ngmbjzajd6ywq7vdqzkntismel3', 'Qui ipsam possimus perferendis est rerum dolorem molestias.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(24, 5, 'vhbeoz6gu9ohfegxwzvscbancisctvgw', 'Est reiciendis quidem praesentium ratione.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(25, 5, '5fx1etpeqdkmj3vztnewe3l92bkxlpct', 'Saepe numquam est blanditiis dicta quod adipisci.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(26, 6, 'r4ofe2ycgd31msoifn0d4dnap3i3sbdo', 'Quis et porro eligendi officia est beatae culpa.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(27, 6, '90hospppshdnlxpqqczztl2pdglgmvmx', 'Possimus reiciendis voluptatibus voluptatibus minus in non voluptates magnam.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(28, 6, 'wfqbmicxrxgeuk0w53njniqmis7mlop8', 'Totam voluptatem est qui modi eos maxime.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(29, 6, '4fwlucmzw0uowvqsshpwet1qt0gpyxra', 'Est est harum tempore recusandae odio eaque dolore.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(30, 6, 'vp4ae3kiapjcvljembn9cthrkvg9djht', 'Magnam sit enim enim nemo quia.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(31, 7, 'uavz7kmstt4yldzs0su9k0fze98efa2u', 'Et aspernatur ea tempore dolorum fugit id voluptas.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(32, 7, '2wbygds5vlhbwksmsgm8wuhvi85ejm7k', 'Officia sed id rerum.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(33, 7, 'fqgwhr3g1ztxrnssmtouc0llvev4bnof', 'Corrupti quia nobis iste.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(34, 7, '3tk8xmewh8zvnwiwyu5jvisfoj1xojvt', 'Eum nulla odio voluptates fuga consequatur voluptatibus.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(35, 7, '0hkaxu2skvgddngn5przyuz8gpovcbul', 'Rerum velit et animi necessitatibus animi et.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(36, 8, 'yf08xstizhy5vw7g1pqm0denqooswm5u', 'Ea doloribus ratione explicabo aliquam doloribus.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(37, 8, 'bxaoprlph2divjtitv5cvqghfbqouaup', 'Officiis consequatur ut dolorem sit consectetur repellat.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(38, 8, 'yeb9blfp9purwq2tbolbrmi10p6zc6ya', 'Reiciendis quisquam ullam qui aliquam eos.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(39, 8, 'js3warok67lnthphhyjd7xb6psqbzyql', 'Qui omnis qui laudantium omnis ex atque ut.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(40, 8, 'crl8ju7nmjwgudfcz1meew0kjguxuyqb', 'Est facilis dolorem repudiandae laborum aut et.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(41, 9, 'q9pr1m7h3abyyjtekw1dmf887lexbjcc', 'Quasi dignissimos eos dolorem dolorem nemo est.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(42, 9, 'xqbrgejf0qxst3i3xnvklqilyowwuq72', 'Dolorem exercitationem rerum molestiae est.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(43, 9, 'j0dbvwejzzkjzc2uvvv0dxgk4jnxqqe5', 'Non qui error totam eaque quam sed et.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(44, 9, 'ctaky3yxygibkmuxhfnarz8jhqyvtrdi', 'Quas doloribus natus vero quae enim.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(45, 9, 'tiibpbbvesu9ofjbvy5yu4sj71burg63', 'Culpa voluptas autem tenetur ab ipsam mollitia.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(46, 10, 'zdu9wjbanghzwentttyzmsey7dkek3yd', 'Odit vero aut et eos laudantium.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(47, 10, '0ibl9qhc3uskf5tgosdxanymrpainggl', 'Consequatur accusamus qui natus nam in.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(48, 10, 'ohe0k8wxpwlb19edoy8q3aev8nwpihag', 'Sint quisquam quos alias eum aut omnis.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(49, 10, 'yhe9usnhyjlib9jqqusabf9ukkfemtbc', 'Nihil non libero sed sit eum est odio unde.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(50, 10, 'nnsyw58f6ejbyswnve40m1d37lbla4dc', 'Est et autem ratione sed.', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(51, 11, 'symglsmdohxrsmo0albc1lsudydxcexp11', 'Tes bikin status lagi', '2022-06-28 00:49:34', '2022-06-28 00:49:34'),
(52, 12, 'tfzb0bs08rq6obcnvimggcgd8rnzzgo512', 'Status pertama saya', '2022-06-28 00:54:51', '2022-06-28 00:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Maybelle Legros Sr.', 'audreanne65', 'reed12@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '68ZoZUz1ym', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(2, 'Daisy Bechtelar', 'andres73', 'hyatt.ali@example.net', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rj2Wry2J1H', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(3, 'Ms. Eileen Greenholt Sr.', 'zackery64', 'wisozk.tyrique@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z9egagO06T', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(4, 'Alexanne Pouros', 'amari.pacocha', 'ella.batz@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E5X3t7k3Ch', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(5, 'Tierra Herman', 'zlockman', 'wilderman.elias@example.org', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iUXpsNYVFo', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(6, 'Darien Douglas PhD', 'geovanni.upton', 'green.oconnell@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uJGX0cOHbk', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(7, 'Berniece McLaughlin II', 'florian.nicolas', 'yschoen@example.net', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SRKqRBWVH2', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(8, 'Dina Roberts', 'donald.collier', 'ardith.schiller@example.net', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XvrPVXmZ8G', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(9, 'Claud Medhurst V', 'tjohnson', 'kristopher.ward@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SIh82wLnBK', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(10, 'Dr. Demond Hintz Sr.', 'jennifer.boyle', 'lebsack.jaydon@example.com', '2022-06-27 08:26:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6xypeFKTux', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(11, 'Reza Febriyan', 'rezapf', 'rezafebriyan00@gmail.com', '2022-06-27 08:26:24', '$2y$10$jlS11jFsLaiKFgYY8sggcutZ7reE0qAuYflJ.LgvSsWQZll/twLV6', 'GUeNtxxtOebD8HAUXj2CdrKjjxDJiVEB3Ns3vT06hRrIMq9jP7DewmnBAzhR', '2022-06-27 08:26:24', '2022-06-27 08:26:24'),
(12, 'Rista Amelia', 'ristaap', 'rista@gmail.com', '2022-06-27 08:26:24', '$2y$10$zY.4/vzEa0ns0fmLAdroReKRmV.zy8T39/G/0zYd280m/UAp7dKfK', 'swtXkOf6i5FQSP2lTA8M3C69xeJhnuBrshl3kuFulDGPC0cH6MCXwErGmRmR', '2022-06-27 08:26:24', '2022-06-27 08:26:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_identifier_unique` (`identifier`),
  ADD KEY `statuses_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
