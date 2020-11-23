-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8082
-- Généré le : lun. 23 nov. 2020 à 14:46
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binomotron`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id_apprenant`, `nom`, `prenom`, `photo`, `mail`) VALUES
(1, 'Bokalli', 'Luigi', NULL, 'luigi.bokalli@isen-ouest.yncrea.fr'),
(2, 'Bonneau', 'Amaury', NULL, 'amaury.bonneau@isen-ouest.yncrea.fr'),
(3, 'Chaigneau', 'Thomas', NULL, 'thomas.chaigneau@isen-ouest.yncrea.fr'),
(4, 'Cloatre', 'Erwan', NULL, 'erwan.cloatre@isen-ouest.yncrea.fr'),
(5, 'Furiga', 'Julien', NULL, 'julien.furiga@isen-ouest.yncrea.fr'),
(6, 'Guillen', 'Celine', NULL, 'celine.guillen@isen-ouest.yncrea.fr'),
(7, 'Hergoualc\'h', 'Pereg', NULL, 'pereg.hergoualch@isen-ouest.yncrea.fr'),
(8, 'Ibanni', 'Jamal', NULL, 'jamal.ibanni@isen-ouest.yncrea.fr'),
(9, 'Karfaoui', 'Christelle', NULL, 'christelle.karfaoui@isen-ouest.yncrea.fr'),
(10, 'Le Berre', 'Baptiste', NULL, 'baptiste.le-berre@isen-ouest.yncrea.fr'),
(11, 'Le Goff', 'Baptiste', NULL, 'baptiste.le-goff@isen-ouest.yncrea.fr'),
(12, 'Le Joncour', 'Jérémy', NULL, 'jeremy.le-joncour@isen-ouest.yncrea.fr'),
(13, 'Le Moal', 'Patricia', NULL, 'patricia.le-moal@isen-ouest.yncrea.fr'),
(14, 'Maintier', 'Ludivine', NULL, 'ludivine.maintier@isen-ouest.yncrea.fr'),
(15, 'Mbarga Mvogo', 'Christian', NULL, 'christian.mbarga-mvogo@isen-ouest.yncrea.fr'),
(16, 'Moulard', 'Eva', NULL, 'eva.moulard@isen-ouest.yncrea.fr'),
(17, 'Pertron', 'Aude', NULL, 'aude.pertron@isen-ouest.yncrea.fr'),
(18, 'Rioual', 'Ronan', NULL, 'ronan.rioual@isen-ouest.yncrea.fr'),
(19, 'Sabia', 'Paul', NULL, 'paul.sabia@isen-ouest.yncrea.fr'),
(20, 'Verpoest', 'Guillaume', NULL, 'guillaume.verpoest@isen-ouest.yncrea.fr');

-- --------------------------------------------------------

--
-- Structure de la table `apprenant_groupe`
--

CREATE TABLE `apprenant_groupe` (
  `id-apprenat` int(30) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id-projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_groupe` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `libelle`) VALUES
(1, '11'),
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(11, '10'),
(12, 'equipe1'),
(13, 'equipe2'),
(14, 'equipe3'),
(15, 'equipe4'),
(16, 'equipe5'),
(17, 'equipe6'),
(18, 'equipe7'),
(19, 'equipe8'),
(20, 'equipe9'),
(21, 'equipe10');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(30) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `date_debut` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `libelle`, `date_debut`) VALUES
(1, 'test6', '2020-10-30 12:04:22'),
(2, 'JSDLJ', '2020-10-30 15:08:19'),
(3, 'KN?L?', '2020-10-30 15:08:33'),
(4, 'C  C', '2020-10-30 15:08:45'),
(5, 'aaa', '2020-10-30 15:24:04'),
(6, 'ZER', '2020-10-30 15:28:47'),
(7, 'ddd', '2020-10-30 15:39:09'),
(8, 'conda activate base', '2020-10-30 15:45:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Index pour la table `apprenant_groupe`
--
ALTER TABLE `apprenant_groupe`
  ADD KEY `id-apprenat` (`id-apprenat`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `id-projet` (`id-projet`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprenant_groupe`
--
ALTER TABLE `apprenant_groupe`
  ADD CONSTRAINT `apprenant_groupe_ibfk_1` FOREIGN KEY (`id-apprenat`) REFERENCES `apprenant` (`id_apprenant`),
  ADD CONSTRAINT `apprenant_groupe_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`),
  ADD CONSTRAINT `apprenant_groupe_ibfk_3` FOREIGN KEY (`id-projet`) REFERENCES `projet` (`id_projet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
