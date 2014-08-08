-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 12 月 23 日 07:25
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `flybook`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(50) NOT NULL,
  `pawd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`user`, `pawd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `goodapp`
--

CREATE TABLE IF NOT EXISTS `goodapp` (
  `appid` bigint(20) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) NOT NULL,
  `appacount` bigint(20) NOT NULL,
  `activename` varchar(30) NOT NULL,
  `appdatetime` datetime NOT NULL,
  `usedatatime` datetime NOT NULL,
  `app_person` varchar(30) NOT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `goodapp`
--

INSERT INTO `goodapp` (`appid`, `gname`, `appacount`, `activename`, `appdatetime`, `usedatatime`, `app_person`) VALUES
(1, '书签', 10, '图书漂流', '2011-12-21 02:32:00', '2009-12-05 12:12:04', '桃洋'),
(2, '小刀', 2, '杀人行动', '2011-12-21 02:32:52', '2001-04-04 00:00:00', '风云'),
(3, '条幅', 1, '薪火相传', '2011-12-21 02:33:26', '2001-04-04 00:00:00', '鳌拜'),
(4, '纸杯', 22, '天涯茶品会', '2011-12-21 02:33:58', '2009-12-05 12:12:04', '刘星'),
(5, '毛笔', 1, '中华书法大赛', '2011-12-21 02:34:38', '2001-04-04 00:00:00', '谢希仁'),
(6, '中性笔', 2, '签到', '2011-12-21 02:35:08', '2001-04-04 00:00:00', '刘嬷嬷'),
(7, '中性笔', 30, '开心一绘', '2011-12-21 02:36:15', '2009-12-05 12:12:04', '项超'),
(8, '海飞丝', 2, '洗头', '2011-12-21 02:51:10', '2001-04-04 00:00:00', '天涯');

-- --------------------------------------------------------

--
-- 表的结构 `goodmsg`
--

CREATE TABLE IF NOT EXISTS `goodmsg` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) NOT NULL,
  `agent` varchar(50) NOT NULL,
  `beizhu` varchar(2000) NOT NULL DEFAULT '无备注',
  `acount` bigint(20) NOT NULL,
  `use` bigint(20) NOT NULL DEFAULT '0',
  `price` double NOT NULL,
  `Bdatetime` datetime NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `goodmsg`
--

INSERT INTO `goodmsg` (`gid`, `gname`, `agent`, `beizhu`, `acount`, `use`, `price`, `Bdatetime`) VALUES
(1, '书签', '蓬蓬', '无备注', 20, 0, 2.3, '2011-12-21 01:45:51'),
(2, '小刀', '徐凤珍', '无备注', 10, 0, 0.5, '2011-12-21 01:46:25'),
(3, '条幅', '张琳瑶', '无备注', 2, 0, 23, '2011-12-21 01:46:56'),
(4, '中性笔', '王朗', '无备注', 229, 0, 1.5, '2011-12-21 01:47:39'),
(5, '胶卷', '天昊', '无备注', 50, 0, 2.5, '2011-12-21 01:48:08'),
(6, '纸杯', '向志坚', '无备注', 300, 0, 1.2, '2011-12-21 01:48:45'),
(7, '毛笔', '刘惠存', '无备注', 1, 0, 31, '2011-12-21 01:49:13');

-- --------------------------------------------------------

--
-- 表的结构 `intro`
--

CREATE TABLE IF NOT EXISTS `intro` (
  `IID` int(11) NOT NULL AUTO_INCREMENT,
  `Ititle` varchar(30) NOT NULL,
  `Icontent` varchar(6000) NOT NULL,
  PRIMARY KEY (`IID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `intro`
--

INSERT INTO `intro` (`IID`, `Ititle`, `Icontent`) VALUES
(1, '社团简介', '<div><span style="font-family:宋体;font-size:18px;"> <br /></span></div><div><span style="font-family:宋体; font-size:18px;">“弘扬传统文化，传播戏曲知识”。 2007年11月哈工大天涯书社正式成立，挂靠于人文学院。 书社以在校园里营造图书文化氛围为目的，秉持“弘扬传统文化， 传播戏曲知识”宗旨，致力于在大学这个文化氛围里营造属于图书的天地， 让中国传统文化在青年一代中引起反响，吸引更多的年轻人关注我们、 加入我们，为图书文化的传播做出自己的一份绵薄之力。</span></div><div> <span style="font-family:宋体;font-size:18px;"><br /></span></div><div> <span style="font-family:宋体;font-size:18px;">&nbsp;&nbsp;&nbsp;  我们书社刚成立才两年，团委老师们都很重视。我们的社长获得“哈工大十佳社团 ”的荣誉称号,社团内数名同学获得了“社团积极分子”的殊荣。</span></div> <div><span style="font-family:宋体;font-size:18px;">&nbsp; &nbsp;  &nbsp;</span></div><div><span style="font-family:宋体;font-size:18px;"> &nbsp;&nbsp;&nbsp; 哈工天涯书社是一个既年轻又古老的组织，她虽然成立 刚刚两年时间，但却在学习研究一个有几百年历史的承载了千年文明的古老艺术 。正因为如此，她前进的每一步都很沉重，都需要广大有识之士的支持与帮助 ，需要的组织者付出很大努力。我们相信通过我们书社全体会员的不懈努力， 我们自身的戏曲知识会有很大的提升；通过我们真诚地交流、努力地宣传， 会有更多朋友支持我们大学生社团的发展，我们有信心将书社打 造成一个用阅读丰富校园文化生活的优秀社团。</span></div> '),
(2, '组织机构', '<div><span style="font-family:宋体;font-size:18px;"> <br /></span></div><div><span style="font-family:宋体; font-size:18px;">“弘扬传统文化，传播戏曲知识”。 2007年11月哈工大天涯书社正式成立，挂靠于人文学院。 书社以在校园里营造图书文化氛围为目的，秉持“弘扬传统文化， 传播戏曲知识”宗旨，致力于在大学这个文化氛围里营造属于图书的天地， 让中国传统文化在青年一代中引起反响，吸引更多的年轻人关注我们、 加入我们，为图书文化的传播做出自己的一份绵薄之力。</span></div><div> <span style="font-family:宋体;font-size:18px;"><br /></span></div><div> <span style="font-family:宋体;font-size:18px;">&nbsp;&nbsp;&nbsp;  我们书社刚成立才两年，团委老师们都很重视。我们的社长获得“哈工大十佳社团 ”的荣誉称号,社团内数名同学获得了“社团积极分子”的殊荣。</span></div> <div><span style="font-family:宋体;font-size:18px;">&nbsp; &nbsp;  &nbsp;</span></div><div><span style="font-family:宋体;font-size:18px;"> &nbsp;&nbsp;&nbsp; 哈工天涯书社是一个既年轻又古老的组织，她虽然成立 刚刚两年时间，但却在学习研究一个有几百年历史的承载了千年文明的古老艺术 。正因为如此，她前进的每一步都很沉重，都需要广大有识之士的支持与帮助 ，需要的组织者付出很大努力。我们相信通过我们书社全体会员的不懈努力， 我们自身的戏曲知识会有很大的提升；通过我们真诚地交流、努力地宣传， 会有更多朋友支持我们大学生社团的发展，我们有信心将书社打 造成一个用阅读丰富校园文化生活的优秀社团。</span></div> '),
(3, '历任主席团', '<div style="text-align: center;"><span style="font-family: Simsun; "><span style="font-size:24px;"><br /></span></span></div><div style="text-align: center;"><span style="font-family: Simsun; "><span style="font-size:24px;"><br /></span></span></div><div style="text-align: center;"><span style="font-family: Simsun; "><span style="font-size:24px;">历任主席团</span></span></div><p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Simsun;font-size:16px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 24px; "><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " /></span></p><p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Simsun; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; "><span style="font-size:18px;"><span style="color:#3366ff;">第六届理事会主席团执行主席：</span><span style="background-color: rgb(255, 255, 255); "><span style="color:#ff9900;">鞠洪振</span></span></span></span></p><p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Simsun; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; "><span style="font-size:18px;"><span style="color:#3366ff;">第七届理事会主席团执行主席：</span><span style="color:#ff9900;">范仁德</span></span></span></p><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Simsun; "><span style="font-size:18px;"><span style="color:#3366ff;">2008-2009年度企业执行主席：</span><span style="color:#ff9900;">曹朝阳</span><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " /><span style="color:#3366ff;">2009-2010年度企业执行主席：</span><span style="color:#ff9900;">岳春辰</span><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " /><span style="color:#3366ff;">2010-2011年度企业执行主席：</span><span style="color:#ff9900;">袁仲雪</span><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " /><span style="color:#3366ff;"');

-- --------------------------------------------------------

--
-- 表的结构 `leavemessage`
--

CREATE TABLE IF NOT EXISTS `leavemessage` (
  `LID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `datetime` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `leavemessage`
--

INSERT INTO `leavemessage` (`LID`, `email`, `message`, `datetime`, `name`) VALUES
(1, 'xx@163.com', '我是第一个留言的，哈哈哈！', '2011-12-20 22:07:23', '蓬蓬'),
(2, 'xx@163.com', '我是第二个留言的哈哈哈！', '2011-12-20 22:07:39', '孟烨'),
(3, 'xx@163.com', '我是第三个留言的，呵呵呵呵！', '2011-12-20 22:08:01', '桃洋'),
(13, 'qiufengwu@yahoo.com.', ' 秋风梧到此一游！', '2011-12-23 11:53:28', '秋风梧');

-- --------------------------------------------------------

--
-- 表的结构 `leftsides`
--

CREATE TABLE IF NOT EXISTS `leftsides` (
  `cid` bigint(20) NOT NULL,
  `leftcontent` varchar(200) NOT NULL,
  `lefttitle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `leftsides`
--

INSERT INTO `leftsides` (`cid`, `leftcontent`, `lefttitle`) VALUES
(3, '办公地址：HIT 综合楼508-天涯办公室<br>   邮政编码：150001<br>移动电话：15087021198（李MM） <br>电子邮箱：ydshelian@163.com<br>说明：办公室每日19：30－21：30值班', '联系我们'),
(1, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;哈尔滨工业大学天涯书社新浪官方微博已经开通：http://weibo.com/hitty ；天涯官方人人账号：哈工天涯  。 欢迎同学们多多关注，提出你们的宝贵建议和意见，感谢同学们的支持！  ', '社团公告'),
(2, '<center>办公室：<br>图书部：<br>文体部：<br>活动部：</center>', '部门组织');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `sname` varchar(20) NOT NULL,
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` bigint(20) NOT NULL,
  `spro` varchar(20) NOT NULL,
  `addr` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `im` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `especial` varchar(50) NOT NULL,
  `homeAddr` varchar(20) NOT NULL,
  `part` varchar(10) NOT NULL,
  `bri` datetime NOT NULL,
  `selfIntro` varchar(200) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`sname`, `mid`, `sid`, `spro`, `addr`, `tel`, `email`, `im`, `especial`, `homeAddr`, `part`, `bri`, `selfIntro`) VALUES
('蓬蓬', 1, 1090320219, '信息安全', 'A026068', '18003615012', '123456', 'xx@163.com', 'xx@163.com', '  ', '图书部', '2000-03-06 00:00:00', '开朗，阳刚，自信是我成功的保障！');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT '社团活动',
  `ncontent` mediumtext NOT NULL,
  `ndatetime` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`nid`, `title`, `category`, `ncontent`, `ndatetime`, `author`) VALUES
(1, '这是第一篇新闻：纪念一下！', '社团活动', '这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下！这是第一篇新闻：纪念一下', '2011-12-20 21:38:25', ' 纪念一下！'),
(2, '第二条新闻！', '社团活动', '<p>第二条新闻！</p><p>第二条新闻！第二条新闻！<br /></p><p>第二条新闻！第二条新闻！第二条新闻！<br /></p><p>第二条新闻！第二条新闻！第二条新闻！第二条新闻！<br /></p><p>第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！<br /></p><p>第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！<br /></p><p>第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！第二条新闻！<br /></p><p><br /></p>', '2011-12-20 21:39:04', '第二条新闻！'),
(11, '电气学院举办博士生学术论文撰写讲座 ', '社团活动', '<p><span style="font-size:18px;"><span style="font-family:Times New Roman;">&nbsp; &nbsp; &nbsp; &nbsp; 2011</span>年<span style="font-family:Times New Roman;">12</span>月<span style="font-family:Times New Roman;">21</span>日下午，电气学院在邵逸夫楼<span style="font-family:Times New Roman;">604</span>会议室举办博士生学术论文撰写讲座，电气学院<span style="font-family:Times New Roman;">2010</span>、<span style="font-family:Times New Roman;">2011</span>级博士生共记八十余人参加了讲座，电气学院自动化测试与控制研究所青年教师李君宝副教授、电气学院<span style="font-family:Times New Roman;">2007</span>级博士生王懿杰作为讲座嘉宾为与会博士生奉献了一场精彩的讲座。</span></p><p><span style="font-size:18px;">&nbsp; &nbsp; &nbsp; &nbsp;李君宝副教授从博士生毕业论文的构思说开去，从而在博士生论文的选题，博士生学术文章发表的布局，博士生学术文章撰写的选题、结构、撰写、投稿、修改等方面介绍了自己的经验，给与会博士生提供了非常具有实用价值的参考信息。李君宝副教授以实际事例作为阐述问题的载体，产生了良好的效果。王懿杰同学从工业应用研究背景出发，着重阐述了主要以工业应用为主要研究内容的博士生如何能够撰写高水平文章，他以自身经历为主线，展示了如何在科研项目工作很饱满的情况下撰写、发表高水平学术文章，为参加讲座的博士生在学术文章撰写方面提供了很好的建议。</span></p><p><span style="font-size:18px;">&nbsp;&nbsp;&nbsp; 在两位嘉宾介绍完自己的经验后，还对参加讲座博士生提出的问题给予了详细的解答。会后，参加活动的一位同学表示：这就是他们希望参加的活动，希望以后能够有更多的机会参加类似的活动。</span></p>', '2011-12-23 08:42:59', '电气学院举办博士生学术论文撰写讲座 '),
(12, 'a', '校园活动', 'a ', '2011-12-23 10:02:40', 'a'),
(13, '极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制', '校园活动', '<div id="title" class="articleTitle" style="text-align: center; font-size: 16px; font-weight: bold; margin-top: 5px; margin-right: 5px; margin-bottom: 5px; margin-left: 5px; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制</div><div id="date" style="text-align: center; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">时间：2011-12-22 12:24:44 &nbsp; 阅读：&nbsp;185 &nbsp; 标签：&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">计算机学院</span></a>&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">极峰论坛</span></a></div><div id="text" class="articletext" style="text-align: left; margin-top: 10px; margin-bottom: 10px; font-size: 14.8px; line-height: 28px; color: rgb(51, 51, 51); font-family: Verdana; "><div style="line-height: 22px; "><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011年8月最高人民法院召开新闻发布会，通报适用《最高人民法院关于适用&lt;中华人民共和国婚姻法&gt;若干问题的解释（三）》有关情况。即婚姻法解释三出台，并且将于2011年8月13日起执行。随着婚姻法解释三的出台，对我们未来的婚姻生活会产生什么样的影响，是否会产生蝴蝶效应！如果你还不知道或者不了解婚姻法解释三，如果对婚姻法解释三有很多疑问或者想发表自己的见解，敬请关注极峰论坛第46期讲座———从《婚姻法解释三》看夫妻财产制。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本期活动我们有幸邀请到法学院团委副书记（原法学院外联部部长）王婧，她将从婚姻法解释三变动之处及争论各方的观点深入剖析这一解释，揭开婚姻法的神秘面纱。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">本期主讲人：王婧（法学院团委副书记，原法学院外联部长）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座时间：12月22日（周四） 晚 6点30分</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座地点：新技术楼618</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">感兴趣的同学请mail至 hitjifengluntan@163.com或联系15246776192（徐同学）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们会尽快为您送去请柬（请写明楼号寝室）。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们期待你的参与。&nbsp;&nbsp;</span></div><div style="text-align: right; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb', '2011-12-23 10:02:57', '极峰论坛第四十六期:从《婚姻法解释三》看'),
(14, '极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制', '校园活动', '<div id="title" class="articleTitle" style="text-align: center; font-size: 16px; font-weight: bold; margin-top: 5px; margin-right: 5px; margin-bottom: 5px; margin-left: 5px; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制</div><div id="date" style="text-align: center; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">时间：2011-12-22 12:24:44 &nbsp; 阅读：&nbsp;185 &nbsp; 标签：&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">计算机学院</span></a>&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">极峰论坛</span></a></div><div id="text" class="articletext" style="text-align: left; margin-top: 10px; margin-bottom: 10px; font-size: 14.8px; line-height: 28px; color: rgb(51, 51, 51); font-family: Verdana; "><div style="line-height: 22px; "><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011年8月最高人民法院召开新闻发布会，通报适用《最高人民法院关于适用&lt;中华人民共和国婚姻法&gt;若干问题的解释（三）》有关情况。即婚姻法解释三出台，并且将于2011年8月13日起执行。随着婚姻法解释三的出台，对我们未来的婚姻生活会产生什么样的影响，是否会产生蝴蝶效应！如果你还不知道或者不了解婚姻法解释三，如果对婚姻法解释三有很多疑问或者想发表自己的见解，敬请关注极峰论坛第46期讲座———从《婚姻法解释三》看夫妻财产制。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本期活动我们有幸邀请到法学院团委副书记（原法学院外联部部长）王婧，她将从婚姻法解释三变动之处及争论各方的观点深入剖析这一解释，揭开婚姻法的神秘面纱。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">本期主讲人：王婧（法学院团委副书记，原法学院外联部长）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座时间：12月22日（周四） 晚 6点30分</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座地点：新技术楼618</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">感兴趣的同学请mail至 hitjifengluntan@163.com或联系15246776192（徐同学）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们会尽快为您送去请柬（请写明楼号寝室）。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们期待你的参与。&nbsp;&nbsp;</span></div><div style="text-align: right; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb', '2011-12-23 10:03:13', '极峰论坛第四十六期:从《婚姻法解释三》看'),
(15, '极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制', '校园活动', '<div id="title" class="articleTitle" style="text-align: center; font-size: 16px; font-weight: bold; margin-top: 5px; margin-right: 5px; margin-bottom: 5px; margin-left: 5px; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">极峰论坛第四十六期:从《婚姻法解释三》看夫妻财产制</div><div id="date" style="text-align: center; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">时间：2011-12-22 12:24:44 &nbsp; 阅读：&nbsp;185 &nbsp; 标签：&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">计算机学院</span></a>&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-22/6644422121RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">极峰论坛</span></a></div><div id="text" class="articletext" style="text-align: left; margin-top: 10px; margin-bottom: 10px; font-size: 14.8px; line-height: 28px; color: rgb(51, 51, 51); font-family: Verdana; "><div style="line-height: 22px; "><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011年8月最高人民法院召开新闻发布会，通报适用《最高人民法院关于适用&lt;中华人民共和国婚姻法&gt;若干问题的解释（三）》有关情况。即婚姻法解释三出台，并且将于2011年8月13日起执行。随着婚姻法解释三的出台，对我们未来的婚姻生活会产生什么样的影响，是否会产生蝴蝶效应！如果你还不知道或者不了解婚姻法解释三，如果对婚姻法解释三有很多疑问或者想发表自己的见解，敬请关注极峰论坛第46期讲座———从《婚姻法解释三》看夫妻财产制。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本期活动我们有幸邀请到法学院团委副书记（原法学院外联部部长）王婧，她将从婚姻法解释三变动之处及争论各方的观点深入剖析这一解释，揭开婚姻法的神秘面纱。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">本期主讲人：王婧（法学院团委副书记，原法学院外联部长）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座时间：12月22日（周四） 晚 6点30分</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座地点：新技术楼618</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">感兴趣的同学请mail至 hitjifengluntan@163.com或联系15246776192（徐同学）</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们会尽快为您送去请柬（请写明楼号寝室）。</span></div><div><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">我们期待你的参与。&nbsp;&nbsp;</span></div><div style="text-align: right; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb', '2011-12-23 10:03:17', '极峰论坛第四十六期:从《婚姻法解释三》看'),
(16, '极峰论坛第四十五期——自由与市场经济', '校园活动', '<div id="title" class="articleTitle" style="text-align: center; font-size: 16px; font-weight: bold; margin-top: 5px; margin-right: 5px; margin-bottom: 5px; margin-left: 5px; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">极峰论坛第四十五期——自由与市场经济</div><div id="date" style="text-align: center; color: rgb(51, 51, 51); font-family: Verdana; line-height: 21px; ">时间：2011-12-15 20:15:22 &nbsp; 阅读：&nbsp;202 &nbsp; 标签：&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-15/1122510221RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">计算机学院</span></a>&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-15/1122510221RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">团委</span></a>&nbsp;<a href="http://today.hit.edu.cn/news/2011/12-15/1122510221RL0.htm#" style="color: rgb(51, 51, 51); text-decoration: none; "><span style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); ">极峰论坛</span></a></div><div id="text" class="articletext" style="text-align: left; margin-top: 10px; margin-bottom: 10px; font-size: 14.8px; line-height: 28px; color: rgb(51, 51, 51); font-family: Verdana; "><div align="left" style="line-height: 22px; text-indent: 24pt; "><span style="line-height: 24px; color: black; font-size: 12pt; ">十一届三中全会开始改革开放、十四大确定社会主义市场经济体制改革目标以及十四届三中全会作出相关决定以来，我国经济体制改革在理论和实践上取得重大进展。市场经济调节了我国的经济体制，但它本身也存在着缺陷。我国为什么要实行市场经济，市场经济的发展策略到底是什么，市场经济的利弊对我国社会发展有什么影响。纵观国际风云，审查国内外经济战略，用事实说话，以历史为鉴，挖掘我国市场经济的战略方针</span><span style="line-height: 24px; color: black; font-size: 12pt; ">。</span><span style="line-height: 24px; font-size: 12pt; ">敬请光临极峰论坛，我们将给您满意的答案。</span></div><div align="left" style="line-height: 22px; text-indent: 24pt; "><span style="line-height: 24px; font-size: 12pt; ">本期主讲嘉宾将从多年关注经济方面的经历讲起，为我们讲解市场经济这一战略体制，为我们带来他眼中的社会主义市场经济。</span></div><div align="left" style="line-height: 22px; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">本期主讲人：张剑，计算机学院2009级本科生</span></div><div align="left" style="line-height: 22px; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座时间：12月16日（星期五）18点30分。</span></div><div align="left" style="line-height: 22px; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">讲座地点：一区新技术楼618</span></div><div align="left" style="line-height: 22px; "><span style="line-height: 24px; font-size: 12pt; ">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="line-height: 24px; font-size: 12pt; ">请感兴趣的同学将自己的姓名、公寓、寝室号等信息mail至jifengluntan2010@yeah.net或短信至15246776192（徐同学），我们将为您送去请帖。还在等什么呢！</span></div><div align="right" style="text-align: right; li', '2011-12-23 10:04:21', '极峰论坛第四十五期——自由与市场经济'),
(17, '计算之歌·2011文化晚会——哈尔滨工业大学计算机学院、软件', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br />计算机学院办公室郭卫华老师 ', '2011-12-23 10:18:52', '计算之歌·2011文化晚会——哈尔滨工业'),
(18, '计算之歌·2011文化晚会 ——哈尔滨工业大学计算机学院、软', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br /><p>计算机学院办公室郭卫华老师</p><p><img src="upload/day_111223/201112231019309284.jpg" alt="" /><br /></p>', '2011-12-23 10:19:32', '计算之歌·2011文化晚会 ——哈尔滨工'),
(19, '计算之歌·2011文化晚会 ——哈尔滨工业大学计算机学院、软', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br /><p>计算机学院办公室郭卫华老师</p><p><img src="upload/day_111223/201112231019309284.jpg" alt="" /><br /></p>', '2011-12-23 10:19:42', '计算之歌·2011文化晚会 ——哈尔滨工'),
(20, '计算之歌·2011文化晚会 ——哈尔滨工业大学计算机学院、软', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br /><p>计算机学院办公室郭卫华老师</p><p><img src="upload/day_111223/201112231019309284.jpg" alt="" /><br /></p>', '2011-12-23 10:19:44', '计算之歌·2011文化晚会 ——哈尔滨工'),
(21, '计算之歌·2011文化晚会 ——哈尔滨工业大学计算机学院、软', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br /><p>计算机学院办公室郭卫华老师</p><p><img src="upload/day_111223/201112231019309284.jpg" alt="" /><br /></p>', '2011-12-23 10:19:46', '计算之歌·2011文化晚会 ——哈尔滨工'),
(22, '计算之歌·2011文化晚会 ——哈尔滨工业大学计算机学院、软', '校园活动', '计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br /><br /><br />大合唱《计算之歌》《软件理想教育之歌》<br /><br /><br />表演者：计算机学院、软件学院学生合唱团<br /><br /><br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br /><br /><br />院长致词<br /><br /><br />【第一篇章 &nbsp;起航，梦想开始的地方】<br /><br /><br />1．散文诗朗诵《岁月 丰碑 梦想》<br /><br /><br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br /><br /><br />系统结构学科带头人、博士生导师杨孝宗教授<br /><br /><br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />计算机学院副院长、博士生导师赵铁军教授<br /><br /><br />计算机学院本科生尚国侃、赵畅<br /><br /><br />2．古筝合奏《战台风》<br /><br /><br />表演者：校艺术团民乐队<br /><br /><br />3．时装表演《幻彩霓裳》<br /><br /><br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br /><br /><br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br /><br /><br /><p>计算机学院办公室郭卫华老师</p><p><img src="upload/day_111223/201112231019309284.jpg" alt="" /><br /></p>', '2011-12-23 10:19:48', '计算之歌·2011文化晚会 ——哈尔滨工'),
(24, '计算之歌·2011文化晚会', '校园活动', '<p class="p0" style="text-align: left;text-indent: 24pt; line-height: 26px; margin-top: 0pt; margin-bottom: 0pt; "><span style="font-family:隶书;"><span style="letter-spacing: 2px; "><span style="font-size:16px;">计算之歌·2011文化晚会<br />——哈尔滨工业大学计算机学院、软件学院<br />大合唱《计算之歌》《软件理想教育之歌》<br />表演者：计算机学院、软件学院学生合唱团<br />指 &nbsp;挥：计算机学院党委秘书、研究生协理员张贺老师<br />院长致词<br />【第一篇章 &nbsp;起航，梦想开始的地方】<br />1．散文诗朗诵《岁月 丰碑 梦想》<br />表演者：全国模范教师、国家级教学名师唐朔飞教授<br />系统结构学科带头人、博士生导师杨孝宗教授<br />智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br />计算机学院副院长、博士生导师赵铁军教授<br />计算机学院本科生尚国侃、赵畅<br />2．古筝合奏《战台风》<br />表演者：校艺术团民乐队<br />3．时装表演《幻彩霓裳》<br />表演者：软件学院办公室尹胜君、张开越、金烁、焦燕、卢春梅、靳超、李梓健老师<br />软件学院研究生邵森、高健、张龑、JACQUES ANTHONY VINCENT (法国籍)&nbsp;<br />计算机学院办公室郭卫华老师<br />4．舞蹈《Nobody》<br />表演者：智能接口与人机交互研究中心、博士生导师姚鸿勋教授<br /><br /><br />&nbsp; &nbsp; &nbsp; &nbsp; 社会计算与信息检索研究中心、博士生导师秦兵教授<br />计算机学院院长助理、办公室主任贾岩老师<br />计算机学院语言基础教研室张卫老师<br />计算机学院办公室文齐老师<br />【第二篇章 &nbsp;奋斗，汗水凝结的征程】<br />5．歌曲《乡恋》<br />表演者：计算机学院信息对抗技术研究所李琼老师<br />6．小品《程序猿》<br />表演者：计算机学院本科生柳佳兴、刘金宝、郭英东<br />7．机器人表演《Dancing Robot》<br />表演者：多智能体机器人研究中心<br />8．三句半《谁不说咱学院好》<br /><br />表演者：海量数据计算研究中心王宏志老师<br />计算机软件实验中心娄久老师<br />计算机学院本科生路超、赵中<br />9．歌曲联唱《青春旋律》<br />表演者：计算机学院本科生沈奕聪、何旻骏、万邓仁、隋嘉楠、叶晨、孙超、刘长鑫<br />&nbsp; &nbsp;&nbsp;</span><br /></span></span></p> ', '2011-12-23 10:43:59', '计算之歌·2011文化晚会');

-- --------------------------------------------------------

--
-- 表的结构 `planning`
--

CREATE TABLE IF NOT EXISTS `planning` (
  `PID` bigint(20) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `planSubject` varchar(200) NOT NULL,
  `pdatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `planning`
--

INSERT INTO `planning` (`PID`, `Pname`, `sname`, `planSubject`, `pdatetime`) VALUES
(123456, '天涯论坛', 'merry', '士大夫反复反复反复发生额发大水啊地方', '2011-12-22 10:50:11'),
(123456, '天涯论坛', 'merry', '阿萨法大是大非佛挡杀佛大赛', '2011-12-22 10:50:21');

-- --------------------------------------------------------

--
-- 表的结构 `takeactive`
--

CREATE TABLE IF NOT EXISTS `takeactive` (
  `tkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `actname` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `actime` datetime NOT NULL,
  `actaddr` varchar(20) NOT NULL,
  `actleader` varchar(20) NOT NULL,
  `actflow` varchar(300) NOT NULL,
  `actips` double NOT NULL,
  `actgoods` varchar(20) NOT NULL,
  `actobject` varchar(20) NOT NULL,
  PRIMARY KEY (`tkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `takeactive`
--

