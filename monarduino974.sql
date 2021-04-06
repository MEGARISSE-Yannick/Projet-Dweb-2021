-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 01 avr. 2021 à 16:44
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `image`, `description`, `speTech`, `prix`) VALUES
(1, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(3, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(18, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(19, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(20, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(21, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(22, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(23, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(24, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(25, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(26, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(27, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(28, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(29, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(30, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(31, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(32, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(33, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(34, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(35, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(36, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(37, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(38, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(39, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(40, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(41, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(42, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(43, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(44, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(45, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(46, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n\r\n\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25),
(47, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', '    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis quae ducimus, maiores accusantium soluta distinctio quidem, repellat inventore quo excepturi minus a facere alias doloremque culpa. Ipsam nesciunt recusandae fugit!\r\n', 25);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int NOT NULL,
  `id_produit` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  `nombre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `id_produit`, `nom`, `image`, `prix`, `nombre`) VALUES
(6, 1, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', 25, 2),
(7, 25, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', 25, 3),
(8, 20, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', 25, 5),
(9, 26, 'raspberry', 'https://tse2.mm.bing.net/th?id=OIP.xuWOTWw0vH2FuxozgpXBhgHaHa&pid=Api&P=0&w=300&h=300', 25, 4),
(10, 3, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', 25, 3),
(11, 23, 'arduino', 'https://tse4.mm.bing.net/th?id=OIP.LKnsJKUk21c9R-yQ0j68SAHaHa&pid=Api&P=0&w=300&h=300', 25, 9);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
