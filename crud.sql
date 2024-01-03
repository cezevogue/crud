-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 jan. 2024 à 18:01
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `errors`
--

CREATE TABLE `errors` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `errors`
--

INSERT INTO `errors` (`id`, `date`, `detail`, `status`) VALUES
(1, '2024-01-03 17:46:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, debitis dolore exercitationem illo ipsam iure provident recusandae vel vero. Dicta doloribus dolorum minus neque nihil quam recusandae saepe soluta?', 0),
(2, '2024-01-03 17:46:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, debitis dolore exercitationem illo ipsam iure provident recusandae vel vero. Dicta doloribus dolorum minus neque nihil quam recusandae saepe soluta?', 0),
(3, '2024-01-03 17:46:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, debitis dolore exercitationem illo ipsam iure provident recusandae vel vero. Dicta doloribus dolorum minus neque nihil quam recusandae saepe soluta?', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
