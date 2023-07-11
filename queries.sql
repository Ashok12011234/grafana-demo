-- Adminer 4.8.1 MySQL 8.0.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `mosip`;
CREATE DATABASE `mosip` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mosip`;

DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `index_no` int NOT NULL,
  `accessed` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `access` (`id`, `index_no`, `accessed`) VALUES
(1,	190056,	1),
(2,	127282,	1),
(3,	23232,	0);

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `batch` int NOT NULL,
  `total` int NOT NULL,
  `presented` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `attendence` (`id`, `date`, `batch`, `total`, `presented`) VALUES
(1,	'2023-07-07',	19,	128,	110),
(2,	'2023-07-08',	18,	126,	110),
(3,	'2023-07-07',	20,	110,	100);

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logs` (`id`, `detail`) VALUES
(1,	'[2023-07-11 14:25:36] [ERROR] [RegistrationService] [ABC123] : User not found.'),
(2,	'[2023-07-11 14:25:36] [ERROR] [AttendenceService] [ABC123] : Connection issue'),
(3,	'[2023-07-11 14:25:36] [ERROR] [AccessService] [ABC123] : Access denied.');

DROP TABLE IF EXISTS `metrics`;
CREATE TABLE `metrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `metrics` (`id`, `name`, `percentage`) VALUES
(1,	'CPU',	60),
(2,	'RAM',	20),
(3,	'GPU',	70),
(4,	'Storage',	50);

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `index_no` int NOT NULL,
  `suceed` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `registration` (`id`, `index_no`, `suceed`) VALUES
(1,	190056,	1),
(2,	12121,	0),
(3,	18765,	1),
(4,	76544,	1);

DROP TABLE IF EXISTS `resorces`;
CREATE TABLE `resorces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `available` int NOT NULL,
  `booked` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `resorces` (`id`, `name`, `date`, `available`, `booked`) VALUES
(1,	'library',	'2023-07-07',	120,	1),
(2,	'level2lab',	'2023-07-08',	130,	30);

-- 2023-07-11 07:37:54