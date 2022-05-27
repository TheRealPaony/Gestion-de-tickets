-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 12:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_role`
--

CREATE TABLE `app_role` (
  `role_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_role`
--

INSERT INTO `app_role` (`role_id`, `description`, `role_name`) VALUES
(1, 'Admin', 'ADMIN'),
(2, 'Developpeur', 'DEVELOPPEUR'),
(3, 'client', 'CLIENT');

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `user_id` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`user_id`, `active`, `password`, `username`) VALUES
('1d9616b0-2d18-403c-9b31-02cb8459cfea', b'1', '$2a$10$5akPm2YO4pbcG8VrjuLYxOdIVhX5QHfw06vAj.KUj3g.kM/sDICtK', 'dev'),
('2ac276a3-9b97-43f2-bc0d-ded4399d9c7d', b'1', '$2a$10$nvFysArdkRb4GZpjJB7Ey.aSN62YZln18w.iTiSx.My4IwE/u.V3.', 'reda15'),
('605075c2-be55-4cfd-9daa-03f56bf4e4da', b'1', '$2a$10$8GDkFDJ/TnJxAOZzTKzfJugBUtNywWVDldStGwIaH1I6u5aFgFhQy', 'dev2'),
('82cf734d-f774-417e-b1d6-a521d5b8ce0c', b'1', '$2a$10$aT1vhbNaowaWKXKgS4FcC.PCy/vHIWFYaiubOBBg9j7rBOU/Z4Dhy', 'reda'),
('caf56bf7-070d-4292-a528-35aabdb82aed', b'1', '$2a$10$cPQ/T5ybDbmPSNjwu4GgZ.MOzolOd7ZEsrZ7nLtyvoL5V1U05tjCW', 'dev1'),
('d0ca88a3-9ca8-4984-bac2-610e271835c4', b'1', '$2a$10$5sO8delk7bVwRfNo3eQaA.weTNpfQJhJGg.HIgWdnATk5tMquj5UG', 'client'),
('d116fd8a-3f65-46c0-8a60-a5626a29aecc', b'1', '$2a$10$vnjrMAR65jdh/Zia5uySveH4euoKxl8xso3jB7a1glEAjsH3uqZ1y', 'reda2');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_app_roles`
--

CREATE TABLE `app_user_app_roles` (
  `app_user_user_id` varchar(255) NOT NULL,
  `app_roles_role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_user_app_roles`
--

INSERT INTO `app_user_app_roles` (`app_user_user_id`, `app_roles_role_id`) VALUES
('82cf734d-f774-417e-b1d6-a521d5b8ce0c', 1),
('1d9616b0-2d18-403c-9b31-02cb8459cfea', 2),
('d0ca88a3-9ca8-4984-bac2-610e271835c4', 3),
('2ac276a3-9b97-43f2-bc0d-ded4399d9c7d', 3),
('d116fd8a-3f65-46c0-8a60-a5626a29aecc', 1),
('caf56bf7-070d-4292-a528-35aabdb82aed', 2),
('605075c2-be55-4cfd-9daa-03f56bf4e4da', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `type` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `matricule_admin` varchar(255) DEFAULT NULL,
  `matricule_client` varchar(255) DEFAULT NULL,
  `matricule_developpeur` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`type`, `id`, `nom`, `prenom`, `tel`, `matricule_admin`, `matricule_client`, `matricule_developpeur`, `username`) VALUES
('C', 1, 'reda15', 'zidahi29', '0696535478', NULL, 'fz456', NULL, NULL),
('C', 2, 'reda17', 'zidahi77', '0696535478', NULL, 'fz45677', NULL, NULL),
('A', 3, 'zez', 'eeee', '045455254', '789fef', NULL, NULL, 'reda'),
('D', 4, 'amine', 'amine', '026558888', NULL, NULL, 'amine1224', 'dev1'),
('D', 5, 'reda', 'reda', '056867687687687', NULL, NULL, '858ggrfr', 'dev2'),
('C', 6, 'client', 'zidda', '05368668689', NULL, 'client123', NULL, NULL),
('A', 7, 'reda2', 'zidahi', '0657678687687', 'HA258997', NULL, NULL, 'reda2');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` bigint(20) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `environnement` varchar(255) DEFAULT NULL,
  `logiciel` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `urgence` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `developpeur_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `date_creation`, `description`, `environnement`, `logiciel`, `priority`, `urgence`, `client_id`, `admin_id`, `developpeur_id`, `status`) VALUES
(1, '2009-12-12', 'fzefezfezfez', NULL, 'ezfzefe', '1', 'urgent', 1, 7, 5, 'en cours de traitement'),
(2, '2022-05-18', 'ezdezdezd', 'dezdezd', 'zedez', 'dezdez', 'dzedezd', 1, 3, 4, 'résolu'),
(4, '2022-05-15', 'revreregregreg', 'gregergreg', 'regregre', '1', 'refregre', 6, 3, 4, 'en attente'),
(5, '2022-05-17', 'reda', 'read', 'reda', 'reda', 'reda', 6, 3, 5, 'résolu'),
(6, '2022-05-01', 'amine', 'amine', 'amine', 'amine', 'amine', 6, 7, 4, 'résolu'),
(7, '2022-05-05', 'gergre', 'gerg', 'gregre', 'regfer', 'ergre', 1, NULL, NULL, 'en attente'),
(8, '2022-05-22', 'ticket1', 'ticket1', 'ticket1', '1', 'ticket1', 6, NULL, NULL, 'en attente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_role`
--
ALTER TABLE `app_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `UK_c9vam58sxsparp1djngaittd6` (`role_name`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_3k4cplvh82srueuttfkwnylq0` (`username`);

--
-- Indexes for table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD KEY `FKhvbph50p74vrde5kfjjlq3297` (`app_roles_role_id`),
  ADD KEY `FK5vfowd6g3wbl0y2tpl98bvnpg` (`app_user_user_id`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `FK6rqqu3c1248bjitsahwqkjfqd` (`client_id`),
  ADD KEY `FKsc1fch5tmsk89vg007yenjslr` (`admin_id`),
  ADD KEY `FK3o66o8vijy17jxixt4eusko27` (`developpeur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_role`
--
ALTER TABLE `app_role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD CONSTRAINT `FK5vfowd6g3wbl0y2tpl98bvnpg` FOREIGN KEY (`app_user_user_id`) REFERENCES `app_user` (`user_id`),
  ADD CONSTRAINT `FKhvbph50p74vrde5kfjjlq3297` FOREIGN KEY (`app_roles_role_id`) REFERENCES `app_role` (`role_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK3o66o8vijy17jxixt4eusko27` FOREIGN KEY (`developpeur_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK6rqqu3c1248bjitsahwqkjfqd` FOREIGN KEY (`client_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FKsc1fch5tmsk89vg007yenjslr` FOREIGN KEY (`admin_id`) REFERENCES `personne` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
