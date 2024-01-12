-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 déc. 2023 à 10:03
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `g06`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `idpersonne` int(11) NOT NULL,
  `idlivre` varchar(15) NOT NULL,
  `idrole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idpersonne`, `idlivre`, `idrole`) VALUES
(1, '2266227920', 1),
(2, '1696355958', 1),
(3, '2920987461', 1),
(4, '2892258944', 1),
(5, '1501144162', 1),
(6, '2212567596', 1),
(7, '1092928669', 1),
(8, '2897932317', 1),
(9, '2290024961', 1),
(10, '2290206059', 1);

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `libelle`) VALUES
(1, 'Pocket'),
(2, 'Pretorian Books'),
(3, 'Phane'),
(4, 'Un monde different'),
(5, 'Scribner'),
(6, 'EYROLLES'),
(7, 'ALISIO'),
(8, 'Béliveau Éditeur'),
(9, 'J\'ai Lu');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Développement personnel'),
(2, 'Psychologie ');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

CREATE TABLE `langue` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id`, `libelle`) VALUES
(1, 'Français'),
(2, 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `isbn` varchar(15) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `editeur` int(11) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `langue` int(11) DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `nbpages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `langue`, `Description`, `nbpages`) VALUES
('1092928669', 'L\'obstacle est le chemin', 7, 2014, 1, 1, ' The Obstacle Is the Way\" est un livre qui s\'inspire de la philosophie sto?cienne pour pr?senter une approche de la vie bas?e sur la r?silience et la pers?v?rance. L\'auteur, Ryan Holiday, explore comment surmonter les obstacles, les d?fis et les ?checs en utilisant des principes sto?ciens qui encouragent ? voir ces difficult?s comme des opportunit?s de croissance. Il se base sur des exemples tir?s de l\'histoire de personnalit?s telles que S?n?que, Marc Aur?le et d\'autres, ainsi que sur des anecd', 253),
('1501144162', 'Le pouvoir de la passion et de la persévérance', 5, 2016, 1, 1, 'Le courage est la combinaison de la passion et de la pers?v?rance. Il s\'agit de trouver l\'appel dans notre esprit et de surmonter les d?fis et les difficult?s sans abandonner. Avec du courage, tout le monde peut atteindre ses objectifs. Angela Duckworth est professeur de psychologie ? l\'Universit? de Pennsylvanie.?', 352),
('1696355958', 'L\'art d\'avoir toujours raison', 2, 2019, 2, 1, 'L\'art d\'avoir toujours raison est une discipline autonome. Dans L\'Art d\'avoir toujours raison, Schopenhauer part du principe qu\'avoir raison consiste non pas ? faire ?clater la v?rit?, mais ? vaincre son opposant sur le plan argumentatif.', 107),
('2212567596', 'L’art subtil de s’en foutre', 6, 2016, 2, 1, 'he Subtle Art of Not Giving a F*ck\" est un livre de d?veloppement personnel ?crit par Mark Manson. L\'auteur propose une approche non conventionnelle de la recherche du bonheur en se concentrant sur l\'id?e que la vie est remplie de d?fis, d\'incertitudes et de douleur, et que c\'est en acceptant ces aspects in?vitables de l\'existence que l\'on peut r?ellement s\'?panouir. Manson encourage les lecteurs ? identifier leurs valeurs personnelles, ? faire des choix significatifs et ? se concentrer sur ce q', 188),
('2266227920', 'Influence et manipulation', 1, 1990, 2, 1, 'En tant qu’?tres humains, nous r?agissons souvent de mani?re automatique ? certains ?v?nements, car prendre le temps de r?fl?chir ? chaque action que nous faisons co?terait trop en temps et en ressources ; hors si la plupart du temps ces comportements automatiques ont leurs avantages, ils se d?tournent parfois de leur but premier par des personnes averties qui d?sirent les exploiter pour nous manipuler ; Influence et Manipulation d?cortique ces comportements et ces techniques pour nous aider ? n', 408),
('2290024961', 'L\'éveil de votre puissance intérieure', 9, 2013, 1, 1, 'L\'?veil de votre puissance int?rieure est un livre qui va instantan?ment changer votre vie.Les ressources n?cessaires pour concr?tiser vos r?ves se trouvent en vous. Anthony Robbins, qui a aid?des millions de personnes ? travers le monde, a ?crit ce livre pour vous donner les moyens d\'op?rer des changements pr?cis, mesurables et durables, en vous et chez les autres.Les techniques et les strat?gies qu\'il d?voile vous permettront de prendre imm?diatement le contr?le de votre mental, de vos ?motion', 800),
('2290206059', 'Les 7 habitudes de ceux qui réalisent tout ce qu\'ils entreprennent', 9, 2019, 1, 1, 'Ouvrage incontournable, Les 7 habitudes de ceux qui r?alisent tout ce qu\'ils entreprennent a ?t? traduit en quarante langues et a inspir? des millions de personnes ? travers le monde.Stephen R. Covey synth?tise plusieurs si?cles de sagesse et propose une v?ritable odyss?e au coeur de la nature humaine et de ses valeurs. Gr?ce ? un savant dosage de talent, de compassion et d\'exp?rience, chaque page contribue ? des prises de conscience fondamentales.Ne tardez pas, d?couvrez les sept habitudes qui ', 464),
('2892258944', 'La magie de voir grand', 4, 1959, 1, 1, 'Fixez-vous des buts ?lev?s… Et d?passez-les !  :  David Schwartz d?voile les attitudes positives propices ? la r?ussite, qui aident ? surmonter les difficult?s et ? r?aliser ses r?ves, ind?pendamment du contexte ou des limites personnelles, pour toute personne souhaitant accomplir des choses extraordinaires.', 384),
('2897932317', 'Oser avec audace​', 8, 2022, 1, 1, 'Chaque jour nous sommes confront?s ? l’incertitude, aux risques et au regard des autres devant l’expression de nos ?motions, ce qui d?finit le fait que nous soyons vuln?rables ou capables d’oser avec audace. Se basant sur vingt ann?es de recherche innovatrice, la Docteure Bren? Brown r?fute le mythe culturel voulant que la vuln?rabilit? est une faiblesse et elle affirme qu’en r?alit?, il s’agit de la mesure la plus exacte de notre courage. Dans un monde o? le « jamais assez » domine et o? ressen', 276),
('2920987461', 'Le Pouvoir du moment présent', 3, 1997, 1, 1, 'Eckhart Tolle n\'a pleinement compris sa transformation que des ann?es plus tard, et ce livre agit comme un guide d\'auto-assistance spirituelle pour capturer ce qu\'il a d?couvert au cours de son exp?rience et de ses ann?es d\'?tude spirituelle. Le livre est organis? sous forme de questions et r?ponses, abordant des questions courantes sur l\'illumination spirituelle. Nous avons organis? certaines des id?es et exercices cl?s de notre r?sum? en 5 segments principaux. Voici un aper?u de quelques point', 256);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`) VALUES
(1, 'Cialdini', 'Robert\r\n'),
(2, 'Schopenhauer', 'Arthur'),
(3, 'Tolle​', 'Eckhart'),
(4, 'Schwartz​', 'David J.'),
(5, 'Duckworth​', 'Angela'),
(6, 'Manson​', 'Mark'),
(7, 'Holiday​', 'Ryan'),
(8, 'Brown', 'Brené'),
(9, 'Robbins', 'Anthony'),
(10, 'Covey​​', 'Stephen R.');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `libelle`) VALUES
(1, 'Ecrivain'),
(2, 'Illustrateur'),
(3, 'Traducteur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libelle` (`libelle`);

--
-- Index pour la table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`isbn`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `langue`
--
ALTER TABLE `langue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
