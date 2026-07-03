-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 juil. 2026 à 23:33
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ifri_mentor`
--

-- --------------------------------------------------------

--
-- Structure de la table `mentors`
--

CREATE TABLE `mentors` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `competences` varchar(255) NOT NULL,
  `disponibilites_heure` int(11) NOT NULL,
  `filiere` varchar(100) DEFAULT NULL,
  `format_mentorat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mentors`
--

INSERT INTO `mentors` (`id`, `nom`, `competences`, `disponibilites_heure`, `filiere`, `format_mentorat`) VALUES
(1, 'Idrissou', 'Python,SQL', 14, 'GL', 'En ligne'),
(2, 'Bryan', 'Java,Web', 10, 'SI', 'Présentiel'),
(3, 'Nathan', 'Python,Reseaux', 16, 'GL', 'Les deux'),
(4, 'Prince', 'Anglais,Graphitie', 10, 'SEIOT', 'En ligne'),
(5, 'Mario', 'Infographie,Langage C', 12, 'IA', 'Présentiel'),
(6, 'Ousmane', 'Recherche Opérationnel,Équation différentielle ', 13, 'GL', 'Les deux');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
