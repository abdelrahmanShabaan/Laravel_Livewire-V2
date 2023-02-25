-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 09:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewiredb`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_25_033732_create_posts_table', 1),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(7, '2023_02_25_185944_create_sessions_table', 2),
(8, '2020_05_21_100000_create_teams_table', 3),
(9, '2020_05_21_200000_create_team_user_table', 3),
(10, '2020_05_21_300000_create_team_invitations_table', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Praesentium qui reiciendis quaerat id et totam.', 'molestiae-accusantium-et-et-voluptas-illo-rerum-placeat', 'Magni rem voluptatum laboriosam animi. Enim quia quia quia recusandae non. Praesentium error quia inventore distinctio est. Fugiat aut est rerum alias ut autem officiis.', 'f8b2a24a31a8919d54078582db85a94c.png', 9, '2023-02-25 16:15:31', '2023-02-25 16:15:31'),
(2, 'Eos unde a commodi voluptatem sit odio.', 'ut-praesentium-porro-optio-esse-autem', 'Excepturi tempora sed et soluta in eos. Sunt est culpa officia. Ex quaerat perferendis laborum quis.', '9965182754e770744d42890b17e2c5da.png', 3, '2023-02-25 16:15:31', '2023-02-25 16:15:31'),
(3, 'Mollitia fugiat expedita ad asperiores consectetur in unde.', 'possimus-provident-facere-illo-harum', 'Voluptatem incidunt et iste. Consequatur odio odio voluptatem blanditiis error beatae. Nam labore quibusdam et occaecati rem aut ipsam. Laborum commodi rerum aut.', 'd6c63de2bdd1923f37fc65ef6253468b.png', 8, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(4, 'Nam rerum aut commodi officiis.', 'aut-veritatis-quis-sapiente-velit-consequatur', 'Aliquid repellat natus accusantium animi. Laborum fuga vel repellendus non vitae dolores. Exercitationem ut eum quos natus consequatur ut occaecati.', '8b679adf31d083bf835601965712a9a4.png', 5, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(5, 'Eligendi quidem eius eaque.', 'commodi-quibusdam-dicta-accusantium', 'Nihil blanditiis dolorem quia laboriosam consequatur. Eum inventore neque aut quasi. Ipsum quia sint ad in perferendis est quod. Dicta eum et aut vel saepe.', 'e48e629cec90bc46da77f248f89bff1d.png', 8, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(6, 'Facere labore qui voluptatem ratione molestiae eos voluptas.', 'earum-excepturi-odit-rem-aut-qui-cupiditate', 'Commodi sit et sunt. Ea dolorem labore omnis itaque aliquam officia. Non ipsum voluptatem rem quis ullam sit.', 'e7fcff9cb63f38b7de81670fccff1750.png', 3, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(7, 'Consequatur soluta nulla quod qui.', 'esse-voluptatem-impedit-dolorem', 'Atque quia temporibus tenetur. Aut et vel placeat.', '1c4b270cc4bc7c1c1eb1e786af43b26e.png', 5, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(8, 'Laboriosam dicta molestiae dolorum mollitia nemo expedita.', 'quia-ut-pariatur-id-aut-magni', 'Molestiae et rerum blanditiis quia deserunt in ad. Magni molestias commodi temporibus quam odio voluptatibus necessitatibus. Qui deleniti molestiae mollitia. Fuga quo expedita architecto rerum voluptates.', '521b1e84bd1ed492550ecadcc5e00f13.png', 5, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(9, 'Culpa ut animi corrupti eum alias.', 'ut-et-repudiandae-ullam', 'Sed et doloremque blanditiis aspernatur iure. Totam totam pariatur libero laboriosam consectetur dolorem quae. Possimus modi dignissimos ullam.', '3ce6ca3b2f491fb13895da74968a4a32.png', 1, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(10, 'Qui natus aperiam facilis ducimus quas corrupti dolor.', 'est-rerum-praesentium-consequatur-similique-accusamus', 'Et repellat accusamus distinctio. Voluptatem quo et aut animi cupiditate. Dolorem voluptate dolores et error delectus debitis. Dignissimos dolor illum itaque assumenda magni eligendi id minima.', '9fb2d704fb1c71f3f9acf5a347b467d2.png', 6, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(11, 'Voluptas veritatis enim iste quaerat deserunt veniam.', 'quas-aliquid-ea-sequi-unde-molestiae', 'Consequatur est dolores ut sunt cum odio. Ullam in vel accusamus veritatis id ipsam porro. Distinctio cupiditate vel aut debitis. Molestiae illo eum ducimus voluptate eum alias debitis.', '433315403a350a8de6fa4f9779290e65.png', 5, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(12, 'Enim saepe voluptatem eveniet.', 'eligendi-magnam-ipsam-id-qui-exercitationem', 'Totam nisi aut hic et nam est quibusdam necessitatibus. Similique natus culpa tenetur in.', 'bdde81da50baaa7265a5e1fd7c4a0cd2.png', 3, '2023-02-25 16:15:32', '2023-02-25 16:15:32'),
(13, 'Fugiat quos iure sed quaerat totam.', 'at-incidunt-quisquam-omnis-nobis-quia-praesentium-quisquam-vel', 'Nihil nulla in corrupti fugiat assumenda et. Repudiandae rem nemo quibusdam fugit ut. Nobis doloremque explicabo illo quidem.', '8b61d5616bcba7c77fd1364a2f14137d.png', 8, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(14, 'Similique ipsam omnis voluptas qui.', 'dolorem-omnis-libero-sed-deserunt-tenetur-soluta-similique', 'Et atque voluptas libero consequuntur ut ducimus illo. Cupiditate excepturi et reprehenderit explicabo eum. In dolor eaque ut. Adipisci non ullam temporibus ullam quisquam illo cum animi.', '8e0fa18af8d9b63c03cafd53f4c151bf.png', 2, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(15, 'Quia impedit sit blanditiis sit ipsa tempore labore.', 'iste-nesciunt-cupiditate-earum-est-voluptas-incidunt', 'Nihil harum maiores tempora totam cum quis doloremque animi. Dignissimos voluptatibus tenetur et vitae illum voluptatem. Hic mollitia recusandae officia ea.', '4bf2af059bd29c6a600b066069c2b56e.png', 4, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(16, 'Laudantium delectus culpa assumenda laboriosam.', 'et-repellendus-dignissimos-facere-vel-voluptatem-non', 'Non sed et voluptas optio tempore facere sit. Ut voluptatem qui consequatur. Ad qui qui placeat quo nulla. Alias cumque aut similique.', 'f394a0afa4fbcbaa3ef9c8e263250e7b.png', 10, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(17, 'Praesentium sed repellat libero ad.', 'voluptatem-autem-quos-aperiam-totam', 'Fugiat modi officiis non tempore laboriosam. Similique aut molestiae consequatur molestiae sed. Et dignissimos sunt sunt quos molestiae reiciendis. Maxime tenetur ipsam possimus modi.', '2c663aa6c959769845c1c7200e0ddb82.png', 8, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(18, 'Excepturi optio debitis exercitationem.', 'rerum-sed-itaque-quia-mollitia-tempora-omnis', 'Qui suscipit commodi recusandae cupiditate. Tempore velit quas rerum et. Delectus omnis quo eum deserunt vel omnis. Reiciendis quaerat rerum omnis quam sequi optio eos.', '8acdaf3b1cdccd20db399fc5c5ebb1fe.png', 9, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(19, 'Beatae et nemo vel voluptas necessitatibus et.', 'excepturi-aliquam-atque-ut-dolores-temporibus', 'Et magni et et reprehenderit similique. Ut vero officiis eos id voluptatem cupiditate autem. Repudiandae ut mollitia accusantium molestiae. Quisquam architecto placeat autem aliquam et.', '6df39d33258ab4f5136922e4e0e05409.png', 10, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(20, 'Praesentium eligendi odio minus vel autem.', 'ullam-officiis-cupiditate-rerum', 'Porro ut modi fuga voluptatibus fugit pariatur explicabo. Corporis adipisci minima tenetur explicabo ab. Nobis quae odit dolore pariatur distinctio harum illum. Et magnam doloremque exercitationem aut debitis consequatur doloribus nobis.', '5f35f56949e7b5094ef9bd5c006ba19e.png', 8, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(21, 'Amet explicabo est libero iure.', 'laborum-exercitationem-quos-at-molestiae-pariatur-sint-esse', 'Provident reprehenderit non ad optio quia aut. Et aut quo aut exercitationem. Deserunt accusamus velit similique necessitatibus ipsum.', 'e49724ecc166763fe79711a6dd20770c.png', 2, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(22, 'Et dolorem commodi sed consequuntur officia nisi numquam.', 'earum-eos-et-minus-itaque-at-in', 'Magni harum sint dolores dolor ad nesciunt aut. Dolorum est sunt quia corrupti laboriosam quod tempore nostrum. At iure fugiat ex eligendi sint placeat deserunt nostrum. Provident eveniet accusamus nesciunt ut maiores maiores sit. Dolores sapiente corrupti nisi ut repudiandae.', '58530b657e87e40d0e8ae27e2159e99a.png', 9, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(23, 'Ea repudiandae qui non omnis.', 'maxime-doloremque-omnis-qui-et-molestiae-incidunt', 'Ad voluptatem nihil praesentium temporibus. Earum esse expedita fuga. Laudantium officia sint et excepturi quisquam repellat soluta.', 'd33bec633488725caa013999ccc3031e.png', 6, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(24, 'Reprehenderit voluptas in est aut velit.', 'dolorem-consequatur-reiciendis-sit-reiciendis', 'Corporis et quod quia omnis. Ipsa natus est et. Quos aut sint dolor. Laboriosam laborum aut a excepturi aut.', '53902a0a4c587e5ecc1023aaf4960903.png', 4, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(25, 'Necessitatibus est consectetur sed vel labore.', 'pariatur-porro-molestiae-ad-beatae', 'Quos velit in sed nam deserunt possimus. Minima culpa aliquam inventore hic aut sed.', 'e31da126fcc64a3f742a101c3fca934a.png', 4, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(26, 'Repudiandae sunt recusandae labore.', 'sit-nihil-blanditiis-nihil-quibusdam-vero-sint', 'Consequatur sunt error unde quos. Incidunt est cumque qui aspernatur voluptatem. Eligendi ea error totam reiciendis. Alias quis quis aut quia quod omnis quod.', '2785eb0ce3d40ef5aa0108a10792faca.png', 10, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(27, 'Illo quia aut eum ullam id sit rem modi.', 'officiis-eos-officiis-similique', 'Id ut quo non itaque impedit qui ullam temporibus. Libero similique voluptatem sed sint magni praesentium quis. Ea possimus mollitia voluptas quia est aliquam. Eaque consectetur non aliquam recusandae id. Iure enim aperiam adipisci eum nulla.', '86fcb49ef3972ac1efda89444fb2c8dc.png', 2, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(28, 'Sit eius deserunt culpa vero.', 'sed-minima-magni-hic-nobis-dolores-sapiente-unde', 'Magni dolores omnis nisi totam ipsa reiciendis. Rerum ut tempora est qui ad earum consequuntur et. Maiores et officia repellendus est ut nostrum. Tempora et ducimus est quia quasi aut aliquam. Blanditiis nihil dolorem est consectetur voluptatum tenetur.', '86f6be21d7adc3f3ebd1382ec0daf2c2.png', 3, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(29, 'Doloribus quod recusandae et esse accusamus.', 'odit-soluta-harum-officia-voluptas', 'Amet consectetur velit voluptas laboriosam praesentium consequatur nisi. Ab saepe dolores sed voluptatem. Praesentium nihil sint veniam consequatur consequuntur incidunt. In omnis assumenda pariatur nobis vel reiciendis odit cum.', '10a34eb4ca336e3586cdf642523b3d9b.png', 8, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(30, 'Velit nisi suscipit et ratione.', 'odio-nesciunt-iure-eveniet-sit-quia', 'Et eos blanditiis est laborum qui voluptatibus numquam corporis. Et quidem atque qui occaecati in aut eum.', 'c6fc9d7751c309a3961c9577a41bb529.png', 8, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(31, 'Sint harum aut natus aut possimus deserunt et.', 'est-libero-necessitatibus-tenetur-ipsa-quisquam-facere-facilis', 'Voluptas repellendus quae et hic fugiat reprehenderit facere. Voluptatem esse quidem iste. Vel eveniet sit magni quasi quia dolor.', 'e1f1c11c90eacb545e1ad52e34530240.png', 6, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(32, 'Voluptatem dolores nobis suscipit cum repellendus enim nostrum.', 'quisquam-quia-iste-impedit-eum-saepe-asperiores', 'Expedita quia magnam quos. Non eos deleniti omnis voluptatem asperiores. Rem necessitatibus error iste aut et tempora quisquam.', 'd98cc115925a5dcf6bb08a5d729d8018.png', 6, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(33, 'Est explicabo nesciunt voluptatibus reprehenderit libero fuga impedit.', 'impedit-sed-eos-aspernatur-magni', 'Blanditiis unde molestiae sunt ut placeat eum sequi. Optio non repellat aliquid quia quo iure. Asperiores sunt labore asperiores corrupti ad dolorem.', '261403bbab19c9bc57a5d51f45367944.png', 1, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(34, 'Possimus eveniet enim itaque rerum et qui dolorem.', 'autem-dignissimos-repudiandae-qui-dicta-soluta-et', 'Ratione cum maiores qui animi. Aut aliquid earum et quidem error. Harum quis corrupti provident ut. Et cumque quia quia.', 'e867e66c8df1072b07df23b2b7761813.png', 3, '2023-02-25 16:15:33', '2023-02-25 16:15:33'),
(35, 'Et vel pariatur repellendus ea voluptatibus.', 'voluptatibus-sed-in-omnis-labore', 'Qui nihil iusto officia. Enim odit necessitatibus velit omnis sit.', '56c8a2c8506270317dee6495114cecf8.png', 7, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(36, 'Veniam accusamus nemo animi soluta ipsam.', 'ea-ut-officia-error-assumenda-corrupti', 'Tempore aut quo amet corporis. Excepturi in quo qui beatae odio quis neque in.', '7d8473c17da74bd6f7721335a4cd796a.png', 6, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(37, 'Qui in aperiam ut ut nesciunt dolores.', 'veritatis-est-maxime-iste-et', 'Et consequatur neque libero consequuntur asperiores nisi ducimus. Est ea dignissimos minima ratione.', '24ee3264812c10c07376d905c9969aae.png', 8, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(38, 'Est aut vitae eligendi pariatur voluptatum rem corrupti.', 'suscipit-necessitatibus-officia-non-sunt-et-velit-non', 'Vero est nesciunt voluptatum dolorem dolore dolor voluptate est. Quasi iure quia exercitationem expedita delectus autem assumenda. Et veritatis eum voluptates eaque voluptas cupiditate nostrum.', 'd6829c42db5cf39171a89e5a258dc71e.png', 5, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(39, 'Maiores molestias autem ipsa sapiente.', 'est-soluta-dicta-voluptate-distinctio-quia-eveniet-laborum', 'Eligendi earum inventore ex aut. Molestiae fugit ea adipisci eos eos quia. Ipsum quia aut aut unde. Porro non veniam rem autem error sit omnis et.', '0', 8, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(40, 'Amet iure omnis autem voluptatem minus.', 'et-culpa-deserunt-quis-nihil', 'Eos hic qui nihil omnis. Sed ea illum et est. Velit suscipit velit praesentium rerum. Ut sunt aut alias rerum quas.', '0', 1, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(41, 'Modi praesentium amet tempore consequatur id consequatur.', 'quasi-laudantium-provident-perspiciatis-numquam-voluptatum-consequatur', 'Iure facere temporibus quia et. Accusantium minima itaque corrupti at nulla et. Sint nihil consequatur similique nihil sit aspernatur mollitia. Rerum possimus aliquid vel eligendi vitae est quo.', '0', 2, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(42, 'Sed voluptate earum consequatur eos quisquam in error incidunt.', 'debitis-quis-quibusdam-soluta-accusamus', 'Aliquid quos doloremque est. Autem dolores ea cum beatae temporibus debitis. Sit repellat facere esse placeat ratione necessitatibus facere. Blanditiis consectetur aliquid quam deserunt.', '0', 2, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(43, 'Omnis ratione ipsa aut autem temporibus ducimus cum.', 'ea-temporibus-molestias-quisquam-est-pariatur-inventore', 'Sunt qui consectetur velit minima consequatur ex. Sed ipsam praesentium mollitia ut beatae aut. Dolor aperiam cum repellat asperiores dignissimos eum autem. Ad tempore distinctio dolores debitis porro.', '0', 4, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(44, 'Ut ut quaerat aut.', 'eos-et-nam-commodi-quo-enim', 'Voluptas vel voluptatem ea ut ipsa. Doloremque nihil doloremque id cum iste nostrum. Nulla aut voluptatem repellat non occaecati. Dolor velit ratione explicabo minima perspiciatis.', '0', 9, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(45, 'Dolorem nobis animi velit et neque molestias.', 'eos-beatae-cum-aliquid-quam-est-nam-dolor-itaque', 'Adipisci mollitia totam culpa perspiciatis est consequatur. Facilis quasi harum porro quis labore voluptatem. Cupiditate corporis tempora nemo magni qui. Quidem id optio nulla sequi saepe.', '0', 4, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(46, 'Voluptatibus nobis voluptas aliquam enim.', 'iure-iste-aut-molestias', 'Iure et tempora vel cum esse et voluptatem sit. Vero quia quibusdam est fugit. Incidunt repudiandae molestias sed dignissimos quidem eum minus.', '0', 6, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(47, 'Et atque in aut qui quidem.', 'dolorum-sed-quo-et-rerum-est-autem-eveniet', 'Ducimus dolorem autem iusto qui occaecati earum. Ipsam dolor cupiditate debitis et. Tempore et dolorem illum fuga consectetur quidem facilis.', '0', 2, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(48, 'Et illo mollitia libero labore.', 'molestiae-voluptatum-accusantium-asperiores-cum-vel-beatae-corporis', 'Quaerat fugit officiis commodi ut sequi eaque. Magnam quae voluptate et ut sunt. Ut vel in voluptas quasi sit voluptatibus aut repellendus.', '0', 4, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(49, 'Quos odit veritatis at molestiae soluta.', 'minus-dolorem-ut-doloribus-ut-maiores', 'Ullam ipsum quisquam voluptates fugit minima vero dolores. Enim aut ratione possimus natus nulla mollitia ab illo. Velit deleniti ea id expedita blanditiis voluptas sit tenetur. Ut dolores quidem provident sapiente omnis odit.', '0', 9, '2023-02-25 16:15:34', '2023-02-25 16:15:34'),
(50, 'Perferendis animi aliquam provident odit quos accusantium aperiam.', 'et-voluptates-magni-repellendus-id-accusamus-veniam', 'Optio odio maxime eos iusto. Est natus hic non hic debitis esse reprehenderit. Sunt eum dolore provident est. Enim dicta eius aut asperiores et quis nulla.', '0', 9, '2023-02-25 16:15:34', '2023-02-25 16:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GnX9zZuWkxG1uRBknYj17bcKhjjPeT3vYorhV2D8', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYnFYa3RwUlBSaEdsZUJrUlZ1UjFQOXhEbTM3VlE2ZXVCbDVqUERqZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcG9zdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRhRmh6aDhJSzhJT3F5STdhbjRLNXYuT21aUnhsZ1lGaURSdVFDbkxhcmFCSmFVbWVIa3JVRyI7fQ==', 1677355389);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Odell McClure', 'josefa71@example.com', '2023-02-25 16:12:23', '$2y$10$iwdkjfmzdwiDHHYRcJYgh.zFOm9xtCauAVmPS5tj3eazuQw2Swekq', NULL, NULL, NULL, 'nNCC99o35B', '2023-02-25 16:12:24', '2023-02-25 16:12:24'),
(2, 'Ramona Schultz', 'sleannon@example.net', '2023-02-25 16:12:23', '$2y$10$XYwbrk5Q7rWostReihmyauuY4WSezY16xUxDs.MKpLqeU7N.fOmbS', NULL, NULL, NULL, 'amf5EOmjfp', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(3, 'Alphonso Fisher', 'dibbert.raphael@example.com', '2023-02-25 16:12:23', '$2y$10$KtvFQIHCF2HZuCh6rDq0RuIzfgU9oWFOyi0LU2o46tnwnEIbxFf7G', NULL, NULL, NULL, '62ZPeO7qdC', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(4, 'Joesph Bechtelar', 'smitham.austen@example.net', '2023-02-25 16:12:23', '$2y$10$a6CM2HiRXOFKeD8phPM8dOlKo9yf.RgBMyuNLqbDfSwcKv7e5dlf.', NULL, NULL, NULL, 'hWSjrJgzyL', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(5, 'Mr. Arnaldo Satterfield', 'batz.mohammad@example.com', '2023-02-25 16:12:24', '$2y$10$H27/Q7tF7SJRgWNGi98XoepOFcPRpFKQM..NTBsfLTMEJLnTyVqtu', NULL, NULL, NULL, '2kzUqjiptq', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(6, 'Sophie Jerde', 'oblock@example.org', '2023-02-25 16:12:24', '$2y$10$.JMD3MDQbsLYzkSkrBkwVebLihNlzvqAnit2eJ5DdtOkm7fn/EVd2', NULL, NULL, NULL, 'JFAYw0zr5P', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(7, 'Tate Ryan', 'vgreen@example.com', '2023-02-25 16:12:24', '$2y$10$pUGs29S51/d/LuoFJJxAuuUD98pU0ZF5zQy0wVZR2EyDN2JLMxx8C', NULL, NULL, NULL, 'jSvZ8ioJoM', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(8, 'Judah Mosciski II', 'maribel.mcclure@example.org', '2023-02-25 16:12:24', '$2y$10$MDI9jH7j9xfSxlfN1K.KSuQnxEf5oF7WkNtr5V7TlFJr4BuDtRgHC', NULL, NULL, NULL, 'DkNilJ1rMq', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(9, 'Prof. Janick Morar I', 'greenholt.cheyenne@example.net', '2023-02-25 16:12:24', '$2y$10$pbVfoClWoyyVDtljSL9QtOs4AX/rskqqtaRRqH1pc5yz7xb6S/ijq', NULL, NULL, NULL, 'piC8cdt80V', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(10, 'Erling Waelchi', 'cindy.miller@example.org', '2023-02-25 16:12:24', '$2y$10$L81Fo8NDvo/GZmURbOsB.ecXVveFPBEtnP9SGBGPan0V4MCQ/mFcO', NULL, NULL, NULL, 'NByINOLPt7', '2023-02-25 16:12:25', '2023-02-25 16:12:25'),
(11, 'mega', 'mega@gmail.com', NULL, '$2y$10$aFhzh8IK8IOqyI7an4K5v.OmZRxlgYFiDRuQCnLaraBJaUmeHkrUG', NULL, NULL, NULL, NULL, '2023-02-25 16:51:51', '2023-02-25 16:51:51');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
