-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-25 03:13:22
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kong`
--

-- --------------------------------------------------------

--
-- 表的结构 `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `search`
--

INSERT INTO `search` (`id`, `cname`) VALUES
(1, 'a'),
(2, 'ab'),
(3, 'abc'),
(4, 'abcd'),
(5, 'abcde'),
(6, 'abcdef');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(130) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `regTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `pwd`, `regTime`) VALUES
(1, 'tom', '123456', '2016-10-26 15:06:06'),
(2, 'peter', '123456', '2016-10-26 15:06:06'),
(3, 'mary', '123456', '2016-10-26 15:06:06'),
(4, 'zhang1', '122', '2016-10-26 16:35:35'),
(5, 'zhang2', '122', '2016-10-26 16:35:35'),
(6, '张三', '122', '2016-10-26 16:35:35'),
(7, 'zhang4', '122', '2016-10-26 16:35:35'),
(8, 'zhang5', '122', '2016-10-26 16:35:35'),
(9, 'zhang6', '122', '2016-10-26 16:35:35'),
(10, 'zhang7', '122', '2016-10-26 16:35:35'),
(11, 'lee four', '233333', '0000-00-00 00:00:00'),
(12, 'mary', '123456', '2016-10-27 14:02:22'),
(13, 'mary2', '4444', '2016-10-27 14:13:58'),
(14, 'mary', '123456', '2016-10-27 14:21:17'),
(15, 'mary654', '123456', '2016-10-27 14:25:50'),
(16, 'grace', '123456', '2016-10-27 14:32:11'),
(17, 'graceLee', '123456', '2016-10-27 15:19:21'),
(18, 'wang can', '123456', '2016-10-27 15:24:01'),
(19, 'abc', '123456', '2016-10-27 15:27:11'),
(20, '33333', '4444', '2016-10-27 15:29:27'),
(21, '666', '66', '2016-10-27 15:30:17'),
(22, '666', '333', '2016-10-27 16:09:21'),
(23, 'kong', '123456', '2016-10-27 16:18:02'),
(24, '4444', '444', '2016-10-27 16:19:03'),
(25, '4444', '444', '2016-10-27 16:19:12'),
(26, '3333', '33', '2016-10-27 16:20:44'),
(27, 'aaa', 'aaa', '2016-10-27 16:21:41'),
(28, 'aaa333', '333', '2016-10-27 16:21:56'),
(30, 'tom5555', '11111', '2016-10-27 17:23:20'),
(31, 'sdfgsdfg', '123456', '2016-10-27 17:26:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
