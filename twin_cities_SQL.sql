-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 02:46 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twin_cities`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_ID` int(11) NOT NULL,
  `CatName` varchar(255) DEFAULT NULL,
  `Map_Icon_Fle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_ID`, `CatName`, `Map_Icon_Fle`) VALUES
(0, 'Architectural', 'architectural.png'),
(1, 'Religious', 'chapelOutline.png'),
(2, 'Bridges', 'bridge.png'),
(3, 'Shopping', 'shopperWithBags.png'),
(4, 'Government', 'publicMuseuSign.png'),
(5, 'Schools', 'graduationCap.png'),
(6, 'FerrisWheel', 'ferriswheel.png'),
(7, 'Parks', 'tree.png'),
(8, 'Movies', 'ticket.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `Woeid` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Lat` float DEFAULT NULL,
  `Lng` float DEFAULT NULL,
  `CurrentPopulation` int(11) DEFAULT NULL,
  `HashTags` varchar(255) DEFAULT NULL,
  `Currency` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`Woeid`, `Name`, `Description`, `Lat`, `Lng`, `CurrentPopulation`, `HashTags`, `Currency`, `Country`) VALUES
(44418, 'London', 'London is the capital and largest city of England and the United Kingdom. The River Thames travels through the city. London is the biggest city in western Europe, and the world\'s largest financial centre.', 51.5074, -0.1278, 8136000, 'London;England;uk', '£', 'England'),
(55863414, 'Antony', 'Antony is a French commune in the southern suburbs of Paris, France. It is located 11.3 km (7.0 mi) from the centre of Paris. Antony is a subprefecture of the Hauts-de-Seine department and the seat of the arrondissement of Antony.', 48.7593, 2.30255, 8136000, 'Antony;France', '€', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ImgID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Fle` varchar(255) DEFAULT NULL,
  `Woeid` int(11) DEFAULT NULL,
  `POI_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ImgID`, `Title`, `Description`, `Fle`, `Woeid`, `POI_ID`) VALUES
(0, 'Westminster Abbey', 'This is a picture of the front of Westminster Abbey.', 'Westminster_Abbey_1.jpg', 44418, 0),
(1, 'Westminster Abbey', 'This is a picture of the inside of Westminster Abbey.', 'Westminster_Abbey_2.jpg', 44418, 0),
(2, 'The Shard', 'This is a picture of The Shard from the side of it.', 'The_Shard_1.jpg', 44418, 1),
(3, 'The Shard', 'This is a picture of The Shard from the side of it in the sun set.', 'The_Shard_2.jpg', 44418, 1),
(4, 'London Eye', 'This is a picture of the London Eye from the side of it.', 'London_Eye_1.jpg', 44418, 2),
(5, 'London Eye', 'This is a picture of the London Eye from the side of it in the night sky.', 'London_Eye_2.jpg', 44418, 2),
(6, 'Tower of London', 'This is a picture of the Tower of London from the sky view.', 'Tower_Bridge_1.jpg', 44418, 3),
(7, 'Tower of London', 'This is a picture of the Tower of London from the inside.', 'Tower_Bridge_2.jpg', 44418, 3),
(8, 'Buckingham Palace', 'This is a picture of the Buckingham Palace from the front of it.', 'Buckingham_Palace_1.jpg', 44418, 4),
(9, 'Buckingham Palace', 'This is a picture of the Buckingham Palace with garden.', 'Buckingham_Palace_2.jpg', 44418, 4),
(10, 'Temple Church', 'This is a picture of the Temple Church from the front of it.', 'Templar_Church_1.jpg', 44418, 5),
(11, 'Temple Church', 'This is a picture of the Temple Church from inside.', 'Templar_Church_2.jpg', 44418, 5),
(12, 'London Bridge', 'This is a picture of the London Bridge from the side in the night sky.', 'London_Bridge_1.jpg', 44418, 6),
(13, 'London Bridge', 'This is a picture of the London Bridge from the side of it.', 'London_Bridge_2.jpeg', 44418, 6),
(14, 'Selfridges', 'This is a picture of the Selfridges from the outside.', 'Selfridges_1.jpg', 44418, 7),
(15, 'Selfridges', 'This is a picture of the Selfridges from the inside.', 'Selfridges_2.jpg', 44418, 7),
(16, 'Harrods', 'This is a picture of the Harrods from the front in the sky light.', 'Harrods_1.jpg', 44418, 8),
(17, 'Harrods', 'This is a picture of the Harrods from the front.', 'Harrods_2.jpg', 44418, 8),
(18, 'University of London', 'This is a picture of the University of London from the sky.', 'University_of_London_1.jpg', 44418, 9),
(19, 'University of London', 'This is a picture of the University of London from the inside.', 'University_of_London_2.jpg', 44418, 9),
(20, 'University of Westminster', 'This is a picture of the University of Westminster from the front of it.', 'University_of_Westminster_1.jpg', 44418, 10),
(21, 'University of Westminster', 'This is a picture of the University of Westminster from the inside.', 'University_of_Westminster_2.jpg', 44418, 10),
(22, 'Parc Heller', 'This is a picture of the front of the Parc Heller.', 'Parc_Heller_1.jpg', 55863414, 11),
(23, 'Parc Heller', 'This is a picture of the pond around the Parc Heller.', 'Parc_Heller_2.jpg', 55863414, 11),
(24, 'Parc de Sceaux', 'This is a picture of the sky view of the Parc de Sceaux.', 'Parc_de_Sceaux_1.jpg', 55863414, 12),
(25, 'Parc de Sceaux', 'This is a picture of the fountain around the Parc de Sceaux.', 'Parc_de_Sceaux_2.jpg', 55863414, 12),
(26, 'Vallée-aux-Loups', 'This is a picture of the large tree within the Vallée-aux-Loups.', 'Vallee_aux_Loups_1.jpg', 55863414, 13),
(27, 'Vallée-aux-Loups', 'This is a picture of the garden in the Vallée-aux-Loups.', 'Vallee_aux_Loups_2.jpg', 55863414, 13),
(28, 'Opera de Massy', 'This is a picture of the front of the Opera de Massy.', 'Massy_Opera_1.jpg', 55863414, 14),
(29, 'Opera de Massy', 'This is a picture of the inside of the Opera de Massy.', 'Massy_Opera_2.jpg', 55863414, 14),
(30, 'Église Sainte-Marie-Madeleine de Massy', 'This is a picture of the Église Sainte-Marie-Madeleine de Massy from side of it.', 'Eglise_Sainte_Marie_Madeleine_de_Mass_1.jpg', 55863414, 15),
(31, 'Église Sainte-Marie-Madeleine de Massy', 'This is a picture of the Église Sainte-Marie-Madeleine de Massy from inside.', 'Eglise_Sainte_Marie_Madeleine_de_Mass_2.jpg', 55863414, 15),
(32, 'Chateau de Sceaux', 'This is a picture of the Chateau de Sceaux from the start of the garden.', 'Chateau_de_Sceaux_1.jpg', 55863414, 16),
(33, 'Chateau de Sceaux', 'This is a picture of the Chateau de Sceaux front of the manor.', 'Chateau_de_Sceaux_2.jpg', 55863414, 16);

-- --------------------------------------------------------

--
-- Table structure for table `poi`
--

CREATE TABLE `poi` (
  `POI_ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Lat` float DEFAULT NULL,
  `Lng` float DEFAULT NULL,
  `Description` varchar(1024) DEFAULT NULL,
  `HashTags` varchar(115) DEFAULT NULL,
  `Wiki_URL` varchar(255) DEFAULT NULL,
  `Woeid` int(11) DEFAULT NULL,
  `Cat_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poi`
--

INSERT INTO `poi` (`POI_ID`, `Name`, `Lat`, `Lng`, `Description`, `HashTags`, `Wiki_URL`, `Woeid`, `Cat_ID`) VALUES
(0, 'Westminster Abbey', 51.4993, -0.12731, 'Westminster Abbey was initially built by Henry III in 1245 and it is one of the most important Gothic buildings of England. Westminster Abbey was initially built by Henry III in 1245 and it is one of the most important Gothic buildings of England. Westminster Abbey was initially built by Henry III in 1245 and it is one of the most important Gothic buildings of England.', 'westminster;abbey;westminsterabbey;architecture', 'https://en.wikipedia.org/wiki/Westminster_Abbey', 44418, 4),
(1, 'The Shard', 51.5037, -0.08081, 'The Shard, also infrequently referred to as the Shard of Glass, Shard London Bridge and formerly London Bridge Tower, is a 95-story supertall skyscraper, designed by the Italian architect Renzo Piano, in Southwark, London, that forms part of the Shard Quarter development.', 'theshard;skyscraper;thames;thisislondon;shard;theshardlondon;skyline', 'https://en.wikipedia.org/wiki/The_Shard', 44418, 4),
(2, 'London Eye', 51.5033, -0.119543, 'The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. It is Europe\'s tallest Ferris wheel, is the most popular paid tourist attraction in the United Kingdom with over 3.75 million visitors annually, and has made many appearances in popular culture. The structure is 135 metres (443 ft) tall and the wheel has a diameter of 120 metres (394 ft). When it opened to the public in 2000 it was the world\'s tallest Ferris wheel.', 'londoneye;riverthames;thames;londonbridge;londoncity;londonlife', 'https://en.wikipedia.org/wiki/London_Eye', 44418, 6),
(3, 'Tower of London', 51.5096, -0.07607, 'The Tower of London, officially Her Majesty\'s Royal Palace and Fortress of the Tower of London, is a historic castle located on the north bank of the River Thames in central London ', 'riverthames;toweroflondon;londonbridge;thames;towerbridgelondon', 'https://en.wikipedia.org/wiki/Tower_of_London', 44418, 4),
(4, 'Buckingham Palace', 51.5014, -0.14, 'Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality ', 'buckinghampalace;royalfamily;royals;royalwedding;britishroyalfamily;princess;queen', 'https://en.wikipedia.org/wiki/Buckingham_Palace', 44418, 0),
(5, 'Temple Church', 51.5133, -0.1103, 'The Temple Church is a late 12th-century church in the City of London located between Fleet Street and the River Thames, built by the Knights Templar as their English headquarters', 'TempleChurchLDN;templechurch;church;sacro;total;gothic;romantic', 'https://en.wikipedia.org/wiki/Temple_Church', 44418, 1),
(6, 'London Bridge', 51.5079, -0.0877, 'Several bridges named London Bridge have spanned the River Thames between the City of London and Southwark, in central London. The current crossing, which opened to traffic in 1973, is a box girder bridge built from concrete and steel.', 'londonbridge;londoncity;londontown;bridge;londonlife;londoner;uk', 'https://en.wikipedia.org/wiki/London_Bridge', 44418, 2),
(7, 'Selfridges', 51.5146, -0.1526, 'Selfridges is a Grade II listed retail premises on Oxford Street in London. It was designed by Daniel Burnham for Harry Gordon Selfridge, and opened in 1909.', 'selfridgeslondon;selfridges;instyle;theofficialselfridges;oxfordstreet;fashionbags;streetfashion', 'https://en.wikipedia.org/wiki/Selfridges,_Oxford_Street', 44418, 3),
(8, 'Harrods', 51.4932, -0.158166, 'Harrods is a department store located on Brompton Road in Knightsbridge, London. The Harrods brand also applies to other enterprises undertaken by the Harrods group of companies including Harrods Estates, Harrods Aviation and Air Harrods, and to Harrods Buenos Aires, sold by Harrods in 1922 and closed as of 2011.', 'harrods;fashion;instyle;fashionblogger;personalshopping;fashionbags;streetfashion', 'https://en.wikipedia.org/wiki/Harrods', 44418, 3),
(9, 'University of London', 51.5229, -0.13084, 'The University of London is a collegiate federal research university located in London, England. As of October 2018, the university contains 18 member institutions', 'harrods;fashion;instyle;fashionblogger;personalshopping;fashionbags;streetfashion', 'https://en.wikipedia.org/wiki/University_of_London', 44418, 5),
(10, 'University of Westminster', 51.5182, -0.1411, 'The University of Westminster is a public university in London, United Kingdom. Its antecedent institution, the Royal Polytechnic Institution, was founded in 1838 and was the first polytechnic institution in the UK.', 'universityoflondon;instituteeducation;bassculture;fabfest;degree;university;kingscollege', 'https://en.wikipedia.org/wiki/University_of_Westminster', 44418, 5),
(11, 'Parc Heller', 48.746, 2.29181, 'The Parc Heller is a park of 9.6 hectares on the territory of the commune of Antony in the Hauts de Seine, second in size after the Parc de Sceaux. Large green space featuring kids\' play equipment, a duck pond, open grassy areas & multi-use paths.', 'parcheller;automne;antony;parcs;feuilles;france', 'https://fr.wikipedia.org/wiki/Parc_Heller', 55863414, 7),
(12, 'Parc de Sceaux', 48.7762, 2.29595, 'The Parc de Sceaux extends over the territories of the towns of Sceaux and Antony. The domain of Sceaux depends today on the county council of Hauts de Seine. Partially restored gardens of a 17th-century chateau with sweeping vistas & elegant water features.', 'parcdesceaux;france;picoftheday;automne;sceaux', 'https://fr.wikipedia.org/wiki/Parc_de_Sceaux', 55863414, 7),
(13, 'Vallée-aux-Loups', 48.7733, 2.2676, 'The Vallee aux Loups is a property located at 87, rue de Chateaubriand in Chatenay Malabry, in the heart of Val d\'Aulnay, in the park of the Vallee aux Loups ( Hauts de Seine ). It is occupied by Francois Rene de Chateaubriand from 1807 to 1818 and is protected as historical monuments.', 'valleeauxloups;igersfrance;naturelovers;maison;house;park', 'https://fr.wikipedia.org/wiki/Vall%C3%A9e-aux-Loups', 55863414, 0),
(14, 'Opéra de Massy', 48.732, 2.2893, 'The Massy Opera is an opera house located in the French town of Massy, in the department of Essonne and the region Ile-de-France. It is the first structure labeled lyric convention scene by the Ministry of Culture.', 'operahouse;france;opera;architecture;artists;music;art', 'https://fr.wikipedia.org/wiki/Op%C3%A9ra_de_Massy', 55863414, 8),
(15, 'Église Sainte-Marie-Madeleine de Massy', 48.7307, 2.27354, 'The church Sainte Marie Madeleine is a parish church of Catholic worship, dedicated to Saint Madeleine, located in the French town of Massy and the department of Essonne.', 'jesuschrist;jesus;worship;church;bible;france', 'https://fr.wikipedia.org/wiki/%C3%89glise_Sainte-Marie-Madeleine_de_Massy', 55863414, 1),
(16, 'Château de Sceaux', 48.7707, 2.29702, 'The Chateau de Sceaux is a grand country house in Sceaux, Hauts de Seine, approximately six miles from the center of Paris, France. Located in a park laid out by Andre Le Notre, visitors can tour the house, outbuildings and gardens.', 'grandcountryhouse;countryhouse;landmark;maison;house', 'https://en.wikipedia.org/wiki/Ch%C3%A2teau_de_Sceaux', 55863414, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`Woeid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ImgID`),
  ADD KEY `Woeid` (`Woeid`),
  ADD KEY `POI_ID` (`POI_ID`);

--
-- Indexes for table `poi`
--
ALTER TABLE `poi`
  ADD PRIMARY KEY (`POI_ID`),
  ADD KEY `Woeid` (`Woeid`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`Woeid`) REFERENCES `city` (`Woeid`),
  ADD CONSTRAINT `images_ibfk_2` FOREIGN KEY (`POI_ID`) REFERENCES `poi` (`POI_ID`);

--
-- Constraints for table `poi`
--
ALTER TABLE `poi`
  ADD CONSTRAINT `poi_ibfk_1` FOREIGN KEY (`Woeid`) REFERENCES `city` (`Woeid`),
  ADD CONSTRAINT `poi_ibfk_2` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
