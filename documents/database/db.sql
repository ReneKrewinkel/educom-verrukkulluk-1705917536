-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 jan 2024 om 15:20
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
  `eenheid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artikel`
--

INSERT INTO `artikel` (`ID`, `naam`, `omschrijving`, `prijs`, `verpakking`, `eenheid`) VALUES
(1, 'kip', 'bok bok bok', 5, '1', 'kg'),
(2, 'rijst', 'korrels', 40, '20', 'kg'),
(3, 'ei', 'ei van een kip', 3, '12', 'stuks'),
(4, 'spaghetti', 'pasta', 2, '500', 'gram'),
(5, 'zonnebloem olie', 'olie van zonnebloem', 10, '1.5', 'liter'),
(6, 'zout', 'uit de zee', 10, '500', 'gram'),
(7, 'peper', '4 seizoenspeper', 10, '100', 'gram'),
(8, 'broccoli', 'groente', 5, '1', 'stuk'),
(9, 'ui', 'groente', 5, '3', 'stuk'),
(10, 'knoflook', 'groente', 3, '5', 'stuk'),
(11, 'saus', 'veelzijdige saus', 10, '1', 'liter'),
(12, 'broodjes', 'broodjes voor hamburger', 5, '4', 'stuks'),
(13, 'hamburger', 'hamburger voor hamburger', 2, '100', 'gram'),
(14, 'garnalen', 'garnalen uit de oceaan', 30, '1', 'kg');

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
  `korte_omschrijving` varchar(255) NOT NULL,
  `lange_omschrijving` varchar(255) NOT NULL,
  `afbeelding` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gerecht`
--

INSERT INTO `gerecht` (`ID`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(1, 1, 6, 2, '2024-01-23 13:29:40', 'Chinese Kip', 'Kip met rijst', 'Kip met rijst en saus', 'https://natashaskitchen.com/wp-content/uploads/2020/07/General-Tsos-Chicken-4.jpg'),
(2, 2, 6, 1, '2024-01-23 13:36:09', 'Big Whammy', 'Amerikaanse hamburger', 'Hamburger gemaakt volgens oud-Amerikaanse stijl', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/M6HASPARCZHYNN4XTUYT7H6PTE.jpg&w=1440'),
(3, 4, 5, 3, '2024-01-23 13:37:54', 'Broccoli', 'roergebakken broccoli', 'langere omschrijving van roergebakken broccoli', 'https://pbs.twimg.com/media/BwerM_hCcAAbvca.jpg:large'),
(4, 3, 7, 2, '2024-01-23 13:40:52', 'Gebakken garnaal', 'gebakken vietnamese garnaal', 'garnaal berijd volgens authentiek vietnamees recept', 'https://www.okokorecepten.nl/i/recepten/kookboeken/2008/uit-eten-in-barcelona/garnalen-knoflook-peterselie-500.jpg');

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
(11, 'F', 1, 1, '2024-01-23 14:33:17', NULL, NULL),
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
(24, 'O', 3, 2, '2024-01-23 14:58:56', NULL, 'Beetje flauwe smaak'),
(25, 'W', 3, NULL, '2024-01-23 14:59:23', 2, NULL),
(26, 'W', 3, NULL, '2024-01-23 14:59:27', 1, NULL),
(27, 'B', 4, NULL, '2024-01-23 15:00:25', 1, 'Voorverwarm de pan en voeg olie toe'),
(28, 'B', 4, NULL, '2024-01-23 15:00:48', 2, 'Voeg knoflook en ui toe'),
(29, 'B', 4, NULL, '2024-01-23 15:02:06', 3, 'Voeg de garnalen toe in de pan'),
(30, 'B', 4, NULL, '2024-01-23 15:02:19', 4, 'Voeg smaakstoffen toe'),
(31, 'B', 4, NULL, '2024-01-23 15:02:37', 5, 'Serveer met dungesneden bosui'),
(32, 'O', 4, 1, '2024-01-23 15:03:10', NULL, 'Ongeloofelijk lekker!'),
(33, 'W', 4, NULL, '2024-01-23 15:03:34', 5, NULL),
(34, 'F', 4, 1, '2024-01-23 15:04:13', NULL, NULL);

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
(17, 4, 14, 2),
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
-- AUTO_INCREMENT voor een tabel `gerecht`
--
ALTER TABLE `gerecht`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
