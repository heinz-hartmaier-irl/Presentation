-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 nov. 2023 à 06:22
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `heinzh`
--

-- --------------------------------------------------------

--
-- Structure de la table `bloc`
--

DROP TABLE IF EXISTS `bloc`;
CREATE TABLE IF NOT EXISTS `bloc` (
  `idBloc` int NOT NULL,
  `lien_bloc` varchar(70) DEFAULT NULL,
  `image_lien` varchar(70) DEFAULT NULL,
  `image_alt` varchar(70) DEFAULT NULL,
  `description_bloc` mediumtext,
  `Page_idPage` int NOT NULL,
  `titre_bloc` varchar(45) DEFAULT NULL,
  `date` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idBloc`),
  UNIQUE KEY `idBloc_UNIQUE` (`idBloc`),
  KEY `fk_Bloc_Page_idx` (`Page_idPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `bloc`
--

INSERT INTO `bloc` (`idBloc`, `lien_bloc`, `image_lien`, `image_alt`, `description_bloc`, `Page_idPage`, `titre_bloc`, `date`) VALUES
(1, NULL, 'images/KFP.jpeg', 'kung_fu_panda', 'Ce film d\'animation nous raconte l\'histoire de Po, un panda qui travaille dans le restaurant de nouille de son père mais il rêve de devenir un jour un grand maître de kung fu, l\'opportunité se présentera à lui le jour de l\'élection du guerrier dragon, il devra alors se préparer pour réaliser son rêve et s\'attendre au pire. J\'ai découvert se film quand j\'étais petit avec mes soeurs, grâce à mon père qui l\'avait téléchargé. Si le film m\'a marqué c\'est je pense parceque ça a été le premier film en animation 3D que j\'ai vue mais mais c\'est surtout les musiques et les personnages que je trouvais incroyables.', 1, 'Kung Fu Panda', NULL),
(2, NULL, 'images/planette_au_tresor.jpeg', 'la_planette_au_trésor', 'Le film nous plonges dans un univers spatial, au côté de Jim Hawkins un jeune homme vivant avec sa mère dans une auberge,géré par cette dernière. Un jour un alien se présente à l\'auberge,blessé il remet un objet sphérique étrange à Jim avant de mourir, qui est en réalité la carte menant au trésor du plus grand pirate de l\'univers et c\'est des années plus tard que Jim participera à une expedition pour retrouver ce trésor. Ce film faisait parti d\'un coffret que j\'avais avant dans lequel il y a avait plusieurs disques disney dont ce film, ce qui en à fait un des premier film d\'animation que j\'ai vu et je pense que c\'est surtout cela qui l\'a ancré dans mon esprit sans pour autant que je m\'en souvienne totalement.', 1, 'La planette au trésor', NULL),
(3, NULL, 'images/Spider.jpg', 'Spiderman', 'Nous voici dans le quotidien de Milles Moralles, un jeunne homme qui va voir sa vie bousculé à cause d\'un morsure d\'une araignée radioactive qui va lui donner des capacités similaire à celles de Spiderman, sauf que ce dernier ce fera tué devant lui, le laissant sans guide face à ces nouvelles résponsabilités sauf qu\'il fit le rencontre d\'un autre Spiderman venant d\'une autre dimension, ainsi que d\'autres comme eux qui vont devoir s\'entraider pour rentrer chez eux. Ce que j\'ai beaucoup apprécié dans se film c\'est à la fois une exploitation interessante de l\'univers de Spiderman mais aussi la musique du film qui est génial, au point où j\'écoute encore certaines d\'entres elles comme Sunflower ou Scared of the dark.', 1, 'Spiderman into the Spiderverse', NULL),
(4, NULL, 'images/AC.jpeg', 'Asssassin_Creed', 'Assassin Creed est une série de jeux vidéo qui nous plonge dans le passé dans différentes périodes de l\'histoire, tout en étant au contrôle d\'un membre de la confrérie des Assassins qui ont pour but de protéger le peuple dans l\'ombre contre leurs ennemis de toujours: les Templiers. Ce que j\'ai apprécié dans cette saga c\'est le scénar et le gameplay,le scénario m\'a fait découvrir l\'Histoire d\'un point de vue différents que ce que l\'école enseigner et les thématiques abordé été aussi très intéressent comme le libre arbitre, la religion , la notion de bien et du mal... Et pour le gameplay, \r\n      le système de combat était pas tout le temps génial mais ça été compenser par le côté exploration.', 2, 'Assassin\'s Creed', NULL),
(5, NULL, 'images/bioshock.png', 'Bioshock', 'Bioshock est une trilogie qui nous emmene dans des univers utopique que ce soit sous l\'océan dans les deux premier dans la ville de Rapture, un endroit qui regorge de mystère qu\'il nous faudra découvrir pour s\'en sortir vivant.          Mais également dans le ciel avec bioshock infinite, où nous incarnerons Brooker et y ferons la connaissance d\'Elizabeth une jeune fille qui possède des capacité lui permettant de voyager entre les dimensions et qui rêve de s\'enfuir pour découvrir le monde, nous devrons donc l\'accompagner à travers la ville tout en la protégeant de la milice local. Ce que j\'ai trouvé vraiment bon dans les bioshock c\'est l\'univers de c\'est jeu, les décors, les lieux, la musique, les personnages...\r\nTout à une pâte particulière qui donne envie de découvrir l\'entiereté de ce que le jeu nous propose.', 2, 'Bioshock', NULL),
(6, NULL, 'images/Minecraft.jpg', 'minecraft', 'Minecraft est un jeu très connu et beaucoup apprécié dans lequel il n\'y a pas vraiment d\'histoire,c\'est un jeu de création et de survie où il faudra faire preuve d\'imagination pour évoluer dans ce monde presque entièrement modifiable. Dans mon cas j\'ai découvert le jeu grâce à un ami en primaire et depuis malgrès que je n\'y joue plus aussi souvent j\'en garde d\'excellent souvenir et le recommanderais à n\'importe qui voudrant s\'y essayer, car la seul limite du jeu est ce que en veux en faire.', 2, 'Minecraft', NULL),
(7, NULL, '', '', 'De Post Malone\r\n            ', 3, 'Better Now', 'Sorti en 2018 sur l\'album \"beerbongs & bentleys\".'),
(8, NULL, '', '', 'De Eminem\r\n', 3, 'The real slim shady', 'Sorti en 2000 sur l\'album \"The Marshall Mathers LP\".'),
(9, NULL, '', '', 'De Micheal Jackson\r\n', 3, 'Thriller', ' Sorti en 1983 sur l\'album \"Thriller\".'),
(13, '', 'images/Papeterie.png', 'relook_ton_sdf', '\r\nVoici la marque imaginaire que moi et un ami avons créer dans le cadre d\'une SEA, qui est une émission télé dans laquelle des stylistes vont rencontré des personnes dans le besoin pour leurs proposés de participé à un concours de mode où ils devront affonter d\'autres personnes comme eux. Pour la direction artistique de notre marque, nous avons choisi une esthetique \"paper-cut\".', 4, 'Relook ton SDF', '(Produis dans le cadre de la SAE 103)'),
(14, '', 'images/decor_interview.png', 'décor', '\r\nCeci est le décors principal que mon groupe et moi avons utilisé pour notre interview sur le film \"Spiderman into the Spiderverse\", c\'est pour cela que nous avons repris une des scènes les plus iconic du film, celle dans laquelle Milles se laisse tomber dans le vide. J\'avais fais quelque chose d\'autres mais c\'étais très bancal donc je l\'ai retravaillé chez moi.', 4, 'Les décor de l\'interview', '(Produis dans le cadre de la SAE 104)'),
(15, '', 'images\\Décor_insta.png', 'décor_insta', '\r\nNotre professeur d\'art nous a demandé de s\'entrainer à faire un décor pour la SAE 104, dans mon cas j\'ai tenté plusieurs choses mais j\'ai fini par m\'inspirer d\'un vieux projet que je n\'avais pas terminé, ce qui a donné se résultat.', 4, 'Un paysage format instagram', '(Produis dans le cadre d\'un exercice)');

-- --------------------------------------------------------

--
-- Structure de la table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `idcarousel` int NOT NULL,
  `video_lien` varchar(70) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `clique` varchar(45) DEFAULT NULL,
  `page_idPage` int NOT NULL,
  PRIMARY KEY (`idcarousel`),
  UNIQUE KEY `idcarousel_UNIQUE` (`idcarousel`),
  KEY `fk_carousel_page1_idx` (`page_idPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carousel`
--

INSERT INTO `carousel` (`idcarousel`, `video_lien`, `description`, `clique`, `page_idPage`) VALUES
(1, 'video\\Post_malone_better_now.mp4', 'J\'ai découvert cette musique par hasard en ma baladant dans la discographie de Post Malone après que je l\'ai découvert grâce à la musique \"Sunflower\".', 'Cliquez pour un extrait', 3),
(2, 'video\\Eminem_the_real_slim_shady.mp4', 'Cette musique est l\'une de mes préferer d\'Eminem avec \"Without me\", mais je préfère celle-ci sûrement grâce au clip que je trouve à la fois cool et drôle.', 'Cliquez pour un extrait', 3),
(3, 'video\\Michael_jackson_thriller.mp4', 'C\'est une des premières musique que j\'ai écouter de ma vie et c\'est père qui me l\'a fait découvrir donc elle est spécial pour moi à cause de la nostalgie qu\'elle me procure.', 'Cliquez pour voir le clip', 3);

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `idPage` int NOT NULL,
  `titre_page` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPage`),
  UNIQUE KEY `idPage_UNIQUE` (`idPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `page`
--

INSERT INTO `page` (`idPage`, `titre_page`) VALUES
(1, 'Animation'),
(2, 'Jeux_vidéo'),
(3, 'Musique'),
(4, 'Projet_mmi');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bloc`
--
ALTER TABLE `bloc`
  ADD CONSTRAINT `fk_Bloc_Page` FOREIGN KEY (`Page_idPage`) REFERENCES `page` (`idPage`);

--
-- Contraintes pour la table `carousel`
--
ALTER TABLE `carousel`
  ADD CONSTRAINT `fk_carousel_page1` FOREIGN KEY (`page_idPage`) REFERENCES `page` (`idPage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
