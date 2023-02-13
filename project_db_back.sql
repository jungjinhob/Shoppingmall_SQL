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

-- 테이블 project.category 구조 내보내기
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `product_name` varchar(100) NOT NULL,
  `price` varchar(45) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.category:~8 rows (대략적) 내보내기
DELETE FROM `category`;
INSERT INTO `category` (`product_name`, `price`, `image`, `category`) VALUES
	('인텐시브 페이셜 진정 크림 150ml1', '26,000원', 'lotion.jpg', 'A'),
	('인텐시브 페이셜 진정 크림 150ml2', '26,000원', 'lotion.jpg', 'A'),
	('인텐시브 페이셜 진정 크림 150ml3', '26,000원', 'lotion.jpg', 'A'),
	('인텐시브 페이셜 진정 크림 150ml4', '26,000원', 'lotion.jpg', 'B'),
	('인텐시브 페이셜 진정 크림 150ml5', '26,000원', 'lotion.jpg', 'B'),
	('인텐시브 페이셜 진정 크림 150ml6', '26,000원', 'lotion.jpg', 'C'),
	('인텐시브 페이셜 진정 크림 150ml7', '26,000원', 'lotion.jpg', 'C'),
	('인텐시브 페이셜 진정 크림 150ml8', '26,000원', 'lotion.jpg', 'D');

-- 테이블 project.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 project.member:~1 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`id`, `password`, `number`, `name`, `nickname`, `address`) VALUES
	('kyungsu2', '1234', '1234', '신', 'rudtn', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
