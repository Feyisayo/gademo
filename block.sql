-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2020 at 06:31 AM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apoti_nnn`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `bid` int(11) NOT NULL COMMENT 'Primary Key: Unique block ID.',
  `module` varchar(64) NOT NULL DEFAULT '' COMMENT 'The module from which the block originates; for example, ’user’ for the Who’s Online block, and ’block’ for any custom blocks.',
  `delta` varchar(32) NOT NULL DEFAULT '0' COMMENT 'Unique ID for block within a module.',
  `theme` varchar(64) NOT NULL DEFAULT '' COMMENT 'The theme under which the block settings apply.',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Block enabled status. (1 = enabled, 0 = disabled)',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT 'Block weight within region.',
  `region` varchar(64) NOT NULL DEFAULT '' COMMENT 'Theme region within which the block is set.',
  `custom` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate how users may control visibility of the block. (0 = Users cannot control, 1 = On by default, but can be hidden, 2 = Hidden by default, but can be shown)',
  `visibility` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate how to show blocks on pages. (0 = Show on all pages except listed pages, 1 = Show only on listed pages, 2 = Use custom PHP code to determine visibility)',
  `pages` text NOT NULL COMMENT 'Contents of the "Pages" block; contains either a list of paths on which to include/exclude the block or PHP code, depending on "visibility" setting.',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Custom title for the block. (Empty string will use block default title, <none> will remove the title, text will cause block to use specified title.)',
  `cache` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Binary flag to indicate block cache mode. (-2: Custom cache, -1: Do not cache, 1: Cache per role, 2: Cache per user, 4: Cache per page, 8: Block cache global) See DRUPAL_CACHE_* constants in ../includes/common.inc for more detailed information.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores block settings, such as region and visibility...';

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`bid`, `module`, `delta`, `theme`, `status`, `weight`, `region`, `custom`, `visibility`, `pages`, `title`, `cache`) VALUES
(1, 'views', 'flexslider_slideshow-block', 'baiuca', 1, 0, 'hero', 0, 1, '<front>', '<none>', -1),
(2, 'views', 'quotes_block-block', 'baiuca', 1, 0, 'quotes', 0, 1, '<front>', '<none>', -1),
(3, 'views', 'blocks-block_3', 'baiuca', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(4, 'views', 'menu-block', 'baiuca', 1, 1, 'third_content', 0, 1, '<front>', '<none>', -1),
(5, 'views', 'filter_controls-block', 'baiuca', 1, 0, 'third_content', 0, 1, '<front>', '<none>', -1),
(6, 'views', 'filter_controls-block_1', 'baiuca', 1, 0, 'content', 0, 1, 'menu\nmenu-2-cols\nmenu-3-cols\nmenu-4-cols', '<none>', -1),
(7, 'system', 'main-menu', 'baiuca', 1, 0, 'navigation', 0, 0, 'admin*\r\nnode*', '<none>', -1),
(8, 'system', 'main', 'baiuca', 1, 1, 'content', 0, 0, '', '<none>', -1),
(9, 'blog', 'recent', 'baiuca', 0, 0, '-1', 0, 0, '', '', 1),
(10, 'comment', 'recent', 'baiuca', 0, 0, '-1', 0, 0, '', '', 1),
(11, 'menu', 'features', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(12, 'node', 'syndicate', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(13, 'node', 'recent', 'baiuca', 0, 0, '-1', 0, 0, '', '', 1),
(14, 'search', 'form', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(15, 'shortcut', 'shortcuts', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(16, 'system', 'powered-by', 'baiuca', 0, 10, '-1', 0, 0, '', '', -1),
(17, 'system', 'help', 'baiuca', 1, 5, 'help', 0, 0, '', '', -1),
(18, 'system', 'navigation', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(19, 'system', 'management', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(20, 'system', 'user-menu', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(21, 'user', 'login', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(22, 'user', 'new', 'baiuca', 0, 0, '-1', 0, 0, '', '', 1),
(23, 'user', 'online', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(24, 'views', 'home_slider-block', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(25, 'views', 'categories-block', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(26, 'views', 'categories-block_1', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(27, 'views', 'tag_cloud-block', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(28, 'views', 'tag_cloud-block_1', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(29, 'blog', 'recent', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(30, 'comment', 'recent', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(31, 'menu', 'features', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(32, 'node', 'syndicate', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(33, 'node', 'recent', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(34, 'search', 'form', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', -1),
(35, 'shortcut', 'shortcuts', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(36, 'system', 'main', 'seven', 1, 0, 'content', 0, 0, '', '', -1),
(37, 'system', 'powered-by', 'seven', 0, 10, '-1', 0, 0, '', '', -1),
(38, 'system', 'help', 'seven', 1, 5, 'help', 0, 0, '', '', -1),
(39, 'system', 'navigation', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(40, 'system', 'management', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(41, 'system', 'user-menu', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(42, 'system', 'main-menu', 'seven', 0, 0, '-1', 0, 0, 'admin*\r\nnode*', '<none>', -1),
(43, 'user', 'login', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(44, 'user', 'new', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(45, 'user', 'online', 'seven', 1, 0, 'dashboard_inactive', 0, 0, '', '', -1),
(46, 'views', 'home_slider-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(47, 'views', 'flexslider_slideshow-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(48, 'views', 'quotes_block-block', 'seven', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(49, 'views', 'filter_controls-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(50, 'views', 'filter_controls-block_1', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(51, 'views', 'menu-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(52, 'views', 'categories-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(53, 'views', 'categories-block_1', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(54, 'views', 'tag_cloud-block', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(55, 'views', 'tag_cloud-block_1', 'seven', 0, 0, '-1', 0, 0, '', '', -1),
(56, 'block', '1', 'baiuca', 0, 0, '-1', 1, 1, '<front>', '<none>', -1),
(58, 'block', '3', 'baiuca', 1, 0, 'social_area', 0, 0, '', '<none>', -1),
(60, 'block', '5', 'baiuca', 0, -20, '-1', 1, 1, 'menu\r\nmenu-2-cols\r\nmenu-4-cols', '<none>', -1),
(61, 'block', '6', 'baiuca', 1, -10, 'content', 1, 1, 'blog', '<none>', -1),
(62, 'commerce_cart', 'cart', 'baiuca', 0, 0, '-1', 0, 0, 'checkout*', 'Shopping Cart', -1),
(63, 'block', '1', 'nnn', 0, -15, '-1', 1, 1, '<front>', '<none>', -1),
(65, 'block', '3', 'nnn', 1, -18, 'third_content', 0, 0, '', '<none>', -1),
(67, 'block', '5', 'nnn', 0, -18, '-1', 1, 1, 'menu\r\nmenu-2-cols\r\nmenu-4-cols', '<none>', -1),
(68, 'block', '6', 'nnn', 1, -19, 'content', 1, 1, 'blog', '<none>', -1),
(69, 'blog', 'recent', 'nnn', 0, 0, '-1', 0, 0, '', '', 1),
(70, 'comment', 'recent', 'nnn', 0, 0, '-1', 0, 0, '', '', 1),
(71, 'commerce_cart', 'cart', 'nnn', 1, 0, 'footer', 0, 0, 'checkout*', 'Shopping Cart', -1),
(72, 'menu', 'features', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(73, 'node', 'recent', 'nnn', 0, 0, '-1', 0, 0, '', '', 1),
(74, 'node', 'syndicate', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(75, 'search', 'form', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(76, 'shortcut', 'shortcuts', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(77, 'system', 'help', 'nnn', 1, 5, 'help', 0, 0, '', '', -1),
(78, 'system', 'main', 'nnn', 1, -16, 'content', 0, 0, '', '<none>', -1),
(79, 'system', 'main-menu', 'nnn', 1, 0, 'navigation', 0, 0, 'admin*\r\nnode*', '<none>', -1),
(80, 'system', 'management', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(81, 'system', 'navigation', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(82, 'system', 'powered-by', 'nnn', 0, 10, '-1', 0, 0, '', '', -1),
(83, 'system', 'user-menu', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(84, 'user', 'login', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(85, 'user', 'new', 'nnn', 0, 0, '-1', 0, 0, '', '', 1),
(86, 'user', 'online', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(87, 'views', 'blocks-block_3', 'nnn', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(88, 'views', 'categories-block', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(89, 'views', 'categories-block_1', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(90, 'views', 'filter_controls-block', 'nnn', 1, -19, 'third_content', 0, 1, '<front>', '<none>', -1),
(91, 'views', 'filter_controls-block_1', 'nnn', 1, -16, 'content', 0, 1, 'menu\nmenu-2-cols\nmenu-3-cols\nmenu-4-cols', '<none>', -1),
(92, 'views', 'flexslider_slideshow-block', 'nnn', 1, 0, 'hero', 0, 1, '<front>', '<none>', -1),
(93, 'views', 'home_slider-block', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(94, 'views', 'menu-block', 'nnn', 0, -18, '-1', 0, 1, '<front>', '<none>', -1),
(95, 'views', 'quotes_block-block', 'nnn', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(96, 'views', 'tag_cloud-block', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(97, 'views', 'tag_cloud-block_1', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(104, 'views', 'menu-block_1', 'nnn', 1, -17, 'third_content', 0, 1, '<front>', '', -1),
(105, 'views', 'menu-block_1', 'baiuca', 0, 0, '-1', 0, 0, '<front>', '', -1),
(106, 'views', '49752f912f8ab9a08d50b004eeffd55d', 'baiuca', 0, 0, '-1', 0, 0, '', '', -1),
(107, 'views', '49752f912f8ab9a08d50b004eeffd55d', 'nnn', 0, 0, '-1', 0, 0, '', '', -1),
(108, 'block', '1', 'shiny', 0, 0, '-1', 1, 1, '<front>', '<none>', -1),
(109, 'block', '3', 'shiny', 0, 0, '-1', 0, 0, '', '<none>', -1),
(111, 'block', '5', 'shiny', 0, -19, '-1', 1, 1, 'menu\r\nmenu-2-cols\r\nmenu-4-cols', '<none>', -1),
(112, 'block', '6', 'shiny', 1, -10, 'content', 1, 1, 'blog', '<none>', -1),
(113, 'blog', 'recent', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(114, 'comment', 'recent', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(115, 'commerce_cart', 'cart', 'shiny', 1, 0, 'footer', 0, 0, 'checkout*', 'Shopping Cart', -1),
(119, 'menu', 'features', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(120, 'node', 'recent', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(121, 'node', 'syndicate', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(122, 'search', 'form', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', -1),
(123, 'shortcut', 'shortcuts', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(124, 'system', 'help', 'shiny', 1, 5, 'help', 0, 0, '', '', -1),
(125, 'system', 'main', 'shiny', 1, 1, 'content', 0, 0, '', '<none>', -1),
(126, 'system', 'main-menu', 'shiny', 1, 0, 'content', 0, 0, 'admin*\r\nnode*', '<none>', -1),
(127, 'system', 'management', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(128, 'system', 'navigation', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(129, 'system', 'powered-by', 'shiny', 0, 10, '-1', 0, 0, '', '', -1),
(130, 'system', 'user-menu', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(131, 'user', 'login', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(132, 'user', 'new', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', 1),
(133, 'user', 'online', 'shiny', 1, 0, 'dashboard_inactive', 0, 0, '', '', -1),
(134, 'views', '49752f912f8ab9a08d50b004eeffd55d', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(135, 'views', 'blocks-block_3', 'shiny', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(136, 'views', 'categories-block', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(137, 'views', 'categories-block_1', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(138, 'views', 'filter_controls-block', 'shiny', 1, -19, 'content', 0, 1, '<front>', '<none>', -1),
(139, 'views', 'filter_controls-block_1', 'shiny', 1, 0, 'content', 0, 1, 'menu\nmenu-2-cols\nmenu-3-cols\nmenu-4-cols', '<none>', -1),
(140, 'views', 'flexslider_slideshow-block', 'shiny', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(141, 'views', 'home_slider-block', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(142, 'views', 'menu-block', 'shiny', 0, -18, '-1', 0, 1, '<front>', '<none>', -1),
(143, 'views', 'menu-block_1', 'shiny', 1, -17, 'content', 0, 1, '<front>', '', -1),
(144, 'views', 'quotes_block-block', 'shiny', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(145, 'views', 'tag_cloud-block', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(146, 'views', 'tag_cloud-block_1', 'shiny', 0, 0, '-1', 0, 0, '', '', -1),
(147, 'views', 'meal_filter-block', 'nnn', 1, -18, 'content', 0, 1, 'meals\r\n<front>', '', -1),
(148, 'views', 'meal_filter-block', 'baiuca', 0, 0, '-1', 0, 1, 'meals\r\n<front>', '', -1),
(149, 'views', 'meal_filter-block', 'shiny', 0, 0, '-1', 0, 1, 'meals\r\n<front>', '', -1),
(150, 'views', 'meals-block_1', 'nnn', 0, -15, '-1', 0, 1, '<front>', '', -1),
(151, 'views', 'meals-block_1', 'baiuca', 0, 0, '-1', 0, 0, '<front>', '', -1),
(152, 'views', 'meals-block_1', 'shiny', 0, 0, '-1', 0, 0, '<front>', '', -1),
(153, 'views', 'blog_custom-block_1', 'nnn', 0, 0, '-1', 0, 1, '<front>', '', -1),
(154, 'views', 'blog_custom-block_1', 'baiuca', 0, 0, '-1', 0, 1, '<front>', '', -1),
(155, 'views', 'blog_custom-block_1', 'shiny', 0, 0, '-1', 0, 1, '<front>', '', -1),
(156, 'block', '1', 'bootstrap', 0, -15, '-1', 1, 1, '<front>', '<none>', -1),
(157, 'block', '3', 'bootstrap', 1, 0, 'navigation', 0, 0, '', '<none>', -1),
(158, 'block', '5', 'bootstrap', 0, -18, '-1', 1, 1, 'menu\r\nmenu-2-cols\r\nmenu-4-cols', '<none>', -1),
(159, 'block', '6', 'bootstrap', 1, -17, 'content', 1, 1, 'blog', '<none>', -1),
(160, 'blog', 'recent', 'bootstrap', 0, 0, '-1', 0, 0, '', '', 1),
(161, 'comment', 'recent', 'bootstrap', 0, 0, '-1', 0, 0, '', '', 1),
(162, 'commerce_cart', 'cart', 'bootstrap', 1, 0, 'footer', 0, 0, 'checkout*', 'Shopping Cart', -1),
(166, 'menu', 'features', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(167, 'node', 'recent', 'bootstrap', 0, 0, '-1', 0, 0, '', '', 1),
(168, 'node', 'syndicate', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(169, 'search', 'form', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(170, 'shortcut', 'shortcuts', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(171, 'system', 'help', 'bootstrap', 1, 5, 'help', 0, 0, '', '', -1),
(172, 'system', 'main', 'bootstrap', 1, -12, 'content', 0, 0, '', '<none>', -1),
(173, 'system', 'main-menu', 'bootstrap', 1, 0, 'navigation', 0, 0, 'admin*\r\nnode*', '<none>', -1),
(174, 'system', 'management', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(175, 'system', 'navigation', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(176, 'system', 'powered-by', 'bootstrap', 0, 10, '-1', 0, 0, '', '', -1),
(177, 'system', 'user-menu', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(178, 'user', 'login', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(179, 'user', 'new', 'bootstrap', 0, 0, '-1', 0, 0, '', '', 1),
(180, 'user', 'online', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(181, 'views', '49752f912f8ab9a08d50b004eeffd55d', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(182, 'views', 'blocks-block_3', 'bootstrap', 1, 0, 'content', 0, 1, '<front>', '<none>', -1),
(183, 'views', 'blog_custom-block_1', 'bootstrap', 0, 0, '-1', 0, 1, '<front>', '', -1),
(184, 'views', 'categories-block', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(185, 'views', 'categories-block_1', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(186, 'views', 'filter_controls-block', 'bootstrap', 1, -19, 'navigation', 0, 1, '<front>', '<none>', -1),
(187, 'views', 'filter_controls-block_1', 'bootstrap', 1, -16, 'content', 0, 1, 'menu\nmenu-2-cols\nmenu-3-cols\nmenu-4-cols', '<none>', -1),
(188, 'views', 'flexslider_slideshow-block', 'bootstrap', 1, 0, 'navigation', 0, 1, '<front>', '<none>', -1),
(189, 'views', 'home_slider-block', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(190, 'views', 'meals-block_1', 'bootstrap', 1, -13, 'content', 0, 1, '<front>', '', -1),
(191, 'views', 'meal_filter-block', 'bootstrap', 1, -14, 'content', 0, 1, 'meals\r\n<front>', '', -1),
(192, 'views', 'menu-block', 'bootstrap', 0, -18, '-1', 0, 1, '<front>', '<none>', -1),
(193, 'views', 'menu-block_1', 'bootstrap', 1, -17, 'navigation', 0, 1, '<front>', '', -1),
(194, 'views', 'quotes_block-block', 'bootstrap', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(195, 'views', 'tag_cloud-block', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(196, 'views', 'tag_cloud-block_1', 'bootstrap', 0, 0, '-1', 0, 0, '', '', -1),
(197, 'views', 'meals-block_2', 'nnn', 1, -17, 'content', 0, 1, '<front>', '<none>', -1),
(198, 'views', 'meals-block_2', 'baiuca', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(199, 'views', 'meals-block_2', 'bootstrap', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(200, 'views', 'meals-block_2', 'shiny', 0, 0, '-1', 0, 1, '<front>', '<none>', -1),
(205, 'block', '7', 'baiuca', 0, 0, '-1', 0, 1, 'contact', '', -1),
(206, 'block', '7', 'bootstrap', 0, 0, '-1', 0, 1, 'contact', '', -1),
(207, 'block', '7', 'nnn', 1, 0, 'sidebar_second', 0, 1, 'contact', '', -1),
(208, 'block', '7', 'shiny', 0, 0, '-1', 0, 1, 'contact', '', -1),
(209, 'hybridauth', 'hybridauth', 'baiuca', 0, 0, '-1', 0, 0, '', '', 8),
(210, 'hybridauth', 'hybridauth', 'bootstrap', 0, 0, '-1', 0, 0, '', '', 8),
(211, 'hybridauth', 'hybridauth', 'nnn', 0, 0, '-1', 0, 0, '', '', 8),
(212, 'hybridauth', 'hybridauth', 'shiny', 0, 0, '-1', 0, 0, '', '', 8);
(213, 'feyisayo', 'feyisayo', 'shiny', 0, 0, '-1', 0, 0, '', '', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `tmd` (`theme`,`module`,`delta`),
  ADD KEY `list` (`theme`,`status`,`region`,`weight`,`module`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique block ID.', AUTO_INCREMENT=213;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
