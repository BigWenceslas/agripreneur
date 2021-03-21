-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 21 mars 2021 à 09:18
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agripreneur`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vues` int(11) DEFAULT '0',
  `categorie_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publier` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `contenu`, `resume`, `slug`, `vues`, `categorie_id`, `image`, `created_at`, `updated_at`, `publier`) VALUES
(2, 'Bessala Akogo Aristide', '<p>hjkhjkhjk</p>', '<p>hjkhjk</p>', 'bessala-akogo-aristide', NULL, 1, 'articles\\March2021\\wD6I0NCqIi3jVhjdUdns.jpg', '2021-03-20 13:25:08', '2021-03-20 13:25:08', 0),
(3, 'rtertert', '<p>erter</p>', '<p>tretert</p>', 'rtertert', NULL, 1, 'articles\\March2021\\qR55zZ0jt4Bf7yjQj2tQ.PNG', '2021-03-20 13:37:00', '2021-03-21 08:03:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `description`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aristide', '<p>456456</p>', 'aristide', 'categories\\March2021\\hQ95MbB7VeIceHEiKTK4.jpg', '2021-03-20 12:56:19', '2021-03-20 12:56:19'),
(2, 'tert etrtert', '<p>ertertet</p>', 'tert-etrtert', 'categories\\March2021\\AcJnR25iCfV1HAZy47ko.PNG', '2021-03-21 07:56:15', '2021-03-21 07:56:15'),
(3, 'ertertet', '<p>werwer</p>', 'ertertet', 'categories\\March2021\\pnmlpLhCCVxuihaAYDTq.PNG', '2021-03-21 07:56:31', '2021-03-21 07:56:31');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"description\":\"Nom de la cat\\u00e9gorie\",\"display\":{\"width\":\"6\",\"id\":\"nom_categorie\"},\"validation\":{\"rule\":\"unique:categories\",\"messages\":{\"unique\":\"Ce nom est d\\u00e9ja utilise\"}}}', 2),
(24, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(25, 4, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 5),
(26, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"description\":\"Image de la cat\\u00e9gorie\",\"display\":{\"width\":\"6\",\"id\":\"nom_categorie\"}}', 3),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"nom_article\"},\"validation\":{\"rule\":\"unique:articles\",\"messages\":{\"unique\":\"Ce nom est d\\u00e9ja utilis\\u00e9\"}}}', 2),
(31, 5, 'contenu', 'rich_text_box', 'Contenu', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"contenu_article\"}}', 7),
(32, 5, 'resume', 'rich_text_box', 'Résume', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"resume_article\"}}', 8),
(33, 5, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 12),
(34, 5, 'vues', 'number', 'Vues', 0, 1, 1, 0, 0, 1, '{\"default\":\"0\"}', 9),
(35, 5, 'categorie_id', 'text', 'Categorie Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(36, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"image_article\"}}', 5),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(39, 5, 'article_belongsto_category_relationship', 'relationship', 'Catégorie', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"categorie_article\"},\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(40, 5, 'publier', 'checkbox', 'Etat', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"etat_article\"},\"on\":\"Publier\",\"off\":\"Brouillon\",\"checked\":false}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-03-20 12:43:20', '2021-03-21 07:57:48'),
(5, 'articles', 'articles', 'Article', 'Articles', 'voyager-documentation', 'App\\Article', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-03-20 13:09:55', '2021-03-21 08:08:31');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-17 18:40:34', '2021-03-17 18:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-17 18:40:34', '2021-03-17 18:40:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 13, 7, '2021-03-17 18:40:34', '2021-03-20 08:13:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 12, 2, '2021-03-17 18:40:34', '2021-03-20 08:12:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 12, 1, '2021-03-17 18:40:34', '2021-03-20 08:12:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, 13, 8, '2021-03-17 18:40:34', '2021-03-20 08:13:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 13, 6, '2021-03-17 18:40:34', '2021-03-20 08:13:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 13, 5, '2021-03-17 18:40:34', '2021-03-20 08:13:18', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 13, 4, '2021-03-17 18:40:34', '2021-03-20 08:13:14', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 13, 3, '2021-03-17 18:40:34', '2021-03-20 08:13:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 13, 2, '2021-03-17 18:40:34', '2021-03-20 08:13:04', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 13, 1, '2021-03-17 18:40:35', '2021-03-20 08:13:01', 'voyager.hooks', NULL),
(12, 1, 'Gestion des Utilisateurs', '', '_self', 'voyager-group', '#000000', NULL, 2, '2021-03-20 08:11:57', '2021-03-20 08:12:07', NULL, ''),
(13, 1, 'Systeme', '', '_self', 'voyager-anchor', '#000000', NULL, 5, '2021-03-20 08:12:55', '2021-03-20 12:19:46', NULL, ''),
(14, 1, 'Gestion des Articles', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2021-03-20 12:18:02', '2021-03-20 12:19:37', NULL, ''),
(15, 1, 'Pages', '', '_self', 'voyager-receipt', '#000000', NULL, 4, '2021-03-20 12:18:53', '2021-03-20 12:19:46', NULL, ''),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 14, 1, '2021-03-20 12:43:20', '2021-03-20 12:44:07', 'voyager.categories.index', NULL),
(17, 1, 'Articles', '', '_self', 'voyager-documentation', NULL, 14, 2, '2021-03-20 13:09:55', '2021-03-20 13:20:47', 'voyager.articles.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'browse_bread', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(3, 'browse_database', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(4, 'browse_media', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(5, 'browse_compass', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(6, 'browse_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(7, 'read_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(8, 'edit_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(9, 'add_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(10, 'delete_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(11, 'browse_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(12, 'read_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(13, 'edit_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(14, 'add_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(15, 'delete_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(16, 'browse_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(17, 'read_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(18, 'edit_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(19, 'add_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(20, 'delete_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(21, 'browse_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(22, 'read_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(23, 'edit_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(24, 'add_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(25, 'delete_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(26, 'browse_hooks', NULL, '2021-03-17 18:40:35', '2021-03-17 18:40:35'),
(27, 'browse_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(28, 'read_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(29, 'edit_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(30, 'add_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(31, 'delete_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(32, 'browse_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(33, 'read_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(34, 'edit_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(35, 'add_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(36, 'delete_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'user', 'Normal User', '2021-03-17 18:40:34', '2021-03-17 18:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Agripreneur', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'big_notorious', 'bessala93@gmail.com', 'users/default.png', NULL, '$2y$10$k48hBp8KBi3Xx2fhzhf2p.4SIeaBOLPfZjJRZ2TSKa8WBuS6wpWZu', NULL, NULL, '2021-03-17 18:42:51', '2021-03-17 18:42:51');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
