-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 10:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms-without-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `description`, `category_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Harry Potter and chambers off secret', 'JK Rolling', 'Magic secret part 2', 1, 1, NULL, NULL),
(2, 'Tom and Jerry', 'Warner Bros', 'It\'s and epic and most popular cartoon series.', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Magic Books', '2022-03-28 02:26:12', '2022-03-28 02:26:12'),
(2, 'Comedy', '2022-03-28 02:31:42', '2022-03-28 02:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `issue_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `available_status` tinyint(4) NOT NULL DEFAULT 1,
  `added_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`issue_id`, `book_id`, `available_status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 1, 1, NULL, NULL),
(3, 1, 1, 1, NULL, NULL),
(4, 1, 1, 1, NULL, NULL),
(5, 1, 1, 1, NULL, NULL),
(6, 1, 1, 1, NULL, NULL),
(7, 1, 1, 1, NULL, NULL),
(8, 1, 1, 1, NULL, NULL),
(9, 1, 1, 1, NULL, NULL),
(10, 1, 1, 1, NULL, NULL),
(11, 1, 1, 1, NULL, NULL),
(12, 1, 1, 1, NULL, NULL),
(13, 1, 1, 1, NULL, NULL),
(14, 1, 1, 1, NULL, NULL),
(15, 1, 1, 1, NULL, NULL),
(16, 1, 1, 1, NULL, NULL),
(17, 1, 1, 1, NULL, NULL),
(18, 1, 1, 1, NULL, NULL),
(19, 1, 1, 1, NULL, NULL),
(20, 1, 1, 1, NULL, NULL),
(21, 1, 1, 1, NULL, NULL),
(22, 1, 1, 1, NULL, NULL),
(23, 1, 1, 1, NULL, NULL),
(24, 1, 1, 1, NULL, NULL),
(25, 1, 1, 1, NULL, NULL),
(26, 1, 1, 1, NULL, NULL),
(27, 1, 1, 1, NULL, NULL),
(28, 1, 1, 1, NULL, NULL),
(29, 1, 1, 1, NULL, NULL),
(30, 1, 1, 1, NULL, NULL),
(31, 1, 1, 1, NULL, NULL),
(32, 1, 1, 1, NULL, NULL),
(33, 1, 1, 1, NULL, NULL),
(34, 1, 1, 1, NULL, NULL),
(35, 1, 1, 1, NULL, NULL),
(36, 2, 0, 1, NULL, NULL),
(37, 2, 1, 1, NULL, NULL),
(38, 2, 1, 1, NULL, NULL),
(39, 2, 1, 1, NULL, NULL),
(40, 2, 1, 1, NULL, NULL),
(41, 2, 1, 1, NULL, NULL),
(42, 2, 1, 1, NULL, NULL),
(43, 2, 1, 1, NULL, NULL),
(44, 2, 1, 1, NULL, NULL),
(45, 2, 1, 1, NULL, NULL),
(46, 2, 1, 1, NULL, NULL),
(47, 2, 1, 1, NULL, NULL),
(48, 2, 1, 1, NULL, NULL),
(49, 2, 1, 1, NULL, NULL),
(50, 2, 1, 1, NULL, NULL),
(51, 2, 1, 1, NULL, NULL),
(52, 2, 1, 1, NULL, NULL),
(53, 2, 1, 1, NULL, NULL),
(54, 2, 1, 1, NULL, NULL),
(55, 2, 1, 1, NULL, NULL),
(56, 2, 1, 1, NULL, NULL),
(57, 2, 1, 1, NULL, NULL),
(58, 2, 1, 1, NULL, NULL),
(59, 2, 1, 1, NULL, NULL),
(60, 2, 1, 1, NULL, NULL),
(61, 2, 1, 1, NULL, NULL),
(62, 2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_issue_logs`
--

CREATE TABLE `book_issue_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_issue_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `issue_by` int(10) UNSIGNED NOT NULL,
  `issued_at` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issue_logs`
--

INSERT INTO `book_issue_logs` (`id`, `book_issue_id`, `student_id`, `issue_by`, `issued_at`, `return_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2022-03-28 08:08', '2022-03-28 08:17', NULL, NULL),
(2, 2, 3, 1, '2022-03-28 08:16', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch`, `created_at`, `updated_at`) VALUES
(1, 'Virar', '2022-03-28 02:22:31', '2022-03-28 02:22:31'),
(2, 'Nallasopara', '2022-03-28 02:29:39', '2022-03-28 02:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_logs`
--

CREATE TABLE `issue_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_resets_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2020_11_27_095343_create_books_table', 1),
(47, '2020_11_27_095406_create_branches_table', 1),
(48, '2020_11_27_095436_create_categories_table', 1),
(49, '2020_11_27_095452_create_issues_table', 1),
(50, '2020_11_27_095506_create_issue_logs_table', 1),
(51, '2020_11_27_095530_create_logs_table', 1),
(52, '2020_11_27_095545_create_students_table', 1),
(53, '2020_11_27_095628_create_student_categories_table', 1),
(54, '2020_11_27_095847_create_book_categories_table', 1),
(55, '2020_11_27_095955_create_book_issues_table', 1),
(56, '2020_11_27_100146_create_book_issue_logs_table', 1);

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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT 0,
  `rejected` tinyint(4) NOT NULL DEFAULT 0,
  `category` int(10) UNSIGNED NOT NULL,
  `roll_num` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` tinyint(4) NOT NULL DEFAULT 0,
  `year` int(10) UNSIGNED NOT NULL,
  `books_issued` tinyint(4) NOT NULL DEFAULT 0,
  `email_id` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `approved`, `rejected`, `category`, `roll_num`, `branch`, `year`, `books_issued`, `email_id`, `created_at`, `updated_at`) VALUES
(2, 'Kiran', 'Rachawar', 1, 0, 2, '26', 2, 2023, 0, 'kiranrachawar@gmail.com', NULL, NULL),
(3, 'Flavious', 'Correia', 1, 0, 2, '25', 1, 2022, 1, 'flaviouscorreia1@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_categories`
--

CREATE TABLE `student_categories` (
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_allowed` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_categories`
--

INSERT INTO `student_categories` (`cat_id`, `category`, `max_allowed`, `created_at`, `updated_at`) VALUES
(1, 'Magical Books', 30, NULL, NULL),
(2, 'Comedy', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_status` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `verification_status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 'Librarian', NULL, 0, '$2y$10$XYHlXB/5Abvc3iBjgxNmC.l9R9HGPKpyjIr0yl53N.leAq1gtuUtO', 'gCmiI1qFzhYlsdTUHt8VBn0zFuKnhSifi5xHcdgnvUYkxDSjOqdVdeKjGDx0', '2022-03-27 01:40:15', '2022-03-27 01:40:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `book_issue_logs`
--
ALTER TABLE `book_issue_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_logs`
--
ALTER TABLE `issue_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_categories`
--
ALTER TABLE `student_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `issue_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `book_issue_logs`
--
ALTER TABLE `book_issue_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_logs`
--
ALTER TABLE `issue_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_categories`
--
ALTER TABLE `student_categories`
  MODIFY `cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
