-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 27 déc. 2024 à 18:32
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dyc_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_adm` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `mdp` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_adm`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_adm`, `email`, `mdp`, `nom`, `image`) VALUES
(1, 'dycathecorde@gmail.com', 'Metal@slug2', 'Junior Sineno', '1.png');

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `introduction` text,
  `developpement` text,
  `date` date DEFAULT NULL,
  `id_adm` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_adm` (`id_adm`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `image`, `titre`, `introduction`, `developpement`, `date`, `id_adm`) VALUES
(4, '676da9de42bc2.png', 'Creation de site web design!', 'eLorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorm ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere?\r\n\r\n', '<ul class=\"ul\">\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Conclusion\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                </ul>', '2024-12-26', 1),
(3, '676da984e7d7e.png', 'Creation de sibe web pour avocat au cameroun', 'eLorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorm ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere?\r\n\r\n', '<ul class=\"ul\">\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Conclusion\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                </ul>', '2024-12-26', 1),
(5, '676daa0e51261.png', 'Le parcourt du developper web front-end', 'eLorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere? Lorm ipsum dolor sit amet consectetur adipisicing elit. Animi, atque fuga pariatur autem natus unde ea adipisci reiciendis impedit repellendus tempore nisi laudantium minima suscipit! Minima porro eius ipsa facere?\r\n\r\n', '<ul class=\"ul\">\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                    <li class=\"li\">\r\n                        <h3>\r\n                            Conclusion\r\n                        </h3>\r\n                        <p>\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae, quis. Officia cum modi natus quidem minus dolorum obcaecati placeat a? Perspiciatis beatae quae nemo veritatis aliquid rerum dolor voluptatum eligendi.\r\n                        </p>\r\n                    </li>\r\n                </ul>', '2024-12-26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

DROP TABLE IF EXISTS `fichier`;
CREATE TABLE IF NOT EXISTS `fichier` (
  `id` int(11) NOT NULL,
  `fichier` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(11) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `nom`, `email`, `tel`, `sujet`, `message`, `date`) VALUES
(1, 'dyCathecode', 'dycathecorde@gmail.com', 688229889, 'php', 'valider', '2024-12-16'),
(2, 'Takougoum Sineno Junior', 'juniorsineno@gmail.com', 677019829, 'vbb', 'vvv', '2024-12-16'),
(3, 'giden', 'giden@gmail.com', 654885054, 'CSS', 'CSS\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Provident, iure aspernatur beatae amet', '2024-12-16'),
(4, 'eDyCathecode', 'dycathecorde@gmail.com', 688229889, 'dff', 'CSS\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Provident, iure aspernatur beatae amet', '2024-12-16'),
(5, 'Takougoum', 'juniorsineno@gmail.com', 654885054, 'ddd', 'ddddddddddd', '2024-12-27'),
(6, 'Takougoum', 'juniorsineno@gmail.com', 654885054, 'ddd', 'ddddddddddd', '2024-12-27'),
(7, 'Takougoum', 'juniorsineno@gmail.com', 654885054, 'ddd', 'ddddddddddd', '2024-12-27'),
(8, 'Takougoum', 'juniorsineno@gmail.com', 688229889, 'ddd', 'cxfgfnfffgghghh,', '2024-12-27');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `description` text,
  `fini` varchar(100) DEFAULT NULL,
  `lien` text,
  `languages` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id`, `image`, `titre`, `description`, `fini`, `lien`, `languages`) VALUES
(19, '19.PNG', 'Login', 'Front', 'Non', '', 'web'),
(16, '16.PNG', 'Dashboard de e-commerce', 'Pour les site de vente en ligne', 'Non', '', 'HTML, CSS, JS, PHP'),
(17, '17.PNG', 'Payement des Impots', 'xxxxxxxxxxxxx  xxxxxxxxx xxxxx xxxxxx xxxxx xx x  xxxxxxxxx', 'oui', 'https://github.com/Redflamme/DyCathecorde', 'HTML, PHP, CSS'),
(18, '18.png', 'Inet CM', 'vente en ligne', 'Non', '', 'HTML');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) DEFAULT NULL,
  `abreviation` varchar(100) DEFAULT NULL,
  `description` text,
  `svg` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `titre`, `abreviation`, `description`, `svg`) VALUES
(5, 'Cascading Style Sheet', 'CSS', '                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, iure aspernatur beatae amet ex laboriosam sapiente modi id illo assumenda quas culpa quam ducimus nihil architecto eum totam nulla. Ipsam.\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->\r\n                                <svg width=\"25px\" height=\"25px\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M8 5C7.44772 5 7 5.44772 7 6C7 6.55228 7.44772 7 8 7H12.2344L8.50386 9.13176C8.11017 9.35672 7.91712 9.81842 8.0335 10.2567C8.14988 10.6949 8.54657 11 9 11H13.8C13.9105 11 14 11.0895 14 11.2V13.5029C14 13.556 13.9789 13.6069 13.9414 13.6444L12.1414 15.4444C12.0633 15.5225 11.9367 15.5225 11.8586 15.4444L9.70711 13.2929C9.31658 12.9024 8.68342 12.9024 8.2929 13.2929C7.90237 13.6834 7.90237 14.3166 8.2929 14.7071L11.2929 17.7071C11.6834 18.0976 12.3166 18.0976 12.7071 17.7071L15.7071 14.7071C15.8946 14.5196 16 14.2652 16 14V10C16 9.44772 15.5523 9 15 9H12.7656L16.4961 6.86824C16.8898 6.64328 17.0829 6.18158 16.9665 5.74333C16.8501 5.30509 16.4534 5 16 5H8Z\" />\r\n                                <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.30602 1C2.48038 1 1.07799 2.61696 1.33617 4.42426L2.90519 15.4074C3.00668 16.1178 3.35946 16.7683 3.89953 17.2409L10.0245 22.6002C11.1556 23.5899 12.8444 23.5899 13.9755 22.6002L20.1005 17.2409C20.6405 16.7683 20.9933 16.1178 21.0948 15.4074L22.6638 4.42426C22.922 2.61696 21.5196 1 19.694 1H4.30602ZM3.31607 4.14142C3.23001 3.53899 3.69747 3 4.30602 3H19.694C20.3025 3 20.77 3.53899 20.6839 4.14142L19.1149 15.1245C19.0811 15.3613 18.9635 15.5782 18.7835 15.7357L12.6585 21.095C12.2815 21.4249 11.7185 21.4249 11.3415 21.095L5.21653 15.7357C5.03651 15.5782 4.91892 15.3613 4.88509 15.1245L3.31607 4.14142Z\"/>\r\n                                </svg>'),
(4, 'HyperText Makup Langue', 'HTML', '                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, iure aspernatur beatae amet ex laboriosam sapiente modi id illo assumenda quas culpa quam ducimus nihil architecto eum totam nulla. Ipsam.\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->\r\n                                <svg width=\"25px\" height=\"25px\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M7.99999 5C7.69206 5 7.4013 5.14187 7.21179 5.38459C7.02228 5.6273 6.95517 5.94379 7.02985 6.24254L8.02985 10.2425C8.14114 10.6877 8.54113 11 8.99999 11H13.8C13.9105 11 14 11.0895 14 11.2V13.5029C14 13.556 13.9789 13.6069 13.9414 13.6444L12.1414 15.4444C12.0633 15.5225 11.9367 15.5225 11.8586 15.4444L9.7071 13.2929C9.31658 12.9024 8.68341 12.9024 8.29289 13.2929C7.90236 13.6834 7.90236 14.3166 8.29289 14.7071L11.2929 17.7071C11.6834 18.0976 12.3166 18.0976 12.7071 17.7071L15.7071 14.7071C15.8946 14.5196 16 14.2652 16 14V10C16 9.44772 15.5523 9 15 9H9.93693C9.84515 9 9.76516 8.93754 9.7429 8.84851L9.3429 7.24851C9.31134 7.12228 9.40681 7 9.53693 7H16C16.5523 7 17 6.55228 17 6C17 5.44772 16.5523 5 16 5H7.99999Z\" />\r\n                                <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.30601 1C2.48037 1 1.07798 2.61696 1.33617 4.42426L2.90518 15.4074C3.00667 16.1178 3.35945 16.7683 3.89952 17.2409L10.0245 22.6002C11.1556 23.5899 12.8444 23.5899 13.9755 22.6002L20.1005 17.2409C20.6405 16.7683 20.9933 16.1178 21.0948 15.4074L22.6638 4.42426C22.922 2.61696 21.5196 1 19.694 1H4.30601ZM3.31606 4.14142C3.23 3.53899 3.69746 3 4.30601 3H19.694C20.3025 3 20.77 3.53899 20.6839 4.14142L19.1149 15.1245C19.0811 15.3613 18.9635 15.5782 18.7835 15.7357L12.6585 21.095C12.2815 21.4249 11.7185 21.4249 11.3415 21.095L5.21653 15.7357C5.0365 15.5782 4.91891 15.3613 4.88508 15.1245L3.31606 4.14142Z\" />\r\n                                </svg>'),
(6, 'Javascript', 'JS', '                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, iure aspernatur beatae amet ex laboriosam sapiente modi id illo assumenda quas culpa quam ducimus nihil architecto eum totam nulla. Ipsam.\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->\r\n                                <svg width=\"25px\" height=\"25px\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M13 6C13 5.44772 13.4477 5 14 5H17C17.5523 5 18 5.44772 18 6C18 6.55228 17.5523 7 17 7H15.2C15.0895 7 15 7.08954 15 7.2V8.8C15 8.91046 15.0895 9 15.2 9H17C17.5523 9 18 9.44772 18 10V13C18 13.2652 17.8946 13.5196 17.7071 13.7071L14.7071 16.7071C14.3166 17.0976 13.6834 17.0976 13.2929 16.7071C12.9024 16.3166 12.9024 15.6834 13.2929 15.2929L15.9414 12.6444C15.9789 12.6069 16 12.556 16 12.5029V11.2C16 11.0895 15.9105 11 15.8 11H14C13.4477 11 13 10.5523 13 10V6Z\" />\r\n                                <path d=\"M11 6C11 5.44772 10.5523 5 10 5C9.44771 5 9 5.44772 9 6V13.1029C9 13.2811 8.78457 13.3704 8.65858 13.2444L8.05858 12.6444C8.02107 12.6069 8 12.556 8 12.5029V12C8 11.4477 7.55228 11 7 11C6.44771 11 6 11.4477 6 12V13C6 13.2652 6.10536 13.5196 6.29289 13.7071L9.29289 16.7071C9.57889 16.9931 10.009 17.0787 10.3827 16.9239C10.7564 16.7691 11 16.4045 11 16V6Z\" />\r\n                                <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.33617 4.42426C1.07798 2.61696 2.48037 1 4.30602 1H19.694C21.5196 1 22.922 2.61696 22.6638 4.42426L21.0948 15.4074C20.9933 16.1178 20.6405 16.7683 20.1005 17.2409L13.9755 22.6002C12.8444 23.5899 11.1556 23.5899 10.0245 22.6002L3.89952 17.2409C3.35945 16.7683 3.00667 16.1178 2.90519 15.4074L1.33617 4.42426ZM4.30602 3C3.69747 3 3.23001 3.53899 3.31607 4.14142L4.88509 15.1245C4.91892 15.3613 5.03651 15.5782 5.21653 15.7357L11.3415 21.095C11.7185 21.4249 12.2815 21.4249 12.6585 21.095L18.7835 15.7357C18.9635 15.5782 19.0811 15.3613 19.1149 15.1245L20.6839 4.14142C20.77 3.53899 20.3025 3 19.694 3H4.30602Z\"/>\r\n                                </svg>'),
(7, 'Structured Query Language', 'SQL', 'Structured Query Language', '<svg width=\"25px\" height=\"25px\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"m24.129 23.412-.508-.484c-.251-.331-.518-.624-.809-.891l-.005-.004q-.448-.407-.931-.774-.387-.266-1.064-.641c-.371-.167-.661-.46-.818-.824l-.004-.01-.048-.024c.212-.021.406-.06.592-.115l-.023.006.57-.157c.236-.074.509-.122.792-.133h.006c.298-.012.579-.06.847-.139l-.025.006q.194-.048.399-.109t.351-.109v-.169q-.145-.217-.351-.496c-.131-.178-.278-.333-.443-.468l-.005-.004q-.629-.556-1.303-1.076c-.396-.309-.845-.624-1.311-.916l-.068-.04c-.246-.162-.528-.312-.825-.435l-.034-.012q-.448-.182-.883-.399c-.097-.048-.21-.09-.327-.119l-.011-.002c-.117-.024-.217-.084-.29-.169l-.001-.001c-.138-.182-.259-.389-.355-.609l-.008-.02q-.145-.339-.314-.651-.363-.702-.702-1.427t-.651-1.452q-.217-.484-.399-.967c-.134-.354-.285-.657-.461-.942l.013.023c-.432-.736-.863-1.364-1.331-1.961l.028.038c-.463-.584-.943-1.106-1.459-1.59l-.008-.007c-.509-.478-1.057-.934-1.632-1.356l-.049-.035q-.896-.651-1.96-1.282c-.285-.168-.616-.305-.965-.393l-.026-.006-1.113-.278-.629-.048q-.314-.024-.629-.024c-.148-.078-.275-.171-.387-.279-.11-.105-.229-.204-.353-.295l-.01-.007c-.605-.353-1.308-.676-2.043-.93l-.085-.026c-.193-.113-.425-.179-.672-.179-.176 0-.345.034-.499.095l.009-.003c-.38.151-.67.458-.795.84l-.003.01c-.073.172-.115.371-.115.581 0 .368.13.705.347.968l-.002-.003q.544.725.834 1.14.217.291.448.605c.141.188.266.403.367.63l.008.021c.056.119.105.261.141.407l.003.016q.048.206.121.448.217.556.411 1.14c.141.425.297.785.478 1.128l-.019-.04q.145.266.291.52t.314.496c.065.098.147.179.241.242l.003.002c.099.072.164.185.169.313v.001c-.114.168-.191.369-.217.586l-.001.006c-.035.253-.085.478-.153.695l.008-.03c-.223.666-.351 1.434-.351 2.231 0 .258.013.512.04.763l-.003-.031c.06.958.349 1.838.812 2.6l-.014-.025c.197.295.408.552.641.787.168.188.412.306.684.306.152 0 .296-.037.422-.103l-.005.002c.35-.126.599-.446.617-.827v-.002c.048-.474.12-.898.219-1.312l-.013.067c.024-.063.038-.135.038-.211 0-.015-.001-.03-.002-.045v.002q-.012-.109.133-.206v.048q.145.339.302.677t.326.677c.295.449.608.841.952 1.202l-.003-.003c.345.372.721.706 1.127 1.001l.022.015c.212.162.398.337.566.528l.004.004c.158.186.347.339.56.454l.01.005v-.024h.048c-.039-.087-.102-.157-.18-.205l-.002-.001c-.079-.044-.147-.088-.211-.136l.005.003q-.217-.217-.448-.484t-.423-.508q-.508-.702-.969-1.467t-.871-1.555q-.194-.387-.375-.798t-.351-.798c-.049-.099-.083-.213-.096-.334v-.005c-.006-.115-.072-.214-.168-.265l-.002-.001c-.121.206-.255.384-.408.545l.001-.001c-.159.167-.289.364-.382.58l-.005.013c-.141.342-.244.739-.289 1.154l-.002.019q-.072.641-.145 1.318l-.048.024-.024.024c-.26-.053-.474-.219-.59-.443l-.002-.005q-.182-.351-.326-.69c-.248-.637-.402-1.374-.423-2.144v-.009c-.009-.122-.013-.265-.013-.408 0-.666.105-1.308.299-1.91l-.012.044q.072-.266.314-.896t.097-.871c-.05-.165-.143-.304-.265-.41l-.001-.001c-.122-.106-.233-.217-.335-.335l-.003-.004q-.169-.244-.326-.52t-.278-.544c-.165-.382-.334-.861-.474-1.353l-.022-.089c-.159-.565-.336-1.043-.546-1.503l.026.064c-.111-.252-.24-.47-.39-.669l.006.008q-.244-.326-.436-.617-.244-.314-.484-.605c-.163-.197-.308-.419-.426-.657l-.009-.02c-.048-.097-.09-.21-.119-.327l-.002-.011c-.011-.035-.017-.076-.017-.117 0-.082.024-.159.066-.223l-.001.002c.011-.056.037-.105.073-.145.039-.035.089-.061.143-.072h.002c.085-.055.188-.088.3-.088.084 0 .165.019.236.053l-.003-.001c.219.062.396.124.569.195l-.036-.013q.459.194.847.375c.298.142.552.292.792.459l-.018-.012q.194.121.387.266t.411.291h.339q.387 0 .822.037c.293.023.564.078.822.164l-.024-.007c.481.143.894.312 1.286.515l-.041-.019q.593.302 1.125.641c.589.367 1.098.743 1.577 1.154l-.017-.014c.5.428.954.867 1.38 1.331l.01.012c.416.454.813.947 1.176 1.464l.031.047c.334.472.671 1.018.974 1.584l.042.085c.081.154.163.343.234.536l.011.033q.097.278.217.57.266.605.57 1.221t.57 1.198l.532 1.161c.187.406.396.756.639 1.079l-.011-.015c.203.217.474.369.778.422l.008.001c.368.092.678.196.978.319l-.047-.017c.143.065.327.134.516.195l.04.011c.212.065.396.151.565.259l-.009-.005c.327.183.604.363.868.559l-.021-.015q.411.302.822.57.194.145.651.423t.484.52c-.114-.004-.249-.007-.384-.007-.492 0-.976.032-1.45.094l.056-.006c-.536.072-1.022.203-1.479.39l.04-.014c-.113.049-.248.094-.388.129l-.019.004c-.142.021-.252.135-.266.277v.001c.061.076.11.164.143.26l.002.006c.034.102.075.19.125.272l-.003-.006c.119.211.247.393.391.561l-.004-.005c.141.174.3.325.476.454l.007.005q.244.194.508.399c.161.126.343.25.532.362l.024.013c.284.174.614.34.958.479l.046.016c.374.15.695.324.993.531l-.016-.011q.291.169.58.375t.556.399c.073.072.137.152.191.239l.003.005c.091.104.217.175.36.193h.003v-.048c-.088-.067-.153-.16-.184-.267l-.001-.004c-.025-.102-.062-.191-.112-.273l.002.004zm-18.576-19.205q-.194 0-.363.012c-.115.008-.222.029-.323.063l.009-.003v.024h.048q.097.145.244.326t.266.351l.387.798.048-.024c.113-.082.2-.192.252-.321l.002-.005c.052-.139.082-.301.082-.469 0-.018 0-.036-.001-.054v.003c-.045-.044-.082-.096-.108-.154l-.001-.003-.081-.182c-.053-.084-.127-.15-.214-.192l-.003-.001c-.094-.045-.174-.102-.244-.169z\"></path></svg>');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domaine` varchar(100) NOT NULL,
  `auteur` varchar(100) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `emails` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `slug` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `domaine`, `auteur`, `tel`, `emails`, `adresse`, `slug`) VALUES
(1, 'DyC.cm', 'DyCathecorde', 620904706, 'Juniorsinenno@gmail.com', 'Carrefour Combie, Douala', 'Création front-end de site web');

-- --------------------------------------------------------

--
-- Structure de la table `social`
--

DROP TABLE IF EXISTS `social`;
CREATE TABLE IF NOT EXISTS `social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `svg` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `social`
--

INSERT INTO `social` (`id`, `url`, `svg`) VALUES
(1, 'https://fr.tradingview.com/chart/vN1H4ufo/?symbol=BINANCE%3ABTCUSDT', '                                <svg fill=\"#000000\" viewBox=\"0 0 512 512\" id=\"icons\" xmlns=\"http://www.w3.org/2000/svg\"><g id=\"SVGRepo_bgCarrier\" stroke-width=\"0\"></g><g id=\"SVGRepo_tracerCarrier\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></g><g id=\"SVGRepo_iconCarrier\"><path d=\"M412.19,118.66a109.27,109.27,0,0,1-9.45-5.5,132.87,132.87,0,0,1-24.27-20.62c-18.1-20.71-24.86-41.72-27.35-56.43h.1C349.14,23.9,350,16,350.13,16H267.69V334.78c0,4.28,0,8.51-.18,12.69,0,.52-.05,1-.08,1.56,0,.23,0,.47-.05.71,0,.06,0,.12,0,.18a70,70,0,0,1-35.22,55.56,68.8,68.8,0,0,1-34.11,9c-38.41,0-69.54-31.32-69.54-70s31.13-70,69.54-70a68.9,68.9,0,0,1,21.41,3.39l.1-83.94a153.14,153.14,0,0,0-118,34.52,161.79,161.79,0,0,0-35.3,43.53c-3.48,6-16.61,30.11-18.2,69.24-1,22.21,5.67,45.22,8.85,54.73v.2c2,5.6,9.75,24.71,22.38,40.82A167.53,167.53,0,0,0,115,470.66v-.2l.2.2C155.11,497.78,199.36,496,199.36,496c7.66-.31,33.32,0,62.46-13.81,32.32-15.31,50.72-38.12,50.72-38.12a158.46,158.46,0,0,0,27.64-45.93c7.46-19.61,9.95-43.13,9.95-52.53V176.49c1,.6,14.32,9.41,14.32,9.41s19.19,12.3,49.13,20.31c21.48,5.7,50.42,6.9,50.42,6.9V131.27C453.86,132.37,433.27,129.17,412.19,118.66Z\"></path></g></svg>\r\n'),
(2, 'https://fr.tradingview.com/chart/vN1H4ufo/?symbol=BINANCE%3ABTCUSDT', '                                <svg version=\"1.1\" id=\"Layer_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 461.001 461.001\" xml:space=\"preserve\" fill=\"#000000\"><g id=\"SVGRepo_bgCarrier\" stroke-width=\"0\"></g><g id=\"SVGRepo_tracerCarrier\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></g><g id=\"SVGRepo_iconCarrier\"> <g> <path style=\"fill:#F61C0D;\" d=\"M365.257,67.393H95.744C42.866,67.393,0,110.259,0,163.137v134.728 c0,52.878,42.866,95.744,95.744,95.744h269.513c52.878,0,95.744-42.866,95.744-95.744V163.137 C461.001,110.259,418.135,67.393,365.257,67.393z M300.506,237.056l-126.06,60.123c-3.359,1.602-7.239-0.847-7.239-4.568V168.607 c0-3.774,3.982-6.22,7.348-4.514l126.06,63.881C304.363,229.873,304.298,235.248,300.506,237.056z\"></path> </g> </g></svg>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `temoignage`
--

DROP TABLE IF EXISTS `temoignage`;
CREATE TABLE IF NOT EXISTS `temoignage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `metier` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `temoignage`
--

INSERT INTO `temoignage` (`id`, `image`, `nom`, `metier`, `description`) VALUES
(4, '4.png', 'hijihijhiuy', 'hijolmoi', 'hiihhijklkikl:lkilklkiholm'),
(5, '5.png', 'John Doe', 'DEv', ' mechant mechantmechantmechant mechantmechant mechant');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE IF NOT EXISTS `visite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interface` varchar(100) DEFAULT NULL,
  `device` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `heure` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `interface`, `device`, `date`, `heure`) VALUES
(10, 'PC', 'Microsoft-WebDAV-MiniRedir/10.0.19045', '2024-12-16', '00:32:58'),
(7, 'MOBILE', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2024-12-14', '06:57:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
