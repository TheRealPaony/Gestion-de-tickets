-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 27 mai 2022 à 00:28
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gticket`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_role`
--

CREATE TABLE `app_role` (
  `role_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_role`
--

INSERT INTO `app_role` (`role_id`, `description`, `role_name`) VALUES
(1, 'Admin', 'ADMIN'),
(2, 'Developpeur', 'DEVELOPPEUR'),
(3, 'client', 'CLIENT');

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `user_id` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user`
--

INSERT INTO `app_user` (`user_id`, `active`, `password`, `username`) VALUES
('1d9616b0-2d18-403c-9b31-02cb8459cfea', b'1', '$2a$10$5akPm2YO4pbcG8VrjuLYxOdIVhX5QHfw06vAj.KUj3g.kM/sDICtK', 'abdelbast'),
('2ac276a3-9b97-43f2-bc0d-ded4399d9c7d', b'1', '$2a$10$nvFysArdkRb4GZpjJB7Ey.aSN62YZln18w.iTiSx.My4IwE/u.V3.', 'dev3'),
('605075c2-be55-4cfd-9daa-03f56bf4e4da', b'1', '$2a$10$8GDkFDJ/TnJxAOZzTKzfJugBUtNywWVDldStGwIaH1I6u5aFgFhQy', 'dev2'),
('82cf734d-f774-417e-b1d6-a521d5b8ce0c', b'1', '$2a$10$aT1vhbNaowaWKXKgS4FcC.PCy/vHIWFYaiubOBBg9j7rBOU/Z4Dhy', 'dev4'),
('caf56bf7-070d-4292-a528-35aabdb82aed', b'1', '$2a$10$cPQ/T5ybDbmPSNjwu4GgZ.MOzolOd7ZEsrZ7nLtyvoL5V1U05tjCW', 'dev5'),
('d0ca88a3-9ca8-4984-bac2-610e271835c4', b'1', '$2a$10$5sO8delk7bVwRfNo3eQaA.weTNpfQJhJGg.HIgWdnATk5tMquj5UG', 'client'),
('d116fd8a-3f65-46c0-8a60-a5626a29aecc', b'1', '$2a$10$vnjrMAR65jdh/Zia5uySveH4euoKxl8xso3jB7a1glEAjsH3uqZ1y', 'dev6');

-- --------------------------------------------------------

--
-- Structure de la table `app_user_app_roles`
--

CREATE TABLE `app_user_app_roles` (
  `app_user_user_id` varchar(255) NOT NULL,
  `app_roles_role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `type` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `matricule_admin` varchar(255) DEFAULT NULL,
  `matricule_client` varchar(255) DEFAULT NULL,
  `matricule_developpeur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`type`, `id`, `nom`, `prenom`, `tel`, `username`, `matricule_admin`, `matricule_client`, `matricule_developpeur`) VALUES
('C', 1, 'abde', 'abde', '0606060606', NULL, NULL, 'fz456', NULL),
('C', 2, 'achraf', 'achraf', '0606060606', NULL, NULL, 'fz45677', NULL),
('A', 3, 'achraf', 'achraf', '0606060606', 'achraf', '789fef', NULL, NULL),
('D', 4, 'amine', 'amine', '0606060606', 'dev1', NULL, NULL, 'amine1224'),
('D', 5, 'reda', 'reda', '0606060606', 'dev2', NULL, NULL, '858ggrfr'),
('C', 6, 'client', 'zidda', '0606060606', NULL, NULL, 'client123', NULL),
('A', 7, 'reda2', 'zidahi', '0606060606', 'reda2', 'HA258997', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` bigint(20) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `environnement` varchar(255) DEFAULT NULL,
  `logiciel` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `urgence` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `developpeur_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `date_creation`, `description`, `environnement`, `logiciel`, `priority`, `status`, `urgence`, `admin_id`, `client_id`, `developpeur_id`) VALUES
(2, '2022-05-18', 'ezdezdezd', 'dezdezd', 'zedez', 'dezdez', 'résolu', 'dzedezd', 3, 1, 4),
(4, '2022-05-15', 'revreregregreg', 'gregergreg', 'regregre', '1', 'en attente', 'refregre', 3, 6, 4),
(5, NULL, NULL, NULL, NULL, NULL, 'en attente', NULL, NULL, 6, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_role`
--
ALTER TABLE `app_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `UK_c9vam58sxsparp1djngaittd6` (`role_name`);

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_3k4cplvh82srueuttfkwnylq0` (`username`);

--
-- Index pour la table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD KEY `FKhvbph50p74vrde5kfjjlq3297` (`app_roles_role_id`),
  ADD KEY `FK5vfowd6g3wbl0y2tpl98bvnpg` (`app_user_user_id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `FKsc1fch5tmsk89vg007yenjslr` (`admin_id`),
  ADD KEY `FK6rqqu3c1248bjitsahwqkjfqd` (`client_id`),
  ADD KEY `FK3o66o8vijy17jxixt4eusko27` (`developpeur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_role`
--
ALTER TABLE `app_role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD CONSTRAINT `FK5vfowd6g3wbl0y2tpl98bvnpg` FOREIGN KEY (`app_user_user_id`) REFERENCES `app_user` (`user_id`),
  ADD CONSTRAINT `FKhvbph50p74vrde5kfjjlq3297` FOREIGN KEY (`app_roles_role_id`) REFERENCES `app_role` (`role_id`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK3o66o8vijy17jxixt4eusko27` FOREIGN KEY (`developpeur_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK6rqqu3c1248bjitsahwqkjfqd` FOREIGN KEY (`client_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FKsc1fch5tmsk89vg007yenjslr` FOREIGN KEY (`admin_id`) REFERENCES `personne` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
