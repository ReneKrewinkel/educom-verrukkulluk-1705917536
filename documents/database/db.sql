-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 feb 2024 om 13:22
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verrukkulluk`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artikel`
--

CREATE TABLE `artikel` (
  `ID` int(255) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `omschrijving` varchar(255) NOT NULL,
  `prijs` int(255) NOT NULL,
  `verpakking` varchar(255) NOT NULL,
  `eenheid` varchar(255) NOT NULL,
  `calories` int(255) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artikel`
--

INSERT INTO `artikel` (`ID`, `naam`, `omschrijving`, `prijs`, `verpakking`, `eenheid`, `calories`, `foto`) VALUES
(1, 'Kipfilet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5, '1', 'kg', 100, 'https://demarktpoelier.nl/wp-content/uploads/2021/10/kipfilet_1200x800-600x400.jpg'),
(2, 'Rijst', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40, '20', 'kg', 150, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Thai_jasmine_rice_uncooked.jpg/200px-Thai_jasmine_rice_uncooked.jpg'),
(3, 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, '12', 'stuks', 20, 'https://i.pinimg.com/originals/a3/74/5a/a3745a29204139333bfcaf98c16cb25d.png'),
(4, 'Spaghetti', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, '500', 'gram', 150, 'https://i.pinimg.com/originals/a3/74/5a/a3745a29204139333bfcaf98c16cb25d.png'),
(5, 'Zonnebloem olie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, '1.5', 'liter', 200, 'https://static.ah.nl/dam/product/AHI_43545239373335363131?revLabel=1&rendition=400x400_JPG_Q85&fileType=binary'),
(6, 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, '500', 'gram', 2, 'https://www.fit.nl/wp-content/uploads/2018/12/zout-per-dag.jpg'),
(7, 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, '100', 'gram', 2, 'https://kruidenbestellen.com/bestanden/artikellen/175/groot/zwarte-peper-gemalen-kara-biber.jpg'),
(8, 'Broccoli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5, '1', 'stuk', 10, 'https://cdn.hofweb.nl/media/3394/c/000000001000000001HIGHRES2008-03-21-11.43.06.045000-broccoli-40917-large.jpg'),
(9, 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5, '3', 'stuk', 3, 'https://cdn.webshopapp.com/shops/92230/files/417728620/uien-1-kg.jpg'),
(10, 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, '5', 'stuk', 3, 'https://www.honderdprocentnatural.nl/data/upload/Shop/images/knoflook-0.jpg'),
(11, 'Saus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, '1', 'liter', 250, 'https://www.zoetrecepten.nl/wp-content/uploads/2020/02/IMG_4233-1.jpg'),
(12, 'Broodjes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5, '4', 'stuks', 150, 'https://kookmutsjes.com/wp-content/uploads/2018/03/Hamburger-broodjes-Kookmutsjes.png'),
(13, 'Hamburger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, '100', 'gram', 300, 'https://www.keepingitsimpleblog.com/wp-content/uploads/2022/07/shaped-hamburger-patties.jpg'),
(14, 'Garnalen', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30, '1', 'kg', 75, 'https://www.bessee.nl/wp-content/uploads/2022/07/Bessee_artikelnr_1310_en_1311.png');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boodschappenlijst`
--

CREATE TABLE `boodschappenlijst` (
  `ID` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `artikel_id` int(255) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `omschrijving` varchar(10000) NOT NULL,
  `aantal` int(255) NOT NULL,
  `prijs` int(255) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `boodschappenlijst`
--

INSERT INTO `boodschappenlijst` (`ID`, `user_id`, `artikel_id`, `naam`, `omschrijving`, `aantal`, `prijs`, `foto`) VALUES
(80, 1, 12, 'Broodjes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 5, 'https://kookmutsjes.com/wp-content/uploads/2018/03/Hamburger-broodjes-Kookmutsjes.png'),
(81, 1, 13, 'Hamburger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 2, 'https://www.keepingitsimpleblog.com/wp-content/uploads/2022/07/shaped-hamburger-patties.jpg'),
(82, 1, 6, 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 10, 'https://www.fit.nl/wp-content/uploads/2018/12/zout-per-dag.jpg'),
(83, 1, 7, 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 10, 'https://kruidenbestellen.com/bestanden/artikellen/175/groot/zwarte-peper-gemalen-kara-biber.jpg'),
(84, 1, 5, 'Zonnebloem olie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 10, 'https://static.ah.nl/dam/product/AHI_43545239373335363131?revLabel=1&rendition=400x400_JPG_Q85&fileType=binary'),
(85, 1, 9, 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 5, 'https://cdn.webshopapp.com/shops/92230/files/417728620/uien-1-kg.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerecht`
--

CREATE TABLE `gerecht` (
  `ID` int(255) NOT NULL,
  `keuken_id` int(255) NOT NULL,
  `type_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `datum_toegevoegd` datetime NOT NULL DEFAULT current_timestamp(),
  `titel` varchar(255) NOT NULL,
  `korte_omschrijving` varchar(5000) NOT NULL,
  `lange_omschrijving` varchar(10000) NOT NULL,
  `afbeelding` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gerecht`
--

INSERT INTO `gerecht` (`ID`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(1, 1, 6, 2, '2024-01-23 13:29:40', 'Chinese Kip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'https://natashaskitchen.com/wp-content/uploads/2020/07/General-Tsos-Chicken-4.jpg'),
(2, 2, 6, 1, '2024-01-23 13:36:09', 'Big Whammy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/M6HASPARCZHYNN4XTUYT7H6PTE.jpg&w=1440'),
(3, 4, 5, 3, '2024-01-23 13:37:54', 'Broccoli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'https://pbs.twimg.com/media/BwerM_hCcAAbvca.jpg:large'),
(4, 3, 7, 2, '2024-01-23 13:40:52', 'Gebakken Garnaal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'https://www.okokorecepten.nl/i/recepten/kookboeken/2008/uit-eten-in-barcelona/garnalen-knoflook-peterselie-500.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerecht_info`
--

CREATE TABLE `gerecht_info` (
  `ID` int(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `gerecht_id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `datum` datetime NOT NULL DEFAULT current_timestamp(),
  `nummeriekveld` int(255) DEFAULT NULL,
  `tekstveld` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gerecht_info`
--

INSERT INTO `gerecht_info` (`ID`, `record_type`, `gerecht_id`, `user_id`, `datum`, `nummeriekveld`, `tekstveld`) VALUES
(1, 'B', 1, NULL, '2024-01-23 14:17:25', 1, 'Kook de kip in kokende water'),
(2, 'B', 1, NULL, '2024-01-23 14:18:05', 2, 'Giet het water uit de pan'),
(3, 'B', 1, NULL, '2024-01-23 14:18:48', 3, 'Bak de kip in olie met fijn gesneden knoflook'),
(4, 'B', 1, NULL, '2024-01-23 14:21:21', 4, 'Bereid de rijst voor in een rijstkoker terwijl de kip aan het bakken is'),
(5, 'B', 1, NULL, '2024-01-23 14:21:43', 5, 'Voeg zout, peper en saus toe aan de kip'),
(6, 'B', 1, NULL, '2024-01-23 14:22:58', 6, 'Serveer de kip op een bord met rijst'),
(7, 'O', 1, 1, '2024-01-23 14:24:03', NULL, 'Heel lekker!'),
(8, 'O', 1, 2, '2024-01-23 14:24:25', NULL, 'Valt wel mee'),
(9, 'W', 1, NULL, '2024-01-23 14:29:37', 3, NULL),
(10, 'W', 1, NULL, '2024-01-23 14:29:50', 5, NULL),
(12, 'B', 2, NULL, '2024-01-23 14:48:44', 1, 'Verwarm de pan en voeg olie toe'),
(13, 'B', 2, NULL, '2024-01-23 14:50:03', 2, 'Doe de hamburger in de pan en braad beide kanten tot een goudbruine kleur'),
(14, 'B', 2, NULL, '2024-01-23 14:50:33', 3, 'Braad kort de broodjes en zet de hamburger in elkaar'),
(15, 'O', 2, 3, '2024-01-23 14:53:40', NULL, 'The best!'),
(16, 'O', 2, 1, '2024-01-23 14:53:57', NULL, 'Niet slecht!'),
(17, 'W', 2, NULL, '2024-01-23 14:54:25', 5, NULL),
(18, 'W', 2, NULL, '2024-01-23 14:54:29', 4, NULL),
(19, 'F', 2, 3, '2024-01-23 14:54:47', NULL, NULL),
(20, 'B', 3, NULL, '2024-01-23 14:57:06', 1, 'Kook de brocolli in water'),
(21, 'B', 3, NULL, '2024-01-23 14:57:34', 2, 'Giet het water uit de pan'),
(22, 'B', 3, NULL, '2024-01-23 14:57:54', 3, 'Voeg smaakstoffen toe en serveer'),
(23, 'O', 3, 3, '2024-01-23 14:58:35', NULL, 'Smaakloos'),
(25, 'W', 3, NULL, '2024-01-23 14:59:23', 2, NULL),
(26, 'W', 3, NULL, '2024-01-23 14:59:27', 1, NULL),
(27, 'B', 4, NULL, '2024-01-23 15:00:25', 1, 'Voorverwarm de pan en voeg olie toe'),
(28, 'B', 4, NULL, '2024-01-23 15:00:48', 2, 'Voeg knoflook en ui toe'),
(29, 'B', 4, NULL, '2024-01-23 15:02:06', 3, 'Voeg de garnalen toe in de pan'),
(30, 'B', 4, NULL, '2024-01-23 15:02:19', 4, 'Voeg smaakstoffen toe'),
(31, 'B', 4, NULL, '2024-01-23 15:02:37', 5, 'Serveer met dungesneden bosui'),
(32, 'O', 4, 1, '2024-01-23 15:03:10', NULL, 'Ongeloofelijk lekker!'),
(33, 'W', 4, NULL, '2024-01-23 15:03:34', 5, NULL),
(34, 'F', 4, 1, '2024-01-23 15:04:13', NULL, NULL),
(57, 'W', 1, NULL, '2024-02-21 13:53:51', 5, NULL),
(58, 'W', 1, NULL, '2024-02-23 10:01:30', 5, NULL),
(60, 'W', 1, NULL, '2024-02-23 13:04:45', 3, NULL),
(61, 'W', 1, NULL, '2024-02-23 13:04:46', 4, NULL),
(62, 'W', 1, NULL, '2024-02-23 13:04:47', 3, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ingredient`
--

CREATE TABLE `ingredient` (
  `ID` int(255) NOT NULL,
  `gerecht_id` int(255) NOT NULL,
  `artikel_id` int(255) NOT NULL,
  `aantal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ingredient`
--

INSERT INTO `ingredient` (`ID`, `gerecht_id`, `artikel_id`, `aantal`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 5, 1),
(4, 1, 9, 1),
(5, 1, 10, 1),
(6, 1, 11, 1),
(7, 2, 12, 1),
(8, 2, 13, 1),
(9, 2, 6, 1),
(10, 2, 7, 1),
(11, 2, 5, 1),
(12, 2, 9, 1),
(13, 3, 8, 1),
(14, 3, 5, 1),
(15, 3, 6, 1),
(16, 3, 7, 1),
(17, 4, 14, 1),
(18, 4, 6, 1),
(19, 4, 7, 1),
(20, 4, 5, 1),
(21, 4, 11, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `keuken_type`
--

CREATE TABLE `keuken_type` (
  `ID` int(11) NOT NULL,
  `omschrijving` varchar(255) NOT NULL,
  `record_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `keuken_type`
--

INSERT INTO `keuken_type` (`ID`, `omschrijving`, `record_type`) VALUES
(1, 'Chinees', 'K'),
(2, 'Amerikaans', 'K'),
(3, 'Vietnamees', 'K'),
(4, 'Nederlands', 'K'),
(5, 'Vegan', 'T'),
(6, 'Vlees', 'T'),
(7, 'Vis', 'T'),
(8, 'Vegetarisch', 'T');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `afbeelding` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`ID`, `user_name`, `password`, `email`, `afbeelding`) VALUES
(1, 'Bob', 'test123', 'bob@test.com', 'https://www.azcentral.com/gcdn/presto/2020/06/12/PPHX/e7207da9-6fbe-467b-b63e-ac44e95db582-BobsBurgers_2019_KeyPoses_Bob_1.jpg?crop=3356,2517,x0,y720'),
(2, 'Alex', 'test123', 'alex@test.com', 'https://i.pinimg.com/550x/18/b9/ff/18b9ffb2a8a791d50213a9d595c4dd52.jpg'),
(3, 'Burger', 'king', 'burger@test.com', 'https://pics.craiyon.com/2023-09-13/87471edcf7524debb1740f76d9b2df04.webp');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `boodschappenlijst`
--
ALTER TABLE `boodschappenlijst`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `boodschappen_artikel` (`artikel_id`),
  ADD KEY `boodschappen_user` (`user_id`);

--
-- Indexen voor tabel `gerecht`
--
ALTER TABLE `gerecht`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `gerecht_user` (`user_id`),
  ADD KEY `gerecht_keuken` (`keuken_id`),
  ADD KEY `gerecht_type` (`type_id`);

--
-- Indexen voor tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `gerechtinfo_gerecht` (`gerecht_id`),
  ADD KEY `gerechtinfo_user` (`user_id`);

--
-- Indexen voor tabel `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ingredient_gerecht` (`gerecht_id`),
  ADD KEY `ingredient_artikel` (`artikel_id`);

--
-- Indexen voor tabel `keuken_type`
--
ALTER TABLE `keuken_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `boodschappenlijst`
--
ALTER TABLE `boodschappenlijst`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT voor een tabel `gerecht`
--
ALTER TABLE `gerecht`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT voor een tabel `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `keuken_type`
--
ALTER TABLE `keuken_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `boodschappenlijst`
--
ALTER TABLE `boodschappenlijst`
  ADD CONSTRAINT `boodschappen_artikel` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`ID`),
  ADD CONSTRAINT `boodschappen_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);

--
-- Beperkingen voor tabel `gerecht`
--
ALTER TABLE `gerecht`
  ADD CONSTRAINT `gerecht_keuken` FOREIGN KEY (`keuken_id`) REFERENCES `keuken_type` (`ID`),
  ADD CONSTRAINT `gerecht_type` FOREIGN KEY (`type_id`) REFERENCES `keuken_type` (`ID`),
  ADD CONSTRAINT `gerecht_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);

--
-- Beperkingen voor tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD CONSTRAINT `gerechtinfo_gerecht` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`ID`),
  ADD CONSTRAINT `gerechtinfo_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);

--
-- Beperkingen voor tabel `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `ingredient_artikel` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`ID`),
  ADD CONSTRAINT `ingredient_gerecht` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
