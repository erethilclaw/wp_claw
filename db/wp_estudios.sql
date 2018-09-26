-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-09-2018 a las 12:39:00
-- Versión del servidor: 5.7.23-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wp_estudios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-21 18:45:23', '2018-05-21 18:45:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 25, 'erethilclaw', 'ernest.riccetto@gmail.com', '', '127.0.0.1', '2018-09-12 10:13:23', '2018-09-12 10:13:23', 'ypicariye!! joputa!', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.106 Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(3, 25, 'erethilclaw', 'ernest.riccetto@gmail.com', '', '127.0.0.1', '2018-09-12 10:25:40', '2018-09-12 10:25:40', 'tucutu', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.106 Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(4, 25, 'erethilclaw', 'ernest.riccetto@gmail.com', '', '127.0.0.1', '2018-09-12 10:26:01', '2018-09-12 10:26:01', 'yeah', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.106 Chrome/68.0.3440.106 Safari/537.36', '', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.lair-of-claw.com', 'yes'),
(2, 'home', 'http://local.lair-of-claw.com', 'yes'),
(3, 'blogname', 'Estudios Claw', 'yes'),
(4, 'blogdescription', 'Lair of Claw', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'ernest.riccetto@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:105:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"amn_smtp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"amn_smtp/([^/]+)/embed/?$";s:41:"index.php?amn_smtp=$matches[1]&embed=true";s:29:"amn_smtp/([^/]+)/trackback/?$";s:35:"index.php?amn_smtp=$matches[1]&tb=1";s:37:"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&paged=$matches[2]";s:44:"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&cpage=$matches[2]";s:33:"amn_smtp/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?amn_smtp=$matches[1]&page=$matches[2]";s:25:"amn_smtp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"amn_smtp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"amn_smtp/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=13&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Claw_theme', 'yes'),
(41, 'stylesheet', 'Claw_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '59', 'yes'),
(84, 'page_on_front', '13', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:12:"blog_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1537958724;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1537987524;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1537987562;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1537987955;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1534875647;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(124, 'can_compress_scripts', '0', 'no'),
(138, 'ftp_credentials', 'a:3:{s:8:"hostname";s:17:"local.wp_estudios";s:8:"username";s:11:"erethilclaw";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(141, 'current_theme', 'Lair of Claw', 'yes'),
(142, 'theme_mods_blankslate', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1534875610;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"primary-widget-area";a:0:{}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(149, 'theme_mods_wp-bootstrap-starter', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527697999;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}}', 'yes'),
(150, 'triggered_welcomet', '1', 'yes'),
(159, '_transient_wp_bootstrap_starter_categories', '1', 'yes'),
(182, 'theme_mods_Claw_theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:6;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1534875552;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"blog_sidebar";a:0:{}}}}', 'yes'),
(201, 'recently_activated', 'a:0:{}', 'yes'),
(252, 'WPLANG', '', 'yes'),
(253, 'new_admin_email', 'ernest.riccetto@gmail.com', 'yes'),
(287, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-6.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-6.zip";}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";s:9:"new_files";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip";}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1537955898;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(320, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1537955900;s:7:"checked";a:1:{s:10:"Claw_theme";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(351, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(367, 'category_children', 'a:0:{}', 'yes'),
(472, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.4";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1536838585;s:7:"version";s:5:"5.0.4";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(488, 'wp_mail_smtp_initial_version', '1.3.3', 'no'),
(489, 'wp_mail_smtp_version', '1.3.3', 'no'),
(490, 'wp_mail_smtp', 'a:5:{s:4:"mail";a:6:{s:10:"from_email";s:25:"ernest.riccetto@gmail.com";s:9:"from_name";s:7:"WPForms";s:6:"mailer";s:5:"gmail";s:11:"return_path";b:1;s:16:"from_email_force";b:1;s:15:"from_name_force";b:0;}s:4:"smtp";a:7:{s:7:"autotls";s:3:"yes";s:4:"host";s:0:"";s:10:"encryption";s:4:"none";s:4:"port";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"auth";b:0;}s:7:"mailgun";a:2:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";}s:8:"sendgrid";a:1:{s:7:"api_key";s:0:"";}s:5:"gmail";a:5:{s:9:"client_id";s:72:"373136714907-2evkn2gru0jgdj4esurmq890re29ea8c.apps.googleusercontent.com";s:13:"client_secret";s:24:"BiWEGqYdWsjVR9RWOERAXNM0";s:9:"auth_code";s:89:"4/ZQAsAjkT9IvBO5M9AD5NUR-WInx40DTfnKdJ5i22DS14doih2qG_kO3M9a9ekGs6a2f5IYV4zujNsrXvg6j6AS4";s:12:"access_token";a:6:{s:12:"access_token";s:131:"ya29.GlwkBkFY8-s5lXM_TIaj03YmbQtkCrWGLGajAT5_afX-0BBntcfR9mYnL817EB_TK7r6ubswfYj0i2Yy1GLTeQBHWAzM_VAl881M_GVkjiOBtikOTcaPcQH9XZVC3g";s:10:"expires_in";i:3600;s:5:"scope";s:24:"https://mail.google.com/";s:10:"token_type";s:6:"Bearer";s:7:"created";i:1537957870;s:13:"refresh_token";s:45:"1/-CIfLBk5hJeaaVIYw01p8Nt3BJPcd5V9-8kjTT6mz2k";}s:13:"refresh_token";s:45:"1/-CIfLBk5hJeaaVIYw01p8Nt3BJPcd5V9-8kjTT6mz2k";}}', 'no'),
(491, '_amn_smtp_last_checked', '1537920000', 'yes'),
(492, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(517, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1537955898;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-mail-smtp";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"1.3.3";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440";s:2:"1x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1900656";s:2:"1x";s:67:"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1900656";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(526, '_site_transient_timeout_browser_57e3d50f2d36ca398edf9e3500e1b848', '1538390265', 'no'),
(527, '_site_transient_browser_57e3d50f2d36ca398edf9e3500e1b848', 'a:10:{s:4:"name";s:8:"Chromium";s:7:"version";s:12:"69.0.3497.81";s:8:"platform";s:5:"Linux";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(558, '_site_transient_theme_roots', 'a:1:{s:10:"Claw_theme";s:7:"/themes";}', 'no'),
(559, '_site_transient_timeout_theme_roots', '1537957699', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(10, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1527696722:1'),
(17, 9, '_edit_last', '1'),
(18, 9, '_edit_lock', '1526930755:1'),
(19, 1, '_edit_lock', '1527696699:1'),
(20, 11, '_edit_last', '1'),
(21, 11, '_edit_lock', '1534500136:1'),
(24, 13, '_edit_last', '1'),
(25, 13, '_edit_lock', '1537869247:1'),
(26, 15, '_wp_attached_file', '2018/06/MG_5462_01.jpg'),
(27, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:22:"2018/06/MG_5462_01.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"MG_5462_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"MG_5462_01-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"MG_5462_01-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"MG_5462_01-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:30:"ErethilClaw\nfrom Estudios Claw";s:6:"camera";s:13:"Canon EOS 60D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1482944864";s:9:"copyright";s:15:"Ernest Riccetto";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(28, 3, '_edit_lock', '1536838196:1'),
(29, 3, '_edit_last', '1'),
(30, 18, '_edit_last', '1'),
(31, 18, '_edit_lock', '1534330148:1'),
(35, 2, '_edit_lock', '1534328693:1'),
(36, 23, '_edit_last', '1'),
(37, 23, '_edit_lock', '1534500087:1'),
(40, 25, '_edit_last', '1'),
(41, 25, '_edit_lock', '1536747681:1'),
(44, 27, '_edit_last', '1'),
(45, 27, '_edit_lock', '1535019120:1'),
(52, 13, '_wp_page_template', 'homepage.php'),
(53, 32, '_menu_item_type', 'post_type'),
(54, 32, '_menu_item_menu_item_parent', '0'),
(55, 32, '_menu_item_object_id', '13'),
(56, 32, '_menu_item_object', 'page'),
(57, 32, '_menu_item_target', ''),
(58, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 32, '_menu_item_xfn', ''),
(60, 32, '_menu_item_url', ''),
(61, 32, '_menu_item_orphaned', '1534933214'),
(62, 33, '_menu_item_type', 'post_type'),
(63, 33, '_menu_item_menu_item_parent', '0'),
(64, 33, '_menu_item_object_id', '18'),
(65, 33, '_menu_item_object', 'page'),
(66, 33, '_menu_item_target', ''),
(67, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 33, '_menu_item_xfn', ''),
(69, 33, '_menu_item_url', ''),
(70, 33, '_menu_item_orphaned', '1534933215'),
(80, 35, '_menu_item_type', 'post_type'),
(81, 35, '_menu_item_menu_item_parent', '0'),
(82, 35, '_menu_item_object_id', '13'),
(83, 35, '_menu_item_object', 'page'),
(84, 35, '_menu_item_target', ''),
(85, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 35, '_menu_item_xfn', ''),
(87, 35, '_menu_item_url', ''),
(88, 35, '_menu_item_orphaned', '1534933215'),
(89, 36, '_menu_item_type', 'post_type'),
(90, 36, '_menu_item_menu_item_parent', '0'),
(91, 36, '_menu_item_object_id', '3'),
(92, 36, '_menu_item_object', 'page'),
(93, 36, '_menu_item_target', ''),
(94, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 36, '_menu_item_xfn', ''),
(96, 36, '_menu_item_url', ''),
(97, 36, '_menu_item_orphaned', '1534933216'),
(98, 37, '_menu_item_type', 'post_type'),
(99, 37, '_menu_item_menu_item_parent', '0'),
(100, 37, '_menu_item_object_id', '2'),
(101, 37, '_menu_item_object', 'page'),
(102, 37, '_menu_item_target', ''),
(103, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 37, '_menu_item_xfn', ''),
(105, 37, '_menu_item_url', ''),
(106, 37, '_menu_item_orphaned', '1534933216'),
(107, 38, '_menu_item_type', 'post_type'),
(108, 38, '_menu_item_menu_item_parent', '0'),
(109, 38, '_menu_item_object_id', '13'),
(110, 38, '_menu_item_object', 'page'),
(111, 38, '_menu_item_target', ''),
(112, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 38, '_menu_item_xfn', ''),
(114, 38, '_menu_item_url', ''),
(115, 38, '_menu_item_orphaned', '1534933238'),
(116, 39, '_menu_item_type', 'post_type'),
(117, 39, '_menu_item_menu_item_parent', '0'),
(118, 39, '_menu_item_object_id', '18'),
(119, 39, '_menu_item_object', 'page'),
(120, 39, '_menu_item_target', ''),
(121, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 39, '_menu_item_xfn', ''),
(123, 39, '_menu_item_url', ''),
(124, 39, '_menu_item_orphaned', '1534933239'),
(134, 41, '_menu_item_type', 'post_type'),
(135, 41, '_menu_item_menu_item_parent', '0'),
(136, 41, '_menu_item_object_id', '13'),
(137, 41, '_menu_item_object', 'page'),
(138, 41, '_menu_item_target', ''),
(139, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 41, '_menu_item_xfn', ''),
(141, 41, '_menu_item_url', ''),
(142, 41, '_menu_item_orphaned', '1534933239'),
(143, 42, '_menu_item_type', 'post_type'),
(144, 42, '_menu_item_menu_item_parent', '0'),
(145, 42, '_menu_item_object_id', '3'),
(146, 42, '_menu_item_object', 'page'),
(147, 42, '_menu_item_target', ''),
(148, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 42, '_menu_item_xfn', ''),
(150, 42, '_menu_item_url', ''),
(151, 42, '_menu_item_orphaned', '1534933240'),
(152, 43, '_menu_item_type', 'post_type'),
(153, 43, '_menu_item_menu_item_parent', '0'),
(154, 43, '_menu_item_object_id', '2'),
(155, 43, '_menu_item_object', 'page'),
(156, 43, '_menu_item_target', ''),
(157, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 43, '_menu_item_xfn', ''),
(159, 43, '_menu_item_url', ''),
(160, 43, '_menu_item_orphaned', '1534933240'),
(161, 44, '_menu_item_type', 'post_type'),
(162, 44, '_menu_item_menu_item_parent', '0'),
(163, 44, '_menu_item_object_id', '13'),
(164, 44, '_menu_item_object', 'page'),
(165, 44, '_menu_item_target', ''),
(166, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 44, '_menu_item_xfn', ''),
(168, 44, '_menu_item_url', ''),
(169, 44, '_menu_item_orphaned', '1534933246'),
(170, 45, '_menu_item_type', 'post_type'),
(171, 45, '_menu_item_menu_item_parent', '0'),
(172, 45, '_menu_item_object_id', '18'),
(173, 45, '_menu_item_object', 'page'),
(174, 45, '_menu_item_target', ''),
(175, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 45, '_menu_item_xfn', ''),
(177, 45, '_menu_item_url', ''),
(178, 45, '_menu_item_orphaned', '1534933246'),
(188, 47, '_menu_item_type', 'post_type'),
(189, 47, '_menu_item_menu_item_parent', '0'),
(190, 47, '_menu_item_object_id', '13'),
(191, 47, '_menu_item_object', 'page'),
(192, 47, '_menu_item_target', ''),
(193, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 47, '_menu_item_xfn', ''),
(195, 47, '_menu_item_url', ''),
(196, 47, '_menu_item_orphaned', '1534933247'),
(197, 48, '_menu_item_type', 'post_type'),
(198, 48, '_menu_item_menu_item_parent', '0'),
(199, 48, '_menu_item_object_id', '3'),
(200, 48, '_menu_item_object', 'page'),
(201, 48, '_menu_item_target', ''),
(202, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 48, '_menu_item_xfn', ''),
(204, 48, '_menu_item_url', ''),
(205, 48, '_menu_item_orphaned', '1534933247'),
(206, 49, '_menu_item_type', 'post_type'),
(207, 49, '_menu_item_menu_item_parent', '0'),
(208, 49, '_menu_item_object_id', '2'),
(209, 49, '_menu_item_object', 'page'),
(210, 49, '_menu_item_target', ''),
(211, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 49, '_menu_item_xfn', ''),
(213, 49, '_menu_item_url', ''),
(214, 49, '_menu_item_orphaned', '1534933248'),
(242, 53, '_menu_item_type', 'post_type'),
(243, 53, '_menu_item_menu_item_parent', '0'),
(244, 53, '_menu_item_object_id', '13'),
(245, 53, '_menu_item_object', 'page'),
(246, 53, '_menu_item_target', ''),
(247, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 53, '_menu_item_xfn', ''),
(249, 53, '_menu_item_url', ''),
(250, 53, '_menu_item_orphaned', '1534933411'),
(260, 55, '_menu_item_type', 'post_type'),
(261, 55, '_menu_item_menu_item_parent', '0'),
(262, 55, '_menu_item_object_id', '2'),
(263, 55, '_menu_item_object', 'page'),
(264, 55, '_menu_item_target', ''),
(265, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 55, '_menu_item_xfn', ''),
(267, 55, '_menu_item_url', ''),
(268, 55, '_menu_item_orphaned', '1534933412'),
(287, 58, '_menu_item_type', 'post_type'),
(288, 58, '_menu_item_menu_item_parent', '0'),
(289, 58, '_menu_item_object_id', '13'),
(290, 58, '_menu_item_object', 'page'),
(291, 58, '_menu_item_target', ''),
(292, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(293, 58, '_menu_item_xfn', ''),
(294, 58, '_menu_item_url', ''),
(299, 59, '_edit_last', '1'),
(300, 59, '_wp_page_template', 'archive.php'),
(301, 59, '_edit_lock', '1537785401:1'),
(302, 61, '_menu_item_type', 'post_type'),
(303, 61, '_menu_item_menu_item_parent', '0'),
(304, 61, '_menu_item_object_id', '59'),
(305, 61, '_menu_item_object', 'page'),
(306, 61, '_menu_item_target', ''),
(307, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 61, '_menu_item_xfn', ''),
(309, 61, '_menu_item_url', ''),
(310, 64, '_edit_last', '1'),
(311, 64, '_edit_lock', '1536835784:1'),
(312, 65, '_edit_last', '1'),
(313, 65, '_edit_lock', '1536918305:1'),
(314, 65, '_wp_page_template', 'contact.php'),
(315, 67, '_form', '<div class ="row">\n   <div class="col-sm-6 form-group">\n   [text* your-name]\n   </div>\n   <div class="col-sm-6 form-group">\n   [email* your-email] \n   </div>\n</div>\n[textarea your-message]\n<br>\n<div class="row">\n   <div class="col-md-12 form-group">\n	[submit "Send"]\n   </div>\n</div>'),
(316, 67, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"Estudios Claw "[your-subject]"";s:6:"sender";s:41:"[your-name] <wordpress@local.wp_estudios>";s:9:"recipient";s:25:"ernest.riccetto@gmail.com";s:4:"body";s:176:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Estudios Claw (http://local.wp_estudios)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(317, 67, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"Estudios Claw "[your-subject]"";s:6:"sender";s:43:"Estudios Claw <wordpress@local.wp_estudios>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:118:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Estudios Claw (http://local.wp_estudios)";s:18:"additional_headers";s:35:"Reply-To: ernest.riccetto@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(318, 67, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(319, 67, '_additional_settings', ''),
(320, 67, '_locale', 'en_US'),
(331, 67, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-21 18:45:23', '2018-05-21 18:45:23', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-21 18:45:23', '2018-05-21 18:45:23', '', 0, 'http://local.wp_estudios/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-21 18:45:23', '2018-05-21 18:45:23', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://local.wp_estudios/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-05-21 18:45:23', '2018-05-21 18:45:23', '', 0, 'http://local.wp_estudios/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-21 18:45:23', '2018-05-21 18:45:23', '<h2>Who we are</h2>\r\nOur website address is: http://local.wp_estudios.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-15 10:27:28', '2018-08-15 10:27:28', '', 0, 'http://local.wp_estudios/?page_id=3', 0, 'page', '', 0),
(7, 1, '2018-05-21 18:57:33', '2018-05-21 18:57:33', '666', '6666', '', 'publish', 'open', 'open', '', '6666', '', '', '2018-05-21 18:57:33', '2018-05-21 18:57:33', '', 0, 'http://local.wp_estudios/?p=7', 0, 'post', '', 0),
(8, 1, '2018-05-21 18:57:33', '2018-05-21 18:57:33', '666', '6666', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-21 18:57:33', '2018-05-21 18:57:33', '', 7, 'http://local.wp_estudios/index.php/2018/05/21/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-05-21 19:17:47', '2018-05-21 19:17:47', '555', '5555', '', 'publish', 'closed', 'closed', '', '5555', '', '', '2018-05-21 19:17:47', '2018-05-21 19:17:47', '', 0, 'http://local.wp_estudios/?post_type=gallery_post&#038;p=9', 0, 'gallery_post', '', 0),
(11, 1, '2018-05-30 16:39:04', '2018-05-30 16:39:04', 'Anna de Mas mola mil.', 'Arna', '', 'publish', 'open', 'open', '', 'arna', '', '', '2018-08-17 10:04:12', '2018-08-17 10:04:12', '', 0, 'http://local.wp_estudios/?p=11', 0, 'post', '', 0),
(12, 1, '2018-05-30 16:39:04', '2018-05-30 16:39:04', 'Anna de Mas mola mil.', 'Arna', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-05-30 16:39:04', '2018-05-30 16:39:04', '', 11, 'http://local.wp_estudios/index.php/2018/05/30/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-05-30 16:50:31', '2018-05-30 16:50:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-22 11:23:37', '2018-08-22 11:23:37', '', 0, 'http://local.wp_estudios/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-05-30 16:50:31', '2018-05-30 16:50:31', '<h2>Què és Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l\'any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l\'any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d\'autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-05-30 16:50:31', '2018-05-30 16:50:31', '', 13, 'http://local.wp_estudios/index.php/2018/05/30/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-06 16:21:07', '2018-06-06 16:21:07', '', '_MG_5462_01', '', 'inherit', 'open', 'closed', '', '_mg_5462_01', '', '', '2018-06-06 16:21:07', '2018-06-06 16:21:07', '', 0, 'http://local.wp_estudios/wp-content/uploads/2018/06/MG_5462_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-06-25 15:56:56', '2018-06-25 15:56:56', '<h2>Who we are</h2>\r\nOur website address is: http://local.wp_estudios.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-25 15:56:56', '2018-06-25 15:56:56', '', 3, 'http://local.wp_estudios/index.php/2018/06/25/3-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-06-25 15:57:38', '2018-06-25 15:57:38', '<h1>Lorem Ipsum</h1>\r\n<h4>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</h4>\r\n<h5>"No hi ha ningú que estimi el dolor mateix, que el busqui i que vulgui tenir-lo, simplement perquè és dolor..."</h5>\r\n\r\n<hr />\r\n\r\n<div id="Content">\r\n<div id="Panes">\r\n<div>\r\n<h2>Què és Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l\'any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l\'any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d\'autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.\r\n\r\n</div>\r\n<div>\r\n<h2>Per què el fem servir?</h2>\r\nÉs un fet establert de forma evident que un lector es distraurà amb el contingut llegible d\'una pàgina quan miri a la seva composició. El fet de fer servir Lorem Ipsum és perquè conté una distribució més o menys normal de lletres, de forma oposada a quan es fa servir "Contingut aquí, contingut aquí", aconseguint així que sembli català llegible. Molts paquets d\'autoedició fan servir Lorem Ipsum com el seu model de text, i una cerca per "Lorem Ipsum" descobrirà molts llocs web encara a les baceroles. Diverses versions han anat evolucionant al llarg dels anys, a vegades per acident, a vegades a propòsit (inserint humor i coses per l\'estil).\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>', 'About me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2018-06-25 15:57:38', '2018-06-25 15:57:38', '', 0, 'http://local.wp_estudios/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-06-25 15:57:38', '2018-06-25 15:57:38', '<h1>Lorem Ipsum</h1>\r\n<h4>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</h4>\r\n<h5>"No hi ha ningú que estimi el dolor mateix, que el busqui i que vulgui tenir-lo, simplement perquè és dolor..."</h5>\r\n\r\n<hr />\r\n\r\n<div id="Content">\r\n<div id="Panes">\r\n<div>\r\n<h2>Què és Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l\'any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l\'any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d\'autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.\r\n\r\n</div>\r\n<div>\r\n<h2>Per què el fem servir?</h2>\r\nÉs un fet establert de forma evident que un lector es distraurà amb el contingut llegible d\'una pàgina quan miri a la seva composició. El fet de fer servir Lorem Ipsum és perquè conté una distribució més o menys normal de lletres, de forma oposada a quan es fa servir "Contingut aquí, contingut aquí", aconseguint així que sembli català llegible. Molts paquets d\'autoedició fan servir Lorem Ipsum com el seu model de text, i una cerca per "Lorem Ipsum" descobrirà molts llocs web encara a les baceroles. Diverses versions han anat evolucionant al llarg dels anys, a vegades per acident, a vegades a propòsit (inserint humor i coses per l\'estil).\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>', 'About me', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-25 15:57:38', '2018-06-25 15:57:38', '', 18, 'http://local.wp_estudios/index.php/2018/06/25/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-08-16 09:56:44', '2018-08-16 09:56:44', '<div>\r\n\r\nÉs un fet establert de forma evident que un lector es distraurà amb el contingut llegible d\'una pàgina quan miri a la seva composició. El fet de fer servir Lorem Ipsum és perquè conté una distribució més o menys normal de lletres, de forma oposada a quan es fa servir "Contingut aquí, contingut aquí", aconseguint així que sembli català llegible. Molts paquets d\'autoedició fan servir Lorem Ipsum com el seu model de text, i una cerca per "Lorem Ipsum" descobrirà molts llocs web encara a les baceroles. Diverses versions han anat evolucionant al llarg dels anys, a vegades per acident, a vegades a propòsit (inserint humor i coses per l\'estil).\r\n\r\n</div>\r\n&nbsp;\r\n<div></div>', 'Per què el fem servir?', '', 'publish', 'open', 'open', '', 'per-que-el-fem-servir', '', '', '2018-08-17 10:03:49', '2018-08-17 10:03:49', '', 0, 'http://local.wp_estudios/?p=23', 0, 'post', '', 0),
(24, 1, '2018-08-16 09:56:44', '2018-08-16 09:56:44', '<div>\r\n\r\nÉs un fet establert de forma evident que un lector es distraurà amb el contingut llegible d\'una pàgina quan miri a la seva composició. El fet de fer servir Lorem Ipsum és perquè conté una distribució més o menys normal de lletres, de forma oposada a quan es fa servir "Contingut aquí, contingut aquí", aconseguint així que sembli català llegible. Molts paquets d\'autoedició fan servir Lorem Ipsum com el seu model de text, i una cerca per "Lorem Ipsum" descobrirà molts llocs web encara a les baceroles. Diverses versions han anat evolucionant al llarg dels anys, a vegades per acident, a vegades a propòsit (inserint humor i coses per l\'estil).\r\n\r\n</div>\r\n&nbsp;\r\n<div></div>', 'Per què el fem servir?', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-16 09:56:44', '2018-08-16 09:56:44', '', 23, 'http://local.wp_estudios/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-08-16 09:57:06', '2018-08-16 09:57:06', 'Hi ha moltes variacions dels passatges de Lorem Ipsum disponibles, però la majoria han sofert alteracions d\'alguna manera, ja sigui per humor infiltrat, ja sigui per paraules aleatòries que no semblen gaire creïbles. Si vols fer servir un passatge de Lorem Ipsum, has d\'estar segur que no hi haurà res comprometedor amagat en el text. Tots els generadors de Lorem ipsum a Internet tendeixen a repetir un tros determinat tantes vegades com calgui, i això fa que aquest sigui el primer generador real a Internet. Fa servir un diccionari d\'unes 200 paraules llatines, combinades amb un grapat de models de frases per generar un Lorem Ipsum que sembli raonable. Així doncs, el Lorem Ipsum generat està lliure de repeticions, humor injectat, o paraules no característiques.', 'On puc aconseguir-ne una mica?', '', 'publish', 'open', 'open', '', 'on-puc-aconseguir-ne-una-mica', '', '', '2018-08-17 10:03:28', '2018-08-17 10:03:28', '', 0, 'http://local.wp_estudios/?p=25', 0, 'post', '', 3),
(26, 1, '2018-08-16 09:57:06', '2018-08-16 09:57:06', 'Hi ha moltes variacions dels passatges de Lorem Ipsum disponibles, però la majoria han sofert alteracions d\'alguna manera, ja sigui per humor infiltrat, ja sigui per paraules aleatòries que no semblen gaire creïbles. Si vols fer servir un passatge de Lorem Ipsum, has d\'estar segur que no hi haurà res comprometedor amagat en el text. Tots els generadors de Lorem ipsum a Internet tendeixen a repetir un tros determinat tantes vegades com calgui, i això fa que aquest sigui el primer generador real a Internet. Fa servir un diccionari d\'unes 200 paraules llatines, combinades amb un grapat de models de frases per generar un Lorem Ipsum que sembli raonable. Així doncs, el Lorem Ipsum generat està lliure de repeticions, humor injectat, o paraules no característiques.', 'On puc aconseguir-ne una mica?', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-08-16 09:57:06', '2018-08-16 09:57:06', '', 25, 'http://local.wp_estudios/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-08-16 09:57:29', '2018-08-16 09:57:29', 'Contràriament a la creença popular, Lorem Ipsum no és només text aleatori. Té les seves arrels en una peça clàssica de la literatura llatina del 45 aC, és a dir, de fa 2000 anys. Richard McClintock, un professor de llatí al Hampden-Sydney College a Virgínia, va buscar una de les paraules més estranyes del llatí, "consectetur", procedent d\'un dels paràgrafs de Lorem Ipsum, i anant de citació en citació d\'aquesta paraula a la literatura clàssica, en va descobrir l\'orígen veritable. Lorem ipsum procedeix de les seccions 1.10.32 i 1.10.33 de "De Finibus Bonorum et Malorum" (Sobre el Bé i el Mal) de Ciceró, escrit l\'any 45 aC. Aquest llibre és un tractat sobre la teoria de l\'ètica, molt popular durant el Renaixement. La primera línia de Lorem Ipsum, "Lorem ipsum dolor sit amet..", prové d\'una línia a la secció 1.10.32.', 'D\'on ve?', 'puta puta puta', 'publish', 'open', 'open', '', 'don-ve', '', '', '2018-08-23 10:14:21', '2018-08-23 10:14:21', '', 0, 'http://local.wp_estudios/?p=27', 0, 'post', '', 0),
(28, 1, '2018-08-16 09:57:29', '2018-08-16 09:57:29', 'Contràriament a la creença popular, Lorem Ipsum no és només text aleatori. Té les seves arrels en una peça clàssica de la literatura llatina del 45 aC, és a dir, de fa 2000 anys. Richard McClintock, un professor de llatí al Hampden-Sydney College a Virgínia, va buscar una de les paraules més estranyes del llatí, "consectetur", procedent d\'un dels paràgrafs de Lorem Ipsum, i anant de citació en citació d\'aquesta paraula a la literatura clàssica, en va descobrir l\'orígen veritable. Lorem ipsum procedeix de les seccions 1.10.32 i 1.10.33 de "De Finibus Bonorum et Malorum" (Sobre el Bé i el Mal) de Ciceró, escrit l\'any 45 aC. Aquest llibre és un tractat sobre la teoria de l\'ètica, molt popular durant el Renaixement. La primera línia de Lorem Ipsum, "Lorem ipsum dolor sit amet..", prové d\'una línia a la secció 1.10.32.', 'D\'on ve?', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-08-16 09:57:29', '2018-08-16 09:57:29', '', 27, 'http://local.wp_estudios/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-08-22 10:01:13', '2018-08-22 10:01:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-08-22 10:01:13', '2018-08-22 10:01:13', '', 13, 'http://local.wp_estudios/13-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-08-22 10:20:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:14', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-08-22 10:20:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:14', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=33', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-08-22 10:20:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:15', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-08-22 10:20:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:15', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-08-22 10:20:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:16', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-08-22 10:20:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:38', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-08-22 10:20:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:38', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=39', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-08-22 10:20:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:39', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2018-08-22 10:20:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:39', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-08-22 10:20:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:40', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-08-22 10:20:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:46', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2018-08-22 10:20:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:46', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=45', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-08-22 10:20:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:47', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-08-22 10:20:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:47', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2018-08-22 10:20:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:20:47', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=49', 1, 'nav_menu_item', '', 0),
(53, 1, '2018-08-22 10:23:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:23:30', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=53', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-08-22 10:23:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:23:31', '0000-00-00 00:00:00', '', 0, 'http://local.wp_estudios/?p=55', 1, 'nav_menu_item', '', 0),
(58, 1, '2018-08-22 10:33:54', '2018-08-22 10:33:54', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-08-22 11:09:07', '2018-08-22 11:09:07', '', 0, 'http://local.wp_estudios/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2018-08-22 11:08:26', '2018-08-22 11:08:26', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-22 11:30:29', '2018-08-22 11:30:29', '', 0, 'http://local.wp_estudios/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-08-22 11:08:26', '2018-08-22 11:08:26', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-08-22 11:08:26', '2018-08-22 11:08:26', '', 59, 'http://local.wp_estudios/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-22 11:09:07', '2018-08-22 11:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-08-22 11:09:07', '2018-08-22 11:09:07', '', 0, 'http://local.wp_estudios/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2018-08-23 10:14:21', '2018-08-23 10:14:21', 'Contràriament a la creença popular, Lorem Ipsum no és només text aleatori. Té les seves arrels en una peça clàssica de la literatura llatina del 45 aC, és a dir, de fa 2000 anys. Richard McClintock, un professor de llatí al Hampden-Sydney College a Virgínia, va buscar una de les paraules més estranyes del llatí, "consectetur", procedent d\'un dels paràgrafs de Lorem Ipsum, i anant de citació en citació d\'aquesta paraula a la literatura clàssica, en va descobrir l\'orígen veritable. Lorem ipsum procedeix de les seccions 1.10.32 i 1.10.33 de "De Finibus Bonorum et Malorum" (Sobre el Bé i el Mal) de Ciceró, escrit l\'any 45 aC. Aquest llibre és un tractat sobre la teoria de l\'ètica, molt popular durant el Renaixement. La primera línia de Lorem Ipsum, "Lorem ipsum dolor sit amet..", prové d\'una línia a la secció 1.10.32.', 'D\'on ve?', 'puta puta puta', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-08-23 10:14:21', '2018-08-23 10:14:21', '', 27, 'http://local.wp_estudios/27-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-09-13 10:49:44', '0000-00-00 00:00:00', '', 'contact', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-13 10:49:44', '2018-09-13 10:49:44', '', 0, 'http://local.wp_estudios/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-09-13 10:50:44', '2018-09-13 10:50:44', '[contact-form-7 id="67" title="Contact form 1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-13 11:57:56', '2018-09-13 11:57:56', '', 0, 'http://local.wp_estudios/?page_id=65', 0, 'page', '', 0),
(66, 1, '2018-09-13 10:50:44', '2018-09-13 10:50:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-09-13 10:50:44', '2018-09-13 10:50:44', '', 65, 'http://local.wp_estudios/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-09-13 11:36:24', '2018-09-13 11:36:24', '<div class ="row">\r\n   <div class="col-sm-6 form-group">\r\n   [text* your-name]\r\n   </div>\r\n   <div class="col-sm-6 form-group">\r\n   [email* your-email] \r\n   </div>\r\n</div>\r\n[textarea your-message]\r\n<br>\r\n<div class="row">\r\n   <div class="col-md-12 form-group">\r\n	[submit "Send"]\r\n   </div>\r\n</div>\n1\nEstudios Claw "[your-subject]"\n[your-name] <wordpress@local.wp_estudios>\nernest.riccetto@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Estudios Claw (http://local.wp_estudios)\nReply-To: [your-email]\n\n\n\n\nEstudios Claw "[your-subject]"\nEstudios Claw <wordpress@local.wp_estudios>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Estudios Claw (http://local.wp_estudios)\nReply-To: ernest.riccetto@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-26 10:30:59', '2018-09-26 10:30:59', '', 0, 'http://local.wp_estudios/?post_type=wpcf7_contact_form&#038;p=67', 0, 'wpcf7_contact_form', '', 0),
(68, 1, '2018-09-13 11:46:04', '2018-09-13 11:46:04', '<pre>[contact-form-7 id="67" title="Contact form 1"]</pre>', 'Contact', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-09-13 11:46:04', '2018-09-13 11:46:04', '', 65, 'http://local.wp_estudios/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-09-13 11:47:03', '2018-09-13 11:47:03', '[contact-form-7 id="67" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-09-13 11:47:03', '2018-09-13 11:47:03', '', 65, 'http://local.wp_estudios/65-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-09-24 10:37:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-24 10:37:45', '0000-00-00 00:00:00', '', 0, 'http://local.Lair-of-claw/?p=70', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'test666', 'test666', 0),
(3, 'puta', 'puta', 0),
(4, 'deesa', 'deesa', 0),
(6, 'claw-nav', 'claw-nav', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(11, 1, 0),
(11, 4, 0),
(23, 1, 0),
(23, 2, 0),
(25, 1, 0),
(25, 2, 0),
(25, 3, 0),
(27, 1, 0),
(27, 2, 0),
(58, 6, 0),
(61, 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'post_tag', '', 0, 3),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'erethilclaw'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:"d1608787820617f12188e195ea84033e7a678015669e6d751f776089addf80f1";a:4:{s:10:"expiration";i:1537955702;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537782902;}s:64:"9ccefda293fa01707fb29865c41910332fcf5446dd05c92466eeaa634c372dde";a:4:{s:10:"expiration";i:1537958264;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537785464;}s:64:"a208084b4009f4148f5b052a83d98d3c52781760243b02f6d070c8c66903d9c2";a:4:{s:10:"expiration";i:1537959370;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537786570;}s:64:"38b44ddfe69bbb63db0c97ed7e2e2159e2e4a6062f31a0f83f51218ff25c8baa";a:4:{s:10:"expiration";i:1537959589;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537786789;}s:64:"019e54f6349b77244e378060aa1a433d2b4381ad03925dc997768d5c690aede3";a:4:{s:10:"expiration";i:1537959617;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537786817;}s:64:"56769877a0f389d7f3bd59aca72572ef7f1e7ab93df2e3ba82d2442d1a1201e7";a:4:{s:10:"expiration";i:1538042832;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/69.0.3497.81 Chrome/69.0.3497.81 Safari/537.36";s:5:"login";i:1537870032;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '70'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:9:"authordiv";}'),
(21, 1, 'wp_user-settings', 'hidetb=1&editor=html'),
(22, 1, 'wp_user-settings-time', '1536839219'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 1, 'nav_menu_recently_edited', '6'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'erethilclaw', '$P$BmnthvvHDXPBqn4J9U0QJiV//n6YyX0', 'erethilclaw', 'ernest.riccetto@gmail.com', '', '2018-05-21 18:45:22', '', 0, 'erethilclaw');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
