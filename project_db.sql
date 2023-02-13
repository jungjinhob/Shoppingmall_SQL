-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- project 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `project`;
CREATE DATABASE IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;

-- 테이블 project.cart 구조 내보내기
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `num` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(80) NOT NULL,
  `price` int NOT NULL,
  `count` int NOT NULL,
  `image` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.cart:~2 rows (대략적) 내보내기
DELETE FROM `cart`;
INSERT INTO `cart` (`num`, `product_name`, `price`, `count`, `image`, `id`) VALUES
	(78, '퍼퓸 골드', 50000, 4, 'PDP_perfume_thaw_50ml_1.jpg', 'aaaaaa'),
	(84, '퍼퓸 블랙', 48000, 1, 'manperfume2_1.jpg', 'admin');

-- 테이블 project.cartpay 구조 내보내기
DROP TABLE IF EXISTS `cartpay`;
CREATE TABLE IF NOT EXISTS `cartpay` (
  `order_number` int NOT NULL AUTO_INCREMENT,
  `order_img` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `count` int NOT NULL,
  `price` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.cartpay:~40 rows (대략적) 내보내기
DELETE FROM `cartpay`;
INSERT INTO `cartpay` (`order_number`, `order_img`, `product_name`, `count`, `price`, `date`, `id`, `address`) VALUES
	(1, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(2, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(3, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(4, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(5, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(6, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(7, 'womanperfume3_1.png', '퍼퓸 퍼플', 2, 48000, '2023-02-06', 'test', 'sadasd'),
	(8, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-06', 'test', 'sadasd'),
	(9, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(10, 'womanperfume3_1.png', '퍼퓸 퍼플', 2, 48000, '2023-02-06', 'test', 'sadasd'),
	(11, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-06', 'test', 'sadasd'),
	(12, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(13, 'womanperfume3_1.png', '퍼퓸 퍼플', 2, 48000, '2023-02-06', 'test', 'sadasd'),
	(14, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-06', 'test', 'sadasd'),
	(15, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(16, 'womanperfume3_1.png', '퍼퓸 퍼플', 2, 48000, '2023-02-06', 'test', 'sadasd'),
	(17, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-06', 'test', 'sadasd'),
	(18, 'womanperfume2_1.jpg', '퍼퓸 로얄', 1, 88000, '2023-02-06', 'test', 'sadasd'),
	(19, 'womanperfume3_1.png', '퍼퓸 퍼플', 2, 48000, '2023-02-06', 'test', 'sadasd'),
	(20, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-06', 'test', 'sadasd'),
	(21, 'womanperfume1_1.jpg', '퍼퓸 아쿠아', 0, 50000, '2023-02-07', 'test2', 'qwewqe'),
	(22, 'diffuser3_1.jpg', '디퓨저 3', 1, 30000, '2023-02-07', 'test2', 'qwewqe'),
	(23, 'womanperfume1_1.jpg', '퍼퓸 아쿠아', 0, 50000, '2023-02-07', 'test2', 'qwewqe'),
	(24, 'diffuser3_1.jpg', '디퓨저 3', 1, 30000, '2023-02-07', 'test2', 'qwewqe'),
	(25, 'womanperfume1_1.jpg', '퍼퓸 아쿠아', 3, 50000, '2023-02-07', 'test2', 'qwewqe'),
	(26, 'diffuser3_1.jpg', '디퓨저 3', 1, 30000, '2023-02-07', 'test2', 'qwewqe'),
	(27, 'womanperfume1_1.jpg', '퍼퓸 아쿠아', 3, 50000, '2023-02-07', 'test2', 'qwewqe'),
	(28, 'diffuser3_1.jpg', '디퓨저 3', 1, 30000, '2023-02-07', 'test2', 'qwewqe'),
	(29, 'manperfume2_1.jpg', '퍼퓸 블랙', 5, 48000, '2023-02-07', 'test', 'sadasd'),
	(30, 'diffuser3_1.jpg', '디퓨저 3', 5, 30000, '2023-02-07', 'test', 'sadasd'),
	(31, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-07', 'test', 'sadasd'),
	(32, 'manperfume3_1.jpg', '퍼퓸 화이트', 2, 65000, '2023-02-07', 'test', 'sadasd'),
	(33, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-07', 'test', 'sadasd'),
	(34, 'diffuser2_1.jpg', '디퓨저 2', 2, 46000, '2023-02-07', 'test', 'sadasd'),
	(35, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 3, 50000, '2023-02-08', 'admin', 'qfq'),
	(36, 'manperfume2_1.jpg', '퍼퓸 블랙', 1, 48000, '2023-02-08', 'admin', 'qfq'),
	(37, 'manperfume2_1.jpg', '퍼퓸 블랙', 1, 48000, '2023-02-08', 'test2', 'qwewqe'),
	(38, 'PDP_perfume_thaw_50ml_1.jpg', '퍼퓸 골드', 4, 50000, '2023-02-08', 'test3', 'asdsad'),
	(39, 'diffuser3_1.jpg', '디퓨저 3', 3, 30000, '2023-02-08', 'test3', 'asdsad'),
	(40, 'manperfume3_1.jpg', '퍼퓸 화이트', 4, 65000, '2023-02-08', 'test3', 'asdsad');

-- 테이블 project.category 구조 내보내기
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `product_name` varchar(100) NOT NULL,
  `price` varchar(45) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.category:~9 rows (대략적) 내보내기
DELETE FROM `category`;
INSERT INTO `category` (`product_name`, `price`, `image`, `category`) VALUES
	('디퓨저 1', '36,000원', 'diffuser1_1.jpg', 'C'),
	('디퓨저 2', '46,000원', 'diffuser2_1.jpg', 'C'),
	('디퓨저 3', '30,000원', 'diffuser3_1.jpg', 'C'),
	('퍼퓸 골드', '50,000원', 'PDP_perfume_thaw_50ml_1.jpg', 'A'),
	('퍼퓸 로얄', '50,000원', 'womanperfume2_1.jpg', 'B'),
	('퍼퓸 블랙', '48,000원', 'manperfume2_1.jpg', 'A'),
	('퍼퓸 아쿠아', '88,000원', 'womanperfume1_1.jpg', 'B'),
	('퍼퓸 퍼플', '48,000원', 'womanperfume3_1.png', 'B'),
	('퍼퓸 화이트', '65,000원', 'manperfume3_1.jpg', 'A');

-- 테이블 project.detailpage 구조 내보내기
DROP TABLE IF EXISTS `detailpage`;
CREATE TABLE IF NOT EXISTS `detailpage` (
  `product_name` varchar(45) NOT NULL,
  `logo1` varchar(45) NOT NULL,
  `logo2` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `info1` varchar(100) NOT NULL,
  `info2` varchar(200) NOT NULL,
  `imag1` varchar(45) NOT NULL,
  `imag2` varchar(45) NOT NULL,
  `imag3` varchar(45) NOT NULL,
  `imag4` varchar(45) NOT NULL,
  `imag5` varchar(45) NOT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.detailpage:~9 rows (대략적) 내보내기
DELETE FROM `detailpage`;
INSERT INTO `detailpage` (`product_name`, `logo1`, `logo2`, `price`, `info1`, `info2`, `imag1`, `imag2`, `imag3`, `imag4`, `imag5`) VALUES
	('디퓨저 1', '디퓨저', '디퓨저 1', 36000, '테스트', '테스트', 'diffuser1_1.jpg', 'diffuser1_2.jpg', 'diffuser1_3.jpg', 'diffuser1_4.jpg', 'diffuser1_1.jpg'),
	('디퓨저 2', '디퓨저', '디퓨저 2', 46000, '테스트', '테스트', 'diffuser2_1.jpg', 'diffuser2_2.jpg', 'diffuser2_3.jpg', 'diffuser2_4.jpg', 'diffuser2_1.jpg'),
	('디퓨저 3', '디퓨저', '디퓨저 3', 30000, '테스트', '테스트', 'diffuser3_1.jpg', 'diffuser3_2.jpg', 'diffuser3_3.jpg', 'diffuser3_4.jpg', 'diffuser3_1.jpg'),
	('퍼퓸 골드', '퍼퓸', '퍼퓸 골드', 50000, '따뜻한 공기 | 오렌지 껍질 | 머스크', '봄이 찾아와 겨울의 무거운 공기가 걷히고 따뜻한 노을이 하늘을 붉게 물들이는 듯한 머스크의 묵직한 향과 오렌지 껍질의 상큼한 향이 만나 경쾌한 무게감을 퍼트립니다.\n달콤한 바닐라와 통카빈은 부드러운 향취를 더 하여 살결 위에 포근하고 기분 좋은 여운으로 오랜 시간 머무릅니다.', 'PDP_perfume_thaw_50ml_1.jpg', 'PDP_perfume_thaw_50ml_2.jpg', 'PDP_perfume_thaw_50ml_3.jpg', 'PDP_perfume_thaw_50ml_4.jpg', 'PDP_perfume_thaw_50ml_1.jpg'),
	('퍼퓸 로얄', '퍼퓸', '퍼퓸 로얄', 88000, '테스트', '테스트', 'womanperfume2_1.jpg', 'womanperfume2_2.jpg', 'womanperfume2_3.jpg', 'womanperfume2_4.jpg', 'womanperfume2_1.jpg'),
	('퍼퓸 블랙', '퍼퓸', '퍼퓸 블랙', 48000, '테스트', '테스트', 'manperfume2_1.jpg', 'manperfume2_2.jpg', 'manperfume2_3.jpg', 'manperfume2_4.jpg', 'manperfume2_1.jpg'),
	('퍼퓸 아쿠아', '퍼퓸', '퍼퓸 아쿠아', 50000, '테스트', '테스트', 'womanperfume1_1.jpg', 'womanperfume1_2.jpg', 'womanperfume1_3.jpg', 'womanperfume1_4.jpg', 'womanperfume1_1.jpg'),
	('퍼퓸 퍼플', '퍼퓸', '퍼퓸 퍼플', 48000, '테스트', '테스트', 'womanperfume3_1.png', 'womanperfume3_2.png', 'womanperfume3_3.jpg', 'womanperfume3_4.jpg', 'womanperfume3_1.png'),
	('퍼퓸 화이트', '퍼퓸', '퍼퓸 화이트', 65000, '테스트', '테스트', 'manperfume3_1.jpg', 'manperfume3_2.jpg', 'manperfume3_3.jpg', 'manperfume3_4.jpg', 'manperfume3_1.jpg');

-- 테이블 project.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `admin` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.member:~9 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`id`, `password`, `number`, `name`, `nickname`, `address`, `admin`) VALUES
	('aaaaaa', 'asdasd', '000', 'ㅆㅆㅆ', 'sadsad', NULL, 0),
	('admin', '123', '12412', 'fsfsf', 'gyungsugod', 'qfq', 1),
	('erer', '1234', '01099414038', 'rer', 'erwr', NULL, 0),
	('JinoBabo', '2148', '01063502148', '정진호', '나는바보다', NULL, 0),
	('kyungsu2', '1234', '1234', '신', 'rudtn', NULL, 0),
	('sdaaaaaaaaaaaaaa', '123', '213213213', 'sadsadd', 'dsaaaaaa', NULL, 0),
	('test', '123', '010444444444', 'ㅇ', 'ㅇ', 'ㅁㄴㄹ', 0),
	('test2', '1234', '0102', 'sss', 'as', 'qwewqe', 0),
	('test3', '1234', '0103', 'sss', 'as', 'asdsad', 0);

-- 테이블 project.qnalist 구조 내보내기
DROP TABLE IF EXISTS `qnalist`;
CREATE TABLE IF NOT EXISTS `qnalist` (
  `num` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `contents` varchar(200) NOT NULL,
  `id` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.qnalist:~49 rows (대략적) 내보내기
DELETE FROM `qnalist`;
INSERT INTO `qnalist` (`num`, `title`, `contents`, `id`, `date`, `answer`) VALUES
	(2, 'hi', 'aa', 'asd', '2023-01-27', '진호형 생일 축하'),
	(3, 'zzzz', 'zz', 'test', '2023-01-27', NULL),
	(4, '아 힘들다', '아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-01', NULL),
	(5, '아 힘들다', '아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-01', NULL),
	(6, '아 힘들다', '아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-01', NULL),
	(7, '아 힘들다', '아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-01', NULL),
	(8, '아 힘들다', '아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-01', NULL),
	(11, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(12, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(13, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(14, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(15, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(16, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(17, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(18, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(19, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(20, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(21, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(22, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(23, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(24, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(25, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(26, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(27, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(28, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(29, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(30, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(31, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(32, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(33, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(34, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(35, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(36, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(37, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(38, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(39, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(40, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(41, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(42, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(43, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(44, 'ddd', 'asdafasfasd', 'test', '2023-02-01', NULL),
	(45, 'sdff', 'dfs', 'test', '2023-02-01', 'zzzz'),
	(46, 'wrwerwerwrwrwerwerwerwe', 'werwerwerwerwerwerwerwer', 'test', '2023-02-01', 'dddd'),
	(47, 'dsd', 'ddd', 'test', '2023-02-02', '답변완료'),
	(48, 'ddd', 'dddddddd', 'test2', '2023-02-02', 'ㅇㅇㅇㅇ'),
	(49, 'zzzz', 'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'test', '2023-02-08', '답변'),
	(50, '지노쨔응', '진호형 왜캐 못생겼어요>', 'test', '2023-02-08', 'dddd'),
	(51, 'zzzz', 'ffgfgf', 'test', '2023-02-10', 'hch'),
	(52, '정진호', '개바보', 'test', '2023-02-10', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
