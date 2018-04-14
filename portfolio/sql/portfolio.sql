-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 11 avr. 2018 à 17:04
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `author`, `comment`, `comment_date`, `post_id`, `report`) VALUES
(1, 'théo', 'Super projet ! continue comme ça', '2018-04-10 10:31:28', 10, 0),
(2, 'Jean', '<p>salut</p>c\'est top</br> génial', '2018-04-10 10:32:22', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `post_thumbnail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`, `post_thumbnail`) VALUES
(2, 'STRASBOURG - Office de tourisme', '<p><span style=\"box-sizing: border-box; font-size: 12pt;\">l\'office du tourisme de la ville de Strasbourg souhaitent un site web &agrave; l\'image de la ville pour attirer des touristes et informer sur les activit&eacute;s propos&eacute;es.</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">On vous indique que le site doit &ecirc;tre cr&eacute;&eacute; sous WordPress et qu\'il doit utiliser un th&egrave;me personnalis&eacute;. Le client souhaite avoir un rendu unique pour son site : vous allez donc devoir adapter le th&egrave;me &agrave; son image (vous pouvez utiliser un th&egrave;me existant comme base n&eacute;anmoins).</span></p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Voici les fonctionnalit&eacute;s attendues de la toute premi&egrave;re version du site :</span></span></h4>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Le site poss&egrave;dera une page d&rsquo;accueil, essentiellement graphique, avec un peu de texte, qui souhaite la bienvenue au visiteur et lui indique ce que l&rsquo;on peut trouver sur le site. Des liens sont pr&eacute;vus pour acc&eacute;der aux autres pages dans le corps de l&rsquo;accueil. Un encart affichera un aper&ccedil;u de la derni&egrave;re actualit&eacute; post&eacute;e par la ville.</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Un menu de navigation en haut de la page doit suivre le visiteur lorsqu&rsquo;on va plus bas dans la page. Ce menu doit contenir les &eacute;l&eacute;ments suivants dans l&rsquo;ordre : Accueil (avec une ic&ocirc;ne de maison &agrave; gauche du texte), Actualit&eacute;s, Plus d&rsquo;infos, Activit&eacute;s du mois, Contact</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Un Champ de recherche doit aussi &ecirc;tre pr&eacute;sent pour faciliter l&rsquo;acc&egrave;s au contenu. Il n\'est pas n&eacute;cessaire que celui-ci fonctionne pour cet exercice.</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Les pages doivent &ecirc;tre con&ccedil;ues en responsive, de telle sorte &agrave; ce que le site s&rsquo;affiche correctement sur toutes les r&eacute;solutions. La navigation sur mobile et tablettes doit &ecirc;tre naturelle et ne doit pas n&eacute;cessiter de zoomer.</span></li>\r\n</ul>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Voici les diff&eacute;rentes pages que doit proposer le site:</span></span></h4>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- La page &laquo; Actualit&eacute;s &raquo; affichera la liste des billets d&rsquo;actualit&eacute;. Les billets ne seront pas sign&eacute;s par un auteur : ils seront tous post&eacute;s au nom de la ville.</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- La page &laquo; Plus d&rsquo;infos &raquo; doit contenir quelques &eacute;l&eacute;ments d&eacute;taillant les diff&eacute;rents types d&rsquo;activit&eacute;s sportives et culturelles organis&eacute;es (mus&eacute;e de la ville, marathon&hellip; pr&eacute;voyez-en au moins 6 diff&eacute;rentes). Il doit &ecirc;tre possible d&rsquo;indiquer le nom de l&rsquo;activit&eacute;, une description et une image.</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- La page &laquo; Activit&eacute;s du mois &raquo; liste au moins 10 activit&eacute;s &agrave; venir dans le mois sous forme de tableau (avec date, titre et court descriptif). Les lignes doivent se colorer au survol de la souris pour qu&rsquo;on puisse se rep&eacute;rer. Un bouton &laquo; Inscription &raquo; &agrave; droite de chaque ligne du tableau ouvre un formulaire permettant de saisir son nom. L\'envoi du formulaire n\'a pas d\'effet pour cet exercice.</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- La page &laquo; Contact &raquo; affiche un formulaire de contact structur&eacute; avec les champs &laquo; Titre du message &raquo;, &laquo; Votre nom &raquo;, &laquo; Votre date de naissance &raquo;, &laquo; Votre e-mail &raquo;, une case &agrave; cocher &laquo; R&eacute;sident de la ville &raquo;, un menu d&eacute;roulant &laquo; Nationalit&eacute; &laquo; et un champ &laquo; Message &raquo; o&ugrave; on peut r&eacute;diger son message. Un petit texte d&rsquo;aide s&rsquo;affiche sous le champ date de naissance pour dire que le format JJ/MM/AAAA est attendu. Le formulaire doit g&eacute;n&eacute;rer l\'envoi d\'un e-mail.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Le site doit avoir &eacute;t&eacute; optimis&eacute; pour le&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">r&eacute;f&eacute;rencement naturel</span>&nbsp;et doit suivre les&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">bonnes pratiques d\'accessibilit&eacute;</span>&nbsp;(WCAG 2.0 niveau A).</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline; color: #ff0000;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">DETAILS TECHNIQUES</span></span></h3>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Cr&eacute;ation d\'un&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">th&egrave;me enfant</span>&nbsp;WORDPRESS</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Modification&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">template de page</span>&nbsp;pour adaptation au cahier des charges</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Adaptation du visuel en&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">CSS</span></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Int&eacute;gration et adaptation&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">plugins</span>&nbsp;(Events Manager, Contact Form7, Yoast SEO, etc.)</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Optimisation&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">r&eacute;f&eacute;rencement naturel</span></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Respect&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">accessibilit&eacute;</span>&nbsp;niveau A WCAG2.0</span></li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline; color: #ff0000;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Liens du projet</span></span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">GitHub :</span>&nbsp;https://github.com/maximehgt/Starbourg</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Site :</span>&nbsp;http://maxime-hugonnet.fr/openclassrooms/strabourg/</span></span></p>', '2018-01-20 16:28:41', 'strasbourg.png'),
(6, 'VELIB - Vélo à lyon', '<p><span style=\"box-sizing: border-box; font-size: 12pt;\">La page d&rsquo;accueil de l&rsquo;application affichera un&nbsp;<span style=\"box-sizing: border-box;\">diaporama</span>&nbsp;de photos et de textes expliquant le fonctionnement de l\'application. Ce diaporama r&eacute;agit &eacute;galement&nbsp;<span style=\"box-sizing: border-box;\">au clavier</span>&nbsp;avec les touches gauche et droite pour reculer et avancer manuellement.</span></p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Carte des v&eacute;los</span></span></h4>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">En-dessous du diaporama se trouve une carte exploitant&nbsp;<span style=\"box-sizing: border-box;\">l\'API GoogleMap</span>s avec la localisation de toutes les stations de v&eacute;los, positionn&eacute;es &agrave; l&rsquo;aide de marqueurs. Un clic sur un marqueur affiche l&rsquo;&eacute;tat de la station dans un panneau construit en HTML et CSS &agrave; c&ocirc;t&eacute; de la carte Google Maps. La localisation et l\'&eacute;tat de chaque station (ouverte, en travaux, combien de v&eacute;los et de places sont disponibles, etc.) est fourni via une&nbsp;<span style=\"box-sizing: border-box;\">API OpenData</span>&nbsp;de la ville de Paris. Les donn&eacute;es doivent provenir de cette API.</span></p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">R&eacute;servation des v&eacute;los</span></span></h4>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">Il doit &ecirc;tre possible de r&eacute;server un v&eacute;lo disponible &agrave; la station s&eacute;lectionn&eacute;e en signant dans un champ libre impl&eacute;ment&eacute; &agrave; l&rsquo;aide de&nbsp;<span style=\"box-sizing: border-box;\">l&rsquo;API HTML5 Canvas</span>. Une fois la signature valid&eacute;e, un v&eacute;lo est marqu&eacute; comme r&eacute;serv&eacute; &agrave; cette station. Pour ce projet, la r&eacute;servation n\'aura en r&eacute;alit&eacute; aucun effet. Seul le navigateur du navigateur \"retiendra\" que le v&eacute;lo a &eacute;t&eacute; r&eacute;serv&eacute;. Les donn&eacute;es de r&eacute;servation seront stock&eacute;es dans le navigateur &agrave; l&rsquo;aide de&nbsp;<span style=\"box-sizing: border-box;\">l&rsquo;API HTML5 Web Storage</span>&nbsp;et affich&eacute;es dans un pied de page en-dessous du panneau. La r&eacute;servation&nbsp;<span style=\"box-sizing: border-box;\">expire automatiquement</span>&nbsp;au bout de 20 minutes et &eacute;galement lorsque le navigateur web se referme. Le pied de page affiche en permanence l&rsquo;&eacute;tat de la r&eacute;servation (s&rsquo;il y en a une), avec un&nbsp;<span style=\"box-sizing: border-box;\">d&eacute;compte dynamique du temps restant</span>avant expiration de la r&eacute;servation. Il ne peut y avoir qu\'une r&eacute;servation &agrave; la fois. Si une nouvelle r&eacute;servation a lieu, elle remplace la pr&eacute;c&eacute;dente.</span></p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Mock-up de la page</span></span></h4>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Le mockup ci-dessous r&eacute;sume le fonctionnement de la page &agrave; cr&eacute;er :&nbsp;</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-size: 12pt;\"><img style=\"box-sizing: border-box; vertical-align: middle; border-style: none;\" src=\"http://www.melanie-bousquet.fr/images/reservation_velos.png\" alt=\"mock-up projet reservatio v&eacute;libs\" /></span></p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; font-weight: 500; line-height: 1.2; color: #353535; font-size: 1.5rem; font-style: italic;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Contraintes techniques</span></span></h4>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Vous pouvez utiliser la&nbsp;<span style=\"box-sizing: border-box;\">biblioth&egrave;que jQuery</span>&nbsp;mais pas de plugins jQuery. Vous d&eacute;velopperez donc le diaporama en entier vous-m&ecirc;mes. Le code JavaScript doit enti&egrave;rement &ecirc;tre con&ccedil;u en&nbsp;<span style=\"box-sizing: border-box;\">programmation orient&eacute;e objet</span>. Le code doit exploiter les API Google Maps et les API Open Data de la ville de Paris. Il doit &eacute;galement utiliser les API Web Storage et Canvas.</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">DETAILS TECHNIQUES</span></span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; text-align: left;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Programmation en JS / JQuery enti&egrave;rement en&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">POO</span></span></li>\r\n<li style=\"box-sizing: border-box; text-align: left;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- API Google MAPS / API OpenData ville de Paris / API Web Storage</span></li>\r\n<li style=\"box-sizing: border-box; text-align: left;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- AJAX /JSON</span></li>\r\n<li style=\"box-sizing: border-box; text-align: left;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Utilisation&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">Canvas</span>, compatibilit&eacute; tactile sur smartphone et tablette</span></li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">Liens du projet</span></span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">GitHub :&nbsp;</span>https://github.com/maximehgt/velov</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Site :</span>&nbsp;http://maxime-hugonnet.fr/openclassrooms/velov/</span></p>\r\n<p>&nbsp;</p>', '2018-01-18 16:57:22', 'velov.png'),
(7, 'WEBAGENCY - Agence WEB', '<p>Vous venez d\'&ecirc;tre embauch&eacute;(e) par une&nbsp;agence Web, la&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">WebAgency</span>, qui r&eacute;alise des sites web pour&nbsp;diff&eacute;rents clients. Cependant, ils reconnaissent eux-m&ecirc;mes que leur site actuel est vieillissant car ils ont peu de temps pour travailler dessus. Certes, il para&icirc;t&nbsp;que les cordonniers sont les plus mal chauss&eacute;s, mais tout de m&ecirc;me...</p>\r\n<p>On vous propose donc, pour votre premi&egrave;re mission, de vous occuper de la refonte du site de l\'agence.</p>\r\n<p>Le site doit tenir sur une page avec un menu qui suit la navigation. Les diff&eacute;rentes sections attendues sont :</p>\r\n<ul id=\"r-3860180\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\" data-claire-element-id=\"6284191\">\r\n<li id=\"r-3860173\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284184\">Un premier &eacute;cran d\'accueil de bienvenue, tr&egrave;s visuel</li>\r\n<li id=\"r-3860175\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284186\">La liste des services offerts par l\'agence</li>\r\n<li id=\"r-3860177\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284188\">Des exemples de projets d&eacute;j&agrave; r&eacute;alis&eacute;s</li>\r\n<li id=\"r-3860179\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284190\">Une carte avec un formulaire de contact (on ne&nbsp;vous demande pas de faire marcher le formulaire, juste de l\'afficher).</li>\r\n</ul>\r\n<p>Le site sera r&eacute;alis&eacute; en HTML et CSS (sans framework tel que Bootstrap).<br style=\"box-sizing: border-box;\" />Vous devrez int&eacute;grer au moins un effet d\'animation CSS&nbsp;sur le site (celui que vous souhaitez).</p>\r\n<p>\"&gt;</p>\r\n<p>Vous venez d\'&ecirc;tre embauch&eacute;(e) par une&nbsp;agence Web, la&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">WebAgency</span>, qui r&eacute;alise des sites web pour&nbsp;diff&eacute;rents clients. Cependant, ils reconnaissent eux-m&ecirc;mes que leur site actuel est vieillissant car ils ont peu de temps pour travailler dessus. Certes, il para&icirc;t&nbsp;que les cordonniers sont les plus mal chauss&eacute;s, mais tout de m&ecirc;me...</p>\r\n<p>On vous propose donc, pour votre premi&egrave;re mission, de vous occuper de la refonte du site de l\'agence.</p>\r\n<p>Le site doit tenir sur une page avec un menu qui suit la navigation. Les diff&eacute;rentes sections attendues sont :</p>\r\n<ul id=\"r-3860180\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\" data-claire-element-id=\"6284191\">\r\n<li id=\"r-3860173\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284184\">Un premier &eacute;cran d\'accueil de bienvenue, tr&egrave;s visuel</li>\r\n<li id=\"r-3860175\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284186\">La liste des services offerts par l\'agence</li>\r\n<li id=\"r-3860177\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284188\">Des exemples de projets d&eacute;j&agrave; r&eacute;alis&eacute;s</li>\r\n<li id=\"r-3860179\" style=\"box-sizing: border-box;\" data-claire-element-id=\"6284190\">Une carte avec un formulaire de contact (on ne&nbsp;vous demande pas de faire marcher le formulaire, juste de l\'afficher).</li>\r\n</ul>\r\n<p>Le site sera r&eacute;alis&eacute; en HTML et CSS (sans framework tel que Bootstrap).<br style=\"box-sizing: border-box;\" />Vous devrez int&eacute;grer au moins un effet d\'animation CSS&nbsp;sur le site (celui que vous souhaitez).</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\" data-claire-element-id=\"6336791\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">DETAILS TECHNIQUES</span></span></h3>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- R&eacute;alis&eacute; en HTML5 / CSS3 avec positionnement&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">Flexbox</span>&nbsp;(the Flexible Box Layout)</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Cr&eacute;ation d\'un&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">slider exclusivement en CSS3</span>&nbsp;(sans JS)</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Cr&eacute;ation&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">menu hamburger en CSS3</span>&nbsp;(sans JS) sur smartphones et tablettes</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Cr&eacute;ation portfolio en JS</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">- Animations</span>&nbsp;CSS3</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">- Responsive</span></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">- Compatibilit&eacute;&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">cross-browser</span></span></li>\r\n<li style=\"box-sizing: border-box;\">&nbsp;</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">Liens du projet</span></span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">GitHub :</span>&nbsp;https://github.com/maximehgt/WebAgency</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Site :</span>&nbsp;http://maxime-hugonnet.fr/openclassrooms/webagency</span></p>', '2018-02-15 17:01:28', 'webagency.png'),
(10, 'Jean Forteroche - Le blog', '<p>Vous venez de d&eacute;crocher un contrat avec Jean Forteroche, acteur et &eacute;crivain. Il travaille actuellement sur&nbsp;son prochain roman, \"Billet simple pour l\'Alaska\". Il souhaite innover et le publier par &eacute;pisode en ligne sur son propre site.</p>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">Seul probl&egrave;me : Jean n\'aime pas WordPress et souhaite avoir son propre outil de blog, offrant des fonctionnalit&eacute;s plus simples. Vous allez donc devoir d&eacute;velopper un moteur de blog en PHP et MySQL.</span></p>\r\n<figure style=\"box-sizing: border-box; margin: 0px 0px 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\"><br />\r\n<figcaption style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Le livre de Jean Forteroche reste &agrave; &eacute;crire... mais il sera publi&eacute; en ligne !</span></figcaption>\r\n</figure>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">Vous d&eacute;velopperez une application de blog simple en PHP et avec une base de donn&eacute;es MySQL. Elle doit fournir une interface frontend (lecture des billets) et une interface backend (administration des billets pour l\'&eacute;criture). On doit y retrouver tous les &eacute;l&eacute;ments d\'un CRUD :</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Create : cr&eacute;ation de billets</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Read : lecture de billets</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Update : mise &agrave; jour de billets</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Delete : suppression de billets</span></li>\r\n</ul>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">Chaque billet doit&nbsp;permettre l\'ajout de commentaires, qui pourront &ecirc;tre mod&eacute;r&eacute;s dans l\'interface d\'administration au besoin.</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-size: 12pt;\">Les lecteurs doivent pouvoir \"signaler\" les commentaires pour que ceux-ci remontent plus facilement dans l\'interface d\'administration pour &ecirc;tre mod&eacute;r&eacute;s.</span></p>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">L\'interface d\'administration sera prot&eacute;g&eacute;e par mot de passe. La r&eacute;daction de billets se fera dans une interface WYSIWYG bas&eacute;e sur TinyMCE, pour que Jean n\'ait pas besoin de r&eacute;diger son histoire en HTML (on comprend qu\'il n\'ait&nbsp;pas tr&egrave;s envie !).</span></p>\r\n<p><span style=\"box-sizing: border-box; font-size: 12pt;\">Vous d&eacute;velopperez en PHP sans utiliser de framework pour vous familiariser avec les concepts de base de la programmation. Le code sera construit sur une architecture MVC. Vous d&eacute;velopperez autant&nbsp;que possible en orient&eacute; objet (au minimum, le mod&egrave;le doit &ecirc;tre construit sous forme d\'objet).</span></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">DETAILS TECHNIQUES</span></span></h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; list-style: none; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">- Organiser le code en langage PHP</li>\r\n<li style=\"box-sizing: border-box;\">- R&eacute;cup&eacute;rer la saisie d&rsquo;un formulaire utilisateur en langage PHP</li>\r\n<li style=\"box-sizing: border-box;\">- Analyser les donn&eacute;es utilis&eacute;es par le site ou l&rsquo;application</li>\r\n<li style=\"box-sizing: border-box;\">- Construire une base de donn&eacute;es</li>\r\n<li style=\"box-sizing: border-box;\">- Cr&eacute;er un site Internet, de sa conception &agrave; sa livraison</li>\r\n<li style=\"box-sizing: border-box;\">- Ins&eacute;rer ou modifier les donn&eacute;es d&rsquo;une base</li>\r\n<li style=\"box-sizing: border-box;\">- R&eacute;cup&eacute;rer les donn&eacute;es d&rsquo;une base</li>\r\n</ul>\r\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: Verdana, Arial, sans-serif; line-height: 1.2; font-size: 1.75rem; text-align: center;\"><span style=\"box-sizing: border-box; text-decoration-line: underline;\"><span style=\"box-sizing: border-box; font-size: 14pt; color: #ff0000;\">Liens du projet</span></span></h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">GitHub :</span>&nbsp;https://github.com/maximehgt/jean-forteroche</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #353535; font-family: Verdana, Arial, sans-serif; font-size: 16px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Site :</span>&nbsp;http://maxime-hugonnet.fr/openclassrooms/jean-forteroche/public/index.php</span></p>', '2018-04-04 13:44:05', 'jeanforteroche.png');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'maxime', '$2y$10$VZygWL7dCtvR8nK2BzOMruiwD.6E961Wzjv8MwidgVB9DkI3cgQiq', 'maxime@maxime-hugonnet.fr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;