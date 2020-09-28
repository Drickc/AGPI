-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 28 sep. 2020 à 13:56
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agpi_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_clavier`
--

DROP TABLE IF EXISTS `t_clavier`;
CREATE TABLE IF NOT EXISTS `t_clavier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `type` int(20) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SalleClavier` (`salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_ecran`
--

DROP TABLE IF EXISTS `t_ecran`;
CREATE TABLE IF NOT EXISTS `t_ecran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `hdmi` varchar(10) NOT NULL,
  `vga` int(10) NOT NULL,
  `dvi` int(10) NOT NULL,
  `display_port` int(10) NOT NULL,
  `salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SalleEcran` (`salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_imprimante`
--

DROP TABLE IF EXISTS `t_imprimante`;
CREATE TABLE IF NOT EXISTS `t_imprimante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `type` int(20) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SalleImprimante` (`salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_login_user`
--

DROP TABLE IF EXISTS `t_login_user`;
CREATE TABLE IF NOT EXISTS `t_login_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_ordinateur`
--

DROP TABLE IF EXISTS `t_ordinateur`;
CREATE TABLE IF NOT EXISTS `t_ordinateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `systeme` varchar(255) NOT NULL,
  `processeur` varchar(255) NOT NULL,
  `ram` int(12) NOT NULL,
  `session` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `ip_fixe` varchar(255) NOT NULL,
  `office_365` varchar(255) NOT NULL,
  `logiciel` varchar(255) NOT NULL,
  `etat` varchar(10) NOT NULL,
  `salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SalleOrdinateur` (`salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_salle`
--

DROP TABLE IF EXISTS `t_salle`;
CREATE TABLE IF NOT EXISTS `t_salle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `localisation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_salle_detail`
--

DROP TABLE IF EXISTS `t_salle_detail`;
CREATE TABLE IF NOT EXISTS `t_salle_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `T_Ordinateur_Id` int(11) NOT NULL,
  `T_Ecran_Id` int(11) NOT NULL,
  `T_Imprimante_Id` int(11) NOT NULL,
  `T_Clavier_Id` int(11) NOT NULL,
  `T_Souris_Id` int(11) NOT NULL,
  `T_Salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_T_Ordinateur_Id` (`T_Ordinateur_Id`),
  KEY `FK_T_Ecran_Id` (`T_Ecran_Id`),
  KEY `FK_T_Imprimante_Id` (`T_Imprimante_Id`),
  KEY `FK_T_Clavier_Id` (`T_Clavier_Id`),
  KEY `FK_T_Souris_Id` (`T_Souris_Id`),
  KEY `FK_T_Salle_Id` (`T_Salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_souris`
--

DROP TABLE IF EXISTS `t_souris`;
CREATE TABLE IF NOT EXISTS `t_souris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `type` int(20) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `salle_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SalleSouris` (`salle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_clavier`
--
ALTER TABLE `t_clavier`
  ADD CONSTRAINT `FK_SalleClavier` FOREIGN KEY (`salle_Id`) REFERENCES `t_salle` (`id`);

--
-- Contraintes pour la table `t_ecran`
--
ALTER TABLE `t_ecran`
  ADD CONSTRAINT `FK_SalleEcran` FOREIGN KEY (`salle_Id`) REFERENCES `t_salle` (`id`);

--
-- Contraintes pour la table `t_imprimante`
--
ALTER TABLE `t_imprimante`
  ADD CONSTRAINT `FK_SalleImprimante` FOREIGN KEY (`salle_Id`) REFERENCES `t_salle` (`id`);

--
-- Contraintes pour la table `t_ordinateur`
--
ALTER TABLE `t_ordinateur`
  ADD CONSTRAINT `FK_SalleOrdinateur` FOREIGN KEY (`salle_Id`) REFERENCES `t_salle` (`id`);

--
-- Contraintes pour la table `t_salle_detail`
--
ALTER TABLE `t_salle_detail`
  ADD CONSTRAINT `FK_T_Clavier_Id` FOREIGN KEY (`T_Clavier_Id`) REFERENCES `t_clavier` (`id`),
  ADD CONSTRAINT `FK_T_Ecran_Id` FOREIGN KEY (`T_Ecran_Id`) REFERENCES `t_ecran` (`id`),
  ADD CONSTRAINT `FK_T_Imprimante_Id` FOREIGN KEY (`T_Imprimante_Id`) REFERENCES `t_imprimante` (`id`),
  ADD CONSTRAINT `FK_T_Ordinateur_Id` FOREIGN KEY (`T_Ordinateur_Id`) REFERENCES `t_ordinateur` (`id`),
  ADD CONSTRAINT `FK_T_Salle_Id` FOREIGN KEY (`T_Salle_Id`) REFERENCES `t_salle` (`id`),
  ADD CONSTRAINT `FK_T_Souris_Id` FOREIGN KEY (`T_Souris_Id`) REFERENCES `t_souris` (`id`);

--
-- Contraintes pour la table `t_souris`
--
ALTER TABLE `t_souris`
  ADD CONSTRAINT `FK_SalleSouris` FOREIGN KEY (`salle_Id`) REFERENCES `t_salle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
