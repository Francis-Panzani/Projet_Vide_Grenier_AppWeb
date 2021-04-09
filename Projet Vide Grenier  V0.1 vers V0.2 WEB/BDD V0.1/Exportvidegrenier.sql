-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 19 nov. 2019 à 14:10
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `videgrenier`
--

-- --------------------------------------------------------

--
-- Structure de la table `attestationhonneur`
--

DROP TABLE IF EXISTS `attestationhonneur`;
CREATE TABLE IF NOT EXISTS `attestationhonneur` (
  `Id_AH` int(11) NOT NULL,
  `DateNais_AH` date NOT NULL,
  `DeptNais_AH` decimal(10,0) NOT NULL,
  `VilleNais_AH` text NOT NULL,
  `NumCNI_AH` decimal(12,0) NOT NULL,
  `DateDelivrCNI_AH` date NOT NULL,
  `EmetCNI_AH` text NOT NULL,
  `NumPlaqImm_AH` text,
  `Id_Horod` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_AH`),
  KEY `Id_Horod` (`Id_Horod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attestationhonneur`
--

INSERT INTO `attestationhonneur` (`Id_AH`, `DateNais_AH`, `DeptNais_AH`, `VilleNais_AH`, `NumCNI_AH`, `DateDelivrCNI_AH`, `EmetCNI_AH`, `NumPlaqImm_AH`, `Id_Horod`) VALUES
(111111, '1980-10-01', '69', 'Lyon', '200769180525', '2010-11-02', 'Préfecture du Rhône', 'AAA-000-AA', 1111111);

-- --------------------------------------------------------

--
-- Structure de la table `exposant`
--

DROP TABLE IF EXISTS `exposant`;
CREATE TABLE IF NOT EXISTS `exposant` (
  `Id_Exp` int(11) NOT NULL,
  `Nom_Exp` text NOT NULL,
  `Prenom_Exp` text NOT NULL,
  `Adr_Exp` text NOT NULL,
  `CP_Exp` decimal(10,0) NOT NULL,
  `Ville_Exp` text NOT NULL,
  `Tel_Exp` decimal(10,0) NOT NULL,
  `Email_Exp` text NOT NULL,
  `Comment_Exp` text,
  `Id_Res` int(11) DEFAULT NULL,
  `Id_AH` int(11) DEFAULT NULL,
  `Id_Util` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Exp`),
  KEY `Id_Res` (`Id_Res`),
  KEY `Id_AH` (`Id_AH`),
  KEY `Id_Util` (`Id_Util`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exposant`
--

INSERT INTO `exposant` (`Id_Exp`, `Nom_Exp`, `Prenom_Exp`, `Adr_Exp`, `CP_Exp`, `Ville_Exp`, `Tel_Exp`, `Email_Exp`, `Comment_Exp`, `Id_Res`, `Id_AH`, `Id_Util`) VALUES
(111, 'Dupont', 'Paul', '15 rue Colombe', '69007', 'Lyon', '621345456', 'pauldupont@gmail.com', 'Hello la CIL', 1111, 111111, 1);

-- --------------------------------------------------------

--
-- Structure de la table `horodatage`
--

DROP TABLE IF EXISTS `horodatage`;
CREATE TABLE IF NOT EXISTS `horodatage` (
  `Id_Horod` int(11) NOT NULL,
  `IP_Horod` text NOT NULL,
  `Date_Horod` date NOT NULL,
  `Heure_Horod` time NOT NULL,
  PRIMARY KEY (`Id_Horod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `horodatage`
--

INSERT INTO `horodatage` (`Id_Horod`, `IP_Horod`, `Date_Horod`, `Heure_Horod`) VALUES
(1111111, '172.16.254.1', '2019-03-15', '22:21:20');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `Id_Res` int(11) NOT NULL,
  `NbreEmplReserve_Res` decimal(10,0) NOT NULL,
  `TypePaiement_Res` text NOT NULL,
  `StatutReservation_Res` text NOT NULL,
  `NumEmplAttribue_Res` decimal(10,0) NOT NULL,
  `Id_Vg` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Res`),
  KEY `Id_Vg` (`Id_Vg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`Id_Res`, `NbreEmplReserve_Res`, `TypePaiement_Res`, `StatutReservation_Res`, `NumEmplAttribue_Res`, `Id_Vg`) VALUES
(1111, '3', 'en ligne', 'validée', '0', 11111);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `Id_Rol` int(11) NOT NULL,
  `Admin_Rol` text NOT NULL,
  `Memb_Rol` text NOT NULL,
  `Visit_Rol` text NOT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`Id_Rol`, `Admin_Rol`, `Memb_Rol`, `Visit_Rol`) VALUES
(11, 'administrateur', 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_Util` int(11) NOT NULL,
  `Nom_Util` text NOT NULL,
  `Mdp_Util` text NOT NULL,
  `Email_Util` text NOT NULL,
  `Tel_Util` decimal(10,0) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Util`),
  KEY `Id_Rol` (`Id_Rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_Util`, `Nom_Util`, `Mdp_Util`, `Email_Util`, `Tel_Util`, `Id_Rol`) VALUES
(1, 'toto', '123321', 'toto@gmail.com', '655398774', 11);

-- --------------------------------------------------------

--
-- Structure de la table `videgrenier`
--

DROP TABLE IF EXISTS `videgrenier`;
CREATE TABLE IF NOT EXISTS `videgrenier` (
  `Id_Vg` int(11) NOT NULL,
  `Date_Vg` date NOT NULL,
  `PrixEmpl_Vg` float NOT NULL,
  `NbreEmplInit_Vg` decimal(10,0) NOT NULL,
  `NbreEmplIndispo_Vg` decimal(10,0) NOT NULL,
  `NbreEmplRestTemp_Vg` decimal(10,0) NOT NULL,
  `NbreEmplRestReel_Vg` decimal(10,0) NOT NULL,
  `NbreParticip_Vg` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Id_Vg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `videgrenier`
--

INSERT INTO `videgrenier` (`Id_Vg`, `Date_Vg`, `PrixEmpl_Vg`, `NbreEmplInit_Vg`, `NbreEmplIndispo_Vg`, `NbreEmplRestTemp_Vg`, `NbreEmplRestReel_Vg`, `NbreParticip_Vg`) VALUES
(11111, '2020-07-25', 10, '150', '30', '117', '147', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
