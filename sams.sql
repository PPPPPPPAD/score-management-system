-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-06-26 10:46:45
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sams`
--

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL COMMENT '课程编号',
  `course_name` varchar(20) NOT NULL COMMENT '课程名',
  `course_credit` int(11) NOT NULL COMMENT '学分',
  `course_hours` int(11) NOT NULL COMMENT '学时',
  `course_teacher` varchar(30) NOT NULL COMMENT '任课教师',
  `coursedate` date NOT NULL COMMENT '开课时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_credit`, `course_hours`, `course_teacher`, `coursedate`) VALUES
(1, '网络安全', 3, 60, '刘德华', '2022-11-01'),
(2, 'python可视化', 5, 80, '张学友', '2029-11-01'),
(3, '网站设计与开发', 4, 80, '胡歌', '2023-11-01'),
(4, '代码协议分析', 2, 60, '老六', '2026-11-01'),
(5, '心理学', 4, 30, '公孙策', '2026-11-01'),
(6, '英语', 4, 60, 'teacher', '2026-11-01'),
(7, '1', 1, 1, '1', '2030-09-19');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_info` varchar(50) NOT NULL COMMENT '角色信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_info`) VALUES
(0, '学生', '学生查看成绩'),
(1, '教师', '教师操作'),
(2, '管理员', '管理员操作');

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL COMMENT '成绩编号',
  `stu_num` varchar(20) NOT NULL COMMENT '学号',
  `stu_name` varchar(30) NOT NULL COMMENT '姓名',
  `stu_class` varchar(20) NOT NULL COMMENT '班级',
  `course_name` varchar(20) NOT NULL COMMENT '科目',
  `score_grade` double(11,2) NOT NULL COMMENT '成绩',
  `major` varchar(20) NOT NULL COMMENT '专业'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `score`
--

INSERT INTO `score` (`score_id`, `stu_num`, `stu_name`, `stu_class`, `course_name`, `score_grade`, `major`) VALUES
(2, '1', '小花', '信管2021', 'Python', 65.00, '信管'),
(3, '3', '小兰', '信管2023', '数据处理', 85.00, '大数据'),
(4, '3', '小米', '信管2022', '网站设计与开发', 90.00, '科学技术'),
(5, '2', '小华', '信管2023', '统计学', 69.00, '计算机应用'),
(6, '4', '小镇', '信管2024', '大学英语', 95.00, '大数据'),
(7, '5', '周瑜', '信管2024', '网站设计与开发', 89.00, '计算机科学');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL COMMENT '编号',
  `stu_num` varchar(20) NOT NULL COMMENT '账号',
  `stu_name` varchar(30) NOT NULL COMMENT '姓名',
  `stu_sex` varchar(10) NOT NULL COMMENT '性别',
  `stu_age` int(11) NOT NULL COMMENT '年龄',
  `stu_class` varchar(20) NOT NULL COMMENT '班级',
  `major` varchar(20) NOT NULL COMMENT '专业',
  `department` varchar(20) NOT NULL COMMENT '院系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`stu_id`, `stu_num`, `stu_name`, `stu_sex`, `stu_age`, `stu_class`, `major`, `department`) VALUES
(1, '1', '张学友', '男', 21, '信管21', '计算机科学', '信息'),
(2, '2', '刘德华', '男', 20, '信管22', '计算机', '信息'),
(3, '3', '李逍遥', '男', 20, '信管21', '计算机科学', '信息'),
(4, '4', '菜呀', '男', 21, '信管22', '计算机网络', '信息'),
(5, '5', '公孙策', '女', 19, '信管22', '计算机网络', '信息'),
(34, '', '', '男', 1, '1', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL COMMENT '编号',
  `tea_num` varchar(20) NOT NULL COMMENT '工号',
  `tea_name` varchar(30) NOT NULL COMMENT '姓名',
  `tea_sex` varchar(10) NOT NULL COMMENT '性别',
  `tea_age` int(11) NOT NULL COMMENT '年龄',
  `tea_course` varchar(20) NOT NULL COMMENT '所任课程',
  `major` varchar(20) NOT NULL COMMENT '专业',
  `department` varchar(20) NOT NULL COMMENT '院系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`tea_id`, `tea_num`, `tea_name`, `tea_sex`, `tea_age`, `tea_course`, `major`, `department`) VALUES
(1, '11', '胡静', '女', 30, '高等数学', '数学师范', '信息学院'),
(2, '12', '马超', '男', 43, 'python数据与处理', '科学技术', '工程信息'),
(3, '13', '彭于晏', '男', 30, '网站设计与开发', '计算机网络', '信息学院'),
(4, '14', '胡歌', '男', 29, '数据处理', '工程信息', '信息学院'),
(5, '15', '老六', '男', 40, '统计学', '人工智能', '信息'),
(6, '16', '诸葛亮', '男', 35, '大学英语', '计算机应用', '信息');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `user_num` varchar(20) NOT NULL COMMENT '用户账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `phone` varchar(20) NOT NULL COMMENT '用户电话',
  `role_id` int(11) NOT NULL COMMENT '角色编号（外键）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_num`, `user_name`, `password`, `phone`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin', '123456789', 2),
(2, 'student', 'student', '123', '123456789', 0),
(3, 'teacher', 'teacher', '123', '123456789', 1),
(42, '123456', '张先生', '123456', '111', 0),
(43, '123456', '张先生', '123456', '111', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`) USING BTREE;

--
-- 表的索引 `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`) USING BTREE;

--
-- 表的索引 `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`) USING BTREE;

--
-- 表的索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`) USING BTREE;

--
-- 表的索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tea_id`) USING BTREE;

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩编号', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tea_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号', AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
