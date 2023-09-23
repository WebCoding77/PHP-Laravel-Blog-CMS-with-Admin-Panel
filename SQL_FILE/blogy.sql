-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin.first', 'admin.first@admin.com', '$2y$10$IdF6eBQEgwBQPyLvJs6ii.4N8YL35RVxyTTHiHfabY5X0gS77Asd6', '2023-06-07 12:49:46', '2023-06-08 10:25:38'),
(2, 'admin.second', 'admin.second@admin.com', '$2y$10$umZ20O56GLse4WS5wuLVCuIeAxOxcRHYPJUX2rLSnW/9ViFoPt9GK', '2023-06-08 07:25:57', '2023-06-08 07:25:57'),
(3, 'premium meta@admin.com', 'premiummeta@admin.com', '$2y$10$kpG9CZTemp7Eegc3JSEu0OS00nsbZ51H7BqcqvyW3CC/tCHcaSOue', '2023-06-08 07:30:02', '2023-06-08 07:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Travel', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(2, 'Business', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(3, 'Politics', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(4, 'Culture', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(5, 'Tech', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(6, 'Food', '2023-05-31 12:59:12', '2023-06-08 11:35:27'),
(8, 'Programming', '2023-06-08 08:47:22', '2023-06-08 08:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `post_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `user_name`, `post_id`, `created_at`) VALUES
(1, 'Intrinsicly implement goal-oriented channels vis-a-vis pandemic web-readiness. Energistically administrate sustainable services with high-quality schemas. ', 1, 'Mohamed Hassan', 1, '2023-05-31 14:21:57'),
(2, 'Intrinsicly implement goal-oriented channels vis-a-vis pandemic web-readiness. Energistically administrate sustainable services with high-quality schemas. ', 2, 'user.second', 1, '2023-05-31 14:21:57'),
(3, 'Professionally streamline mission-critical solutions before optimal catalysts for change. Intrinsicly drive best-of-breed e-markets through 2.0 functionalities. Synergistically embrace low-risk high-y', 1, 'Mohamed Hassan', 2, '2023-05-31 14:21:57'),
(4, 'Monotonectally synergize go forward products with robust expertise. Professionally whiteboard out-of-', 1, 'Mohamed Hassan', 1, '2023-06-03 09:54:54'),
(9, 'new comment after redirect', 1, 'Mohamed Hassan', 1, '2023-06-03 10:50:39'),
(10, 'here is a new comment', 1, 'Mohamed Hassan', 1, '2023-06-03 10:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `category`, `user_id`, `user_name`, `created_at`) VALUES
(2, 'Efficiently synthesize go forward vortals and leading-edge methodologies. Holisticly fabricate cross-unit', 'hero_2.jpg', 'Globally create installed base infomediaries through reliable opportunities. Holisticly aggregate competitive markets for covalent markets. Interactively plagiarize premium bandwidth rather than plug-and-play e-commerce. Holisticly promote extensible users rather than superior markets. \r\n\r\nGlobally create installed base infomediaries through reliable opportunities. Holisticly aggregate competitive markets for covalent markets. Interactively plagiarize premium bandwidth rather than plug-and-play e-commerce. Holisticly promote extensible users rather than superior markets. \r\n\r\nGlobally create installed base infomediaries through reliable opportunities. Holisticly aggregate competitive markets for covalent markets. Interactively plagiarize premium bandwidth rather than plug-and-play e-commerce. Holisticly promote extensible users rather than superior markets. \r\n\r\nGlobally create installed base infomediaries through reliable opportunities. Holisticly aggregate competitive markets for covalent markets. Interactively plagiarize premium bandwidth rather than plug-and-play e-commerce. Holisticly promote extensible users rather than superior markets.', 'Categories', 1, 'Mohamed Hassan', '2023-05-30 09:36:26'),
(3, ' Assertively customize mission-critical ', 'hero_3.jpg', 'Dramatically customize transparent action items before vertical outsourcing. Collaboratively orchestrate user friendly process improvements via interactive benefits. Compellingly coordinate emerging benefits vis-a-vis an expanded array of channels. Monotonectally embrace reliable content and resource-leveling relationships. Quickly repurpose strategic benefits without superior ROI.\r\n', 'Travel', 1, 'Mohamed Hassan', '2023-05-30 09:36:26'),
(4, ' Assertively customize mission-critical ', 'hero_1.jpg', 'Dramatically customize transparent action items before vertical outsourcing. \r\n', 'Business', 1, 'Mohamed Hassan', '2023-05-30 09:36:26'),
(5, ' Assertively customizCollaboratively communicate client-focusee mission-critical ', 'hero_5.jpg', 'Dramatically customize transparent action items before vertical outsourcing. \r\nvertical outsourcing', 'Business', 1, 'Mohamed Hassan', '2023-05-30 09:36:26'),
(6, ' Assertively customizCollaboratively communicate ', 'hero_1.jpg', 'Dramatically customize transparent action items before vertical outsourcing. \r\nvertical outsourcing', 'Business', 1, 'Mohamed Hassan', '2023-05-30 09:36:26'),
(8, 'Efficiently morph value-added schemas whereas sticky interfaces. Enthusiastically underwhelm ', 'hero_1.jpg', 'Progressively utilize enterprise action items rather than tactical growth strategies. Conveniently generate world-class applications for enterprise-wide strategic theme areas. Enthusiastically optimize mission-critical solutions before dynamic imperatives. Holisticly repurpose premier relationships before ', 'Culture', 1, 'Mohamed Hassan', '2023-05-30 12:33:19'),
(9, 'Collaboratively recaptiualize extensible action items for go forward vortals. Professionally generate ', 'hero_1.jpg', 'Distinctively reinvent user-centric methods of empowerment via an expanded array of outsourcing. Completely integrate transparent alignments via fully tested strategic theme areas. Quickly streamline worldwide core competencies and covalent niche markets. Dramatically redefine turnkey channels ', 'Culture', 1, 'Mohamed Hassan', '2023-05-30 12:33:19'),
(10, 'Proactively innovate transparent potentialities via premium sources. Monotonectally underwhelm B2C ', 'hero_1.jpg', 'Synergistically predominate proactive niche markets before synergistic web services. Holisticly communicate market-driven systems with equity invested interfaces. Seamlessly evisculate next-', 'Politics', 1, 'Mohamed Hassan', '2023-05-30 12:48:03'),
(11, 'Dynamically pontificate sustainable experiences for worldwide opportunities. Authoritatively disseminate real-time leadership through corporate ', 'hero_3.jpg', 'Credibly supply distinctive internal or \"organic\" sources vis-a-vis installed base platforms. Objectively orchestrate high-payoff meta-services and B2C web services. Interactively re-engineer covalent qualityCredibly supply distinctive internal or \"organic\" sources vis-a-vis installed base platforms. Objectively orchestrate high-payoff meta-services and B2C web services. Interactively re-engineer covalent quality', 'Politics', 1, 'Mohamed Hassan', '2023-05-30 12:48:03'),
(12, 'Uniquely recaptiualize timely expertise through ', 'hero_3.jpg', 'extensive relationships. Holisticly initiate state of the art e-business through multimedia based users. extensive relationships. Holisticly initiate state of the art e-business through multimedia based users. extensive relationships. Holisticly initiate state of the art e-business through multimedia based users. ', 'Travel', 1, 'Mohamed Hassan', '2023-05-30 14:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'pic.jpg',
  `bio` text NOT NULL DEFAULT 'No bio yet',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `bio`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'moha123@gmail.com', NULL, '$2y$10$IdF6eBQEgwBQPyLvJs6ii.4N8YL35RVxyTTHiHfabY5X0gS77Asd6', 'pic.jpg', 'Competently re-engineer virtual opportunities rather than resource-leveling e-markets. Intrinsicly visualize transparent metrics rather than tactical niches.', NULL, '2023-05-29 08:54:08', '2023-06-04 12:00:46'),
(2, 'user.second', 'user.second@yahoo.com', NULL, '$2y$10$CdnXprrRQB4YpqZ1XzXgcOWoj3GWDPTZfen1lhV7ooWrQfMY7V3XK', 'pic.jpg', 'No bio yet', NULL, '2023-05-29 11:43:39', '2023-05-29 11:43:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
