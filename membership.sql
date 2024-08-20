/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3307
 Source Schema         : membership

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 20/08/2024 20:13:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of companies
-- ----------------------------
BEGIN;
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Company1', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Company2', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Company3', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'Company4', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'Company5', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'Company6', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'Company7', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'Company8', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'Company9', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'Company10', '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2024_08_20_153835_create_companies_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '20255_01_01_000000_create_users_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_company_id_foreign` (`company_id`),
  CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 4, 'name1', 'surname1', 'name1.surname1@example.com', '1234567891', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 3, 'name2', 'surname2', 'name2.surname2@example.com', '1234567892', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 7, 'name3', 'surname3', 'name3.surname3@example.com', '1234567893', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 7, 'name4', 'surname4', 'name4.surname4@example.com', '1234567894', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 3, 'name5', 'surname5', 'name5.surname5@example.com', '1234567895', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 10, 'name6', 'surname6', 'name6.surname6@example.com', '1234567896', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 3, 'name7', 'surname7', 'name7.surname7@example.com', '1234567897', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 9, 'name8', 'surname8', 'name8.surname8@example.com', '1234567898', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 7, 'name9', 'surname9', 'name9.surname9@example.com', '1234567899', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
INSERT INTO `users` (`id`, `company_id`, `name`, `surname`, `email`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 6, 'name10', 'surname10', 'name10.surname10@example.com', '12345678910', NULL, NULL, '2024-08-20 17:11:43', '2024-08-20 17:11:43', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
