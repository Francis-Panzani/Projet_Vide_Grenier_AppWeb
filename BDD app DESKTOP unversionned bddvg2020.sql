-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 oct. 2020 à 17:28
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Base de données : `bddvg2020v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `attestationhonneur`
--

CREATE TABLE `attestationhonneur` (
  `ID_AH` int(11) NOT NULL,
  `DATENAIS_AH` date NOT NULL,
  `DEPTNAIS_AH` decimal(8,0) NOT NULL,
  `VILLENAIS_AH` text NOT NULL,
  `NUMCNI_AH` decimal(8,0) NOT NULL,
  `DATEDELIVRCNI_AH` date NOT NULL,
  `EMETCNI_AH` text NOT NULL,
  `NUMPLAQIMM_AH` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attestationhonneur`
--

INSERT INTO `attestationhonneur` (`ID_AH`, `DATENAIS_AH`, `DEPTNAIS_AH`, `VILLENAIS_AH`, `NUMCNI_AH`, `DATEDELIVRCNI_AH`, `EMETCNI_AH`, `NUMPLAQIMM_AH`) VALUES
(1, '2020-04-14', '30', 'Ville', '8888888', '2020-03-17', 'VilleEmet', 'AB-123-CD');

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `ID_EMP` int(11) NOT NULL,
  `LABEL_EMP` text NOT NULL,
  `METRE_EMP` int(11) NOT NULL,
  `XMAP_EMP` double NOT NULL,
  `YMAP_EMP` double NOT NULL,
  `ROTATE_EMP` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`ID_EMP`, `LABEL_EMP`, `METRE_EMP`, `XMAP_EMP`, `YMAP_EMP`, `ROTATE_EMP`) VALUES
(14, 'A1', 4, 12, 298, 0),
(15, 'A2', 4, 191, 298, 0),
(16, 'A3', 3, 371, 299, 0),
(17, 'A4', 4, 463, 361, 1),
(18, 'A5', 2, 463, 244, 1),
(19, 'A6', 2, 463, 186, 1),
(20, 'A7', 3, 519, 68, 0),
(21, 'A8', 3, 611, 68, 0),
(22, 'A9', 3, 701, 68, 0),
(23, 'A11', 2, 611, 180, 0),
(24, 'A10', 4, 850, 69, 0);

-- --------------------------------------------------------

--
-- Structure de la table `exposant`
--

CREATE TABLE `exposant` (
  `ID_EXP` int(11) NOT NULL,
  `ID_RES` int(11) NOT NULL,
  `ID_AH` int(11) NOT NULL,
  `ID_UTIL` int(11) NOT NULL,
  `NOM_EXP` text NOT NULL,
  `PRENOM_EXP` text NOT NULL,
  `ADR_EXP` text NOT NULL,
  `CP_EXP` text NOT NULL,
  `VILLE_EXP` text NOT NULL,
  `TEL_EXP` text NOT NULL,
  `EMAIL_EXP` text NOT NULL,
  `COMMENT_EXP` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exposant`
--

INSERT INTO `exposant` (`ID_EXP`, `ID_RES`, `ID_AH`, `ID_UTIL`, `NOM_EXP`, `PRENOM_EXP`, `ADR_EXP`, `CP_EXP`, `VILLE_EXP`, `TEL_EXP`, `EMAIL_EXP`, `COMMENT_EXP`) VALUES
(101, 1, 1, 2, 'Knapp', 'Shaine', 'CP 992, 3055 Enim. Route', '65207', 'Quedlinburg', '0664392136', 'auctor@eratnonummyultricies.org', NULL),
(102, 2, 1, 3, 'Hammond', 'Igor', '448-3788 Aliquam Impasse', '28448', 'Rugby', '0254160167', 'sit.amet@Aliquam.com', NULL),
(103, 3, 1, 4, 'Keith', 'Castor', '4031 Sollicitudin Rd.', '96462', 'Monte Santa Maria Tiberina', '0273130036', 'Nulla.aliquet.Proin@Proin.net', NULL),
(104, 4, 1, 5, 'Warren', 'Kenyon', 'Appartement 398-8619 Ornare, Ave', '10638', 'Moose Jaw', '0176818199', 'Integer.aliquam@lacuspede.org', NULL),
(105, 5, 1, 6, 'Porter', 'Kaden', 'CP 517, 9149 Mollis Ave', '7085', 'Ragogna', '0569345147', 'tempor@euismodin.ca', NULL),
(106, 6, 1, 7, 'Soto', 'Lane', '222-8666 Donec Av.', '228704', 'Lewiston', '0409285371', 'semper.rutrum.Fusce@justoProinnon.com', NULL),
(107, 7, 1, 8, 'Pitts', 'Hermione', '1194 Pellentesque Rue', '1749', 'Lutterworth', '0746561838', 'Donec@scelerisquedui.com', NULL),
(108, 8, 1, 9, 'Herman', 'Bree', '4258 Cursus. Avenue', '48425', 'Wuppertal', '0584202239', 'dictum.eleifend@ultriciessemmagna.com', NULL),
(109, 9, 1, 10, 'Travis', 'Elmo', '7823 Ante. Chemin', '476484', 'Crehen', '0227779407', 'eros@posuerecubiliaCurae.edu', NULL),
(110, 10, 1, 11, 'Vargas', 'Donovan', 'CP 166, 5783 Blandit Chemin', '269652', 'Isca sullo Ionio', '0454116536', 'urna.Vivamus.molestie@sapienCrasdolor.co.uk', NULL),
(111, 11, 1, 12, 'Brooks', 'Kibo', '546-2548 Diam Route', '9887', 'Rewa', '0978747763', 'mauris@tortorNunc.net', NULL),
(112, 12, 1, 13, 'Anderson', 'Damon', '379 Sit Ave', '5415', 'Elektrogorsk', '0654862832', 'quam.elementum.at@diam.ca', NULL),
(113, 13, 1, 14, 'Hodge', 'Kelsie', 'CP 462, 4341 Lobortis Av.', '57850', 'Castle Douglas', '0789478788', 'conubia.nostra.per@Proin.co.uk', NULL),
(114, 14, 1, 15, 'Landry', 'Harper', '4412 Non, Rue', '2811', 'Pimpri-Chinchwad', '0587284221', 'Etiam.bibendum.fermentum@Utsemper.co.uk', NULL),
(115, 15, 1, 16, 'Mercado', 'Lois', '382-8183 Est, Chemin', '22709', 'Geleen', '0767246264', 'arcu.ac@metussit.co.uk', NULL),
(116, 16, 1, 17, 'Alston', 'Xenos', 'CP 968, 3847 Erat, Av.', '10915', 'Tucson', '0136561686', 'ultrices@elitAliquam.co.uk', NULL),
(117, 17, 1, 18, 'Boyd', 'Moses', '4979 At Impasse', '202606', 'Reggio nell\'Emilia', '0328200379', 'lobortis.quam@enim.ca', NULL),
(118, 18, 1, 19, 'Jackson', 'Cadman', '5519 Sed Avenue', '84827', 'Portsoy', '0291718793', 'Nunc@duiCras.com', NULL),
(119, 19, 1, 20, 'Bond', 'Levi', 'CP 946, 4075 Erat Ave', '37920', 'Heestert', '0767779323', 'nisl.elementum.purus@posuere.co.uk', NULL),
(120, 20, 1, 21, 'Madden', 'Carly', 'Appartement 914-5037 In Rue', 'GK0 3QM', 'Peshawar', '0448237909', 'ut@metusAeneansed.net', NULL),
(121, 21, 1, 22, 'Madden', 'Mona', 'Appartement 614-8646 Nascetur Chemin', '1709', 'Cuautla', '0645367507', 'ornare.lectus@velfaucibusid.com', NULL),
(122, 22, 1, 23, 'Craig', 'Nathaniel', '1989 Sapien. Impasse', '89946', 'Zaraysk', '0129074947', 'nec.quam@aliquetPhasellusfermentum.ca', NULL),
(123, 23, 1, 24, 'Spencer', 'Faith', '889 Vulputate, Ave', 'N1 4WF', 'Dunstable', '0383278607', 'Etiam@sagittisDuisgravida.com', NULL),
(124, 24, 1, 25, 'Woodward', 'Grady', 'CP 557, 9623 Nulla Ave', '17-952', 'Çaldıran', '0396064275', 'pede.ultrices.a@non.com', NULL),
(125, 25, 1, 26, 'Underwood', 'Ria', 'CP 881, 1503 Nunc Route', '590086', 'Annapolis', '0147121217', 'fermentum.fermentum.arcu@ornare.net', NULL),
(126, 26, 1, 27, 'Pugh', 'Arden', 'Appartement 251-6651 Ante Route', 'Z3096', 'Roshal', '0337175936', 'sit@nullaInteger.com', NULL),
(127, 27, 1, 28, 'Crane', 'Isaiah', 'Appartement 334-7917 Nec Ave', '23095', 'Portici', '0832784054', 'senectus.et@Aliquam.ca', NULL),
(128, 28, 1, 29, 'Wilkinson', 'Trevor', 'Appartement 664-892 Amet Route', 'T34 9GE', 'Wilmont', '0893269424', 'nunc.ullamcorper.eu@Vestibulumaccumsanneque.com', NULL),
(129, 29, 1, 30, 'Yang', 'Wylie', 'Appartement 437-6119 A Av.', '76838', 'Senftenberg', '0678982950', 'magna@ullamcorperDuis.ca', NULL),
(130, 30, 1, 31, 'Hunter', 'Uta', 'CP 759, 9081 Sed Avenue', '09984', 'Ipswich', '0655409309', 'lacinia.at@auctor.com', NULL),
(131, 31, 1, 32, 'Nielsen', 'Harding', '9493 Cras Av.', '96776', 'Terni', '0936992165', 'mauris.ut.mi@tinciduntduiaugue.org', NULL),
(132, 32, 1, 33, 'Carter', 'Randall', 'CP 251, 9934 Tempus Ave', '87246', 'Stirling', '0461746186', 'amet.massa.Quisque@vitaeposuere.edu', NULL),
(133, 33, 1, 34, 'Skinner', 'Barclay', '467-2769 Odio. Rd.', '4299', 'La Seyne-sur-Mer', '0630416973', 'vulputate.risus.a@justositamet.com', NULL),
(134, 34, 1, 35, 'Greene', 'Aurora', '373-2525 Lectus Av.', '413259', 'Baie-d\'Urf�', '0862558917', 'sed.dolor@orci.edu', NULL),
(135, 35, 1, 36, 'Caldwell', 'Marshall', '1614 Et Ave', '54-276', 'Leugnies', '0799920926', 'urna@acturpisegestas.co.uk', NULL),
(136, 36, 1, 37, 'Santiago', 'Kiayada', 'Appartement 268-7943 Consectetuer Chemin', '410125', 'Cranbrook', '0560723444', 'vulputate.mauris@Vivamussit.org', NULL),
(137, 37, 1, 38, 'Callahan', 'Leonard', '1044 In Avenue', 'BI1 8YR', 'Tallahassee', '0573081274', 'auctor.velit@molestie.co.uk', NULL),
(138, 38, 1, 39, 'Palmer', 'Reed', 'Appartement 126-2904 Eleifend Route', '694862', 'Gaithersburg', '0784238507', 'tellus@duinectempus.com', NULL),
(139, 39, 1, 40, 'Brock', 'Montana', '3749 Nascetur Rd.', '279894', 'Rio nell\'Elba', '0684002289', 'mattis@adipiscingelitEtiam.co.uk', NULL),
(140, 40, 1, 41, 'Murray', 'Xenos', '2719 Sollicitudin Route', '405407', 'Fossato Serralta', '0646165789', 'libero.Proin.mi@cursus.co.uk', NULL),
(141, 41, 1, 42, 'Adkins', 'Lacota', 'CP 932, 668 Posuere Route', '109462', 'Castelbuono', '0656788251', 'sed.turpis@temporbibendum.ca', NULL),
(142, 42, 1, 43, 'Vasquez', 'Fatima', 'Appartement 583-1951 Neque Chemin', '53406', 'Huissen', '0844311193', 'in.sodales@utnulla.net', NULL),
(143, 43, 1, 44, 'Malone', 'Pearl', 'CP 690, 7029 Sem, Ave', '14931', 'Sciacca', '0229065457', 'nibh.Phasellus@a.com', NULL),
(144, 44, 1, 45, 'Melendez', 'Kuame', '659-6857 Penatibus Route', '693585', 'Oss', '0799447124', 'ipsum@diamSeddiam.edu', NULL),
(145, 45, 1, 46, 'Davidson', 'Luke', 'Appartement 838-9481 Sem Chemin', '06825', 'San Martino in Pensilis', '0151082883', 'suscipit.nonummy.Fusce@ipsum.net', NULL),
(146, 46, 1, 47, 'Hunt', 'Dennis', 'Appartement 497-538 Nunc Ave', '920495', 'Banff', '0504527890', 'Donec.non@elitafeugiat.org', NULL),
(147, 47, 1, 48, 'Freeman', 'Lionel', 'CP 759, 2243 Dui, Chemin', '60529', 'Lens-Saint-Remy', '0598110027', 'Mauris@Donecnonjusto.org', NULL),
(148, 48, 1, 49, 'Knowles', 'Zachary', '3126 Nullam Ave', '27078', 'Sachs Harbour', '0178537528', 'arcu.ac@etmagnis.net', NULL),
(149, 49, 1, 50, 'Burch', 'Kevyn', 'CP 426, 6532 Nec, Impasse', '6433', 'Campbeltown', '0419666052', 'Donec.sollicitudin.adipiscing@eusemPellentesque.ca', NULL),
(150, 50, 1, 51, 'Mosley', 'Debra', '139-2224 Vulputate, Chemin', '454165', 'Auvelais', '0635188263', 'Vivamus@ipsumnuncid.co.uk', NULL),
(151, 51, 1, 52, 'Mclaughlin', 'Hashim', '4462 Hendrerit Route', '1483', 'Aparecida de Goiânia', '0813121093', 'vulputate.dui@Integervitaenibh.net', NULL),
(152, 52, 1, 53, 'Stanley', 'Quintessa', 'CP 823, 6579 Nec, Avenue', '70105', 'Cisterna di Latina', '0610161375', 'nec@duinec.co.uk', NULL),
(153, 53, 1, 54, 'Cohen', 'Whoopi', '1150 Aliquam Rd.', '5771', 'El Bosque', '0565172117', 'vel@risusDonecnibh.co.uk', NULL),
(154, 54, 1, 55, 'Walsh', 'Breanna', '441-6273 Maecenas Av.', '6130', 'Treguaco', '0467142266', 'felis@sedpede.co.uk', NULL),
(155, 55, 1, 56, 'Barrera', 'Herrod', '6597 Augue. Ave', '7875', 'Ivangorod', '0211813571', 'aliquet.sem@fringilla.co.uk', NULL),
(156, 56, 1, 57, 'Mclean', 'Flavia', '389-5917 Ipsum. Rd.', '78466', 'Las Vegas', '0897081805', 'sollicitudin@ametconsectetueradipiscing.com', NULL),
(157, 57, 1, 58, 'Witt', 'Ifeoma', 'CP 250, 9956 Fringilla Route', '9583', 'Mülheim', '0514748688', 'vitae.diam.Proin@Suspendissealiquet.co.uk', NULL),
(158, 58, 1, 59, 'Baldwin', 'Abel', '8746 At, Impasse', '45168', 'Sant\'Onofrio', '0222321020', 'Aliquam@etarcu.net', NULL),
(159, 59, 1, 60, 'Sears', 'Justin', '964-4597 Natoque Av.', '674901', 'Poucet', '0919359969', 'placerat@egestas.org', NULL),
(160, 60, 1, 61, 'Hernandez', 'Adam', 'CP 305, 732 Ullamcorper, Rue', '407027', 'Municipal District', '0511239311', 'adipiscing.lacus.Ut@loremvehiculaet.co.uk', NULL),
(161, 61, 1, 62, 'Simmons', 'Reece', '681-1082 Dictum Avenue', '8642', 'Buckingham', '0290970725', 'Quisque.ac.libero@massarutrummagna.co.uk', NULL),
(162, 62, 1, 63, 'Klein', 'Kylee', '925-5176 Ipsum. Route', '7539', 'Serrungarina', '0825966856', 'Nullam.feugiat@Morbinequetellus.co.uk', NULL),
(163, 63, 1, 64, 'Ramos', 'Velma', '853-9549 Interdum. Route', '3200', 'Cavallino', '0967899098', 'dolor.Donec@posuere.org', NULL),
(164, 64, 1, 65, 'Nunez', 'Penelope', 'Appartement 520-5231 Sed Av.', '2415', 'Panipat', '0226135334', 'faucibus.lectus@lorem.edu', NULL),
(165, 65, 1, 66, 'Preston', 'Julie', '457-6643 Vitae Rue', '11829', 'Mont-Sainte-Genevive', '0880485824', 'Cras@ornare.com', NULL),
(166, 66, 1, 67, 'Sears', 'Lillith', '445-5379 Arcu. Av.', '834840', 'Chaudfontaine', '0326634740', 'condimentum@dapibus.co.uk', NULL),
(167, 67, 1, 68, 'Haley', 'Elmo', '742-2257 Malesuada Rue', '8573', 'Colobraro', '0304289163', 'a.facilisis.non@rutrumlorem.ca', NULL),
(168, 68, 1, 69, 'Valencia', 'Britanney', 'Appartement 876-9477 Magna. Rue', '47161', 'Eisleben', '0164318177', 'ullamcorper@Nullatinciduntneque.net', NULL),
(169, 69, 1, 70, 'Strong', 'Todd', '401-7130 Congue Impasse', '33910', 'Renfrew', '0866635221', 'at@molestie.co.uk', NULL),
(170, 70, 1, 71, 'Powers', 'Grace', 'CP 239, 2359 Cursus, Impasse', '04505', 'Cognelee', '0544111915', 'cursus.et@velvenenatisvel.edu', NULL),
(171, 71, 1, 72, 'Heath', 'Shannon', '6790 Turpis Av.', '3627 BG', 'Windermere', '0872776281', 'dictum.eu.placerat@parturient.com', NULL),
(172, 72, 1, 73, 'Holder', 'Murphy', 'CP 842, 1465 A, Avenue', '838467', 'Punta Arenas', '0170207473', 'posuere@lobortisnisi.co.uk', NULL),
(173, 73, 1, 74, 'Estrada', 'Xantha', '5984 Tempus, Rd.', '183176', 'Bünyan', '0248903098', 'lobortis@atortorNunc.org', NULL),
(174, 74, 1, 75, 'Kerr', 'Mariko', 'Appartement 839-8085 Aliquam Chemin', '164176', 'Colomiers', '0115194754', 'Nunc.sollicitudin@dictum.ca', NULL),
(175, 75, 1, 76, 'Valencia', 'Ferris', '573-9481 Donec Rd.', '9645', 'Berg', '0229422174', 'ac.ipsum@semperduilectus.net', NULL),
(176, 76, 1, 77, 'Wall', 'Victor', '512 Est Rd.', '164207', 'Sperlinga', '0823087910', 'eleifend.Cras@pharetraNam.co.uk', NULL),
(177, 77, 1, 78, 'Hewitt', 'Castor', '6670 Enim Avenue', '8617', 'Tofield', '0244538110', 'adipiscing.elit.Etiam@liberoest.edu', NULL),
(178, 78, 1, 79, 'Sharp', 'Octavius', 'CP 810, 1423 At Rd.', '31703', 'Trivandrum', '0606595097', 'Duis@perconubianostra.ca', NULL),
(179, 79, 1, 80, 'Garner', 'Kitra', 'Appartement 673-6501 Diam Rd.', '07898', 'Palmira', '0287770038', 'faucibus.leo@lobortis.co.uk', NULL),
(180, 80, 1, 81, 'Woodard', 'Melinda', '676-4282 Feugiat Chemin', '71414', 'Wanaka', '0814613296', 'ultrices.mauris@loremvehiculaet.org', NULL),
(181, 81, 1, 82, 'Randall', 'Nyssa', '761-6579 Libero. Impasse', '1245', 'Toltén', '0598783690', 'ullamcorper.velit@gravidamaurisut.com', NULL),
(182, 82, 1, 83, 'Roy', 'Jarrod', 'CP 715, 8874 Quis, Rue', '17828', 'Kędzierzyn-Koźle', '0349606524', 'Quisque@etmagnaPraesent.org', NULL),
(183, 83, 1, 84, 'Aguirre', 'Rana', '330-8508 Lobortis Impasse', '64-947', 'Weyburn', '0624154787', 'ridiculus.mus.Aenean@natoquepenatibuset.edu', NULL),
(184, 84, 1, 85, 'Vincent', 'Ferdinand', '625-154 In Route', '4255', 'Ronciglione', '0803738591', 'purus.sapien.gravida@Loremipsum.ca', NULL),
(185, 85, 1, 86, 'Lancaster', 'Walker', 'CP 820, 4172 Inceptos Impasse', '10630', 'Le Cannet', '0665058089', 'arcu@amet.ca', NULL),
(186, 86, 1, 87, 'Bradley', 'Ann', '2669 Elementum Avenue', '58-643', 'Raymond', '0831435592', 'nunc.ac.mattis@vel.net', NULL),
(187, 87, 1, 88, 'Hayes', 'Dawn', 'CP 434, 847 Nec Rue', '14310-87760', 'Pincher Creek', '0547298676', 'Integer.eu@Fuscemollis.ca', NULL),
(188, 88, 1, 89, 'Maxwell', 'Lionel', '3059 Et, Ave', '177040', 'Pontedera', '0918084902', 'neque@arcueuodio.org', NULL),
(189, 89, 1, 90, 'Cobb', 'Aurora', '9599 Ut Chemin', '528247', 'Kanchipuram', '0777831677', 'non.dui.nec@sed.co.uk', NULL),
(190, 90, 1, 91, 'Mccray', 'Ahmed', 'CP 783, 8868 Sagittis. Rue', 'AR6 8GY', 'Stargard Szczeciński', '0748726852', 'Curabitur.vel@egestasblandit.edu', NULL),
(191, 91, 1, 92, 'Landry', 'David', 'CP 647, 899 Pellentesque Route', '14154', 'LouveignŽ', '0230133746', 'magnis.dis@at.org', NULL),
(192, 92, 1, 93, 'Munoz', 'Ferdinand', '8726 In Chemin', '19009-661', 'Vielsalm', '0711289335', 'nostra.per.inceptos@pede.co.uk', NULL),
(193, 93, 1, 94, 'Merrill', 'Jin', '8071 Lacus. Rue', '142451', 'Kayseri', '0846537648', 'imperdiet.dictum@diam.co.uk', NULL),
(194, 94, 1, 95, 'Haynes', 'Sara', '883-4503 A Avenue', '40813', 'Athens', '0659819239', 'ut@acturpisegestas.org', NULL),
(195, 95, 1, 96, 'Beach', 'Delilah', 'CP 284, 3711 Posuere Ave', '71492', 'Coevorden', '0197890595', 'arcu@acnulla.ca', NULL),
(196, 96, 1, 97, 'Gregory', 'Brendan', 'Appartement 951-8999 Sagittis Route', '24660', 'Rhisnes', '0345151506', 'volutpat.Nulla.dignissim@mitemporlorem.edu', NULL),
(197, 97, 1, 98, 'Pruitt', 'Yetta', '3777 Interdum Chemin', '472770', 'Valfabbrica', '0762139553', 'egestas@odioAliquamvulputate.com', NULL),
(198, 98, 1, 99, 'Rogers', 'Delilah', 'Appartement 459-815 Dui. Rue', '54985', 'Bannu', '0849972406', 'velit@Sedmalesuada.ca', NULL),
(199, 99, 1, 100, 'Knapp', 'Luke', '943-4573 Orci Rd.', '160289', 'Castlegar', '0193588745', 'ultricies.adipiscing.enim@Donecat.net', NULL),
(200, 100, 1, 101, 'Houston', 'Neville', '469-7462 Nec, Rue', 'P8V 4H2', 'Hertsberge', '0639156600', 'a.dui@odioPhasellus.org', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `ID_RES` int(11) NOT NULL,
  `ID_VG` int(11) NOT NULL,
  `ID_EMP` int(11) DEFAULT NULL,
  `NBREEMPLRESERVE_RES` decimal(8,0) NOT NULL,
  `TYPEPAIEMENT_RES` text NOT NULL,
  `STATUTRESERVATION_RES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`ID_RES`, `ID_VG`, `ID_EMP`, `NBREEMPLRESERVE_RES`, `TYPEPAIEMENT_RES`, `STATUTRESERVATION_RES`) VALUES
(1, 1, NULL, '3', 'Sur place', 'En attente'),
(2, 1, 17, '4', 'Sur place', 'En cour'),
(3, 1, 20, '3', 'Sur place', 'En cour'),
(4, 1, NULL, '3', 'Sur place', 'En attente'),
(5, 1, 18, '2', 'Sur place', 'En cour'),
(6, 1, 24, '4', 'Sur place', 'En cour'),
(7, 1, NULL, '3', 'Sur place', 'En attente'),
(8, 1, NULL, '3', 'Sur place', 'En attente'),
(9, 1, NULL, '3', 'Sur place', 'En attente'),
(10, 1, NULL, '3', 'Sur place', 'En attente'),
(11, 1, 23, '2', 'Sur place', 'En cour'),
(12, 1, NULL, '2', 'Sur place', 'En attente'),
(13, 1, NULL, '3', 'Sur place', 'En attente'),
(14, 1, NULL, '3', 'Sur place', 'En attente'),
(15, 1, NULL, '4', 'Sur place', 'En attente'),
(16, 1, NULL, '2', 'Sur place', 'En attente'),
(17, 1, NULL, '2', 'Sur place', 'En attente'),
(18, 1, NULL, '4', 'Sur place', 'En attente'),
(19, 1, NULL, '2', 'Sur place', 'En attente'),
(20, 1, NULL, '2', 'Sur place', 'En attente'),
(21, 1, NULL, '2', 'Sur place', 'En attente'),
(22, 1, NULL, '4', 'Sur place', 'En attente'),
(23, 1, NULL, '3', 'Sur place', 'En attente'),
(24, 1, NULL, '4', 'Sur place', 'En attente'),
(25, 1, NULL, '4', 'Sur place', 'En attente'),
(26, 1, NULL, '3', 'Sur place', 'En attente'),
(27, 1, NULL, '4', 'Sur place', 'En attente'),
(28, 1, NULL, '2', 'Sur place', 'En attente'),
(29, 1, NULL, '2', 'Sur place', 'En attente'),
(30, 1, NULL, '4', 'Sur place', 'En attente'),
(31, 1, NULL, '3', 'Sur place', 'En attente'),
(32, 1, NULL, '2', 'Sur place', 'En attente'),
(33, 1, NULL, '3', 'Sur place', 'En attente'),
(34, 1, NULL, '4', 'Sur place', 'En attente'),
(35, 1, NULL, '4', 'Sur place', 'En attente'),
(36, 1, NULL, '2', 'Sur place', 'En attente'),
(37, 1, NULL, '4', 'Sur place', 'En attente'),
(38, 1, NULL, '3', 'Sur place', 'En attente'),
(39, 1, NULL, '4', 'Sur place', 'En attente'),
(40, 1, NULL, '4', 'Sur place', 'En attente'),
(41, 1, NULL, '2', 'Sur place', 'En attente'),
(42, 1, NULL, '3', 'Sur place', 'En attente'),
(43, 1, NULL, '2', 'Sur place', 'En attente'),
(44, 1, NULL, '4', 'Sur place', 'En attente'),
(45, 1, NULL, '2', 'Sur place', 'En attente'),
(46, 1, NULL, '2', 'Sur place', 'En attente'),
(47, 1, NULL, '4', 'Sur place', 'En attente'),
(48, 1, NULL, '3', 'Sur place', 'En attente'),
(49, 1, NULL, '3', 'Sur place', 'En attente'),
(50, 1, NULL, '2', 'Sur place', 'En attente'),
(51, 1, NULL, '2', 'Sur place', 'En attente'),
(52, 1, NULL, '2', 'Sur place', 'En attente'),
(53, 1, NULL, '4', 'Sur place', 'En attente'),
(54, 1, NULL, '4', 'Sur place', 'En attente'),
(55, 1, NULL, '2', 'Sur place', 'En attente'),
(56, 1, NULL, '3', 'Sur place', 'En attente'),
(57, 1, NULL, '4', 'Sur place', 'En attente'),
(58, 1, NULL, '2', 'Sur place', 'En attente'),
(59, 1, NULL, '3', 'Sur place', 'En attente'),
(60, 1, NULL, '3', 'Sur place', 'En attente'),
(61, 1, NULL, '3', 'Sur place', 'En attente'),
(62, 1, NULL, '2', 'Sur place', 'En attente'),
(63, 1, NULL, '3', 'Sur place', 'En attente'),
(64, 1, NULL, '4', 'Sur place', 'En attente'),
(65, 1, NULL, '4', 'Sur place', 'En attente'),
(66, 1, NULL, '3', 'Sur place', 'En attente'),
(67, 1, NULL, '4', 'Sur place', 'En attente'),
(68, 1, NULL, '4', 'Sur place', 'En attente'),
(69, 1, NULL, '2', 'Sur place', 'En attente'),
(70, 1, NULL, '3', 'Sur place', 'En attente'),
(71, 1, NULL, '2', 'Sur place', 'En attente'),
(72, 1, NULL, '4', 'Sur place', 'En attente'),
(73, 1, NULL, '2', 'Sur place', 'En attente'),
(74, 1, NULL, '2', 'Sur place', 'En attente'),
(75, 1, NULL, '3', 'Sur place', 'En attente'),
(76, 1, NULL, '2', 'Sur place', 'En attente'),
(77, 1, NULL, '4', 'Sur place', 'En attente'),
(78, 1, NULL, '4', 'Sur place', 'En attente'),
(79, 1, NULL, '4', 'Sur place', 'En attente'),
(80, 1, NULL, '4', 'Sur place', 'En attente'),
(81, 1, NULL, '4', 'Sur place', 'En attente'),
(82, 1, NULL, '4', 'Sur place', 'En attente'),
(83, 1, NULL, '2', 'Sur place', 'En attente'),
(84, 1, NULL, '4', 'Sur place', 'En attente'),
(85, 1, NULL, '4', 'Sur place', 'En attente'),
(86, 1, NULL, '2', 'Sur place', 'En attente'),
(87, 1, NULL, '3', 'Sur place', 'En attente'),
(88, 1, NULL, '3', 'Sur place', 'En attente'),
(89, 1, NULL, '3', 'Sur place', 'En attente'),
(90, 1, NULL, '2', 'Sur place', 'En attente'),
(91, 1, NULL, '3', 'Sur place', 'En attente'),
(92, 1, NULL, '3', 'Sur place', 'En attente'),
(93, 1, NULL, '2', 'Sur place', 'En attente'),
(94, 1, NULL, '2', 'Sur place', 'En attente'),
(95, 1, NULL, '4', 'Sur place', 'En attente'),
(96, 1, NULL, '2', 'Sur place', 'En attente'),
(97, 1, NULL, '4', 'Sur place', 'En attente'),
(98, 1, NULL, '2', 'Sur place', 'En attente'),
(99, 1, NULL, '2', 'Sur place', 'En attente'),
(100, 1, NULL, '2', 'Sur place', 'En attente');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `ID_ROL` int(11) NOT NULL,
  `LABEL_ROL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`ID_ROL`, `LABEL_ROL`) VALUES
(1, 'Admin'),
(2, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_UTIL` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  `NOM_UTIL` text NOT NULL,
  `MDP_UTIL` text NOT NULL,
  `EMAIL_UTIL` text NOT NULL,
  `TEL_UTIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_UTIL`, `ID_ROL`, `NOM_UTIL`, `MDP_UTIL`, `EMAIL_UTIL`, `TEL_UTIL`) VALUES
(1, 1, 'Admin', 'admin', 'admin@admin.fr', '0666666666'),
(2, 2, 'Palmer', 'AJF75HGO1RI', 'orci.Donec.nibh@Donecnon.ca', '0843818964'),
(3, 2, 'Welch', 'NHF85YEU7WX', 'Morbi@urna.org', '0945981884'),
(4, 2, 'Morrison', 'TIT23OLY8SG', 'ultrices@hendreritconsectetuercursus.com', '0877767042'),
(5, 2, 'Shepard', 'LSB72XLB5IT', 'leo.in.lobortis@Incondimentum.com', '0444126202'),
(6, 2, 'Christensen', 'WOK98QZQ0OA', 'vulputate@bibendumsed.edu', '0916337119'),
(7, 2, 'Flores', 'HZG13ZER2NZ', 'magna.a@dictumsapien.org', '0770285414'),
(8, 2, 'Edwards', 'IBY71FIP3FA', 'Duis.risus.odio@vitaediam.net', '0658657643'),
(9, 2, 'Buck', 'AHO71QVD8OL', 'eu.accumsan.sed@egetlaoreet.net', '0188149093'),
(10, 2, 'Faulkner', 'CLO84LKF5FK', 'facilisis@urnaUt.edu', '0523978265'),
(11, 2, 'Clarke', 'GOZ39TDY1JP', 'quam@egestas.co.uk', '0553618116'),
(12, 2, 'Atkins', 'OPW12GWG5DZ', 'Aliquam@ultricesposuere.ca', '0495077158'),
(13, 2, 'Osborne', 'DLO77LUO6HM', 'magnis.dis.parturient@aptenttacitisociosqu.edu', '0297138508'),
(14, 2, 'Rosa', 'KZP72WQB9LL', 'sapien.imperdiet@luctusetultrices.ca', '0612862912'),
(15, 2, 'Dunlap', 'ENH22MUY7YI', 'arcu.Curabitur@nisiCumsociis.co.uk', '0949946812'),
(16, 2, 'Haynes', 'XOZ41EUT8IR', 'Pellentesque@pedemalesuadavel.org', '0828868344'),
(17, 2, 'Garner', 'NEP79NXF3WY', 'ornare.elit.elit@mi.com', '0373126221'),
(18, 2, 'Holman', 'YMT10KFA4QF', 'gravida.non@vitae.ca', '0151430082'),
(19, 2, 'Watts', 'ZJD84PMW4TD', 'Donec@Praesenteu.org', '0561404988'),
(20, 2, 'Alvarado', 'PQJ55EKF1PG', 'in.lobortis.tellus@egetlaoreet.org', '0796192070'),
(21, 2, 'Nelson', 'FGE59KDX4HN', 'velit@mifelisadipiscing.net', '0264406721'),
(22, 2, 'Hancock', 'HQS53JAL3IC', 'et@Curabiturmassa.co.uk', '0189177798'),
(23, 2, 'Whitaker', 'MMJ01XKK8CV', 'sem@gravidamaurisut.com', '0656894277'),
(24, 2, 'Pearson', 'SAF44KHE5RI', 'gravida.Aliquam.tincidunt@molestietortornibh.org', '0782227804'),
(25, 2, 'Crawford', 'FAL56HZI5NW', 'Suspendisse.non@Class.ca', '0577496939'),
(26, 2, 'Beasley', 'BRI44EXX1HP', 'nec.imperdiet@antedictum.net', '0898059615'),
(27, 2, 'Langley', 'PMZ87ZBM0UN', 'Fusce@neque.edu', '0899199421'),
(28, 2, 'House', 'TGF09LKE4DC', 'sollicitudin@atvelit.edu', '0318410894'),
(29, 2, 'Mays', 'DCQ14ROY7HK', 'sociosqu@quam.edu', '0730419582'),
(30, 2, 'Ware', 'EIE05ZEH3VK', 'semper.pretium.neque@Phasellus.ca', '0760344230'),
(31, 2, 'Diaz', 'GUA31FLZ3OE', 'non.leo.Vivamus@malesuada.co.uk', '0570487007'),
(32, 2, 'Arnold', 'FNM10IRX7RX', 'nec.luctus@eueleifendnec.com', '0220602310'),
(33, 2, 'Wilkinson', 'RQG70CFJ4NP', 'dictum.eleifend.nunc@eros.edu', '0315640734'),
(34, 2, 'Soto', 'UPL48PFG2OD', 'et.magna.Praesent@ipsum.net', '0279313551'),
(35, 2, 'Madden', 'FTP31VTJ8DX', 'lacus.Quisque@Crasdictumultricies.co.uk', '0776751871'),
(36, 2, 'Bernard', 'HAW68BJN9DD', 'Phasellus@enimcommodo.net', '0963842112'),
(37, 2, 'Davidson', 'KPD61CGZ2AN', 'at@Sed.ca', '0913622636'),
(38, 2, 'Beasley', 'CMY21VJW2WI', 'risus.Quisque.libero@eratnonummyultricies.ca', '0152270254'),
(39, 2, 'Long', 'GIJ38WNK8PK', 'in@risus.com', '0996560166'),
(40, 2, 'Conley', 'PHC22QEO1KX', 'dolor.tempus.non@duisemperet.ca', '0462763541'),
(41, 2, 'Britt', 'XDB03EFV5WX', 'Sed.eu@nequeMorbi.net', '0600702074'),
(42, 2, 'Dalton', 'WJI15BDA7YL', 'est.ac@etrutrum.co.uk', '0277847313'),
(43, 2, 'Case', 'EIZ60VEF9YZ', 'mauris.sit.amet@Praesent.edu', '0495428320'),
(44, 2, 'Hammond', 'SUZ40YEW5FF', 'id.erat.Etiam@faucibusorci.com', '0466061272'),
(45, 2, 'Burnett', 'FUB71OYR3RX', 'lorem.eget.mollis@neceleifend.ca', '0817549779'),
(46, 2, 'Wilkerson', 'FQW45JMT3ZP', 'pulvinar@fringilla.net', '0748633768'),
(47, 2, 'Harrington', 'SHK22NPJ4FN', 'vulputate@loremegetmollis.net', '0401515725'),
(48, 2, 'Bolton', 'HZP69UVC3NV', 'egestas.rhoncus.Proin@tinciduntadipiscingMauris.com', '0691152591'),
(49, 2, 'Blanchard', 'OWG58HGI1QV', 'fermentum@Sednunc.edu', '0984486650'),
(50, 2, 'Peters', 'MTU01ZAF3AQ', 'nec.cursus.a@utaliquam.edu', '0252810934'),
(51, 2, 'Coleman', 'PIY49AHC8YP', 'vestibulum.Mauris@nunc.ca', '0906055927'),
(52, 2, 'Manning', 'MCW41VQK2GL', 'massa.Suspendisse.eleifend@Aeneaneuismodmauris.co.uk', '0413392474'),
(53, 2, 'Lawson', 'MZH59AKB6RY', 'nibh.Quisque@duiFusce.com', '0925644491'),
(54, 2, 'Whitfield', 'YHI01TFF8OZ', 'dictum.mi@Quisqueornare.ca', '0163243045'),
(55, 2, 'Sears', 'MME76BJC6LD', 'cursus@ridiculusmusProin.co.uk', '0894956197'),
(56, 2, 'Holden', 'LGC53EPA0DY', 'urna.Ut@eratvel.org', '0413910009'),
(57, 2, 'Bartlett', 'RNJ08EWZ9WY', 'egestas@vulputateullamcorper.ca', '0988503581'),
(58, 2, 'Morrow', 'YZT80WBH8GY', 'ipsum.dolor@cursus.net', '0831403743'),
(59, 2, 'Noel', 'QNS65PNC5XO', 'amet@sodales.org', '0704083651'),
(60, 2, 'May', 'BNO67TWH4AG', 'lectus.Nullam@arcuimperdietullamcorper.edu', '0596977288'),
(61, 2, 'James', 'OTX32BKQ0BE', 'dolor.sit@malesuadaInteger.ca', '0449040290'),
(62, 2, 'Kerr', 'NPY19XEY8CV', 'lacus.Quisque@urna.ca', '0148156382'),
(63, 2, 'Sandoval', 'MJF57EJW2UG', 'et.arcu.imperdiet@egestasnuncsed.ca', '0853171566'),
(64, 2, 'Lynch', 'RAW50VWX5WO', 'a.magna.Lorem@loremluctus.edu', '0500808693'),
(65, 2, 'Hester', 'IYL04FKP7TR', 'mauris@faucibusleoin.com', '0524243455'),
(66, 2, 'Rosales', 'LWH61QUW6CR', 'quam@lobortis.net', '0995925377'),
(67, 2, 'Byers', 'BVW50BXT2VR', 'in.sodales@molestiearcu.net', '0503357675'),
(68, 2, 'Joyce', 'URS73WKA3DJ', 'ac.fermentum@dictumPhasellusin.co.uk', '0144278416'),
(69, 2, 'Foreman', 'NPO19NSU9DH', 'ante.dictum@Donecporttitortellus.com', '0711094340'),
(70, 2, 'Hendrix', 'FSN26OGY0YY', 'quis@rutrumurnanec.net', '0549367168'),
(71, 2, 'Allison', 'KWD04AWS0BP', 'hymenaeos.Mauris@Duiscursusdiam.com', '0717519308'),
(72, 2, 'Burris', 'TQV36IQS4CI', 'facilisi.Sed.neque@diamProindolor.edu', '0296892993'),
(73, 2, 'Erickson', 'XKF71FGI2FY', 'Pellentesque.ut.ipsum@sit.org', '0961987207'),
(74, 2, 'Dotson', 'TUT49KTS1PO', 'turpis@Crasconvallis.com', '0258974978'),
(75, 2, 'Curtis', 'DYO51SXF8ML', 'tempor.bibendum.Donec@ipsumprimisin.org', '0434947940'),
(76, 2, 'Cunningham', 'XNU33OWH0UL', 'dictum@at.org', '0562520509'),
(77, 2, 'Hooper', 'VJG09YTB0YY', 'dui.augue@Praesent.net', '0344208729'),
(78, 2, 'Cotton', 'RLG06MGB7HF', 'pellentesque@Morbisitamet.co.uk', '0495683279'),
(79, 2, 'Jennings', 'CJU76XXA8XG', 'ipsum.leo.elementum@Integer.co.uk', '0879777899'),
(80, 2, 'Franco', 'CNY46KAW7ML', 'pellentesque@Phaselluselitpede.edu', '0554408945'),
(81, 2, 'Reese', 'OER12LYG7YI', 'cursus@disparturient.net', '0718138356'),
(82, 2, 'Patterson', 'HYZ39LQL5CU', 'mattis.Cras.eget@Nunclaoreetlectus.ca', '0175293784'),
(83, 2, 'Davis', 'CNS42JBS7SK', 'aliquam.adipiscing.lacus@Donecestmauris.edu', '0656802809'),
(84, 2, 'English', 'KXA80PQR8RY', 'Nunc@pedeblandit.org', '0305277622'),
(85, 2, 'Pate', 'XJO17KRH5HU', 'vitae.purus.gravida@Nunc.edu', '0529953606'),
(86, 2, 'Holman', 'ZED23WZE9VQ', 'Fusce@bibendumullamcorperDuis.co.uk', '0196843499'),
(87, 2, 'Little', 'LGR67XJV3YR', 'netus.et.malesuada@eros.co.uk', '0745691705'),
(88, 2, 'England', 'UPY61UIR2WU', 'facilisis.lorem.tristique@sitamet.co.uk', '0791581784'),
(89, 2, 'Warner', 'ZOD17OQK4KW', 'iaculis.lacus.pede@Sedeunibh.co.uk', '0634565987'),
(90, 2, 'Fitzpatrick', 'LNZ56WOA0GX', 'ante.Vivamus.non@mauriselitdictum.com', '0436736116'),
(91, 2, 'Haney', 'RLC23EOD6BW', 'est@lectuspede.org', '0472134028'),
(92, 2, 'Kline', 'JAN53YOG5BY', 'Nam.porttitor.scelerisque@ipsumprimis.com', '0524468481'),
(93, 2, 'Burris', 'BEH66FUC9MW', 'non.hendrerit@leo.ca', '0241081902'),
(94, 2, 'Fields', 'NWB39RXX2DQ', 'Sed@Donecnibh.net', '0487198084'),
(95, 2, 'Knight', 'AYF40CMS9UI', 'natoque.penatibus.et@velitQuisquevarius.net', '0311426100'),
(96, 2, 'Noel', 'KAZ66YXC3DD', 'commodo.auctor.velit@nislNulla.net', '0412806947'),
(97, 2, 'Blackwell', 'IXH05BBQ1RT', 'tempor.lorem.eget@augueSed.edu', '0344722872'),
(98, 2, 'Mcdowell', 'ZCP52CHQ6EO', 'imperdiet.non.vestibulum@euplacerat.edu', '0457364790'),
(99, 2, 'Williams', 'FYI85MIT1ZM', 'augue@ornareplacerat.ca', '0351978858'),
(100, 2, 'Pena', 'PKB20ZTJ0OT', 'sapien.imperdiet@sem.net', '0339901329'),
(101, 2, 'Farmer', 'FHA17BKJ3JJ', 'Suspendisse.aliquet.molestie@ipsumprimis.net', '0679461868');

-- --------------------------------------------------------

--
-- Structure de la table `videgrenier`
--

CREATE TABLE `videgrenier` (
  `ID_VG` int(11) NOT NULL,
  `DATE_VG` date NOT NULL,
  `PRIXEMPL_VG` float(8,2) NOT NULL,
  `NBREEMPLINIT_VG` decimal(8,0) NOT NULL,
  `NBREEMPLINDISPO_VG` decimal(8,0) NOT NULL,
  `NOMBRE_D_EMPLACEMENTS_RESTANTS_TEMPORAIRES_` decimal(8,0) NOT NULL,
  `NBREEMPLRESTREEL_VG` decimal(8,0) NOT NULL,
  `NBREPARTICIP_VG` decimal(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `videgrenier`
--

INSERT INTO `videgrenier` (`ID_VG`, `DATE_VG`, `PRIXEMPL_VG`, `NBREEMPLINIT_VG`, `NBREEMPLINDISPO_VG`, `NOMBRE_D_EMPLACEMENTS_RESTANTS_TEMPORAIRES_`, `NBREEMPLRESTREEL_VG`, `NBREPARTICIP_VG`) VALUES
(1, '2020-10-03', 5.00, '398', '16', '382', '382', '0');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attestationhonneur`
--
ALTER TABLE `attestationhonneur`
  ADD PRIMARY KEY (`ID_AH`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`ID_EMP`);

--
-- Index pour la table `exposant`
--
ALTER TABLE `exposant`
  ADD PRIMARY KEY (`ID_EXP`),
  ADD KEY `FK_DEVENIR` (`ID_UTIL`),
  ADD KEY `FK_FAIRE` (`ID_RES`),
  ADD KEY `FK_FOURNIR` (`ID_AH`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID_RES`),
  ADD UNIQUE KEY `ID_EMP` (`ID_EMP`),
  ADD KEY `FK_CORRESPONDRE` (`ID_VG`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_UTIL`),
  ADD KEY `FK_AVOIR` (`ID_ROL`);

--
-- Index pour la table `videgrenier`
--
ALTER TABLE `videgrenier`
  ADD PRIMARY KEY (`ID_VG`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attestationhonneur`
--
ALTER TABLE `attestationhonneur`
  MODIFY `ID_AH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `emplacement`
--
ALTER TABLE `emplacement`
  MODIFY `ID_EMP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `exposant`
--
ALTER TABLE `exposant`
  MODIFY `ID_EXP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID_RES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID_UTIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `videgrenier`
--
ALTER TABLE `videgrenier`
  MODIFY `ID_VG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `exposant`
--
ALTER TABLE `exposant`
  ADD CONSTRAINT `FK_DEVENIR` FOREIGN KEY (`ID_UTIL`) REFERENCES `utilisateur` (`ID_UTIL`),
  ADD CONSTRAINT `FK_FAIRE` FOREIGN KEY (`ID_RES`) REFERENCES `reservation` (`ID_RES`),
  ADD CONSTRAINT `FK_FOURNIR` FOREIGN KEY (`ID_AH`) REFERENCES `attestationhonneur` (`ID_AH`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_CORRESPONDRE` FOREIGN KEY (`ID_VG`) REFERENCES `videgrenier` (`ID_VG`),
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`ID_EMP`) REFERENCES `emplacement` (`ID_EMP`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_AVOIR` FOREIGN KEY (`ID_ROL`) REFERENCES `role` (`ID_ROL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
