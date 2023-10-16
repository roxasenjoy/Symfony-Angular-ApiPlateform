-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 16 oct. 2023 à 10:12
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gamma`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231015121857', '2023-10-15 12:50:01', 143),
('DoctrineMigrations\\Version20231015152000', '2023-10-15 15:20:10', 63),
('DoctrineMigrations\\Version20231015154836', '2023-10-15 15:48:43', 17),
('DoctrineMigrations\\Version20231015160837', '2023-10-15 16:08:41', 18),
('DoctrineMigrations\\Version20231015165541', '2023-10-15 16:55:44', 40);

-- --------------------------------------------------------

--
-- Structure de la table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_start` int DEFAULT NULL,
  `date_separation` int DEFAULT NULL,
  `members` int DEFAULT NULL,
  `founders` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `music_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `group`
--

INSERT INTO `group` (`id`, `group_name`, `origin`, `city`, `date_start`, `date_separation`, `members`, `founders`, `music_type`, `description`) VALUES
(60, 'Indochine', 'France', 'paris', 1981, NULL, 5, 'Nicola Sirkis et Dominique Nicolas', 'pop rock', 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave'),
(61, 'Noir Désir', 'France', 'bordeaux', 1980, 2010, 4, 'Bertrand Cantat', 'rock', 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 19'),
(62, 'Nirvana', 'Etats-unis', 'Aberdeen', 1987, 1994, 3, 'Kurt Cobain', 'grunge', 'Nirvana est un groupe de grunge américain, originaire d\'Aberdeen, dans l\'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic'),
(63, 'Led Zeppelin', 'Royaume-Uni ', 'Londres', 1968, 1980, NULL, 'Jimmy Page', 'rock', 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980'),
(64, 'Depeche Mode', 'Royaume-Uni ', 'Basildon', 1980, NULL, 3, NULL, 'rock', 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l\'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène intern'),
(65, 'Téléphone', 'France', 'Paris', 1976, 1986, 4, NULL, 'rock', 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et '),
(66, 'Massive Attack', 'Royaume-Uni ', 'bristol', 1987, NULL, NULL, NULL, 'Trip hop', 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l\'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles'),
(67, 'Pink Floyd', 'Royaume-Uni ', 'Londres', 1964, 2014, 3, 'Syd Barrett,', 'rock', 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représent'),
(68, 'The Beatles', 'Royaume-Uni ', 'Liverpool', 1960, 1970, 4, 'John Lennon', NULL, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...'),
(69, 'Indochine', 'France', 'paris', 1981, NULL, 5, 'Nicola Sirkis et Dominique Nicolas', 'pop rock', 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave'),
(70, 'Noir Désir', 'France', 'bordeaux', 1980, 2010, 4, 'Bertrand Cantat', 'rock', 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 19'),
(71, 'Nirvana', 'Etats-unis', 'Aberdeen', 1987, 1994, 3, 'Kurt Cobain', 'grunge', 'Nirvana est un groupe de grunge américain, originaire d\'Aberdeen, dans l\'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic'),
(72, 'Led Zeppelin', 'Royaume-Uni ', 'Londres', 1968, 1980, NULL, 'Jimmy Page', 'rock', 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980'),
(73, 'Depeche Mode', 'Royaume-Uni ', 'Basildon', 1980, NULL, 3, NULL, 'rock', 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l\'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène intern'),
(74, 'Téléphone', 'France', 'Paris', 1976, 1986, 4, NULL, 'rock', 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et '),
(75, 'Massive Attack', 'Royaume-Uni ', 'bristol', 1987, NULL, NULL, NULL, 'Trip hop', 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l\'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles'),
(76, 'Pink Floyd', 'Royaume-Uni ', 'Londres', 1964, 2014, 3, 'Syd Barrett,', 'rock', 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représent');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb3_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `roles`) VALUES
(1, '123456', 'test@gmail.com', '$2y$13$7GB2V8RDVdRnYF1/EigjRuxLBbv1NEosz7egb7KnMh5ULxP9vWGr6', 'a:76:{i:0;s:9:\"ROLE_USER\";i:1;s:9:\"ROLE_USER\";i:2;s:9:\"ROLE_USER\";i:3;s:9:\"ROLE_USER\";i:4;s:9:\"ROLE_USER\";i:5;s:9:\"ROLE_USER\";i:6;s:9:\"ROLE_USER\";i:7;s:9:\"ROLE_USER\";i:8;s:9:\"ROLE_USER\";i:9;s:9:\"ROLE_USER\";i:10;s:9:\"ROLE_USER\";i:11;s:9:\"ROLE_USER\";i:12;s:9:\"ROLE_USER\";i:13;s:9:\"ROLE_USER\";i:14;s:9:\"ROLE_USER\";i:15;s:9:\"ROLE_USER\";i:16;s:9:\"ROLE_USER\";i:17;s:9:\"ROLE_USER\";i:18;s:9:\"ROLE_USER\";i:19;s:9:\"ROLE_USER\";i:20;s:9:\"ROLE_USER\";i:21;s:9:\"ROLE_USER\";i:22;s:9:\"ROLE_USER\";i:23;s:9:\"ROLE_USER\";i:24;s:9:\"ROLE_USER\";i:25;s:9:\"ROLE_USER\";i:26;s:9:\"ROLE_USER\";i:27;s:9:\"ROLE_USER\";i:28;s:9:\"ROLE_USER\";i:29;s:9:\"ROLE_USER\";i:30;s:9:\"ROLE_USER\";i:31;s:9:\"ROLE_USER\";i:32;s:9:\"ROLE_USER\";i:33;s:9:\"ROLE_USER\";i:34;s:9:\"ROLE_USER\";i:35;s:9:\"ROLE_USER\";i:36;s:9:\"ROLE_USER\";i:37;s:9:\"ROLE_USER\";i:38;s:9:\"ROLE_USER\";i:39;s:9:\"ROLE_USER\";i:40;s:9:\"ROLE_USER\";i:41;s:9:\"ROLE_USER\";i:42;s:9:\"ROLE_USER\";i:43;s:9:\"ROLE_USER\";i:44;s:9:\"ROLE_USER\";i:45;s:9:\"ROLE_USER\";i:46;s:9:\"ROLE_USER\";i:47;s:9:\"ROLE_USER\";i:48;s:9:\"ROLE_USER\";i:49;s:9:\"ROLE_USER\";i:50;s:9:\"ROLE_USER\";i:51;s:9:\"ROLE_USER\";i:52;s:9:\"ROLE_USER\";i:53;s:9:\"ROLE_USER\";i:54;s:9:\"ROLE_USER\";i:55;s:9:\"ROLE_USER\";i:56;s:9:\"ROLE_USER\";i:57;s:9:\"ROLE_USER\";i:58;s:9:\"ROLE_USER\";i:59;s:9:\"ROLE_USER\";i:60;s:9:\"ROLE_USER\";i:61;s:9:\"ROLE_USER\";i:62;s:9:\"ROLE_USER\";i:63;s:9:\"ROLE_USER\";i:64;s:9:\"ROLE_USER\";i:65;s:9:\"ROLE_USER\";i:66;s:9:\"ROLE_USER\";i:67;s:9:\"ROLE_USER\";i:68;s:9:\"ROLE_USER\";i:69;s:9:\"ROLE_USER\";i:70;s:9:\"ROLE_USER\";i:71;s:9:\"ROLE_USER\";i:72;s:9:\"ROLE_USER\";i:73;s:9:\"ROLE_USER\";i:74;s:9:\"ROLE_USER\";i:75;s:9:\"ROLE_USER\";}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
