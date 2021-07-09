-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_22
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve
use vk;

# Task_1
#  Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`          varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `admin_user_id` bigint(20) unsigned NOT NULL,
    UNIQUE KEY `id` (`id`),
    KEY `communities_name_idx` (`name`),
    KEY `admin_user_id` (`admin_user_id`),
    CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities`
    DISABLE KEYS */;
INSERT INTO `communities`
VALUES (1, 'enim', 51),
       (2, 'exercitationem', 52),
       (3, 'illum', 54),
       (4, 'neque', 56),
       (5, 'minus', 57),
       (6, 'molestiae', 58),
       (7, 'qui', 60),
       (8, 'corrupti', 62),
       (9, 'sed', 63),
       (10, 'illum', 64),
       (11, 'aut', 65),
       (12, 'et', 66),
       (13, 'consequatur', 67),
       (14, 'omnis', 69),
       (15, 'voluptates', 70),
       (16, 'deleniti', 71),
       (17, 'excepturi', 72),
       (18, 'doloribus', 73),
       (19, 'unde', 74),
       (20, 'sint', 75),
       (21, 'non', 76),
       (22, 'maxime', 77),
       (23, 'vel', 82),
       (24, 'aliquid', 87),
       (25, 'sint', 89),
       (26, 'consequatur', 92),
       (27, 'eveniet', 94),
       (28, 'et', 96),
       (29, 'voluptatem', 98),
       (30, 'quisquam', 99),
       (31, 'assumenda', 100),
       (32, 'facere', 51),
       (33, 'ratione', 52),
       (34, 'esse', 54),
       (35, 'corrupti', 56),
       (36, 'odio', 57),
       (37, 'animi', 58),
       (38, 'molestiae', 60),
       (39, 'debitis', 62),
       (40, 'sint', 63),
       (41, 'maiores', 64),
       (42, 'dolore', 65),
       (43, 'doloremque', 66),
       (44, 'optio', 67),
       (45, 'quod', 69),
       (46, 'eaque', 70),
       (47, 'eos', 71),
       (48, 'est', 72),
       (49, 'eveniet', 73),
       (50, 'quasi', 74),
       (51, 'harum', 75),
       (52, 'nemo', 76),
       (53, 'ut', 77),
       (54, 'fugit', 82),
       (55, 'nobis', 87),
       (56, 'totam', 89),
       (57, 'esse', 92),
       (58, 'quo', 94),
       (59, 'quod', 96),
       (60, 'animi', 98),
       (61, 'odio', 99),
       (62, 'architecto', 100),
       (63, 'occaecati', 51),
       (64, 'earum', 52),
       (65, 'voluptas', 54),
       (66, 'in', 56),
       (67, 'omnis', 57),
       (68, 'qui', 58),
       (69, 'omnis', 60),
       (70, 'et', 62),
       (71, 'et', 63),
       (72, 'voluptas', 64),
       (73, 'quam', 65),
       (74, 'natus', 66),
       (75, 'aliquid', 67),
       (76, 'autem', 69),
       (77, 'eaque', 70),
       (78, 'qui', 71),
       (79, 'ipsum', 72),
       (80, 'expedita', 73),
       (81, 'quis', 74),
       (82, 'saepe', 75),
       (83, 'quaerat', 76),
       (84, 'cum', 77),
       (85, 'beatae', 82),
       (86, 'impedit', 87),
       (87, 'dignissimos', 89),
       (88, 'consequatur', 92),
       (89, 'et', 94),
       (90, 'cum', 96),
       (91, 'modi', 98),
       (92, 'distinctio', 99),
       (93, 'aut', 100),
       (94, 'nihil', 51),
       (95, 'deleniti', 52),
       (96, 'explicabo', 54),
       (97, 'officia', 56),
       (98, 'maxime', 57),
       (99, 'sint', 58),
       (100, 'quo', 60);
/*!40000 ALTER TABLE `communities`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests`
(
    `initiator_user_id` bigint(20) unsigned NOT NULL,
    `target_user_id`    bigint(20) unsigned NOT NULL,
    `status`            enum ('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `requested_at`      datetime                                                                         DEFAULT current_timestamp(),
    `updated_at`        datetime                                                                         DEFAULT NULL ON UPDATE current_timestamp(),
    PRIMARY KEY (`initiator_user_id`, `target_user_id`),
    KEY `target_user_id` (`target_user_id`),
    CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests`
    DISABLE KEYS */;
INSERT INTO `friend_requests`
VALUES (51, 51, 'requested', '1993-09-02 05:32:52', '1987-04-21 13:10:06'),
       (52, 52, 'approved', '1978-06-24 07:02:24', '1989-05-07 16:04:22'),
       (54, 54, 'requested', '2005-05-17 14:19:19', '1982-07-30 03:35:32'),
       (56, 56, 'declined', '2004-07-29 15:14:58', '1993-03-29 04:05:55'),
       (57, 57, 'declined', '1995-01-27 12:35:16', '1988-03-02 11:49:56'),
       (58, 58, 'declined', '1975-10-13 20:05:28', '1992-06-13 21:22:34'),
       (60, 60, 'declined', '1975-04-05 08:10:39', '1999-09-20 23:24:40'),
       (62, 62, 'requested', '2000-03-19 23:31:18', '1973-05-12 02:13:34'),
       (63, 63, 'unfriended', '1978-09-19 16:11:24', '1991-03-15 15:32:13'),
       (64, 64, 'unfriended', '1972-10-09 21:35:21', '1990-09-11 21:55:05'),
       (65, 65, 'approved', '1982-08-02 08:55:14', '1988-09-26 21:51:06'),
       (66, 66, 'requested', '1975-11-19 21:09:31', '1975-09-19 23:57:56'),
       (67, 67, 'declined', '1976-09-13 10:37:36', '1999-01-31 08:51:34'),
       (69, 69, 'declined', '1991-04-04 21:23:18', '2012-01-10 18:16:05'),
       (70, 70, 'declined', '1991-06-03 08:02:32', '1999-07-20 07:48:01'),
       (71, 71, 'unfriended', '1976-03-29 23:44:51', '2010-07-15 03:22:53'),
       (72, 72, 'approved', '2018-02-10 18:18:35', '1976-08-15 08:50:35'),
       (73, 73, 'declined', '1983-04-24 04:48:54', '1998-09-25 07:52:05'),
       (74, 74, 'requested', '2009-01-19 03:26:21', '1985-08-26 21:06:57'),
       (75, 75, 'unfriended', '1973-02-19 05:50:06', '2014-11-15 14:34:21'),
       (76, 76, 'approved', '2009-09-14 06:39:30', '2003-04-19 02:07:00'),
       (77, 77, 'requested', '1979-09-21 00:35:43', '1984-01-31 09:35:41'),
       (82, 82, 'approved', '2000-05-02 04:39:04', '2016-08-04 00:46:26'),
       (87, 87, 'approved', '1997-05-23 11:04:26', '2006-05-02 03:44:49'),
       (89, 89, 'unfriended', '2003-06-19 15:37:00', '1990-11-09 08:45:11'),
       (92, 92, 'unfriended', '1982-12-26 05:28:49', '2002-11-24 12:46:37'),
       (94, 94, 'requested', '1981-08-21 19:05:55', '2019-02-09 12:01:38'),
       (96, 96, 'requested', '1972-04-04 08:02:17', '1977-07-14 13:42:18'),
       (98, 98, 'unfriended', '2001-07-31 17:07:40', '1988-11-12 21:32:33'),
       (99, 99, 'requested', '2000-05-23 05:33:47', '2013-11-13 00:53:08'),
       (100, 100, 'declined', '2000-03-07 19:37:23', '1991-04-14 02:24:45');
/*!40000 ALTER TABLE `friend_requests`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `user_id`    bigint(20) unsigned NOT NULL,
    `media_id`   bigint(20) unsigned NOT NULL,
    `created_at` datetime DEFAULT current_timestamp(),
    UNIQUE KEY `id` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes`
    DISABLE KEYS */;
INSERT INTO `likes`
VALUES (1, 51, 1, '2006-11-29 23:42:45'),
       (2, 52, 2, '1997-06-02 23:20:38'),
       (3, 54, 3, '1978-06-28 14:43:25'),
       (4, 56, 4, '1977-02-03 02:29:41'),
       (5, 57, 5, '1985-11-27 11:47:47'),
       (6, 58, 6, '1970-04-21 11:45:06'),
       (7, 60, 7, '1994-02-25 04:43:33'),
       (8, 62, 8, '2017-06-24 23:30:37'),
       (9, 63, 9, '2014-04-09 09:57:26'),
       (10, 64, 10, '2013-05-04 19:34:32'),
       (11, 65, 11, '1985-03-16 14:11:20'),
       (12, 66, 12, '2003-08-02 22:40:44'),
       (13, 67, 13, '2017-04-20 01:08:28'),
       (14, 69, 14, '2013-06-05 07:27:36'),
       (15, 70, 15, '2001-06-27 15:12:06'),
       (16, 71, 16, '1991-02-03 12:02:34'),
       (17, 72, 17, '1988-06-02 11:27:59'),
       (18, 73, 18, '1999-12-04 09:26:31'),
       (19, 74, 19, '2006-04-26 01:25:43'),
       (20, 75, 20, '1975-05-20 02:26:36'),
       (21, 76, 21, '1970-11-27 07:08:04'),
       (22, 77, 22, '1970-04-18 23:54:15'),
       (23, 82, 23, '2020-07-18 23:09:21'),
       (24, 87, 24, '2011-05-14 19:03:32'),
       (25, 89, 25, '1987-07-24 05:42:29'),
       (26, 92, 26, '1993-05-24 09:27:56'),
       (27, 94, 27, '2009-12-23 08:21:41'),
       (28, 96, 28, '1999-08-01 13:10:37'),
       (29, 98, 29, '1975-10-27 05:40:43'),
       (30, 99, 30, '1989-11-12 23:39:11'),
       (31, 100, 31, '1975-09-09 23:01:15'),
       (32, 51, 32, '2017-05-30 01:23:16'),
       (33, 52, 33, '1981-12-15 02:35:36'),
       (34, 54, 34, '2007-07-03 02:18:42'),
       (35, 56, 35, '2016-07-23 17:17:34'),
       (36, 57, 36, '1991-05-06 08:01:24'),
       (37, 58, 37, '2002-04-25 11:40:37'),
       (38, 60, 38, '1982-03-15 06:16:36'),
       (39, 62, 39, '1994-02-09 07:25:23'),
       (40, 63, 40, '2001-10-08 14:48:43'),
       (41, 64, 41, '1986-08-05 17:43:38'),
       (42, 65, 42, '1992-10-22 15:25:58'),
       (43, 66, 43, '2010-01-28 14:50:52'),
       (44, 67, 44, '2017-03-19 15:48:31'),
       (45, 69, 45, '1990-04-01 03:06:00'),
       (46, 70, 46, '1974-09-26 02:37:20'),
       (47, 71, 47, '2009-07-06 11:41:34'),
       (48, 72, 48, '2005-08-02 17:15:37'),
       (49, 73, 49, '1988-01-27 09:42:29'),
       (50, 74, 50, '1990-09-08 12:20:31'),
       (51, 75, 51, '2006-06-21 00:02:48'),
       (52, 76, 52, '1995-04-27 17:58:44'),
       (53, 77, 53, '1992-03-01 23:06:07'),
       (54, 82, 54, '2009-05-01 22:10:52'),
       (55, 87, 55, '1987-06-14 13:08:57'),
       (56, 89, 56, '2015-07-06 08:13:08'),
       (57, 92, 57, '2003-05-11 00:43:08'),
       (58, 94, 58, '2007-06-13 21:52:40'),
       (59, 96, 59, '1995-11-15 11:24:21'),
       (60, 98, 60, '1989-01-07 22:11:19'),
       (61, 99, 61, '1994-07-06 19:26:21'),
       (62, 100, 62, '2014-07-28 20:48:36'),
       (63, 51, 63, '2011-01-08 03:31:34'),
       (64, 52, 64, '2013-09-15 13:28:57'),
       (65, 54, 65, '2017-01-20 17:48:15'),
       (66, 56, 66, '1982-01-05 07:25:00'),
       (67, 57, 67, '1988-03-21 05:16:55'),
       (68, 58, 68, '1996-03-25 07:08:54'),
       (69, 60, 69, '1978-12-08 02:30:17'),
       (70, 62, 70, '1986-04-10 08:52:40'),
       (71, 63, 71, '1986-02-02 10:17:45'),
       (72, 64, 72, '1978-09-15 18:10:31'),
       (73, 65, 73, '1997-03-02 05:13:57'),
       (74, 66, 74, '1981-09-22 00:43:55'),
       (75, 67, 75, '1997-03-20 03:11:36'),
       (76, 69, 76, '1982-06-01 14:56:15'),
       (77, 70, 77, '2017-03-26 07:19:31'),
       (78, 71, 78, '2005-02-01 02:15:21'),
       (79, 72, 79, '1978-08-13 15:54:19'),
       (80, 73, 80, '2020-05-19 22:25:37'),
       (81, 74, 81, '2001-11-18 12:59:48'),
       (82, 75, 82, '2014-09-20 03:01:46'),
       (83, 76, 83, '1999-04-17 22:40:00'),
       (84, 77, 84, '1984-04-30 19:39:14'),
       (85, 82, 85, '2020-08-04 19:29:39'),
       (86, 87, 86, '2008-04-04 04:35:57'),
       (87, 89, 87, '1981-06-06 07:05:06'),
       (88, 92, 88, '1973-11-23 03:29:17'),
       (89, 94, 89, '2001-04-16 10:49:37'),
       (90, 96, 90, '2012-01-26 10:00:00'),
       (91, 98, 91, '1973-11-15 18:35:42'),
       (92, 99, 92, '1990-11-15 01:02:55'),
       (93, 100, 93, '1976-07-18 08:25:31'),
       (94, 51, 94, '1974-07-09 15:18:53'),
       (95, 52, 95, '2018-07-19 11:54:47'),
       (96, 54, 96, '2008-10-21 18:35:25'),
       (97, 56, 97, '1974-05-13 06:43:05'),
       (98, 57, 98, '2020-05-12 04:18:43'),
       (99, 58, 99, '2006-11-04 19:48:58'),
       (100, 60, 100, '2004-09-26 20:33:49');
/*!40000 ALTER TABLE `likes`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `media_type_id` bigint(20) unsigned NOT NULL,
    `user_id`       bigint(20) unsigned NOT NULL,
    `body`          text COLLATE utf8mb4_unicode_ci                    DEFAULT NULL,
    `filename`      varchar(255) COLLATE utf8mb4_unicode_ci            DEFAULT NULL,
    `size`          int(11)                                            DEFAULT NULL,
    `metadata`      longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
    `created_at`    datetime                                           DEFAULT current_timestamp(),
    `updated_at`    datetime                                           DEFAULT NULL ON UPDATE current_timestamp(),
    UNIQUE KEY `id` (`id`),
    KEY `user_id` (`user_id`),
    KEY `media_type_id` (`media_type_id`),
    CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media`
    DISABLE KEYS */;
INSERT INTO `media`
VALUES (1, 1, 51,
        'Ipsum dolor magnam illum voluptate explicabo et. Ut sed enim est facilis molestiae ducimus. Aspernatur molestiae ea doloremque illo. Officia at nihil sed suscipit.',
        'possimus', 83, NULL, '2010-04-09 01:39:18', '1999-05-01 03:15:14'),
       (2, 2, 52,
        'Qui repellat qui ut. Omnis temporibus commodi ex. Mollitia in sunt ex qui. Aut quia ab enim ut quae.', 'quia',
        71, NULL, '1974-05-10 09:10:26', '1991-06-18 22:54:49'),
       (3, 3, 54,
        'Quibusdam numquam dolores ipsa consequatur consequatur. Quis quos quidem quidem debitis ut voluptatum temporibus. Corrupti qui aspernatur est nostrum aut dolores et. Debitis est laboriosam praesentium labore modi doloribus.',
        'non', 146416, NULL, '2001-03-08 18:13:20', '1994-05-06 15:07:04'),
       (4, 4, 56,
        'Nemo veritatis autem qui sit et eos est. Sint nihil eius hic veniam assumenda praesentium ratione. Atque omnis quo qui qui vitae asperiores asperiores et.',
        'nobis', 66863285, NULL, '1973-04-12 01:07:58', '2019-07-29 16:27:29'),
       (5, 5, 57,
        'Nihil aut sint assumenda et occaecati qui eaque eum. Esse et nisi accusantium. Quis nulla aperiam iusto laudantium. Praesentium natus nam et ut ea.',
        'dolorem', 2812, NULL, '1975-01-15 08:55:36', '1976-10-22 07:39:26'),
       (6, 6, 58,
        'Ut in voluptatem consectetur eos qui quasi dolorum. Similique ab nisi temporibus adipisci voluptatem consequatur. Sunt ut placeat itaque id. Ut neque qui numquam qui voluptas eius non. Tempore asperiores occaecati consequatur velit doloremque blanditiis commodi.',
        'nostrum', 8705, NULL, '1982-10-07 15:08:39', '2016-05-19 16:05:06'),
       (7, 7, 60,
        'Ut qui explicabo et nihil magnam quia. Recusandae corrupti deleniti maxime ipsa non repudiandae. Et quo ducimus iusto rem tenetur.',
        'ipsum', 927741, NULL, '1997-10-07 15:46:00', '2004-10-25 23:10:50'),
       (8, 8, 62,
        'Officia quos voluptas fugit placeat maxime et natus. At tempora laudantium deleniti beatae. Voluptas voluptas nihil beatae et omnis et.',
        'aliquam', 0, NULL, '2016-09-27 20:39:46', '1972-07-19 12:05:18'),
       (9, 9, 63,
        'Eos odit laudantium omnis libero nobis. Nobis labore ea minus aliquam ratione perspiciatis. Amet omnis repudiandae sit. Aut saepe qui vel delectus est.',
        'consequatur', 248072, NULL, '2016-09-14 07:59:36', '2009-05-24 13:36:39'),
       (10, 10, 64,
        'Aut tenetur modi molestiae odit labore et. Molestias autem nisi soluta exercitationem non et. Qui excepturi ex quisquam aut.',
        'dolor', 58544, NULL, '1975-05-09 06:19:38', '1981-06-27 02:15:48'),
       (11, 11, 65, 'Hic quia tenetur aperiam dolores. Esse cupiditate odio ad sed quia. Eos explicabo odit velit ut.',
        'id', 9, NULL, '1984-10-14 18:39:49', '2012-12-09 09:11:59'),
       (12, 12, 66,
        'Itaque reiciendis tempora id asperiores. Consequuntur necessitatibus molestiae beatae. Accusamus rerum quae commodi molestiae ut eos.',
        'repudiandae', 94, NULL, '1984-01-14 14:59:43', '2017-10-23 06:21:17'),
       (13, 13, 67,
        'Tempore laboriosam accusantium dolores eos et libero sit. Molestias placeat beatae rem voluptatem. Suscipit quo vero vel vero consequatur. Maiores totam odio earum similique.',
        'aut', 5073434, NULL, '1973-12-05 23:59:04', '1982-06-06 10:58:05'),
       (14, 14, 69,
        'Reiciendis eaque omnis voluptas est eos qui voluptas. Molestiae ipsa sed veritatis non qui. Sint sequi quaerat impedit cumque velit et qui.',
        'recusandae', 9084324, NULL, '2001-12-21 21:28:51', '1984-10-14 00:22:47'),
       (15, 15, 70,
        'Est iste ut eos quas. Nemo illum qui nobis sunt vero. Voluptas facilis dolore aliquid laudantium autem odit temporibus. Occaecati alias eligendi quasi rerum quaerat nihil.',
        'dolorem', 46303, NULL, '2002-01-02 20:27:11', '1983-09-18 06:47:44'),
       (16, 16, 71,
        'Nulla quae autem temporibus provident. Rem quod quia nesciunt sed ea. Earum et sequi sequi ut rerum.',
        'architecto', 684607442, NULL, '1994-03-05 11:52:21', '1970-11-07 23:23:06'),
       (17, 17, 72,
        'In quod deserunt tenetur. Iure nulla aliquam nobis omnis. Facere animi totam quibusdam tenetur velit.',
        'consequatur', 975760608, NULL, '2021-04-16 09:45:13', '2020-12-31 14:01:23'),
       (18, 18, 73,
        'Sit non enim repellendus temporibus nisi. Amet aut praesentium non sed et ea. Nihil adipisci facilis quia delectus. Eveniet porro aut totam.',
        'quis', 0, NULL, '1972-02-15 05:35:22', '1999-03-13 01:40:45'),
       (19, 19, 74,
        'Animi consectetur ut quas molestiae rerum voluptate rerum assumenda. Et quae sed nihil voluptatibus enim vel eum. Qui qui labore iste temporibus blanditiis. Odit veniam suscipit quisquam tempore officiis nobis.',
        'vel', 812246, NULL, '2010-06-21 04:32:51', '1997-05-03 11:46:34'),
       (20, 20, 75,
        'Blanditiis dolorem id non eveniet fugiat. Eos rerum pariatur eius tenetur. Sit facilis incidunt facilis aut dolores omnis. Ut ullam nulla necessitatibus.',
        'sapiente', 579, NULL, '1988-08-03 12:57:48', '1978-05-16 22:37:03'),
       (21, 21, 76,
        'Vel neque qui ut ullam atque. Ea ut quo qui qui. Et quia quia quod. Iusto ut aut aperiam ipsum dolorem velit.',
        'nobis', 53, NULL, '2015-06-01 07:11:24', '2003-04-15 20:47:50'),
       (22, 22, 77,
        'Cumque eum repellendus officiis maiores et sequi delectus. Deleniti sapiente aut eos eius omnis. Magnam doloribus quia suscipit. Repellendus non fugit porro deleniti fugit.',
        'magni', 76, NULL, '2003-10-24 20:38:56', '1977-12-29 16:06:35'),
       (23, 23, 82,
        'Mollitia deleniti dolor iure deleniti asperiores ipsam incidunt. Dolore et dolores suscipit dicta omnis assumenda consequatur. Dolor voluptatem quos fugiat veritatis.',
        'dolorum', 43564129, NULL, '2006-02-15 08:03:55', '1991-11-15 07:09:20'),
       (24, 24, 87, 'Quam delectus aut molestiae eum. Perspiciatis ut pariatur assumenda et. Quidem ratione eius est.',
        'officia', 215011, NULL, '2000-10-22 22:22:51', '2008-04-08 22:19:24'),
       (25, 25, 89,
        'Quos qui voluptates temporibus optio quidem quis excepturi. A impedit aut deleniti tempora voluptatem nisi totam. Nemo illo id vero accusantium aut vero fuga. Facilis quo voluptates rem aut nihil necessitatibus.',
        'aut', 93932522, NULL, '1977-02-01 02:22:02', '2016-02-12 18:25:25'),
       (26, 26, 92,
        'Nam sapiente quibusdam consectetur similique sit delectus earum. Eius illum ea quia vel ab quis nobis. Odio veritatis vitae mollitia et et. Quis est dignissimos quisquam eos incidunt et quibusdam.',
        'non', 4, NULL, '1975-02-20 10:53:14', '1993-10-27 11:00:09'),
       (27, 27, 94,
        'Quibusdam dolor placeat et dolores distinctio. Voluptate sequi ipsum aperiam possimus. Rerum eum sed natus est doloribus architecto voluptatum quia. Voluptatem voluptates rerum repellendus dolorem dolorem error hic consequatur.',
        'qui', 0, NULL, '2010-11-02 17:45:07', '1984-03-12 21:23:11'),
       (28, 28, 96,
        'Sequi veniam itaque harum recusandae. Minus dolorum molestiae corrupti ut recusandae perspiciatis. Corrupti veniam reprehenderit atque aut tempore fugit. Provident molestiae et autem eligendi in.',
        'ab', 244309667, NULL, '1989-02-25 06:41:59', '1981-07-27 23:50:02'),
       (29, 29, 98, 'Nihil magni magnam sit hic delectus. Aperiam dolore similique animi dolore neque ipsum.',
        'voluptates', 29914223, NULL, '1971-06-07 11:04:37', '2001-12-04 05:01:36'),
       (30, 30, 99,
        'Amet reiciendis voluptates id sunt at consequatur doloremque sed. Ut cumque veniam aut. Labore ex libero vel similique optio est. Modi tenetur eveniet ratione rem possimus.',
        'omnis', 98821043, NULL, '1994-04-15 06:00:35', '1995-12-15 17:04:31'),
       (31, 31, 100,
        'Quia dignissimos voluptatum molestiae dolor. Sed nulla et aut voluptate non ullam odit. Repudiandae consequatur beatae qui rem. Occaecati quia magnam possimus. Culpa fugiat dolorum iusto.',
        'possimus', 0, NULL, '2016-07-29 05:44:44', '1971-11-15 02:56:31'),
       (32, 32, 51,
        'Sit tempora aut voluptatem minus aut ut beatae. Repellendus doloremque aperiam debitis qui et libero. Ut commodi fugit assumenda optio expedita enim. Placeat voluptatem omnis ea iste sapiente a velit.',
        'suscipit', 8, NULL, '1987-12-10 12:10:45', '1996-11-02 12:42:17'),
       (33, 33, 52,
        'Est id voluptatum et error quos occaecati ea. Repellat nisi quia cumque fugit veritatis est hic. Reprehenderit voluptatem eos dolore et. Fuga numquam consequatur quo vel molestiae.',
        'qui', 0, NULL, '2010-11-29 22:48:13', '1974-10-02 20:17:43'),
       (34, 34, 54,
        'Sit consequuntur accusantium rem eum. Quo quia quia iure sunt dolores adipisci asperiores quia. Amet excepturi delectus sed assumenda veritatis.',
        'dicta', 2454844, NULL, '1977-06-08 09:25:42', '2014-05-12 02:29:07'),
       (35, 35, 56,
        'Amet vero qui delectus consequatur. Dolorum animi quaerat reprehenderit quis alias asperiores. Consectetur eaque omnis illum veritatis. Tempora aut ut quibusdam atque.',
        'fuga', 662241, NULL, '1997-03-19 07:12:19', '2007-05-13 02:23:18'),
       (36, 36, 57,
        'Reprehenderit consequatur recusandae commodi ratione eos maiores dolor. Ipsam saepe aspernatur expedita. Quaerat doloremque quisquam consequatur est beatae aliquid. Aliquid beatae ex perferendis quae molestiae voluptatibus.',
        'labore', 9161, NULL, '1994-01-19 14:55:11', '1982-05-29 13:50:12'),
       (37, 37, 58,
        'Minima ducimus magni necessitatibus est ut optio vel. Eos quia in fugiat id eveniet dolore maiores. Sapiente recusandae magni tempore esse soluta. Iste qui ut id aut eligendi nihil saepe.',
        'ducimus', 8384, NULL, '1977-08-02 10:57:26', '2019-02-15 14:33:29'),
       (38, 38, 60,
        'Occaecati qui ea qui non deserunt. Numquam numquam eum itaque iure. Recusandae minima omnis sit omnis nesciunt. Nisi ex necessitatibus nisi asperiores deserunt. Repudiandae animi nemo voluptatem sed vero omnis cum et.',
        'qui', 624061831, NULL, '1997-08-14 14:22:56', '2014-01-30 09:32:58'),
       (39, 39, 62,
        'Quia expedita reiciendis omnis ea est et itaque similique. Sint molestiae ab animi aut dolor sed officiis. Sequi architecto quam eum et. Illo minima in laudantium odit quia.',
        'blanditiis', 544522, NULL, '2001-05-25 05:27:05', '1989-01-15 16:56:09'),
       (40, 40, 63,
        'Ea qui culpa et ad vel unde voluptas. Possimus quasi magni tenetur aut non. Id est similique rerum quia. Dolor neque doloremque doloremque molestiae magnam earum deserunt.',
        'qui', 0, NULL, '2018-11-28 22:10:37', '1983-06-10 04:46:56'),
       (41, 41, 64,
        'Vero expedita ut modi sed. Harum adipisci quia non reprehenderit officia. Vel sed molestias rerum nihil. Est doloribus cumque distinctio adipisci et dolorem optio quaerat.',
        'tempora', 2158, NULL, '1971-12-10 17:55:40', '1983-09-28 15:43:30'),
       (42, 42, 65,
        'Vel suscipit dolorem et voluptatem sapiente recusandae quos. Rem voluptas et quia doloremque distinctio. Distinctio praesentium voluptates et sed non exercitationem ipsam. Enim commodi optio debitis pariatur exercitationem iure.',
        'deleniti', 618685615, NULL, '2010-07-19 00:54:54', '2016-11-23 12:00:09'),
       (43, 43, 66, 'Autem aut rem commodi quas. Eaque quasi et sit. Sit itaque et perferendis ducimus vitae.', 'saepe',
        30981, NULL, '1992-12-10 21:14:50', '1975-05-23 04:59:28'),
       (44, 44, 67,
        'Est esse est eos quidem modi quae eaque. Reprehenderit non doloribus rerum deleniti. Est voluptas consequuntur id nihil quo et dolorem eligendi. Ex nulla ea enim qui optio aut.',
        'deserunt', 3056125, NULL, '1999-04-04 21:17:16', '1975-06-09 17:15:23'),
       (45, 45, 69,
        'Sunt tempore illo voluptatum. Consectetur architecto praesentium et sit rerum. Consequatur et possimus quidem necessitatibus.',
        'quo', 815809, NULL, '1979-07-02 08:12:03', '2002-10-25 19:34:02'),
       (46, 46, 70,
        'Magnam aut quibusdam quia ipsam. Dignissimos numquam natus fugiat tempore mollitia ullam doloremque. Deleniti vitae dolor autem adipisci nihil sit.',
        'facere', 3110851, NULL, '1984-07-17 02:30:24', '1982-10-05 21:37:40'),
       (47, 47, 71,
        'Aut sit maxime atque pariatur. Repellat dolor animi voluptatum enim. Saepe assumenda harum accusamus dolore et.',
        'fugiat', 91, NULL, '1980-12-15 01:48:04', '1975-05-31 23:24:09'),
       (48, 48, 72,
        'Qui aut cum cumque quia id molestiae ipsam. Aut cumque tenetur sint ut suscipit assumenda quod aut. Sapiente aspernatur dolor fugiat magnam tempora suscipit dolorem.',
        'nemo', 54, NULL, '2004-09-15 16:56:19', '1985-05-06 01:02:17'),
       (49, 49, 73,
        'Maiores repellat debitis ea pariatur quisquam ut dolor maxime. Non quasi culpa nostrum. Dolorem qui natus sint sed veniam quia.',
        'ut', 80672027, NULL, '1991-10-15 00:47:31', '2007-01-02 04:19:54'),
       (50, 50, 74,
        'Delectus eaque molestiae fugit est odio. Vero exercitationem repellat id soluta eveniet. Maiores necessitatibus id iusto vero esse dolor doloribus. Distinctio repellendus repellendus similique.',
        'perferendis', 40542, NULL, '1975-12-12 04:22:27', '2014-01-24 05:23:46'),
       (51, 51, 75,
        'Adipisci aliquid repellendus iusto quia atque. Iusto in cupiditate qui. Eum et ut cum autem in cumque beatae necessitatibus.',
        'est', 59526951, NULL, '2011-05-10 18:51:38', '1980-05-18 11:09:14'),
       (52, 52, 76, 'Nemo rerum distinctio est veritatis numquam. Labore ut quas aut consectetur.', 'quasi', 8, NULL,
        '1980-01-14 17:07:09', '1975-10-06 17:39:58'),
       (53, 53, 77,
        'Saepe non enim autem est. Reprehenderit modi officiis inventore eaque aut. Blanditiis voluptatem sapiente reprehenderit ut.',
        'vel', 28579913, NULL, '2016-02-11 22:28:13', '1994-04-07 20:46:41'),
       (54, 54, 82,
        'Deserunt doloremque reprehenderit accusantium. Quibusdam laboriosam nobis et sunt aut nisi adipisci. Eum ratione ut impedit impedit.',
        'necessitatibus', 5, NULL, '2010-10-15 15:19:43', '2003-11-04 18:15:49'),
       (55, 55, 87,
        'Sint doloremque et illum non unde vero magnam. Ut exercitationem magnam occaecati quam. Facilis voluptatum omnis ullam aperiam dicta libero id.',
        'aut', 441132, NULL, '1971-09-16 19:37:13', '2015-09-30 09:30:12'),
       (56, 56, 89, 'Itaque autem eos illo ut amet et quia. Amet non facilis vel perferendis vitae.', 'nisi', 9, NULL,
        '2011-08-27 04:27:11', '2001-08-31 18:24:05'),
       (57, 57, 92,
        'Veritatis tempore a non laborum eius autem velit. Quia aut neque similique reprehenderit nisi consectetur at. Dolores quidem ratione at natus dolores eos labore eaque. Ratione maxime eveniet eos dolorem ut.',
        'mollitia', 668101, NULL, '1991-11-27 16:44:39', '1994-02-24 19:54:02'),
       (58, 58, 94,
        'Maiores incidunt et accusamus dicta distinctio molestias. Esse rem quisquam est sequi enim. Officia ex modi distinctio quidem quos. Quaerat odio ea quos officia adipisci.',
        'sed', 358, NULL, '2000-01-16 16:19:32', '1976-02-13 05:06:37'),
       (59, 59, 96,
        'Et a quo nisi enim voluptatem labore ut. Numquam ea aut aliquam at odit. Ipsam rerum voluptate dolorum ut molestias. Corrupti ut ut beatae eum.',
        'natus', 6, NULL, '2012-10-25 17:37:39', '2008-07-01 12:50:59'),
       (60, 60, 98,
        'Voluptas est minus explicabo suscipit. Et nostrum expedita laborum molestiae repudiandae. In et quas aperiam et enim. Sequi ratione ea eos eligendi et numquam commodi.',
        'repellendus', 42566194, NULL, '2001-08-20 07:23:33', '1979-10-04 05:38:50'),
       (61, 61, 99,
        'Officia vel iure nihil qui. Vel adipisci tenetur minus corrupti. Eos asperiores ut aut voluptas vel. Ut eum nobis architecto atque quas quo quia.',
        'nihil', 2840852, NULL, '1985-07-30 14:03:54', '2016-11-23 19:32:42'),
       (62, 62, 100, 'Illum officiis est fugiat non. Aut nam rerum nihil omnis repellat aut.', 'ex', 67506896, NULL,
        '2003-02-22 22:58:02', '1976-03-22 03:44:49'),
       (63, 63, 51, 'Reprehenderit ea sint dolor. Veritatis aspernatur tempore quod sit sequi.', 'quisquam', 53403,
        NULL, '2021-05-19 06:39:03', '2004-02-02 12:13:10'),
       (64, 64, 52,
        'Unde odio reprehenderit sequi qui. Qui quia sunt quo eveniet quas ut. Reprehenderit dolorem accusamus culpa hic.',
        'sapiente', 87, NULL, '2007-03-10 16:49:26', '1974-11-21 08:34:57'),
       (65, 65, 54,
        'Sit voluptas quia voluptas et omnis quis. Aut laudantium non quasi consequatur earum qui. Rerum voluptas sed veritatis unde illum consequatur. Et accusamus assumenda id deleniti quibusdam.',
        'modi', 5, NULL, '2009-04-21 12:21:59', '1975-11-11 14:45:38'),
       (66, 66, 56,
        'Hic consequatur voluptatem deleniti dolorem officiis eum minima. Hic enim quia libero dolorem nesciunt quam nisi id. Vel exercitationem maxime adipisci error in magni totam. Ipsa possimus aut perspiciatis hic tempora qui. Exercitationem dolore distinctio totam.',
        'maiores', 68217247, NULL, '1973-01-10 22:30:21', '1996-10-08 18:08:07'),
       (67, 67, 57, 'Ullam qui explicabo quia cumque fuga. Laboriosam aut suscipit in et harum blanditiis quis.',
        'tempora', 118, NULL, '2017-07-11 13:55:56', '1995-06-15 13:32:09'),
       (68, 68, 58,
        'Harum eos eos in adipisci sunt cum animi. Tenetur eius dicta et temporibus ea est ullam. Repudiandae fuga ducimus alias dolor reiciendis voluptatem. Ut accusantium fugit est at autem.',
        'nobis', 4209365, NULL, '2013-10-14 20:53:50', '1989-05-13 04:16:41'),
       (69, 69, 60, 'Harum est non quod similique est officia. Animi asperiores quasi quam ut dolorum.', 'in', 69, NULL,
        '2015-10-09 07:19:28', '1988-01-09 16:02:36'),
       (70, 70, 62,
        'Illo accusantium quia nisi. Voluptatem modi reiciendis voluptatem quia sunt aut totam delectus. Aut repellendus aspernatur reprehenderit voluptatem eum labore et. Omnis voluptatem odit nostrum voluptatum est.',
        'ut', 497723750, NULL, '1984-02-08 00:08:43', '2010-02-15 16:18:52'),
       (71, 71, 63,
        'Deserunt at dolor quia aperiam aut inventore nobis. Velit et voluptate maxime voluptatem quia. Quasi rerum cumque voluptate dolor est nobis.',
        'aut', 271804, NULL, '1977-06-14 08:51:33', '2000-06-06 14:01:56'),
       (72, 72, 64,
        'Ut ut et dolore voluptatem tempora nemo magni. Dicta dolores et sint possimus quae maiores. Repellendus odio amet minus consequatur. Eveniet illum ipsum perferendis.',
        'eos', 2266103, NULL, '2006-07-03 22:44:38', '1993-01-19 09:21:32'),
       (73, 73, 65,
        'Ea minima enim est et accusantium consequuntur eos. Ducimus eligendi earum consectetur impedit enim aliquid quos. Illo dolorem blanditiis quaerat quos ut id rerum.',
        'quod', 8791618, NULL, '1979-05-14 01:01:51', '1982-10-24 09:09:27'),
       (74, 74, 66, 'Maiores sunt sint eligendi in. Repellat explicabo enim sit sed. Vel iure odit voluptate.', 'eos',
        51868254, NULL, '1980-10-26 11:41:57', '2002-11-24 11:40:37'),
       (75, 75, 67,
        'Facilis dignissimos omnis adipisci. Assumenda consequatur nihil est. Est minima eveniet soluta assumenda.',
        'et', 34564440, NULL, '2011-02-16 00:12:20', '1984-06-19 21:40:20'),
       (76, 76, 69, 'Nulla quaerat voluptatem facere facere natus. Nesciunt dolorum cupiditate quia atque ipsam sed.',
        'facere', 251, NULL, '1978-03-10 00:10:07', '1999-07-16 06:27:32'),
       (77, 77, 70,
        'Et voluptatum voluptas officia ab ad in ratione. Et aperiam sed cupiditate sunt pariatur numquam ea. Sint esse non quod.',
        'saepe', 0, NULL, '1989-08-10 10:38:09', '1993-04-28 21:23:33'),
       (78, 78, 71,
        'Exercitationem veritatis hic assumenda molestiae dolor quos aut. Quis id corrupti ipsum reiciendis et. Autem voluptatem aliquid explicabo incidunt voluptatem. Hic corrupti nam quo. Perferendis laborum quis consequatur velit.',
        'aperiam', 22116422, NULL, '1994-10-18 10:41:35', '1990-03-25 07:37:13'),
       (79, 79, 72,
        'Minus incidunt enim et. Aspernatur facere qui laboriosam ullam impedit perspiciatis et maiores. Suscipit quasi velit sit et aliquid labore magnam. Quam voluptate corporis tempora et dolore a.',
        'id', 68878791, NULL, '1983-11-10 17:38:37', '2003-12-10 11:36:35'),
       (80, 80, 73,
        'Est illo quos quia autem. Ipsum corporis voluptatem praesentium ut et aut. Rerum debitis deserunt maxime soluta. Qui sint quis vero et.',
        'et', 90097, NULL, '1996-10-28 04:42:32', '2002-10-23 12:34:45'),
       (81, 81, 74,
        'Molestiae tempore consequatur autem unde doloribus quia consequuntur voluptatem. Quo dolorem eveniet ut veritatis doloribus illum. Quam consequatur ipsam delectus ut possimus et beatae. Dolor ut optio earum incidunt hic in.',
        'debitis', 74, NULL, '1970-07-20 00:45:13', '2011-10-06 19:39:21'),
       (82, 82, 75, 'Occaecati distinctio nisi eligendi. Voluptatem odit dolore sint hic provident sit qui.', 'est',
        796507, NULL, '2017-10-15 20:51:18', '2003-04-20 18:20:05'),
       (83, 83, 76,
        'Ut laborum adipisci ab aut maiores. Minima possimus aut nihil quia. Blanditiis ex voluptas quis sunt ipsum numquam est. Amet vitae eum error corrupti aut mollitia vero.',
        'modi', 536132350, NULL, '1987-12-07 13:23:08', '1981-06-19 04:36:42'),
       (84, 84, 77,
        'Voluptas in unde quas et sunt consequuntur. Eius est eum totam quas dolore ut quo. A dolorem et enim nihil eum nulla.',
        'enim', 48975618, NULL, '1976-04-04 13:18:22', '1971-12-14 11:46:27'),
       (85, 85, 82, 'Quis minima assumenda id aliquam. Aliquam neque consequuntur quia fugit.', 'rem', 92036, NULL,
        '1971-11-07 20:37:15', '1995-07-30 07:30:05'),
       (86, 86, 87,
        'Excepturi doloribus sunt aut est. Magni illo est quisquam et. Aliquid qui quia dicta accusantium expedita dolores odio.',
        'animi', 0, NULL, '2011-09-22 05:15:26', '1984-01-12 15:09:46'),
       (87, 87, 89,
        'Qui dolore exercitationem molestiae. In molestiae reiciendis ut debitis saepe tempore. Eius quia tempore autem numquam possimus ut. Est magnam nisi id dolore.',
        'voluptate', 0, NULL, '1996-04-26 21:17:27', '1997-12-23 11:33:41'),
       (88, 88, 92,
        'Nostrum voluptatem non qui voluptates. Vel fuga repellendus molestias fugit sequi beatae. Commodi corporis est sequi et ut et.',
        'sint', 969265857, NULL, '1970-02-12 00:53:46', '1976-09-13 13:55:02'),
       (89, 89, 94,
        'Et placeat aut et laboriosam et consequatur. Et quidem hic ratione sed accusamus quia. Quasi voluptatem incidunt nobis et libero accusamus doloribus. Molestiae ipsam laborum vel impedit. Tempora saepe repudiandae impedit numquam omnis magnam.',
        'atque', 18605, NULL, '1993-03-25 11:44:56', '1990-08-22 01:28:28'),
       (90, 90, 96,
        'Fugit iusto neque ut numquam ea vel. Perspiciatis quia rerum eaque ad et inventore qui enim. Quaerat tenetur cumque consequatur consequatur. Ut fuga cumque possimus odit.',
        'fugit', 5449524, NULL, '1990-02-11 11:46:25', '1999-09-07 21:10:19'),
       (91, 91, 98,
        'Et numquam et ab officiis. Maxime vel minima magnam voluptate iure. Tenetur qui tenetur iure dolor cum illo neque aut. Minima rerum est dolore voluptas ut maiores est eum.',
        'nemo', 5, NULL, '1994-12-13 14:09:42', '1970-12-25 15:34:30'),
       (92, 92, 99,
        'Laboriosam id fugit saepe sed. Est rerum sed sint voluptatem labore necessitatibus. Eos fugit vel est esse excepturi enim.',
        'iure', 29, NULL, '1988-09-12 07:57:52', '2012-03-29 11:31:56'),
       (93, 93, 100,
        'Dolores debitis qui dignissimos dolores omnis. Et a commodi voluptatem alias cum. Autem dolores deleniti modi quisquam sed sit. Labore et pariatur recusandae et. Sit qui officia enim quia.',
        'omnis', 141316150, NULL, '1993-09-23 18:06:15', '2012-06-15 21:58:41'),
       (94, 94, 51,
        'Quae quibusdam et est nam veniam. Voluptas commodi aspernatur excepturi ea. Omnis recusandae amet iusto suscipit sit libero provident. Rerum odit a quas consequatur ducimus unde.',
        'est', 73128685, NULL, '2008-01-11 09:33:14', '2010-07-23 10:04:29'),
       (95, 95, 52,
        'Quod delectus non hic nemo. Sed perspiciatis perferendis iure et quis distinctio. Dolorum nihil maiores sit in pariatur rerum.',
        'tempore', 23, NULL, '2019-07-28 03:24:35', '2004-02-05 00:43:49'),
       (96, 96, 54,
        'Cumque voluptatibus iusto praesentium sint. Illum doloremque nostrum vero debitis nisi nihil. Et cum rerum est ducimus earum atque.',
        'soluta', 4584129, NULL, '1974-03-29 17:09:14', '1983-04-14 18:21:25'),
       (97, 97, 56,
        'Voluptatem nihil impedit delectus laudantium. Quasi id maxime omnis possimus labore et iure. Ea reiciendis et et debitis eius quasi.',
        'sapiente', 173223, NULL, '1984-05-02 13:08:00', '1975-10-15 04:51:21'),
       (98, 98, 57,
        'Reiciendis saepe provident accusamus debitis quis. Commodi et aspernatur praesentium nostrum minus aut tempora.',
        'quaerat', 84020541, NULL, '2009-08-24 10:56:55', '1998-12-01 03:46:55'),
       (99, 99, 58,
        'Dolorem suscipit reprehenderit aut. Eaque et accusantium consequatur provident dolorem. Consequatur vel deserunt fugiat dolor cumque sunt.',
        'adipisci', 57089, NULL, '1982-07-24 22:20:59', '2007-05-16 15:10:15'),
       (100, 100, 60, 'Explicabo ut dolorem non iste. Magni quod nulla dolor temporibus magnam. Odit aut cum ut porro.',
        'unde', 6786, NULL, '1987-05-01 08:53:43', '1985-11-02 15:54:07');
/*!40000 ALTER TABLE `media`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` datetime                                DEFAULT current_timestamp(),
    `updated_at` datetime                                DEFAULT NULL ON UPDATE current_timestamp(),
    UNIQUE KEY `id` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types`
    DISABLE KEYS */;
INSERT INTO `media_types`
VALUES (1, 'id', '1972-12-20 12:10:11', '1990-04-11 11:55:52'),
       (2, 'aut', '1993-10-21 16:30:21', '2002-10-10 11:34:55'),
       (3, 'error', '1987-01-24 22:15:53', '1976-05-11 02:12:02'),
       (4, 'ut', '2000-10-22 23:10:34', '1978-06-21 08:15:28'),
       (5, 'et', '2000-04-26 22:56:35', '1977-03-19 02:43:39'),
       (6, 'error', '2009-11-29 09:17:51', '2006-06-10 09:36:25'),
       (7, 'pariatur', '1977-07-18 17:18:08', '2013-09-06 22:51:49'),
       (8, 'et', '2015-10-13 06:04:21', '1979-07-31 19:21:41'),
       (9, 'sunt', '2015-02-16 13:11:58', '1976-05-17 18:19:32'),
       (10, 'officia', '2005-01-12 02:40:55', '1979-06-29 03:46:49'),
       (11, 'eos', '2015-05-13 12:25:51', '2000-10-02 16:53:26'),
       (12, 'eum', '2016-05-02 20:15:55', '2003-04-01 18:37:09'),
       (13, 'officiis', '2018-04-02 01:17:44', '2016-04-19 05:31:56'),
       (14, 'ut', '2018-02-27 01:12:09', '2019-09-12 17:42:11'),
       (15, 'eligendi', '1986-05-03 14:58:43', '2013-06-04 06:19:21'),
       (16, 'et', '2001-09-27 05:58:53', '1981-07-29 21:10:47'),
       (17, 'voluptatibus', '2006-07-21 12:02:32', '2017-09-24 16:35:30'),
       (18, 'ea', '1996-02-13 20:21:26', '2010-07-25 21:44:51'),
       (19, 'beatae', '1979-08-28 10:27:07', '1989-03-06 19:42:15'),
       (20, 'dolor', '1976-05-09 16:59:32', '1980-09-18 16:04:37'),
       (21, 'ullam', '1985-12-15 17:11:08', '1998-05-06 18:47:07'),
       (22, 'laudantium', '2002-01-29 21:31:37', '2005-08-07 13:16:40'),
       (23, 'fugiat', '1983-12-31 16:08:50', '2014-04-11 19:03:35'),
       (24, 'voluptas', '1985-02-02 15:12:19', '2012-06-01 17:08:39'),
       (25, 'dicta', '2009-12-04 02:28:32', '1989-01-31 15:13:37'),
       (26, 'iure', '2017-01-20 03:42:28', '2016-08-24 22:47:54'),
       (27, 'sit', '2003-09-01 04:20:00', '2007-02-26 22:58:58'),
       (28, 'at', '1988-10-27 01:50:54', '2017-04-20 02:22:18'),
       (29, 'maiores', '1999-04-20 08:08:02', '2020-06-15 18:22:54'),
       (30, 'ad', '1992-10-02 08:55:06', '1974-10-06 12:09:17'),
       (31, 'qui', '1988-02-25 16:28:59', '2015-01-08 12:54:19'),
       (32, 'nostrum', '2020-06-22 08:51:35', '2004-08-17 22:30:58'),
       (33, 'suscipit', '1977-11-12 03:57:41', '1973-10-31 06:22:21'),
       (34, 'voluptatem', '2019-11-18 06:09:10', '2014-02-12 10:57:32'),
       (35, 'saepe', '2011-11-19 22:38:55', '2017-12-30 15:22:03'),
       (36, 'soluta', '1983-03-06 20:50:49', '2007-08-04 11:59:20'),
       (37, 'adipisci', '1993-02-15 12:22:48', '2003-11-25 20:24:09'),
       (38, 'sed', '2017-01-01 19:31:55', '1973-08-26 10:11:34'),
       (39, 'aliquam', '2009-03-16 11:17:21', '1980-06-27 06:40:10'),
       (40, 'rerum', '1992-02-25 21:16:36', '2008-06-14 09:44:33'),
       (41, 'eum', '1994-07-02 11:47:13', '1982-08-08 10:25:06'),
       (42, 'earum', '2016-02-09 14:43:18', '1974-03-28 10:49:13'),
       (43, 'provident', '1974-11-20 14:04:00', '1995-06-12 22:55:43'),
       (44, 'illo', '2018-08-27 17:57:05', '1970-04-27 05:30:00'),
       (45, 'quo', '2005-07-17 02:05:08', '2013-08-14 04:20:26'),
       (46, 'commodi', '2013-08-22 22:12:22', '1993-03-12 17:19:34'),
       (47, 'necessitatibus', '1974-09-29 00:48:34', '1986-03-24 22:40:04'),
       (48, 'voluptatem', '2014-07-04 09:16:27', '2005-07-18 06:34:30'),
       (49, 'necessitatibus', '2014-10-16 14:34:52', '2000-08-31 10:09:13'),
       (50, 'eius', '1979-03-27 18:01:46', '1974-02-18 19:37:16'),
       (51, 'sequi', '2004-03-20 13:09:39', '2003-08-19 08:30:36'),
       (52, 'earum', '1981-12-29 20:28:17', '1970-10-17 12:08:51'),
       (53, 'qui', '1971-09-20 06:35:51', '2013-11-18 07:34:06'),
       (54, 'qui', '1992-08-17 15:44:05', '2020-10-29 16:39:39'),
       (55, 'quibusdam', '1989-07-02 03:51:52', '2017-07-27 09:20:52'),
       (56, 'commodi', '1993-12-26 21:31:29', '1977-04-29 18:49:44'),
       (57, 'harum', '2005-08-04 23:59:56', '2016-10-20 16:29:06'),
       (58, 'quas', '1994-12-11 07:11:36', '2019-07-09 11:22:30'),
       (59, 'autem', '1998-02-08 13:47:01', '1984-12-07 10:14:38'),
       (60, 'perspiciatis', '1975-11-07 23:13:24', '1990-01-12 06:44:40'),
       (61, 'veniam', '1995-09-26 16:27:19', '1995-01-03 08:27:41'),
       (62, 'officia', '1995-01-20 17:43:55', '1976-05-26 10:58:17'),
       (63, 'quas', '1976-09-17 06:15:22', '2007-06-24 20:39:48'),
       (64, 'rem', '2013-12-27 04:05:15', '1977-06-04 15:44:39'),
       (65, 'iure', '1985-05-14 00:59:14', '1987-06-09 09:59:39'),
       (66, 'corporis', '2012-03-18 16:08:37', '2005-04-30 04:02:57'),
       (67, 'quasi', '2016-09-05 05:42:39', '1985-07-14 08:48:06'),
       (68, 'deleniti', '1989-05-22 14:30:48', '2014-01-19 16:55:08'),
       (69, 'error', '1988-10-11 03:35:41', '2009-03-20 02:59:42'),
       (70, 'odit', '1976-06-22 15:04:31', '2009-10-14 20:27:22'),
       (71, 'blanditiis', '2001-05-01 10:48:05', '2005-01-22 15:28:00'),
       (72, 'quisquam', '1984-09-23 12:53:44', '1987-10-29 13:22:29'),
       (73, 'molestias', '2012-09-12 02:12:07', '2002-04-05 09:08:36'),
       (74, 'nesciunt', '2010-08-08 05:11:53', '1983-06-20 09:42:09'),
       (75, 'vero', '2012-07-04 18:42:17', '2006-12-15 13:50:44'),
       (76, 'id', '1983-06-21 16:36:31', '1981-08-06 20:45:02'),
       (77, 'et', '2012-06-27 06:06:26', '1990-01-07 12:07:56'),
       (78, 'omnis', '2010-05-18 16:01:17', '2020-03-15 06:00:18'),
       (79, 'unde', '1974-06-05 22:52:31', '1984-04-14 12:54:23'),
       (80, 'ut', '2015-07-10 07:09:58', '1997-07-09 03:07:34'),
       (81, 'deserunt', '1971-07-01 19:41:28', '2005-04-28 10:39:47'),
       (82, 'provident', '2014-04-18 14:52:42', '1971-02-06 21:25:28'),
       (83, 'hic', '2013-09-10 16:08:06', '2012-01-20 22:47:50'),
       (84, 'assumenda', '1980-10-01 18:10:44', '2021-01-04 18:28:52'),
       (85, 'dolor', '2015-10-26 07:57:32', '1991-06-28 00:58:37'),
       (86, 'id', '2019-06-21 21:23:58', '1992-12-06 06:44:37'),
       (87, 'error', '1988-05-29 07:08:35', '1977-02-21 01:18:35'),
       (88, 'sint', '1985-09-05 04:16:13', '1976-12-29 02:57:32'),
       (89, 'dolor', '1982-04-11 22:12:20', '1971-05-25 01:36:50'),
       (90, 'voluptas', '1995-08-09 18:01:12', '2010-01-24 09:28:02'),
       (91, 'aspernatur', '1970-12-07 00:41:19', '2016-11-30 03:31:12'),
       (92, 'ut', '1987-05-12 16:11:29', '2006-03-25 11:16:40'),
       (93, 'modi', '1972-05-28 19:48:29', '1980-07-21 00:12:27'),
       (94, 'minus', '1971-03-10 05:27:16', '2000-11-08 16:14:53'),
       (95, 'eos', '1992-09-29 13:47:20', '2010-10-26 14:21:19'),
       (96, 'enim', '1970-08-10 02:26:44', '1993-02-10 16:35:52'),
       (97, 'iste', '2004-05-30 17:29:51', '1985-07-29 09:59:59'),
       (98, 'impedit', '2008-06-19 09:29:46', '2018-06-16 02:09:02'),
       (99, 'repellendus', '1975-11-09 04:13:18', '1980-10-29 15:45:52'),
       (100, 'et', '2012-02-08 22:53:46', '2000-03-19 21:39:25');
/*!40000 ALTER TABLE `media_types`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages`
(
    `id`           bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `from_user_id` bigint(20) unsigned NOT NULL,
    `to_user_id`   bigint(20) unsigned NOT NULL,
    `body`         text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at`   datetime                        DEFAULT current_timestamp(),
    UNIQUE KEY `id` (`id`),
    KEY `from_user_id` (`from_user_id`),
    KEY `to_user_id` (`to_user_id`),
    CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages`
    DISABLE KEYS */;
INSERT INTO `messages`
VALUES (1, 51, 51,
        'Dolore velit omnis odit voluptatem temporibus consequatur aut. Sed culpa voluptatem accusamus nam assumenda ipsum. Veniam impedit quia blanditiis consequuntur quo dolor. Beatae corporis qui aut repudiandae quibusdam.',
        '1977-03-16 10:46:45'),
       (2, 52, 52,
        'Dolorum molestiae nam dolore rerum. Et iusto eos dolor. Architecto voluptates enim placeat explicabo qui.',
        '1988-03-06 00:19:44'),
       (3, 54, 54,
        'Hic voluptas soluta provident magnam blanditiis officiis. Et quisquam aut at repellat qui assumenda.',
        '1988-01-21 07:31:54'),
       (4, 56, 56,
        'Impedit quia facilis quaerat sit maiores. Veniam ducimus sit animi optio consequuntur delectus. Libero autem aliquam quo nobis maxime. Eos earum nesciunt sit vero. Voluptatum est voluptatem vero cum assumenda.',
        '1981-01-24 19:28:19'),
       (5, 57, 57,
        'Voluptas non incidunt ex ut velit omnis. Eum ipsum sunt ut sit et nulla repellat nisi. Quibusdam sit est quos vel et.',
        '2002-11-26 06:34:24'),
       (6, 58, 58,
        'Perferendis illo quos aut eius placeat. Quidem cupiditate dignissimos ea sint atque. Consequatur autem tempora eligendi voluptatum voluptas ad velit. Sed laboriosam dolores molestiae.',
        '1982-11-20 17:24:07'),
       (7, 60, 60, 'Ut ut quos sint. Et et eos cumque in natus et. Sint adipisci voluptatum ipsum qui.',
        '1996-08-11 23:28:00'),
       (8, 62, 62,
        'Exercitationem ut in aut rerum vitae. Cupiditate repellat exercitationem cupiditate hic illo atque.',
        '2002-03-06 14:57:18'),
       (9, 63, 63,
        'Sit vel rerum voluptatem asperiores ut eos. Dolores nam eum aut consequatur voluptas. Dolorum ut sequi a optio mollitia aut dolore.',
        '1990-07-22 17:01:28'),
       (10, 64, 64,
        'Fuga iste deleniti dolores similique quia placeat. Est molestiae est atque minima quaerat consequatur ut. Rerum magni aliquam sunt enim ipsum dolorum consequatur. Tempora est molestias magni quaerat minima sed.',
        '1986-04-27 06:02:58'),
       (11, 65, 65,
        'Temporibus corrupti alias facere occaecati. At quibusdam perspiciatis aut quidem explicabo. Consequuntur est in in id sequi expedita. Voluptate dicta assumenda suscipit quis rem in.',
        '2011-07-07 20:20:05'),
       (12, 66, 66,
        'Laborum repudiandae eum ex dolores sequi id. Omnis veritatis accusamus labore eaque. Ipsam qui est necessitatibus qui accusantium minus. Libero est ut neque quas tenetur debitis beatae.',
        '2000-12-21 10:25:05'),
       (13, 67, 67,
        'Dolor aperiam sit aut atque. Sint nostrum optio fugit aut. Vitae ipsum qui aliquid est eos aut dolores omnis. Omnis dolore accusamus mollitia quo nemo aut.',
        '1989-02-20 08:39:06'),
       (14, 69, 69,
        'Odio voluptatem quas nesciunt labore qui aut deserunt quasi. Sapiente vero atque exercitationem porro aspernatur omnis. Iure soluta repudiandae est non earum blanditiis.',
        '1999-10-04 11:00:28'),
       (15, 70, 70,
        'Ut sit error cupiditate maiores ad et. Ea accusantium libero suscipit modi facere. Sed corrupti sunt consequatur aut.',
        '2019-06-23 14:22:00'),
       (16, 71, 71,
        'Sunt debitis asperiores consequatur cupiditate explicabo aspernatur ullam. Sed alias nam et autem voluptate iste voluptatem. Eos accusantium hic et dolorem commodi excepturi. Autem minus quis similique eum iste.',
        '2013-08-07 03:31:39'),
       (17, 72, 72,
        'Quis quo quo corporis consectetur consequatur nihil hic nemo. Sint repudiandae alias impedit magni. Doloremque aut nulla illo eius sed voluptates. Aspernatur esse a qui libero.',
        '1973-12-31 02:39:14'),
       (18, 73, 73,
        'Adipisci laborum iure autem pariatur nam fuga quis. Repellat unde quae doloribus numquam. Aut molestiae rerum asperiores reiciendis.',
        '1977-10-06 12:56:58'),
       (19, 74, 74,
        'Eaque voluptatem dolorem consectetur distinctio enim. Ipsa ea culpa harum et nihil autem odit. Ea dolorum sint voluptas ut reprehenderit qui. Nesciunt sunt reiciendis in hic alias id autem corporis. Minima dolor quo a qui.',
        '1977-10-02 00:57:30'),
       (20, 75, 75,
        'Aliquam rerum saepe est et blanditiis molestiae. Delectus itaque laudantium cupiditate. Quisquam animi nesciunt rerum ut vitae. Et incidunt exercitationem unde.',
        '2020-02-05 22:49:48'),
       (21, 76, 76,
        'Est est molestiae sit id repellendus ut inventore. Quo ipsum hic exercitationem inventore cupiditate quod qui. Assumenda rem explicabo architecto vel unde inventore.',
        '1993-11-17 17:38:58'),
       (22, 77, 77,
        'Soluta quam sunt aut voluptatem dolores quaerat. Et dignissimos consequuntur deserunt aliquam. Ratione atque consequatur et facere. Vero non labore velit possimus.',
        '1990-10-14 12:36:58'),
       (23, 82, 82, 'Libero fugit vitae iusto distinctio maiores. Et repellendus consequatur odit nostrum.',
        '1975-01-05 23:17:10'),
       (24, 87, 87,
        'Dolor quaerat eius eum dolorem alias unde modi. Delectus ducimus a aut quis molestiae a. Possimus quis voluptas minima.',
        '1970-11-21 17:57:30'),
       (25, 89, 89,
        'Illum rerum ut qui quae dolorem. Rerum laborum ex provident sequi. Cupiditate et ut explicabo illum vel dolorem. Provident recusandae possimus quaerat.',
        '2012-07-20 12:38:43'),
       (26, 92, 92,
        'Error beatae et ut velit dolores perferendis. Aut dolorem fugit saepe sint. Ut tenetur dolor earum reprehenderit. Beatae deserunt ducimus odio sunt eum.',
        '2007-04-14 02:47:52'),
       (27, 94, 94,
        'Facilis fuga illum cum numquam facilis modi perferendis. Omnis aliquid voluptatibus libero delectus. Quis itaque aut natus aut est. Omnis voluptas aperiam aut et molestiae.',
        '1986-04-18 08:08:59'),
       (28, 96, 96,
        'Ut debitis eveniet in dolorem ut ipsa sit. Excepturi velit et consectetur minima. Ut accusantium qui distinctio sint. Ad voluptatibus sunt reprehenderit possimus explicabo aut numquam.',
        '2009-12-10 11:20:19'),
       (29, 98, 98,
        'Sunt sed quia nihil pariatur eos voluptas. Autem eveniet optio consequatur modi autem ipsa. Unde sunt laborum dicta repudiandae quis tempore enim.',
        '1994-08-16 23:22:27'),
       (30, 99, 99,
        'Eaque nihil qui accusamus dolores architecto dolorum repudiandae. Iure fugit optio id ducimus dolor. Cumque iusto enim hic praesentium cumque quia.',
        '1996-01-27 08:13:32'),
       (31, 100, 100,
        'Commodi expedita odio sed provident doloribus magnam porro. Neque eius temporibus labore soluta occaecati dolor. Rerum molestiae aliquid illum.',
        '1993-09-08 21:04:53'),
       (32, 51, 51,
        'Est debitis qui nostrum nobis consequatur in. Voluptate quibusdam quam unde enim aut dignissimos cumque. Est necessitatibus maiores non dolore. Necessitatibus ad voluptatem illum voluptatem.',
        '1983-10-29 16:35:58'),
       (33, 52, 52,
        'Perferendis ut et illo dolor laudantium vel sunt quis. Numquam maiores nihil et et aut illo a. Nulla ea et quasi dolor qui fugit veritatis. Maxime itaque repellat eveniet possimus aut aut architecto delectus.',
        '1992-07-25 19:48:15'),
       (34, 54, 54,
        'Voluptates reiciendis sed corporis. Cum totam vero quidem dolorem quo dicta. Laboriosam hic eum facere rerum pariatur voluptatem labore.',
        '1980-11-27 00:40:06'),
       (35, 56, 56,
        'Asperiores et ipsum qui nesciunt ut dolorem cum. Dolores sit natus nihil quia doloribus rerum. Qui quibusdam et mollitia magnam maiores. Incidunt quibusdam fuga ipsam nihil reprehenderit sit.',
        '1974-07-24 05:12:34'),
       (36, 57, 57,
        'Quod suscipit est dolorem incidunt qui. Laudantium modi placeat quia architecto corrupti quibusdam ipsam. Voluptatem impedit soluta voluptatibus iste consequatur delectus fugit. Dolore sed molestias iusto recusandae cum asperiores.',
        '1971-08-12 20:17:31'),
       (37, 58, 58,
        'Et suscipit praesentium a ab. Soluta eligendi in et voluptas id eum eveniet. Voluptatum rerum laborum facere dolores. Vitae voluptas voluptatem sunt voluptatem nihil est. In animi sit repellat in enim commodi a.',
        '2010-04-20 16:00:32'),
       (38, 60, 60,
        'Modi dolore sit accusantium veritatis. Mollitia est molestias aperiam et facere nihil. Quos expedita molestias itaque enim et eaque qui. Rerum aspernatur laudantium nobis ipsam voluptas ut animi.',
        '1980-01-06 17:11:51'),
       (39, 62, 62, 'Dolor quam deleniti doloremque dolor nam cum quae. Et voluptas omnis vitae eaque.',
        '1972-12-06 14:32:15'),
       (40, 63, 63,
        'Quis et sint dolorum. Eum animi sit dolores quis. Rem distinctio vel occaecati numquam. Officia porro ut inventore vero molestiae et nihil est.',
        '1997-07-05 12:18:52'),
       (41, 64, 64,
        'Dolor id nisi nobis aut. Perferendis officia qui perferendis libero laborum sed. Beatae minima et et rem eum aut impedit. Beatae quidem repudiandae quia.',
        '1972-04-29 01:16:48'),
       (42, 65, 65,
        'Blanditiis voluptates id vel in. Delectus modi iure autem iste quidem atque illo. Et quo libero quisquam dolores.',
        '2000-01-11 20:35:20'),
       (43, 66, 66, 'Atque sed iusto sapiente optio corrupti. Omnis qui omnis ea et. Animi sed et vel cum doloremque.',
        '1982-09-09 09:01:53'),
       (44, 67, 67,
        'Error ab magni consectetur doloribus repellendus cumque. Omnis id id sapiente voluptate. Et ut sint reiciendis.',
        '1970-02-16 18:20:47'),
       (45, 69, 69,
        'Accusantium et cumque quo in officia et. Ex quibusdam eligendi ab perspiciatis numquam quo dicta molestiae. Autem voluptatem ea ut dolore unde est perferendis optio. Blanditiis fugiat quo veniam. Maxime laudantium eaque labore distinctio aut eaque tenetur.',
        '1980-03-03 14:02:24'),
       (46, 70, 70,
        'Dolore debitis neque tempora repellendus. Vero maiores aut fugit excepturi asperiores enim debitis. Id itaque consequatur ut sint. Voluptatibus veritatis illum saepe.',
        '1998-09-22 05:29:42'),
       (47, 71, 71,
        'Non eum quos quia nisi fuga consequuntur dolore quaerat. Veniam minus non sit a necessitatibus enim quis a. Asperiores ipsum et excepturi adipisci maiores cumque explicabo laudantium. Consequatur doloremque et iste cupiditate eaque laborum.',
        '2002-02-12 10:06:56'),
       (48, 72, 72, 'Totam ut et et. Iure nobis quibusdam animi modi. Eos impedit illo a beatae.',
        '1996-06-17 16:06:53'),
       (49, 73, 73,
        'Consequatur rem minus et autem optio quibusdam consectetur. Ipsam odit consequuntur temporibus quaerat adipisci nisi dolorem. Ullam dolores velit corrupti quod. Sit vel inventore omnis aspernatur alias sunt voluptatem eos.',
        '1983-05-10 09:50:14'),
       (50, 74, 74,
        'Dolor distinctio nemo consequatur nihil distinctio doloribus ut iste. Accusamus ut sit tempora fugiat repudiandae ea quia. Praesentium voluptatem autem deserunt dolorem asperiores ipsum nobis doloribus. Sint atque ex ducimus similique natus aliquid.',
        '2017-12-24 13:06:23'),
       (51, 75, 75,
        'Vitae beatae possimus eos. Recusandae quis commodi eum temporibus. Sed itaque veritatis occaecati iusto necessitatibus libero eligendi vero. Sapiente expedita reiciendis consequatur laboriosam alias consequatur aspernatur.',
        '2006-06-15 16:00:14'),
       (52, 76, 76,
        'Quis molestiae optio ut qui nihil. Sit adipisci tenetur sit fuga sit facere beatae. Voluptatum quia architecto est repudiandae ex. Esse vitae voluptatibus ab aut.',
        '2007-02-21 19:45:52'),
       (53, 77, 77,
        'Illo et minima autem reprehenderit et aliquam. Est ut qui earum qui omnis fugit iste. Omnis delectus alias ad at dignissimos quasi. Dolor deserunt odio delectus similique. Qui maxime in dolorem.',
        '2012-12-04 12:59:42'),
       (54, 82, 82,
        'Dignissimos eos ut cum accusamus non. Molestias accusamus commodi reiciendis quas. Enim occaecati et dolorum sunt et repellat delectus. Sunt iure iure sit aut.',
        '1983-11-21 15:06:38'),
       (55, 87, 87, 'Adipisci explicabo occaecati facilis. Dicta non perferendis vero sed sed blanditiis.',
        '2009-05-19 07:22:04'),
       (56, 89, 89,
        'Repellendus reiciendis molestiae autem ut non tempora. Et voluptas repudiandae voluptas sed qui. Et reprehenderit odio blanditiis quibusdam debitis soluta perferendis. Hic velit reprehenderit rem.',
        '2006-10-14 22:10:19'),
       (57, 92, 92,
        'Aut ut repellat sunt aut iusto dolorem. Occaecati ut quia labore in facilis asperiores omnis quibusdam. Minima ipsam quo placeat consequatur. Itaque autem soluta aut mollitia.',
        '1999-04-11 05:36:34'),
       (58, 94, 94,
        'Autem omnis qui in consequatur sunt. Aut dolorum voluptas beatae sint qui doloremque. Voluptas quaerat consectetur consequatur eum natus porro. Soluta autem sequi quia qui sed perferendis commodi.',
        '1976-03-16 22:07:09'),
       (59, 96, 96,
        'Nihil ab sit unde cupiditate facere. Consequatur harum eveniet temporibus sit distinctio suscipit voluptatem. Voluptas incidunt unde deleniti rerum odit enim.',
        '2013-02-15 17:59:18'),
       (60, 98, 98,
        'Magnam voluptatem beatae qui voluptatibus voluptatum laboriosam dolores. Cumque aut quia praesentium voluptates iure in. Necessitatibus repudiandae incidunt dolorum pariatur qui eum.',
        '1987-04-19 05:07:27'),
       (61, 99, 99,
        'Excepturi sit occaecati in. Ducimus sit aut natus aut facere. Sit ea provident minus eos esse consequatur perferendis ut.',
        '2005-02-08 01:21:09'),
       (62, 100, 100,
        'Culpa necessitatibus tempora aut. Sed qui et veritatis provident voluptate ea eos. Voluptatem voluptate dicta dolorem quam ratione. Cupiditate voluptatem perferendis debitis eum tenetur deleniti occaecati. Et odit vero iste aliquam sunt consequatur illo.',
        '2003-01-01 05:14:12'),
       (63, 51, 51,
        'Velit autem ut adipisci. Et qui quisquam enim vitae. Molestiae fugiat sed similique nihil atque. Veniam unde vero itaque. Harum officia error voluptas magnam.',
        '2013-08-28 02:53:05'),
       (64, 52, 52,
        'Corrupti eaque et quibusdam quia. Illum quaerat vero ut. Aut sit sit quasi rerum eligendi. Illo sed sit mollitia consequatur et enim suscipit.',
        '2006-12-08 00:40:50'),
       (65, 54, 54,
        'Laudantium nihil velit praesentium repellendus fugit. Expedita dolore dignissimos cumque dolores quia necessitatibus molestias. Illo molestiae eum vitae.',
        '1983-06-30 20:24:17'),
       (66, 56, 56,
        'Sed et ducimus blanditiis eum et quos accusantium blanditiis. Suscipit corporis consequatur consequatur laudantium quo. Consectetur magnam voluptatem ipsam ut.',
        '2001-07-27 19:23:21'),
       (67, 57, 57,
        'Est quisquam sed exercitationem odit autem numquam. Qui et et quia itaque non. Quos sunt illum fugit tempora modi dolorem. Aliquam unde nostrum consequatur architecto distinctio.',
        '2012-01-07 06:09:15'),
       (68, 58, 58,
        'Autem ipsum et assumenda soluta. Explicabo sint sunt dolores. Rerum distinctio ratione impedit vitae omnis expedita.',
        '1987-04-14 12:31:14'),
       (69, 60, 60,
        'Hic vel dolore odio itaque exercitationem odio voluptatem. Debitis dolorem et et dolorem accusantium quasi maxime.',
        '1992-03-02 20:57:44'),
       (70, 62, 62,
        'Pariatur esse cum architecto esse consequuntur molestias quod. Non suscipit nesciunt eum vero sapiente nam.',
        '2013-07-14 22:04:25'),
       (71, 63, 63,
        'Temporibus qui quis voluptatum autem sed voluptate quis eaque. Numquam repellendus sed eos id sunt et. Dolore ut voluptatem tempore ipsa molestias molestias ullam.',
        '1999-07-29 04:21:42'),
       (72, 64, 64,
        'Eos non dolorem aliquid fugiat amet nulla voluptatem molestiae. Debitis dolor rerum nam repudiandae minus molestiae molestiae. Voluptate maxime aliquid doloremque sequi necessitatibus sed blanditiis.',
        '1977-05-25 01:18:23'),
       (73, 65, 65,
        'Neque et quia ipsa repellat dolores autem. Tempore sint vel sunt doloribus. Rerum assumenda non dolores sed numquam non odit ut.',
        '1975-01-12 06:42:56'),
       (74, 66, 66,
        'Voluptatem omnis fugit aut debitis ut eligendi. Rerum eos rerum necessitatibus inventore. Aperiam minima magni iste a assumenda.',
        '1970-03-02 05:57:15'),
       (75, 67, 67,
        'Et quis necessitatibus nulla odio. Non reprehenderit exercitationem minus occaecati mollitia nisi delectus veritatis. Iusto quas cum ad alias aut voluptatem magni. Dignissimos minus quos vel voluptas ea.',
        '1983-10-24 03:20:35'),
       (76, 69, 69,
        'Qui voluptatem molestias expedita. Aut aut consequuntur dicta aspernatur consectetur exercitationem velit quia. Saepe eveniet et voluptates nihil aut rem. Nulla est voluptate laudantium quae rem incidunt est.',
        '1973-09-11 01:09:48'),
       (77, 70, 70,
        'Ut hic perferendis dolorum dolorem ratione. Id earum architecto cumque et accusamus. Id distinctio sunt necessitatibus nemo necessitatibus. Beatae repellat ea eaque incidunt sed eaque quia.',
        '2016-02-26 10:08:50'),
       (78, 71, 71,
        'Et et repellat ratione ut ipsam quae asperiores. Ad debitis impedit in eum excepturi. Explicabo non dolorem est. Dolor aut vitae et nemo.',
        '1981-09-18 01:21:31'),
       (79, 72, 72,
        'Ratione autem est amet soluta molestias rerum quia natus. Quia laudantium quia aperiam rerum. Dolorum sit alias vel aut. Necessitatibus perferendis magni facere corporis distinctio nihil deleniti.',
        '1983-02-21 09:57:41'),
       (80, 73, 73,
        'Beatae nemo reprehenderit laborum at est. Atque et et alias dignissimos officia est. Et consectetur exercitationem voluptatem expedita. Ut nihil asperiores animi ex aut perferendis.',
        '1992-08-21 14:51:08'),
       (81, 74, 74, 'Aspernatur ratione est quam molestiae. Voluptas assumenda repellendus vero deleniti.',
        '1974-10-26 04:13:19'),
       (82, 75, 75,
        'Maiores odit dolores sit. Sed laudantium quas eius debitis pariatur quia. Iusto magnam aspernatur placeat. Dicta quas necessitatibus incidunt sit quasi.',
        '1988-08-21 18:02:31'),
       (83, 76, 76,
        'Repellendus debitis corporis ut sit et. Similique asperiores dicta aut nihil. Porro qui consequatur molestiae aut ab. Rem rerum voluptatum et voluptatem culpa.',
        '2000-04-05 11:04:07'),
       (84, 77, 77,
        'In est tempore quia non officiis ullam quo. Nihil est molestiae veritatis doloremque. Optio totam saepe laborum cum.',
        '1998-06-25 20:35:58'),
       (85, 82, 82, 'Nulla qui quidem ut minima vel. Vel quasi sed voluptatum maxime quos et sint.',
        '2008-04-23 05:33:02'),
       (86, 87, 87,
        'Magni ipsum similique ratione est consectetur. Doloribus eveniet cupiditate vitae quo aut similique occaecati eligendi.',
        '1998-05-28 19:52:16'),
       (87, 89, 89,
        'Est aut similique porro. Fugiat sed ab beatae blanditiis et tempore et. Voluptas ea tempora quibusdam nisi. Aut ut dolore dolores adipisci quam numquam qui.',
        '2015-03-19 08:50:07'),
       (88, 92, 92,
        'Eaque qui odit officiis vitae. Quis non aut laboriosam eos quas. Velit suscipit earum aut quasi consectetur quasi. Consequatur sit consectetur voluptas inventore.',
        '1978-01-13 12:11:53'),
       (89, 94, 94,
        'Eaque voluptatem odit fugiat reiciendis est. Assumenda voluptatem deserunt laborum sapiente. Et est esse quos consequuntur deleniti. Perspiciatis consectetur magnam totam vel nostrum harum eveniet voluptatem.',
        '2011-04-30 08:10:19'),
       (90, 96, 96,
        'Iure voluptatem sed possimus. Architecto corrupti et et aut hic recusandae. Ut in unde fuga ut aspernatur inventore. Praesentium ullam excepturi doloremque voluptas quo.',
        '1987-05-05 22:21:19'),
       (91, 98, 98,
        'Tempora error nam quo ut. Molestiae porro necessitatibus excepturi qui non quibusdam praesentium. Nostrum magni repudiandae voluptatem at. Placeat in consequatur tempora sit esse hic dolorum.',
        '1998-06-09 21:48:22'),
       (92, 99, 99, 'Quia rerum voluptatem beatae. Dolorem quasi a nulla. Qui est deserunt cum aliquid ad non.',
        '1982-01-20 19:32:08'),
       (93, 100, 100,
        'Odit dignissimos nihil perspiciatis velit. Atque ut adipisci error rerum minus aliquid ut. Atque sequi nulla placeat nisi. Totam repudiandae numquam laboriosam rerum iste. Mollitia maiores blanditiis ipsam.',
        '1971-04-04 18:23:13'),
       (94, 51, 51,
        'Similique sequi delectus velit quod in incidunt. Molestiae omnis qui et sequi cum voluptatem. Ab exercitationem incidunt ratione. Modi temporibus ut totam voluptatem amet ad.',
        '1987-06-22 15:04:16'),
       (95, 52, 52,
        'In ea fugiat quo exercitationem omnis. Velit neque et et consectetur adipisci quo sequi earum. Consectetur quidem unde quod temporibus quis accusantium tempora rerum. Nihil amet vero aut et quaerat iste aut culpa.',
        '2019-04-27 04:39:26'),
       (96, 54, 54,
        'Veniam illum repellat in officiis non. Eum tempore consequatur magnam enim dolorum perferendis. Ratione beatae perspiciatis excepturi neque. Tempora dignissimos ipsa ducimus fuga ut autem.',
        '1980-07-07 10:04:20'),
       (97, 56, 56,
        'Impedit qui numquam possimus id. Omnis qui ea est est voluptatibus consequatur. Est ipsam maxime voluptatem. Itaque incidunt voluptatum et velit.',
        '2014-07-16 17:39:36'),
       (98, 57, 57,
        'Nihil eligendi tempora facere placeat vel molestiae. Dolores dolorem esse id non quo eos doloremque accusamus. Laboriosam velit dignissimos ab distinctio. Qui ratione eius voluptates assumenda nihil recusandae libero.',
        '1979-03-29 12:29:58'),
       (99, 58, 58,
        'Enim itaque natus doloremque quisquam sed. Cupiditate hic nihil officia nihil. Cum mollitia dolorem consectetur aliquam. Voluptatem aut deleniti ut incidunt qui voluptates.',
        '1987-11-09 13:22:06'),
       (100, 60, 60,
        'Animi ea fugit tempora ut aut a vitae rem. Sint explicabo sint facilis sunt. Nihil consequuntur non ipsa.',
        '2020-12-30 21:47:02');
/*!40000 ALTER TABLE `messages`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_albums`
(
    `id`      bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`    varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_id` bigint(20) unsigned                     DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums`
    DISABLE KEYS */;
INSERT INTO `photo_albums`
VALUES (1, 'veritatis', 51),
       (2, 'neque', 52),
       (3, 'et', 54),
       (4, 'rerum', 56),
       (5, 'quia', 57),
       (6, 'quos', 58),
       (7, 'eos', 60),
       (8, 'voluptatem', 62),
       (9, 'cumque', 63),
       (10, 'necessitatibus', 64),
       (11, 'qui', 65),
       (12, 'esse', 66),
       (13, 'officia', 67),
       (14, 'ullam', 69),
       (15, 'tempora', 70),
       (16, 'quia', 71),
       (17, 'veritatis', 72),
       (18, 'assumenda', 73),
       (19, 'voluptas', 74),
       (20, 'quod', 75),
       (21, 'officia', 76),
       (22, 'rerum', 77),
       (23, 'aut', 82),
       (24, 'iusto', 87),
       (25, 'sapiente', 89),
       (26, 'quia', 92),
       (27, 'voluptatem', 94),
       (28, 'expedita', 96),
       (29, 'officia', 98),
       (30, 'est', 99),
       (31, 'quis', 100),
       (32, 'provident', 51),
       (33, 'deserunt', 52),
       (34, 'esse', 54),
       (35, 'impedit', 56),
       (36, 'deleniti', 57),
       (37, 'atque', 58),
       (38, 'quisquam', 60),
       (39, 'sit', 62),
       (40, 'fugiat', 63),
       (41, 'sed', 64),
       (42, 'iure', 65),
       (43, 'cupiditate', 66),
       (44, 'architecto', 67),
       (45, 'asperiores', 69),
       (46, 'impedit', 70),
       (47, 'veritatis', 71),
       (48, 'cupiditate', 72),
       (49, 'neque', 73),
       (50, 'voluptatem', 74),
       (51, 'numquam', 75),
       (52, 'iusto', 76),
       (53, 'qui', 77),
       (54, 'enim', 82),
       (55, 'eum', 87),
       (56, 'voluptatem', 89),
       (57, 'enim', 92),
       (58, 'autem', 94),
       (59, 'magni', 96),
       (60, 'et', 98),
       (61, 'reprehenderit', 99),
       (62, 'eum', 100),
       (63, 'qui', 51),
       (64, 'doloribus', 52),
       (65, 'ab', 54),
       (66, 'voluptatem', 56),
       (67, 'velit', 57),
       (68, 'neque', 58),
       (69, 'cumque', 60),
       (70, 'veniam', 62),
       (71, 'ea', 63),
       (72, 'maiores', 64),
       (73, 'deleniti', 65),
       (74, 'veritatis', 66),
       (75, 'quo', 67),
       (76, 'eos', 69),
       (77, 'quae', 70),
       (78, 'ullam', 71),
       (79, 'aspernatur', 72),
       (80, 'rem', 73),
       (81, 'eos', 74),
       (82, 'esse', 75),
       (83, 'nobis', 76),
       (84, 'consequatur', 77),
       (85, 'delectus', 82),
       (86, 'distinctio', 87),
       (87, 'officia', 89),
       (88, 'suscipit', 92),
       (89, 'nulla', 94),
       (90, 'molestiae', 96),
       (91, 'dicta', 98),
       (92, 'velit', 99),
       (93, 'provident', 100),
       (94, 'rerum', 51),
       (95, 'sit', 52),
       (96, 'voluptas', 54),
       (97, 'aperiam', 56),
       (98, 'voluptas', 57),
       (99, 'sint', 58),
       (100, 'aliquid', 60);
/*!40000 ALTER TABLE `photo_albums`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos`
(
    `id`       bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `album_id` bigint(20) unsigned DEFAULT NULL,
    `media_id` bigint(20) unsigned NOT NULL,
    UNIQUE KEY `id` (`id`),
    KEY `album_id` (`album_id`),
    KEY `media_id` (`media_id`),
    CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
    CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos`
    DISABLE KEYS */;
INSERT INTO `photos`
VALUES (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3),
       (4, 4, 4),
       (5, 5, 5),
       (6, 6, 6),
       (7, 7, 7),
       (8, 8, 8),
       (9, 9, 9),
       (10, 10, 10),
       (11, 11, 11),
       (12, 12, 12),
       (13, 13, 13),
       (14, 14, 14),
       (15, 15, 15),
       (16, 16, 16),
       (17, 17, 17),
       (18, 18, 18),
       (19, 19, 19),
       (20, 20, 20),
       (21, 21, 21),
       (22, 22, 22),
       (23, 23, 23),
       (24, 24, 24),
       (25, 25, 25),
       (26, 26, 26),
       (27, 27, 27),
       (28, 28, 28),
       (29, 29, 29),
       (30, 30, 30),
       (31, 31, 31),
       (32, 32, 32),
       (33, 33, 33),
       (34, 34, 34),
       (35, 35, 35),
       (36, 36, 36),
       (37, 37, 37),
       (38, 38, 38),
       (39, 39, 39),
       (40, 40, 40),
       (41, 41, 41),
       (42, 42, 42),
       (43, 43, 43),
       (44, 44, 44),
       (45, 45, 45),
       (46, 46, 46),
       (47, 47, 47),
       (48, 48, 48),
       (49, 49, 49),
       (50, 50, 50),
       (51, 51, 51),
       (52, 52, 52),
       (53, 53, 53),
       (54, 54, 54),
       (55, 55, 55),
       (56, 56, 56),
       (57, 57, 57),
       (58, 58, 58),
       (59, 59, 59),
       (60, 60, 60),
       (61, 61, 61),
       (62, 62, 62),
       (63, 63, 63),
       (64, 64, 64),
       (65, 65, 65),
       (66, 66, 66),
       (67, 67, 67),
       (68, 68, 68),
       (69, 69, 69),
       (70, 70, 70),
       (71, 71, 71),
       (72, 72, 72),
       (73, 73, 73),
       (74, 74, 74),
       (75, 75, 75),
       (76, 76, 76),
       (77, 77, 77),
       (78, 78, 78),
       (79, 79, 79),
       (80, 80, 80),
       (81, 81, 81),
       (82, 82, 82),
       (83, 83, 83),
       (84, 84, 84),
       (85, 85, 85),
       (86, 86, 86),
       (87, 87, 87),
       (88, 88, 88),
       (89, 89, 89),
       (90, 90, 90),
       (91, 91, 91),
       (92, 92, 92),
       (93, 93, 93),
       (94, 94, 94),
       (95, 95, 95),
       (96, 96, 96),
       (97, 97, 97),
       (98, 98, 98),
       (99, 99, 99),
       (100, 100, 100);
/*!40000 ALTER TABLE `photos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles`
(
    `user_id`    bigint(20) unsigned NOT NULL,
    `gender`     char(1) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `birthday`   date                                    DEFAULT NULL,
    `photo_id`   bigint(20) unsigned                     DEFAULT NULL,
    `created_at` datetime                                DEFAULT current_timestamp(),
    `hometown`   varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    UNIQUE KEY `user_id` (`user_id`),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles`
    DISABLE KEYS */;
INSERT INTO `profiles`
VALUES (51, NULL, '2020-06-26', 1, '1984-08-09 13:17:03', NULL),
       (52, NULL, '1995-01-19', 2, '2019-03-30 13:07:51', NULL),
       (54, NULL, '1987-10-05', 3, '1978-01-05 20:55:33', NULL),
       (56, NULL, '1994-01-19', 4, '2013-12-27 22:28:45', NULL),
       (57, NULL, '2018-10-27', 5, '1992-01-15 03:44:51', NULL),
       (58, NULL, '2006-06-28', 6, '2020-06-19 04:22:13', NULL),
       (60, NULL, '1977-05-15', 7, '1979-03-21 16:33:35', NULL),
       (62, NULL, '2002-10-21', 8, '2002-02-12 22:41:23', NULL),
       (63, NULL, '1996-05-12', 9, '1981-12-26 02:34:39', NULL),
       (64, NULL, '1987-09-14', 10, '1971-05-17 15:52:57', NULL),
       (65, NULL, '1977-05-01', 11, '2020-05-04 02:35:35', NULL),
       (66, NULL, '2001-11-03', 12, '1972-05-24 03:40:50', NULL),
       (67, NULL, '1975-02-12', 13, '1972-06-30 12:54:24', NULL),
       (69, NULL, '2018-07-27', 14, '1977-10-27 05:20:27', NULL),
       (70, NULL, '2008-01-20', 15, '1972-06-24 03:47:59', NULL),
       (71, NULL, '2016-06-21', 16, '2017-11-03 03:57:00', NULL),
       (72, NULL, '1983-10-12', 17, '2008-06-11 15:04:27', NULL),
       (73, NULL, '2015-07-09', 18, '1985-05-24 17:08:49', NULL),
       (74, NULL, '1991-07-10', 19, '2007-11-07 15:08:04', NULL),
       (75, NULL, '2000-10-02', 20, '1990-10-24 13:46:32', NULL),
       (76, NULL, '1973-09-21', 21, '1973-12-26 12:42:19', NULL),
       (77, NULL, '1973-09-23', 22, '2010-07-09 18:43:42', NULL),
       (82, NULL, '1994-04-18', 23, '1974-11-29 13:24:39', NULL),
       (87, NULL, '2021-05-11', 24, '2009-03-17 11:31:12', NULL),
       (89, NULL, '2007-10-18', 25, '2009-10-19 15:43:07', NULL),
       (92, NULL, '1971-05-22', 26, '2004-03-23 10:51:09', NULL),
       (94, NULL, '2010-10-28', 27, '2019-12-14 04:22:42', NULL),
       (96, NULL, '1997-06-27', 28, '2020-04-14 02:21:18', NULL),
       (98, NULL, '1989-06-20', 29, '1982-07-14 01:50:03', NULL),
       (99, NULL, '1980-09-18', 30, '1970-01-30 13:08:13', NULL),
       (100, NULL, '2002-07-05', 31, '2013-08-30 08:37:18', NULL);
/*!40000 ALTER TABLE `profiles`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `firstname`     varchar(50) COLLATE utf8mb4_unicode_ci  DEFAULT NULL,
    `lastname`      varchar(50) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT 'Фамиль',
    `email`         varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `phone`         bigint(20) unsigned                     DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `phone` (`phone`),
    KEY `users_firstname_lastname_idx` (`firstname`, `lastname`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='юзеры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users`
    DISABLE KEYS */;
INSERT INTO `users`
VALUES (51, 'Aniyah', 'Gaylord', 'franco.emard@example.org', '48f5361316631f03ea702fbae5c73f9ea3a131a7', 1),
       (52, 'Quinton', 'Berge', 'kiara73@example.com', 'ce1c85185a58fd65cb37044d5d1b47c62d8ea1d9', 180513),
       (54, 'Rhea', 'Crist', 'ukuhlman@example.com', '291536339dc94a47cae98e376856488ecce2f650', 215659),
       (56, 'Zora', 'Welch', 'rosemary.turcotte@example.com', '96316c99d5a7fb7e5b56b78733fde2361872a2a5', 58),
       (57, 'Yasmin', 'Thiel', 'gutmann.heidi@example.com', '6ca72bd224c5956d3fcd36137d0becf4fad943f5', 1716359066),
       (58, 'Jaquelin', 'Haley', 'berenice89@example.com', '7139cec3bc95bf0f079a944b07e895805a49b79e', 750),
       (60, 'Mauricio', 'Volkman', 'schuppe.rico@example.net', 'b98fd7ca0c87948c0a742f27cadf0cd282fe4557', 509509),
       (62, 'Peyton', 'Jacobi', 'vbrekke@example.net', '2306739372a79108d97d81703774adf1ff1ec04a', 987),
       (63, 'Mauricio', 'Bernier', 'dare.tanya@example.net', '585459897b9a9644cf26ed30d55b15665181754e', 685),
       (64, 'Tatum', 'Cassin', 'eking@example.org', '9308b605d241d515e2c24458e47dc5f66770f6ac', 475),
       (65, 'Dayne', 'Bode', 'melany19@example.org', '38bcc13c05eba94ab65f60af65226573b811ba9b', 882),
       (66, 'Enoch', 'Okuneva', 'dmurazik@example.com', '3678dff5219867109f67e7ab51a3678511b3b592', 367049),
       (67, 'Roy', 'Konopelski', 'slegros@example.net', '73df480c31386f9154f7522e699476babd83f01b', 0),
       (69, 'Amari', 'Towne', 'halvorson.jennings@example.org', '790d8da072429eccd86ff65b15b9e8c7c73aea98', 5786521532),
       (70, 'Joesph', 'Rogahn', 'romaguera.percival@example.net', '52b6b186b5dec7ffaf495fcf4ef5786be77ddcc6', 543088),
       (71, 'Amely', 'Wiegand', 'kathleen.stark@example.org', '3058b5bf72aff21419b071ea86b5f2e00dffbdfc', 56),
       (72, 'Laila', 'Muller', 'evan09@example.org', '81111566a5e98eef6e7a6484596b69092c4a6e60', 783),
       (73, 'Micaela', 'Olson', 'payton.nitzsche@example.org', 'b6e721ad51ffbdace6bcda1acd600117f3a256a1', 890378),
       (74, 'Daryl', 'Rutherford', 'franco78@example.net', '8ddd7881bfd254cd4c28cc435ce9c9847f2c9874', 505894),
       (75, 'Catharine', 'Crooks', 'lwolf@example.com', 'edc5b0e8e648a9e41a1a6ab13d7d22bd7ecde894', 839471),
       (76, 'Jamey', 'Zemlak', 'swift.deion@example.org', '521aa68a6614e132342ea5ae79b0a8c711cea2de', 6),
       (77, 'Aurelie', 'Pfannerstill', 'jayme.baumbach@example.com', '171c465d53ef71a5cb024e318794163f4342275d', 705),
       (82, 'Trever', 'Hamill', 'ahegmann@example.com', 'b61df9ed68f825cd0592eef7b7d791cd6c866164', 738093),
       (87, 'Frederick', 'Blick', 'schinner.amber@example.org', 'b488ab6a4b60a92b44546ad6006c275b5e1796e2', 8775),
       (89, 'Omer', 'Leffler', 'faye37@example.org', '07d620435b5af86dfb6fb14d66d5894243c677ac', 42),
       (92, 'Joanne', 'Mohr', 'garnet.pagac@example.net', '8c0b3750e1639d447d84635d1aad8dd3ffa9b157', 603),
       (94, 'Christelle', 'Larkin', 'gerhold.angelo@example.com', 'f5c4d01b2afcedcad3af34d2ea2fa6e6249ceca9', 35),
       (96, 'Gabriella', 'Stanton', 'mgutkowski@example.com', '1ad01c73418e5b3a8d48710d63d6cedf04b30ef3', 6227063188),
       (98, 'Max', 'Bergnaum', 'nbotsford@example.net', '7d697b60bd85503634e1061ae64687c74089dc52', 385),
       (99, 'Keara', 'Blanda', 'lulu43@example.org', 'caf3d0b17cd7210dead859340ecdb19e02a00d3d', 331),
       (100, 'Tyler', 'Hahn', 'white.sharon@example.net', '7b25ce5e3a2109b14b48d76fe1b0d5434dc66b85', 38);
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_communities`
(
    `user_id`      bigint(20) unsigned NOT NULL,
    `community_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`user_id`, `community_id`),
    KEY `community_id` (`community_id`),
    CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities`
    DISABLE KEYS */;
INSERT INTO `users_communities`
VALUES (51, 1),
       (51, 32),
       (51, 63),
       (51, 94),
       (52, 2),
       (52, 33),
       (52, 64),
       (52, 95),
       (54, 3),
       (54, 34),
       (54, 65),
       (54, 96),
       (56, 4),
       (56, 35),
       (56, 66),
       (56, 97),
       (57, 5),
       (57, 36),
       (57, 67),
       (57, 98),
       (58, 6),
       (58, 37),
       (58, 68),
       (58, 99),
       (60, 7),
       (60, 38),
       (60, 69),
       (60, 100),
       (62, 8),
       (62, 39),
       (62, 70),
       (63, 9),
       (63, 40),
       (63, 71),
       (64, 10),
       (64, 41),
       (64, 72),
       (65, 11),
       (65, 42),
       (65, 73),
       (66, 12),
       (66, 43),
       (66, 74),
       (67, 13),
       (67, 44),
       (67, 75),
       (69, 14),
       (69, 45),
       (69, 76),
       (70, 15),
       (70, 46),
       (70, 77),
       (71, 16),
       (71, 47),
       (71, 78),
       (72, 17),
       (72, 48),
       (72, 79),
       (73, 18),
       (73, 49),
       (73, 80),
       (74, 19),
       (74, 50),
       (74, 81),
       (75, 20),
       (75, 51),
       (75, 82),
       (76, 21),
       (76, 52),
       (76, 83),
       (77, 22),
       (77, 53),
       (77, 84),
       (82, 23),
       (82, 54),
       (82, 85),
       (87, 24),
       (87, 55),
       (87, 86),
       (89, 25),
       (89, 56),
       (89, 87),
       (92, 26),
       (92, 57),
       (92, 88),
       (94, 27),
       (94, 58),
       (94, 89),
       (96, 28),
       (96, 59),
       (96, 90),
       (98, 29),
       (98, 60),
       (98, 91),
       (99, 30),
       (99, 61),
       (99, 92),
       (100, 31),
       (100, 62),
       (100, 93);
/*!40000 ALTER TABLE `users_communities`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2021-06-25 20:08:28

# Task_2
# Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
select distinct firstname
from users;

# Task_3
# Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false).
# Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1

select *
from profiles;

alter table profiles
    add is_active bool default TRUE;

update profiles set vk.profiles.is_active = TRUE;

update profiles
set is_active = false
where (year(curdate()) - year(birthday)) < 18;


# Task_4
# Написать скрипт, удаляющий сообщения
# «из будущего» (дата больше сегодняшней)

select *
from messages;

delete
from messages
where now() - created_at < 0;

insert into messages(from_user_id, to_user_id, created_at)
    value (54, 54, '2022-09-09 18:23:13');

select now();
