-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'consequuntur et', 'consequuntur-et', '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(2, 'quo placeat', 'quo-placeat', '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(3, 'sunt eum', 'sunt-eum', '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(4, 'consequatur quo', 'consequatur-quo', '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(5, 'illo molestias', 'illo-molestias', '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(6, 'consequuntur saepe', 'consequuntur-saepe', '2022-08-04 10:15:51', '2022-08-04 10:15:51');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_03_051040_create_sessions_table', 1),
(7, '2022_07_01_111759_create_categories_table', 1),
(8, '2022_08_01_111630_create_products_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'similique tempora enim dolorem', 'similique-tempora-enim-dolorem', 'Sapiente cumque iure repellendus explicabo vitae nostrum. Dolorum fuga eius voluptatem aut. Officiis inventore omnis sint animi in occaecati eaque.', 'Vero omnis ratione nisi voluptatem. Dolorem nostrum sed unde dolor. Quidem consequuntur aut deleniti quam. Doloribus molestiae facilis repellat perferendis. Sed impedit facilis illum cum suscipit illo. Voluptatibus numquam unde et ut est non. Perferendis voluptas eius sunt natus molestiae. Nesciunt sed vel deleniti ut est quibusdam et.', '490.00', NULL, 'DIGI288', 'instock', 0, 66, 'digital_3.jpg', NULL, 5, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(2, 'dolorum veritatis eveniet numquam', 'dolorum-veritatis-eveniet-numquam', 'Sint eaque minima quis. Sed hic odio nulla dolores ex consequatur. Sint optio quia quasi aperiam officia. Est est provident corrupti et cupiditate.', 'Fugit qui ducimus et odit omnis eius. Velit facilis rem laudantium soluta necessitatibus tempora. Et non saepe ut minus. Consequuntur voluptatem officia necessitatibus ut tenetur. Facere saepe atque eligendi blanditiis voluptatibus aut quibusdam. Quia rem corrupti iste necessitatibus. Numquam qui a sed quisquam vero sunt voluptatum maiores. Libero eos sint quibusdam numquam optio. Deleniti quas culpa rerum corporis at et dolores quis. Autem enim eum ad.', '227.00', NULL, 'DIGI200', 'instock', 0, 76, 'digital_17.jpg', NULL, 4, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(3, 'maxime incidunt dicta doloremque', 'maxime-incidunt-dicta-doloremque', 'Labore neque sequi quae rerum non dignissimos minima. Nam necessitatibus ut consectetur temporibus. Ut soluta pariatur sit voluptatem dolorum error est. Aut alias quia est aut incidunt ut vero.', 'Autem blanditiis omnis quo ratione fuga est. Tenetur hic quibusdam ut esse. Aliquid sunt aut quasi laboriosam consequatur quasi. Ut rem incidunt beatae nulla et modi. Ducimus nisi unde incidunt ipsum repellat pariatur. Eius dolorem cumque et earum repellendus et itaque. Exercitationem velit illo voluptatem voluptas quae non. Placeat maxime facilis eaque exercitationem maxime dolorem.', '232.00', NULL, 'DIGI202', 'instock', 0, 98, 'digital_9.jpg', NULL, 5, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(4, 'odio sit tempore fuga', 'odio-sit-tempore-fuga', 'Explicabo est sequi et voluptatem qui. Accusantium et qui hic aut aliquid sit quod. Totam qui ut omnis dolorum non id qui. Porro animi et ipsum sit veritatis architecto commodi voluptatem.', 'Et omnis temporibus animi qui dolorem laboriosam. Quisquam porro corrupti consequuntur rerum aliquid explicabo. Harum aperiam aliquam quis praesentium qui. Autem inventore commodi dolorem voluptates quis consequatur est. Cumque amet labore non recusandae. Aliquid et nobis consequatur eos corporis. Nisi et eaque natus ea. Perferendis quis autem ut est et dolor quidem. Aut ut quis qui provident. Voluptatem et minima qui at.', '467.00', NULL, 'DIGI336', 'instock', 0, 51, 'digital_5.jpg', NULL, 3, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(5, 'quod nobis et optio', 'quod-nobis-et-optio', 'Veritatis libero iure eum laboriosam. Est et officiis omnis eum est perspiciatis. Quis vero et voluptate animi incidunt omnis placeat.', 'Saepe reiciendis libero est optio. Aperiam nobis nisi beatae est. Accusantium quaerat harum id molestiae quasi. Sint tempore iusto in. Numquam doloremque modi voluptatem ipsum unde unde. Sint aliquam nihil voluptatem tempore cumque vel. Facere asperiores repellendus ut error ut omnis veniam. Suscipit omnis et qui ab. Fugit omnis quaerat est sequi ut vel. Illum earum omnis corrupti dolor voluptatem mollitia. Voluptate animi dolor neque assumenda optio hic.', '422.00', NULL, 'DIGI217', 'instock', 0, 127, 'digital_1.jpg', NULL, 2, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(6, 'quae sint sequi vel', 'quae-sint-sequi-vel', 'Et voluptas laudantium ipsam dolorem laudantium. Nesciunt quia aut cum voluptas dolorem cupiditate provident. Dolore adipisci omnis eveniet.', 'Aperiam animi maiores ex eaque aut. Libero aliquam est voluptatem qui. Nihil error magnam doloremque adipisci. Necessitatibus dolor temporibus amet corporis cumque dignissimos pariatur. Unde eos sed at ex laboriosam ad. Minima ratione et non iusto dolorem. Qui est quibusdam id provident vel culpa. Omnis ducimus expedita perferendis voluptatem consectetur.', '397.00', NULL, 'DIGI133', 'instock', 0, 144, 'digital_7.jpg', NULL, 4, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(7, 'rem adipisci id sint', 'rem-adipisci-id-sint', 'Libero non aut veritatis deleniti. Omnis assumenda odio sapiente cupiditate dolorum repellendus. Voluptatem similique cum facilis.', 'Atque reiciendis quia ipsam qui. Sequi vel quaerat voluptatem asperiores quasi. Unde deserunt vero ut saepe doloribus. Laborum sapiente fugit tempora molestias eius temporibus animi. Molestiae sunt consectetur earum id mollitia cupiditate. Molestiae voluptatem incidunt laudantium tempore amet sit. Error iure tempore voluptates nulla omnis. Doloribus aut fuga quisquam ab sit.', '439.00', NULL, 'DIGI259', 'instock', 0, 104, 'digital_20.jpg', NULL, 2, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(8, 'consequatur ipsum ut totam', 'consequatur-ipsum-ut-totam', 'Veniam repudiandae rerum unde. Atque ducimus consequatur dicta qui sint sit fugiat. Facilis facere quam provident totam itaque incidunt.', 'Veniam ut velit ipsum autem. Eum deserunt ea ipsa corrupti. Expedita ad et in non eligendi. Voluptatem quisquam est nihil accusamus. Non porro sapiente non sint velit sed laborum error. Officiis voluptatem labore distinctio nobis numquam suscipit debitis. Laudantium animi dolorem eaque voluptatem maxime sed repudiandae. Molestiae accusantium quas eveniet. Repellendus sunt sunt illo in non et ex.', '186.00', NULL, 'DIGI138', 'instock', 0, 40, 'digital_6.jpg', NULL, 5, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(9, 'ea odit mollitia unde', 'ea-odit-mollitia-unde', 'Voluptate suscipit exercitationem facere. Error et suscipit amet ex quidem qui ad. Ducimus error itaque nemo voluptate similique aut. Minima sit impedit placeat corporis aliquam eos.', 'Et voluptatem voluptas vel et. Quas ipsam modi rerum nesciunt. Asperiores fugiat expedita nisi et. Qui sed omnis nihil facere et id. Suscipit commodi libero sit perspiciatis eos et. Voluptas qui dolores et consequatur. Natus eos ad autem ea non. Tenetur nihil adipisci eum voluptatem laudantium. Animi autem maxime et cupiditate eum molestiae numquam. Fugit unde non nostrum dolorum. Nostrum fugiat possimus et non officiis.', '113.00', NULL, 'DIGI372', 'instock', 0, 80, 'digital_8.jpg', NULL, 5, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(10, 'incidunt dolorem qui aliquid', 'incidunt-dolorem-qui-aliquid', 'Hic culpa dignissimos atque est. Repudiandae nesciunt alias ab reiciendis. Ducimus quia dolor nesciunt enim libero.', 'Saepe quibusdam eveniet eum eos soluta amet praesentium. Rerum repellendus voluptatem repudiandae. Magni eum voluptas iusto beatae odit. Vel quae at velit dolores. Cumque ducimus sapiente fugit modi et. Corrupti rerum necessitatibus officiis optio eum rerum. Molestiae quisquam sed et occaecati provident. Molestiae hic repellat culpa ut. Enim culpa sapiente dolore quos mollitia sit. Ipsam et eius harum dolorem perferendis aliquam est. Consequatur sequi non qui atque ut ad corporis.', '469.00', NULL, 'DIGI467', 'instock', 0, 196, 'digital_2.jpg', NULL, 4, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(11, 'quis nisi quae non', 'quis-nisi-quae-non', 'Sed ut facere optio qui sapiente. Voluptatem est quo ducimus quo nobis laudantium. Ipsam doloribus quo aperiam esse quaerat. Exercitationem consequatur minima eius aut culpa.', 'Veniam asperiores sint ea dolor ut a. Ut et eligendi soluta ratione officia quia consequatur. Inventore reiciendis suscipit est sunt iusto consequatur. Quae ex et aut. Sit ipsam aliquam impedit cum quisquam. Corrupti neque ducimus placeat omnis. Hic non libero tempora. Ipsum velit ipsa quidem consequatur. Illum numquam itaque quae blanditiis assumenda. Eligendi laborum eos repellendus possimus id illum.', '189.00', NULL, 'DIGI354', 'instock', 0, 24, 'digital_13.jpg', NULL, 2, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(12, 'sed nulla omnis voluptas', 'sed-nulla-omnis-voluptas', 'Eius aut et explicabo accusamus pariatur aut. Officiis incidunt velit ducimus non illum. Aut quia voluptatibus qui omnis qui dolorem eius. Tempore voluptas est laborum rerum voluptatum ipsa.', 'Aut delectus earum et iste cum tempora. Earum minima neque quas libero. Occaecati quia iure quia autem rerum. Ut sint quibusdam sit quo doloribus facilis doloremque atque. Qui voluptates harum iure ut. Aut quibusdam iusto repudiandae debitis. Occaecati minus temporibus voluptatum reiciendis. Aut enim ut explicabo sint omnis laboriosam. Illum voluptatem laudantium sunt impedit in. Deleniti sunt aut ipsum quod sed reprehenderit. Aut velit excepturi perferendis tenetur rerum qui et.', '395.00', NULL, 'DIGI310', 'instock', 0, 56, 'digital_19.jpg', NULL, 1, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(13, 'voluptas est accusantium ullam', 'voluptas-est-accusantium-ullam', 'Beatae neque vel voluptatem maxime eius. Dolorem accusamus fugit ipsam quisquam et sunt quisquam qui. Repellat officiis cupiditate error nemo reprehenderit.', 'Est non minus ut voluptates et dolores. Consequatur quis esse perspiciatis quia. Eum quae vel reiciendis molestias molestias voluptatem ab repellendus. Quaerat excepturi quis rerum ipsam. Perspiciatis natus nobis et doloremque. Non officia illum nobis. Repudiandae reiciendis non nobis cum vitae et repellendus. Qui autem itaque quos nesciunt iste fuga. Dolorum explicabo consequatur fuga qui. Id quasi culpa ut doloribus vel et labore.', '248.00', NULL, 'DIGI150', 'instock', 0, 186, 'digital_21.jpg', NULL, 2, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(14, 'nostrum esse veniam sint', 'nostrum-esse-veniam-sint', 'In non consequuntur accusamus voluptas dolorem. Labore nisi error sequi animi. Dolorem quae eligendi et quis earum. Et ut et aspernatur placeat atque vel et.', 'Porro aperiam veniam eum soluta. Ipsa ut vel non fugit quos et officiis ipsam. Voluptas corrupti inventore voluptate velit quia iure occaecati quia. Quo quaerat et ab at consequuntur temporibus quo sit. Rerum possimus doloribus et sed ut aut pariatur quia. Quo deleniti est in temporibus veritatis reprehenderit iusto velit. Quaerat voluptatem repellat commodi dicta illo.', '145.00', NULL, 'DIGI321', 'instock', 0, 140, 'digital_11.jpg', NULL, 5, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(15, 'id earum numquam recusandae', 'id-earum-numquam-recusandae', 'Unde voluptas et qui et asperiores beatae. Minus qui nam harum omnis laudantium. Sequi impedit amet fugiat molestiae harum ut ea.', 'Cum illum unde velit est molestiae libero. A ipsa amet voluptas tenetur autem ducimus. Culpa omnis autem occaecati illo. Fuga fugit exercitationem nihil beatae est a. Velit dolorum sunt officiis omnis quis architecto. Amet quo aliquid hic quis ipsa. Eum velit voluptatem voluptatem eaque autem.', '209.00', NULL, 'DIGI192', 'instock', 0, 15, 'digital_4.jpg', NULL, 1, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(16, 'repellendus qui voluptas dolorem', 'repellendus-qui-voluptas-dolorem', 'Voluptas et nemo ducimus in. Repellat quisquam at voluptatem quos nihil. Incidunt sequi amet voluptatem neque ut repellendus. Error qui voluptas laudantium eos molestias.', 'Repellat nesciunt odio quia. Quo quisquam voluptas libero vel. Id similique ab aspernatur eligendi voluptas cum. Vitae rerum omnis sed vero quia. Rerum labore ad quis perspiciatis dolorem id. Ea dolorem id dolor dolor. Itaque earum voluptate aperiam eos pariatur.', '350.00', NULL, 'DIGI434', 'instock', 0, 89, 'digital_22.jpg', NULL, 2, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(17, 'autem assumenda eos aut', 'autem-assumenda-eos-aut', 'Aspernatur facere molestiae voluptate officiis omnis voluptatum ipsum. Autem mollitia commodi aspernatur sit beatae quis facilis magnam. Voluptatem deleniti similique quaerat et.', 'Dolores tempore ex cum doloribus quae. Incidunt ex et dolorem. Officia repudiandae dolor occaecati ullam cum aliquid. Sunt quis harum fugiat doloremque quasi. Nemo blanditiis quisquam et. Quo quia harum non tempore voluptatem minus ipsum. Autem facere alias dolores molestiae. Maiores maiores est repudiandae est. Autem hic non rerum mollitia. Minima accusamus iure autem est suscipit rerum provident delectus.', '386.00', NULL, 'DIGI208', 'instock', 0, 124, 'digital_14.jpg', NULL, 4, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(18, 'debitis facilis quia ex', 'debitis-facilis-quia-ex', 'Quo laboriosam laboriosam et quae natus. Non dignissimos corrupti explicabo enim dolor cumque.', 'Atque rerum eveniet id praesentium velit. Ratione distinctio vitae ab id eveniet. Et consequatur maiores fuga et assumenda hic officiis molestiae. Pariatur aut labore est molestiae. Voluptatem similique harum aut itaque minima. Velit maxime molestiae iste sit architecto voluptatem et. Sit recusandae dolore non in nihil quidem. Et voluptatem vel a et quo. Voluptatem blanditiis quidem voluptas deleniti laboriosam facilis.', '296.00', NULL, 'DIGI419', 'instock', 0, 39, 'digital_10.jpg', NULL, 3, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(19, 'magnam ipsam est fugiat', 'magnam-ipsam-est-fugiat', 'Aliquam numquam fugiat perferendis. Recusandae sunt illo aut nisi doloribus officiis et qui. Repellendus pariatur delectus dolores ad. Nobis fugiat sit id quisquam ducimus soluta. Sint ut eum ullam.', 'Autem facilis id fugiat similique. Sed quaerat ducimus aut nobis non. Porro minima eos consequuntur magni. Quis placeat et quas amet. Itaque excepturi omnis facere et asperiores totam enim. Eum non incidunt ullam totam. Nemo voluptas enim incidunt et consequatur fugit. Provident qui corporis vel nemo velit optio.', '108.00', NULL, 'DIGI400', 'instock', 0, 29, 'digital_16.jpg', NULL, 3, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(20, 'incidunt placeat fugit necessitatibus', 'incidunt-placeat-fugit-necessitatibus', 'Fugit possimus eaque sunt inventore aut recusandae. Sint facere velit praesentium provident.', 'Distinctio rem fuga iure. Unde ab omnis et expedita qui accusantium sint. Non nemo laborum et labore dolores doloremque. Voluptas cupiditate aut voluptas a ut commodi quis. Omnis ut modi unde minus nemo culpa blanditiis tempore. Quo in ea illum nostrum veniam unde. Corrupti eveniet harum nulla est eaque illo. Cumque cupiditate consectetur facere dicta in exercitationem itaque neque. Distinctio reiciendis voluptatum voluptas tempora est assumenda. Cum voluptas laboriosam eius et hic.', '159.00', NULL, 'DIGI110', 'instock', 0, 177, 'digital_15.jpg', NULL, 3, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(21, 'natus dolorem blanditiis nihil', 'natus-dolorem-blanditiis-nihil', 'Explicabo ut minus nesciunt aliquam. Ab qui beatae officia necessitatibus. Sed non ut eaque possimus perferendis.', 'Fugiat quaerat reiciendis voluptas inventore sint. Adipisci quisquam laborum enim voluptates et. Eos quisquam ipsam at autem inventore rem laboriosam. Beatae ut sit qui nam iure non ut. Cupiditate eius mollitia at quaerat dicta velit. Quia dolorem velit tenetur exercitationem sit corporis ullam. Cumque repellat est dolore omnis ab et hic.', '64.00', NULL, 'DIGI334', 'instock', 0, 105, 'digital_18.jpg', NULL, 4, '2022-08-04 10:15:51', '2022-08-04 10:15:51'),
(22, 'fugit distinctio impedit animi', 'fugit-distinctio-impedit-animi', 'Quas dolorum minima qui ut impedit est. Voluptatibus odit sed odio et omnis. Dolore qui in autem quas. Vero voluptas et architecto minus aut quis.', 'Quo ab suscipit quisquam consequatur sunt sed veritatis. Quae dignissimos est quod distinctio. Molestiae et quas ullam et. Nulla aliquam voluptatum sed distinctio animi. Nam provident vel est corporis eum ipsa ut. Sit aperiam beatae doloremque vel. Expedita et molestiae voluptatem dolores et facilis aut. Quia iste soluta id. Est eligendi aut ratione natus eius. Rerum voluptatem quod dolore unde culpa iste expedita.', '260.00', NULL, 'DIGI482', 'instock', 0, 110, 'digital_12.jpg', NULL, 3, '2022-08-04 10:15:51', '2022-08-04 10:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('elR7FRySwDHAkrXNREpZEUYvpVQZNolYwsqfQxSf', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic0NySzNGdFdhTHdyOEhEODhGT3g4dVEwRlVJd0VUVHdNNEFsVXFsQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjU6InV0eXBlIjtzOjM6IlVTUiI7fQ==', 1659690452),
('nTkl2jduhWU0uMBFb5sJZMgAHpALJQp6LWx3o49o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTRCR1MxaHphQ0dpeGVieDdvaEFzYXh3a0UzYUdHWEV0eWpHTWlXdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1659705593);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for user or customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$tWxCsWfWdY277iHUo/gmNeN4IHi1f8tR3uiKWlg5MpASzLgxLIDMO', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-08-04 04:41:39', '2022-08-04 04:41:39'),
(2, 'user', 'user@user.com', NULL, '$2y$10$mqutwvqYw2q8kZMejs7W.eByRYO54w8oEYng3WaFNmszSFpLJ7yMS', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-08-04 04:58:53', '2022-08-04 04:58:53'),
(3, 'user3', 'user3@user.com', NULL, '$2y$10$T01oA0Cblr7QehS8ul9umuiJR/gb0LTmq8zx0c2XR8C0MImoM6As6', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-08-04 05:00:47', '2022-08-04 05:00:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
