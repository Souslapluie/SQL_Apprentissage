-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 06 avr. 2021 à 16:48
-- Version du serveur :  5.6.35
-- Version de PHP :  7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `GestionLibrairie2`
--

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `Num_commande` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Code_fournisseur` varchar(50) NOT NULL,
  `Date_achat` date NOT NULL,
  `Prix_achat` double NOT NULL,
  `Nbr_exemplaires` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commander`
--

INSERT INTO `commander` (`Num_commande`, `ISBN`, `Code_fournisseur`, `Date_achat`, `Prix_achat`, `Nbr_exemplaires`) VALUES
('10', '100001', 'DUPONT', '2019-02-19', 43, 25),
('11', '100000', 'EDVAR', '2018-11-05', 45, 30),
('12', '100000', 'EYROLLES', '2019-02-04', 48, 15),
('13', '100004', 'EYROLLES', '2019-02-20', 44, 25),
('14', '100006', 'ALMA', '2019-01-07', 39, 40),
('15', '100007', 'LEMAN', '2018-11-13', 28, 100),
('16', '100005', 'EDLONDON', '2018-10-08', 46, 60),
('17', '100002', 'CHEDITION', '2019-01-14', 34, 15),
('18', '100003', 'CHEDITION', '2019-02-12', 12, 12),
('19', '100006', 'MARCEL', '2018-11-19', 39, 26),
('20', '100005', 'EDVAR', '2018-10-15', 45, 50),
('21', '100000', 'EYROLLES', '2019-03-01', 48, 5);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `Code_fournisseur` varchar(50) NOT NULL,
  `raison_sociale` varchar(50) NOT NULL,
  `Rue_fournisseur` varchar(50) NOT NULL,
  `Code_Postal` varchar(10) NOT NULL,
  `Localite` varchar(50) NOT NULL,
  `Pays` varchar(30) NOT NULL DEFAULT 'France',
  `Tel_fournisseur` varchar(20) DEFAULT NULL,
  `Url_fournisseur` varchar(100) DEFAULT NULL,
  `Email_fournisseur` varchar(50) DEFAULT NULL,
  `Fax_fournisseur` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`Code_fournisseur`, `raison_sociale`, `Rue_fournisseur`, `Code_Postal`, `Localite`, `Pays`, `Tel_fournisseur`, `Url_fournisseur`, `Email_fournisseur`, `Fax_fournisseur`) VALUES
('ALMA', 'Alma Editions', 'Pont de l\'Alma', '75004', 'Paris', 'France', '00330142589867', 'http://www.alma.com', 'almaeditions@gmail.com', NULL),
('CHEDITION', 'CH Editions', 'Route de Lausanne', '00050', 'Geneve', 'Suisse', '0041213124587', 'http://www.chedition.ch', 'cheditions@ched.ch', '0041213124588'),
('COUSIN', 'Imprimerie Cousin', '25 rue de Rivoli', '75001', 'Paris', 'France', '00330141587896', 'http://www.cousin.fr', 'cousin@impcousin.com', NULL),
('DUPONT', 'Imprimerie Dupont', '46 rue rene Cassin', '13000', 'Marseille', 'France', '00330491874521', 'http://www.imprimeriedupont.fr', 'impdupont@yahoo.fr', NULL),
('EDLONDON', 'ED London', 'Hyde Park', '04568', 'London', 'Grande Bretagne', '00442041345678', 'http://www.edlondon.gb', 'orders@edlondon.gb', '00442041345677'),
('EDVAR', 'Editions du Var', '20 Rue de la Valette', '83000', 'Toulon', 'France', '00330494325794', 'http://www.edvar.com', 'edvar@edvar.fr', NULL),
('EYROLLES', 'Eyrolles', 'Quais de Saone', '69000', 'Lyon', 'France', '00330451662278', 'http://www.eyrolles.fr', 'commandes@eyrolles.fr', NULL),
('LEMAN', 'Leman imprimerie', '56 rue des Helvetes', '00046', 'Geneve', 'Suisse', '0041213125858', 'http://www.leman.ch', 'leman@lemanimprimerie.ch', NULL),
('MARCEL', 'Marcel Editions', '15 Rue du General de Gaulle', '06000', 'Nice', 'France', '00330495875987', 'http://www.marcel.com', 'editionsmarcel@marcel.fr', '00330495875988'),
('MMARINO', 'Martine Marino', 'Rue du Pin', '83520', 'Roquebrune sur Argens', 'France', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `ISBN` varchar(50) NOT NULL,
  `Titre_livre` varchar(50) NOT NULL,
  `Theme_livre` varchar(30) NOT NULL DEFAULT 'Roman',
  `Nbr_pages_livre` int(4) NOT NULL DEFAULT '400',
  `Format_livre` varchar(20) DEFAULT NULL,
  `Nom_auteur` varchar(30) NOT NULL,
  `Prenom_auteur` varchar(30) DEFAULT NULL,
  `Editeur` varchar(30) DEFAULT NULL,
  `Annee_edition` year(4) DEFAULT '2019',
  `Prix_vente` double NOT NULL DEFAULT '0',
  `Langue_livre` varchar(20) NOT NULL DEFAULT 'Français'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`ISBN`, `Titre_livre`, `Theme_livre`, `Nbr_pages_livre`, `Format_livre`, `Nom_auteur`, `Prenom_auteur`, `Editeur`, `Annee_edition`, `Prix_vente`, `Langue_livre`) VALUES
('100000', 'La Mare au Diable', 'Roman', 250, 'Standard', 'Sand', 'George', 'Hachette', 2000, 95, 'Français'),
('100001', 'La Petite Fadette', 'Roman', 400, 'Standard', 'Sand', 'George', 'Hachette', 2002, 85, 'Français'),
('100002', 'Blade Runner', 'Fantastique', 400, 'Poche', 'Dick', 'Philip', 'Flammarion', 1985, 68, 'Anglais'),
('100003', 'Alice au Pays des Merveilles', 'Enfants', 150, 'Poche', 'Carroll', 'Lewis', 'Hachette', 2000, 45, 'Français'),
('100004', 'Harry Potter', 'Fantastique', 400, 'Grand', 'Rowling', 'JK', 'Hachette', 2012, 87, 'Français'),
('100005', 'Don Quichotte', 'Classique', 400, 'Grand', 'De Cervantes', 'Miguel', 'Flammarion', 1990, 98, 'Français'),
('100006', 'Journal d\'Anne Frank ', 'Historique', 400, 'Standard', 'Franck', 'Anne', 'Folio', 1995, 78, 'Français'),
('100007', 'Alcools', 'Poésie', 200, 'Poche', 'Apollinaire', 'Guillaume', 'Hachette', 1980, 56, 'Français'),
('110000', 'Word 2019 Pour les Nuls', 'Bureautique', 250, 'Broché', 'Gookin', 'Dan', 'First Interactive', 2018, 19, 'Français'),
('110001', 'Excel 2016 pour les Nuls Pas à Pas', 'Bureautique', 150, 'Spirales', 'Jolivalt', 'Bernard', 'Hachette', 2016, 11.4, 'Français'),
('110002', 'Office 2016 pour les Nuls ', 'Bureautique', 300, 'Broché', 'Wang', 'Wallace', 'Flammarion', 2017, 17.1, 'Français');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`Num_commande`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `Code_fournisseur` (`Code_fournisseur`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`Code_fournisseur`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`ISBN`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `commander_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `livre` (`ISBN`),
  ADD CONSTRAINT `commander_ibfk_2` FOREIGN KEY (`Code_fournisseur`) REFERENCES `fournisseur` (`Code_fournisseur`);
