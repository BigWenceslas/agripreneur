-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 mars 2021 à 18:54
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agripreneur`
--

-- --------------------------------------------------------

--
-- Structure de la table `agripreneur_du_mois`
--

DROP TABLE IF EXISTS `agripreneur_du_mois`;
CREATE TABLE IF NOT EXISTS `agripreneur_du_mois` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tire_bloc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agripreneur_du_mois`
--

INSERT INTO `agripreneur_du_mois` (`id`, `tire_bloc`, `created_at`, `updated_at`) VALUES
(1, 'AGRIPRENEUR DU MOIS', '2021-03-29 07:47:51', '2021-03-29 07:47:51');

-- --------------------------------------------------------

--
-- Structure de la table `agripreneur_du_moi_article`
--

DROP TABLE IF EXISTS `agripreneur_du_moi_article`;
CREATE TABLE IF NOT EXISTS `agripreneur_du_moi_article` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `agripreneur_du_moi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agripreneur_du_moi_article`
--

INSERT INTO `agripreneur_du_moi_article` (`id`, `article_id`, `agripreneur_du_moi_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 3, 2),
(4, 2, 3),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vues` int(11) DEFAULT '0',
  `categorie_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publier` tinyint(4) DEFAULT '0',
  `video_youtube` tinytext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `contenu`, `resume`, `slug`, `vues`, `categorie_id`, `image`, `created_at`, `updated_at`, `publier`, `video_youtube`, `user_id`) VALUES
(2, 'Laravel vs Symfony', '<h1 style=\"box-sizing: inherit; margin: 0em 0px 0.5em; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.25; padding: 0em; min-height: 1rem; color: rgba(0, 0, 0, 0.8);\">Belligerent and numerous.</h1>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; font-size: 1.25em; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif;\">And when we woke up, we had these bodies. I\'m just glad my fat, ugly mama isn\'t alive to see this day. Okay, I like a challenge. But I\'ve never been to the moon! Uh, is the puppy mechanical in any way?</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Professor, make a woman out of me. And then the battle\'s not so bad?&nbsp;<strong style=\"box-sizing: inherit;\">Maybe I love you so much I love you no matter who you are pretending to be.</strong>&nbsp;<em style=\"box-sizing: inherit;\">You know the worst thing about being a slave?</em>&nbsp;They make you work, but they don\'t pay you or let you go.</p>\r\n<h2 style=\"box-sizing: inherit; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.5; margin: 0px 0px 0.5em; padding: 0em; color: rgba(0, 0, 0, 0.8);\">Too much work. Let\'s burn it and say we dumped it in the sewer.</h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">In your time, yes, but nowadays shut up! Besides, these are adult stemcells, harvested from perfectly healthy adults whom I killed for their stemcells. Fatal. Aww, it\'s true. I\'ve been hiding it for so long.</p>\r\n<ol style=\"box-sizing: inherit; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">Yes, I saw. You were doing well, until everyone died.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">Bender, I didn\'t know you liked cooking. That\'s so cute.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">There\'s one way and only one way to determine if an animal is intelligent. Dissect its brain!</li>\r\n</ol>\r\n<h3 style=\"box-sizing: inherit; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.33em; margin: calc(2rem - 0.165em) 0em 1rem; padding: 0em; font-size: 1.28rem; color: rgba(0, 0, 0, 0.8);\">Tell them I hate them.</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">You seem malnourished. Are you suffering from intestinal parasites? Ask her how her day was. For example, if you killed your grandfather, you\'d cease to exist! Then we\'ll go with that data file! But I\'ve never been to the moon!</p>\r\n<ul style=\"box-sizing: inherit; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">Why yes! Thanks for noticing.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">I am the man with no name, Zapp Brannigan!</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">This is the worst part. The calm before the battle.</li>\r\n</ul>', '<h5 style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">yet the pain was so intense, that it felt to him like fifteen years. And it goes without saying, it caused him to empty his bowels.</h5>', 'laravel-vs-symfony', NULL, 1, 'articles\\March2021\\JCMSTqQwfqPdENJRA4ij.jpeg', '2021-03-20 13:25:00', '2021-03-29 15:48:29', 1, 'xGvIdbB67Qs', 1),
(3, 'Article', '<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I\'m Santa Claus! We\'ll go deliver this crate like professionals, and then we\'ll go home. Check it out, y\'all. Everyone who was invited is here. I\'ve got to find a way to escape the horrible ravages of youth. Suddenly, I\'m going to the bathroom like clockwork, every three hours. And those jerks at Social Security stopped sending me checks. Now \'I\'\' have to pay \'\'them\'!</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I don\'t \'need\' to drink. I can quit anytime I want! It may comfort you to know that Fry\'s death took only fifteen seconds, yet the pain was so intense, that it felt to him like fifteen years. And it goes without saying, it caused him to empty his bowels.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Now that the, uh, garbage ball is in space, Doctor, perhaps you can help me with my sexual inhibitions? And from now on you\'re all named Bender Jr. Your best is an idiot! I\'m sure those windmills will keep them cool.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Now Fry, it\'s been a few years since medical school, so remind me. Disemboweling in your species: fatal or non-fatal? I don\'t \'need\' to drink. I can quit anytime I want! Have you ever tried just turning off the TV, sitting down with your children, and hitting them?</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">We need rest. The spirit is willing, but the flesh is spongy and bruised. Does anybody else feel jealous and aroused and worried? Hey, you add a one and two zeros to that or we walk! You are the last hope of the universe.</p>', '<h5 style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">yet the pain was so intense, that it felt to him like fifteen years. And it goes without saying, it caused him to empty his bowels.</h5>', 'article', NULL, 1, 'articles\\March2021\\qR55zZ0jt4Bf7yjQj2tQ.PNG', '2021-03-20 13:37:00', '2021-03-29 15:49:19', 1, 'l0U7SxXHkPY', 1),
(4, 'Sunt similique Nam e', '<p style=\"box-sizing: inherit; margin: 0em 0px 0.5em; line-height: 1.5; font-size: 1.25em; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif;\">o many poorly chosen words in that sentence. I\'m half machine. I\'m a monster. There\'s so many poorly chosen words in that sentence. Get me a vodka rocks. And a piece of toast.</p>\r\n<h1 style=\"box-sizing: inherit; margin: 0px 0px 0.5em; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.25; padding: 0em; min-height: 1rem; color: rgba(0, 0, 0, 0.8);\">You look&hellip;perfect.</h1>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I love Halloween. The one time of year when everyone wears a mask &hellip; not just me. I\'m really more an apartment person. God created pudding, and then he rested. I\'m really more an apartment person.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I\'m a sociopath; there\'s not much he can do for me. Keep your mind limber. You all right, Dexter?&nbsp;<strong style=\"box-sizing: inherit;\">I like seafood.</strong>&nbsp;<em style=\"box-sizing: inherit;\">Rorschach would say you have a hard time relating to others.</em>&nbsp;I like seafood.</p>\r\n<h2 style=\"box-sizing: inherit; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.5; margin: 0px 0px 0.5em; padding: 0em; color: rgba(0, 0, 0, 0.8);\">I\'m really more an apartment person.</h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Only you could make those words cute. You\'re a killer. I catch killers. I will not kill my sister. I will not kill my sister. I will not kill my sister. God created pudding, and then he rested. You look&hellip;perfect.</p>\r\n<ol style=\"box-sizing: inherit; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">Under normal circumstances, I\'d take that as a compliment.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">You look&hellip;perfect.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">I\'m going to tell you something that I\'ve never told anyone before.</li>\r\n</ol>\r\n<h3 style=\"box-sizing: inherit; font-family: \'Roboto Slab\', \'Helvetica Neue\', sans-serif; line-height: 1.33em; margin: calc(2rem - 0.165em) 0em 1rem; padding: 0em; font-size: 1.28rem; color: rgba(0, 0, 0, 0.8);\">Like a sloth. I can do that.</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I\'m Dexter, and I\'m not sure what I am. I\'m a sociopath; there\'s not much he can do for me. Somehow, I doubt that. You have a good heart, Dexter. I think he\'s got a crush on you, Dex! You all right, Dexter?</p>\r\n<ul style=\"box-sizing: inherit; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">He taught me a code. To survive.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">Only you could make those words cute.</li>\r\n<li style=\"box-sizing: inherit; font-size: 1em; line-height: 1.5em; margin-bottom: 0.5em;\">I\'m Dexter, and I\'m not sure what I am.</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I have a dark side, too. I\'m generally confused most of the time. I\'ve lived in darkness a long time. Over the years my eyes adjusted until the dark became my world and I could see. I think he\'s got a crush on you, Dex!</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I\'m not the monster he wants me to be. So I\'m neither man nor beast. I\'m something new entirely. With my own set of rules. I\'m Dexter. Boo. I\'m not the monster he wants me to be. So I\'m neither man nor beast. I\'m something new entirely. With my own set of rules. I\'m Dexter. Boo.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Tell him time is of the essence. You\'re a killer. I catch killers. I like seafood. I\'m really more an apartment person. I\'m a sociopath; there\'s not much he can do for me.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I have a dark side, too. I am not a killer. I\'m not the monster he wants me to be. So I\'m neither man nor beast. I\'m something new entirely. With my own set of rules. I\'m Dexter. Boo. This man is a knight in shining armor.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">God created pudding, and then he rested. Like a sloth. I can do that. Finding a needle in a haystack isn\'t hard when every straw is computerized. I love Halloween. The one time of year when everyone wears a mask &hellip; not just me.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">You look&hellip;perfect. Pretend. You pretend the feelings are there, for the world, for the people around you. Who knows? Maybe one day they will be. I\'m partial to air conditioning. Cops, another community I\'m not part of.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I\'m really more an apartment person. Like a sloth. I can do that. Hello, Dexter Morgan. I\'m thinking two circus clowns dancing. You?</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Cops, another community I\'m not part of. Hello, Dexter Morgan. Under normal circumstances, I\'d take that as a compliment. Only you could make those words cute. I\'m doing mental jumping jacks. I\'m really more an apartment person.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">You all right, Dexter? I\'m going to tell you something that I\'ve never told anyone before. I\'m doing mental jumping jacks. I\'m Dexter, and I\'m not sure what I am.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Makes me a &hellip; scientist. God created pudding, and then he res</p>', '<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">You all right, Dexter? I\'m going to tell you something that I\'ve never told anyone before. I\'m doing mental jumping jacks. I\'m Dexter, and I\'m not sure what I am.</p>', 'sunt-similique-nam-e', 0, 1, 'articles\\March2021\\ChKSOAvDCcxK7mM3waV1.jpg', '2021-03-14 18:49:00', '2021-03-29 15:50:01', 1, 'xGvIdbB67Qs', 1),
(5, 'Sunt similique Nam eaasd', '<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">All I want is to be a monkey of moderate intelligence who wears a suit&hellip; that\'s why I\'m transferring to business school! It\'s toe-tappingly tragic! WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Hey! I\'m a porno-dealing monster, what do I care what you think?</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Daylight and everything. For the last time, I don\'t like lilacs! Your \'first\' wife was the one who liked lilacs! No, of course not. It was&hellip; uh&hellip; porno. Yeah, that\'s it. Large bet on myself in round one.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Who said that? SURE you can die! You want to die?! Why, those are the Grunka-Lunkas! They work here in the Slurm factory. Ooh, name it after me! I never loved you.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Is that a cooking show? Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages! And until then, I can never die? And why did \'I\' have to take a cab? Actually, that\'s still true.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">Why yes! Thanks for noticing. Of all the friends I\'ve had&hellip; you\'re the first. Son, as your lawyer, I declare y\'all are in a 12-piece bucket o\' trouble. But I done struck you a deal: Five hours of community service cleanin\' up that ol\' mess you caused.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">I decline the title of Iron Cook and accept the lesser title of Zinc Saucier, which I just made up. Uhh&hellip; also, comes with double prize money. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">That could be \'my\' beautiful soul sitting naked on a couch. If I could just learn to play this stupid thing. I wish! It\'s a nickel. Yes, except the Dave Matthews Band doesn\'t rock. Negative, bossy meat creature!</p>', '<p style=\"box-sizing: inherit; margin: 0px 0px 0.5em; line-height: 1.5; color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', sans-serif; font-size: 16px;\">All I want is to be a monkey of moderate intelligence who wears a suit&hellip; that\'s why I\'m transferring to business school! It\'s toe-</p>', 'sunt-similique-nam-eaasd', 0, 1, 'articles\\March2021\\MSEsSR33qTOh2IX7ZwQt.jpg', '2021-03-21 18:56:00', '2021-03-29 15:56:32', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `a_la_unes`
--

DROP TABLE IF EXISTS `a_la_unes`;
CREATE TABLE IF NOT EXISTS `a_la_unes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `article1_bloc1` int(11) DEFAULT NULL,
  `article2_bloc1` int(11) DEFAULT NULL,
  `titre_bloc1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre_bloc2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article1_bloc2` int(11) DEFAULT NULL,
  `article2_bloc2` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `a_la_unes`
--

INSERT INTO `a_la_unes` (`id`, `article_id`, `article1_bloc1`, `article2_bloc1`, `titre_bloc1`, `titre_bloc2`, `article1_bloc2`, `article2_bloc2`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 'AGRIPRENEUR TV', 'TRANSFORMATION', 3, 3, '2021-03-28 18:25:24', '2021-03-28 18:25:24');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `description`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Technologie', '<p>456456</p>', 'technologie', 'categories\\March2021\\hQ95MbB7VeIceHEiKTK4.jpg', '2021-03-20 12:56:00', '2021-03-28 11:34:14'),
(2, 'TV', '<p>Videos</p>', 'tv', 'categories\\March2021\\AcJnR25iCfV1HAZy47ko.PNG', '2021-03-21 07:56:00', '2021-03-28 11:36:05'),
(3, 'Agriculture', '<p>werwer</p>', 'agriculture', 'categories\\March2021\\pnmlpLhCCVxuihaAYDTq.PNG', '2021-03-21 07:56:00', '2021-03-28 11:34:31'),
(4, 'Culture', '<p>Culture</p>', 'culture', 'categories\\March2021\\E4Ej6kbZe97fuLwcaTpU.png', '2021-03-27 20:56:00', '2021-03-28 11:33:59');

-- --------------------------------------------------------

--
-- Structure de la table `categories_bas_de_pages`
--

DROP TABLE IF EXISTS `categories_bas_de_pages`;
CREATE TABLE IF NOT EXISTS `categories_bas_de_pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie1` int(11) NOT NULL,
  `categorie2` int(11) NOT NULL,
  `categorie3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories_bas_de_pages`
--

INSERT INTO `categories_bas_de_pages` (`id`, `created_at`, `updated_at`, `categorie1`, `categorie2`, `categorie3`) VALUES
(4, '2021-03-28 11:16:06', '2021-03-28 11:16:06', 1, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"description\":\"Nom de la cat\\u00e9gorie\",\"display\":{\"width\":\"6\",\"id\":\"nom_categorie\"},\"validation\":{\"rule\":\"unique:categories\",\"messages\":{\"unique\":\"Ce nom est d\\u00e9ja utilise\"}}}', 2),
(24, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(25, 4, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 5),
(26, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"description\":\"Image de la cat\\u00e9gorie\",\"display\":{\"width\":\"6\",\"id\":\"nom_categorie\"}}', 3),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"nom_article\"},\"validation\":{\"rule\":\"unique:articles\",\"messages\":{\"unique\":\"Ce nom est d\\u00e9ja utilis\\u00e9\"}}}', 2),
(31, 5, 'contenu', 'rich_text_box', 'Contenu', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"contenu_article\"}}', 7),
(32, 5, 'resume', 'rich_text_box', 'Résume', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"resume_article\"}}', 8),
(33, 5, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 12),
(34, 5, 'vues', 'number', 'Vues', 0, 1, 1, 0, 0, 1, '{\"default\":\"0\"}', 9),
(35, 5, 'categorie_id', 'text', 'Categorie Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(36, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"image_article\"}}', 5),
(37, 5, 'created_at', 'timestamp', 'Date de Création', 0, 1, 1, 1, 1, 1, '{}', 10),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(39, 5, 'article_belongsto_category_relationship', 'relationship', 'Catégorie', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"categorie_article\"},\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(40, 5, 'publier', 'checkbox', 'Etat', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"etat_article\"},\"on\":\"Publier\",\"off\":\"Brouillon\",\"checked\":false}', 4),
(54, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(56, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(57, 8, 'categorie1', 'text', 'Categorie1', 1, 1, 1, 1, 1, 1, '{}', 4),
(58, 8, 'categorie2', 'text', 'Categorie2', 1, 1, 1, 1, 1, 1, '{}', 5),
(59, 8, 'categorie3', 'text', 'Categorie3', 1, 1, 1, 1, 1, 1, '{}', 6),
(60, 8, 'categories_bas_de_page_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie1\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":null}', 7),
(61, 8, 'categories_bas_de_page_belongsto_category_relationship_1', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie2\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":null}', 8),
(62, 8, 'categories_bas_de_page_belongsto_category_relationship_2', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie3\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":null}', 9),
(63, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(65, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(66, 9, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 9, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 9, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 9, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 7),
(70, 9, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 8),
(71, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 10, 'article_id', 'text', 'Article Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 10, 'a_la_une_belongsto_article_relationship', 'relationship', 'A la Une (Video)', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(74, 10, 'article1_bloc1', 'text', 'Article1 Bloc1', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 10, 'article2_bloc1', 'text', 'Article2 Bloc1', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 10, 'titre_bloc1', 'text', 'Titre Bloc1', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"titre_bloc1\"}}', 8),
(77, 10, 'titre_bloc2', 'text', 'Titre Bloc2', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"titre_bloc2\"}}', 11),
(78, 10, 'article1_bloc2', 'text', 'Article1 Bloc2', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 10, 'article2_bloc2', 'text', 'Article2 Bloc2', 0, 1, 1, 1, 1, 1, '{}', 7),
(80, 10, 'a_la_une_belongsto_article_relationship_1', 'relationship', 'Article 1 Bloc 1', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"article1_bloc1\"},\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article1_bloc1\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(81, 10, 'a_la_une_belongsto_article_relationship_2', 'relationship', 'Article 2 Bloc 1', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"article2_bloc1\"},\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article2_bloc1\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(82, 10, 'a_la_une_belongsto_article_relationship_3', 'relationship', 'Article 1 Bloc 2', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"article1_bloc2\"},\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article1_bloc2\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(83, 10, 'a_la_une_belongsto_article_relationship_4', 'relationship', 'Article 2 Bloc 2', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"article2_bloc2\"},\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article2_bloc2\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(94, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 14, 'tire_bloc', 'text', 'Tire Bloc', 1, 1, 1, 1, 1, 1, '{}', 2),
(96, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(97, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(98, 14, 'agripreneur_du_moi_belongstomany_article_relationship', 'relationship', 'articles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"agripreneur_du_moi_article\",\"pivot\":\"1\",\"taggable\":\"on\"}', 5),
(99, 5, 'article_belongsto_user_relationship', 'relationship', 'Auteur', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"a_la_unes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(100, 5, 'video_youtube', 'text', 'Video Youtube', 0, 1, 1, 1, 1, 1, '{}', 12),
(101, 5, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 13);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-03-20 12:43:20', '2021-03-27 19:55:39'),
(5, 'articles', 'articles', 'Article', 'Articles', 'voyager-documentation', 'App\\Article', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-03-20 13:09:55', '2021-03-29 14:15:25'),
(8, 'categories_bas_de_pages', 'categories-bas-de-pages', 'Categories Bas De Page', 'Categories Bas De Pages', 'voyager-logbook', 'App\\CategoriesBasDePage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 22:06:58', '2021-03-27 22:06:58'),
(9, 'social_networks', 'social-networks', 'Reseaux sociaux', 'Social Networks', NULL, 'App\\SocialNetwork', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(10, 'a_la_unes', 'a-la-unes', 'A La Une', 'A La Unes', 'voyager-diamond', 'App\\ALaUne', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-03-28 18:08:22', '2021-03-28 18:23:40'),
(14, 'agripreneur_du_mois', 'agripreneur-du-mois', 'Agripreneur Du Moi', 'Articles du mois', NULL, 'App\\AgripreneurDuMoi', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2021-03-29 08:20:18', '2021-03-29 08:20:18');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `home_a_la_unes`
--

DROP TABLE IF EXISTS `home_a_la_unes`;
CREATE TABLE IF NOT EXISTS `home_a_la_unes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-17 18:40:34', '2021-03-17 18:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-17 18:40:34', '2021-03-17 18:40:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 13, 7, '2021-03-17 18:40:34', '2021-03-20 08:13:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 12, 2, '2021-03-17 18:40:34', '2021-03-20 08:12:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 12, 1, '2021-03-17 18:40:34', '2021-03-20 08:12:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, 13, 8, '2021-03-17 18:40:34', '2021-03-20 08:13:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 13, 6, '2021-03-17 18:40:34', '2021-03-20 08:13:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 13, 5, '2021-03-17 18:40:34', '2021-03-20 08:13:18', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 13, 4, '2021-03-17 18:40:34', '2021-03-20 08:13:14', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 13, 3, '2021-03-17 18:40:34', '2021-03-20 08:13:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 13, 2, '2021-03-17 18:40:34', '2021-03-20 08:13:04', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 13, 1, '2021-03-17 18:40:35', '2021-03-20 08:13:01', 'voyager.hooks', NULL),
(12, 1, 'Gestion des Utilisateurs', '', '_self', 'voyager-group', '#000000', NULL, 2, '2021-03-20 08:11:57', '2021-03-20 08:12:07', NULL, ''),
(13, 1, 'Systeme', '', '_self', 'voyager-anchor', '#000000', NULL, 5, '2021-03-20 08:12:55', '2021-03-27 21:37:38', NULL, ''),
(14, 1, 'Gestion des Articles', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2021-03-20 12:18:02', '2021-03-20 12:19:37', NULL, ''),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 14, 1, '2021-03-20 12:43:20', '2021-03-20 12:44:07', 'voyager.categories.index', NULL),
(17, 1, 'Articles', '', '_self', 'voyager-documentation', NULL, 14, 2, '2021-03-20 13:09:55', '2021-03-20 13:20:47', 'voyager.articles.index', NULL),
(18, 1, 'HomePage', '', '_self', 'voyager-home', '#000000', NULL, 4, '2021-03-27 21:10:02', '2021-03-27 21:37:38', NULL, ''),
(21, 1, 'Categories Bas De Pages', '', '_self', 'voyager-logbook', NULL, 18, 4, '2021-03-27 22:06:59', '2021-03-29 07:57:15', 'voyager.categories-bas-de-pages.index', NULL),
(22, 1, 'Social Networks', '', '_self', 'voyager-phone', '#000000', 18, 2, '2021-03-28 10:40:17', '2021-03-29 07:57:15', 'voyager.social-networks.index', 'null'),
(23, 1, 'A La Unes', '', '_self', 'voyager-diamond', NULL, 18, 3, '2021-03-28 18:08:22', '2021-03-29 07:57:15', 'voyager.a-la-unes.index', NULL),
(26, 1, 'Articles du mois', '', '_self', 'voyager-file-text', '#000000', 18, 1, '2021-03-29 08:20:18', '2021-03-29 08:29:32', 'voyager.agripreneur-du-mois.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'browse_bread', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(3, 'browse_database', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(4, 'browse_media', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(5, 'browse_compass', NULL, '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(6, 'browse_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(7, 'read_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(8, 'edit_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(9, 'add_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(10, 'delete_menus', 'menus', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(11, 'browse_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(12, 'read_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(13, 'edit_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(14, 'add_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(15, 'delete_roles', 'roles', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(16, 'browse_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(17, 'read_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(18, 'edit_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(19, 'add_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(20, 'delete_users', 'users', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(21, 'browse_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(22, 'read_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(23, 'edit_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(24, 'add_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(25, 'delete_settings', 'settings', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(26, 'browse_hooks', NULL, '2021-03-17 18:40:35', '2021-03-17 18:40:35'),
(27, 'browse_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(28, 'read_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(29, 'edit_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(30, 'add_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(31, 'delete_categories', 'categories', '2021-03-20 12:43:20', '2021-03-20 12:43:20'),
(32, 'browse_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(33, 'read_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(34, 'edit_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(35, 'add_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(36, 'delete_articles', 'articles', '2021-03-20 13:09:55', '2021-03-20 13:09:55'),
(47, 'browse_categories_bas_de_pages', 'categories_bas_de_pages', '2021-03-27 22:06:59', '2021-03-27 22:06:59'),
(48, 'read_categories_bas_de_pages', 'categories_bas_de_pages', '2021-03-27 22:06:59', '2021-03-27 22:06:59'),
(49, 'edit_categories_bas_de_pages', 'categories_bas_de_pages', '2021-03-27 22:06:59', '2021-03-27 22:06:59'),
(50, 'add_categories_bas_de_pages', 'categories_bas_de_pages', '2021-03-27 22:06:59', '2021-03-27 22:06:59'),
(51, 'delete_categories_bas_de_pages', 'categories_bas_de_pages', '2021-03-27 22:06:59', '2021-03-27 22:06:59'),
(52, 'browse_social_networks', 'social_networks', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(53, 'read_social_networks', 'social_networks', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(54, 'edit_social_networks', 'social_networks', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(55, 'add_social_networks', 'social_networks', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(56, 'delete_social_networks', 'social_networks', '2021-03-28 10:40:17', '2021-03-28 10:40:17'),
(57, 'browse_a_la_unes', 'a_la_unes', '2021-03-28 18:08:22', '2021-03-28 18:08:22'),
(58, 'read_a_la_unes', 'a_la_unes', '2021-03-28 18:08:22', '2021-03-28 18:08:22'),
(59, 'edit_a_la_unes', 'a_la_unes', '2021-03-28 18:08:22', '2021-03-28 18:08:22'),
(60, 'add_a_la_unes', 'a_la_unes', '2021-03-28 18:08:22', '2021-03-28 18:08:22'),
(61, 'delete_a_la_unes', 'a_la_unes', '2021-03-28 18:08:22', '2021-03-28 18:08:22'),
(72, 'browse_agripreneur_du_mois', 'agripreneur_du_mois', '2021-03-29 08:20:18', '2021-03-29 08:20:18'),
(73, 'read_agripreneur_du_mois', 'agripreneur_du_mois', '2021-03-29 08:20:18', '2021-03-29 08:20:18'),
(74, 'edit_agripreneur_du_mois', 'agripreneur_du_mois', '2021-03-29 08:20:18', '2021-03-29 08:20:18'),
(75, 'add_agripreneur_du_mois', 'agripreneur_du_mois', '2021-03-29 08:20:18', '2021-03-29 08:20:18'),
(76, 'delete_agripreneur_du_mois', 'agripreneur_du_mois', '2021-03-29 08:20:18', '2021-03-29 08:20:18');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-17 18:40:34', '2021-03-17 18:40:34'),
(2, 'user', 'Normal User', '2021-03-17 18:40:34', '2021-03-17 18:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Agripreneur', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `social_networks`
--

DROP TABLE IF EXISTS `social_networks`;
CREATE TABLE IF NOT EXISTS `social_networks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `linkedin` text COLLATE utf8mb4_unicode_ci,
  `youtube` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `social_networks`
--

INSERT INTO `social_networks` (`id`, `created_at`, `updated_at`, `twitter`, `facebook`, `instagram`, `linkedin`, `youtube`) VALUES
(1, '2021-03-29 08:31:24', '2021-03-29 08:31:24', 'Unde adipisci et ani', 'Laboriosam harum fa', 'Quaerat reprehenderi', 'Minus sunt aliquip', 'Aliquam inventore nu');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'BESSALA Aristide', 'bessala93@gmail.com', 'users\\March2021\\SB0T6caiQqqP2wPgaWD1.jpg', NULL, '$2y$10$k48hBp8KBi3Xx2fhzhf2p.4SIeaBOLPfZjJRZ2TSKa8WBuS6wpWZu', NULL, '{\"locale\":\"en\"}', '2021-03-17 18:42:51', '2021-03-29 14:12:50');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
