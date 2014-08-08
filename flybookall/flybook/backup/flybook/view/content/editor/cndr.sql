-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 12 月 17 日 16:44
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cndr`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(20) NOT NULL,
  `pswd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`user`, `pswd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `ID` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `datetime` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`ID`, `title`, `content`, `datetime`) VALUES
(5, 'hello world', '<h1 style="text-align: center;">this hello</h1><p><span style="font-size:24px;">ahasdhahjafd</span></p>', '2011-12-17 15:05:57'),
(4, 'hello world', '<h1 style="text-align: center;"><u><span style="color:#ff9966;background-color: rgb(255, 255, 51);">this hello</span></u></h1><p><span style="font-size:24px;">ahasdhahjafd</span></p>', '2011-12-17 16:02:48'),
(1, 'hello world', '<p style="text-align: center;"><strong>kong zi shuo</strong></p><p style="text-align: left;"><strong><img src="upload/day_111217/201112172305255271.jpg" alt="" /><br /></strong></p><p>thsi iaiodaljkdasf</p>', '2011-12-17 16:05:27'),
(3, 'hello world', '<p style="text-align: center;"><strong>yunsdhjhfdaszi shuo</strong></p><p style="text-align: left;"><strong><img src="upload/day_111217/201112172305255271.jpg" alt="" /><br /></strong></p><p>thsi iaiodaljkdasf</p><p><a href="upload/day_100127/201001271345297042.zip">201001271345297042.zip</a><br /></p>', '2011-12-17 16:05:52'),
(6, 'hello world', '<p><span style="font-size:32px;">this is a&nbsp;</span></p><p><span style="font-size:32px;">wo shi ajaflkjfjkdalkhé˜¿è¿ªæ”¾æš‘å‡å•ŠèŒƒå¾·è¨è¨è²çš„æ€æ‰‹å¡æ˜¯å¦å›žå®¶å‘é€åˆ°</span></p>', '2011-12-17 16:17:55'),
(9, 'hello world', 'this', '2011-12-17 16:27:13'),
(9, 'hello world', 'en ha wo shi ge bbaka', '2011-12-17 16:30:15'),
(1, 'hello world', '<p style="text-align: center;"><span style="font-size:18px;color:#ff6600;background-color: rgb(255, 255, 102);">en ha wo shi ge bbaka</span><br /></p><p><span style="font-size:24px;"><span style="font-size:24px; ">en ha wo shi ge bbaka</span><br /></span></p>', '2011-12-17 16:32:36'),
(8, 'hello world', '<p>en ha wo shi ge bbaka</p><p><a href="upload/day_100127/201001271345297042.zip">201001271345297042.zip</a><br /></p>', '2011-12-17 16:33:10'),
(8, 'hello world', '<p>en ha wo shi ge bbaka</p><p><a href="upload/day_100127/201001271345297042.zip">201001271345297042.zip</a><br /></p>', '2011-12-17 16:33:15'),
(2, 'hello world', '<h1 style="text-align: center;"><span style="color:#ff6666;">this hello</span></h1><p><span style="font-size:24px;">ahasdhahjafd</span></p>', '2011-12-17 16:34:27'),
(2, 'hello world', '<h1 style="text-align: center;"><span style="color:#ff6666;">this hello</span></h1><p><span style="font-size:24px;">ahasdhahjafd</span></p>', '2011-12-17 16:34:56'),
(2, 'hello world', '<h1 style="text-align: center;"><span style="color:#ff6666;">this hello</span></h1><p><span style="font-size:24px;">ahasdhahjafd</span></p>', '2011-12-17 16:35:02'),
(1, 'hello world', '<span style="color:#ffcccc;">affa</span>', '2011-12-17 16:35:31'),
(1, 'hello world', '<span style="color:#ffcccc;">affa</span>', '2011-12-17 16:36:15'),
(1, 'hello world', '<span style="color:#ffcccc;">affa</span>', '2011-12-17 16:39:19'),
(1, 'hello world', '<span style="color:#ffcccc;">affa</span>', '2011-12-17 16:39:45');
