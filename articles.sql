-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 31 mars 2021 à 19:57
-- Version du serveur :  8.0.19-0ubuntu5
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `monarduino974`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `speTech` text NOT NULL,
  `prix` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `image`, `description`, `speTech`, `prix`) VALUES
(1, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(3, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(4, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(5, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(6, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(7, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(8, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(9, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(10, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(11, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(12, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(13, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(14, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(15, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(16, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(17, 'raspberry', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
