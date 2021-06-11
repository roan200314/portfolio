-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 jun 2021 om 08:58
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `plaats` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `subject` varchar(450) DEFAULT NULL,
  `message` varchar(450) DEFAULT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contact`
--

INSERT INTO `contact` (`name`, `email`, `company`, `plaats`, `adress`, `postcode`, `number`, `subject`, `message`, `datum`) VALUES
('Roan al Helly', 'roan_alhelly@hotmail.com', 'niet aangegeven', 'niet aangegeven', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'cooool', '2021-06-09 08:54:51'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'niet aangegeven', 'niet aangegeven', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'cooool', '2021-06-09 08:54:59'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'SELF', 'hoofddorp', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'PHP is cool!!!', '2021-06-09 08:55:42'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'SELF', 'hoofddorp', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'PHP is cool!!!', '2021-06-09 08:58:21'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'SELF', 'hoofddorp', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'PHP is cool!!!', '2021-06-09 08:59:04'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'SELF', 'hoofddorp', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'PHP is cool!!!', '2021-06-09 09:01:58'),
('Roan al Helly', 'roan_alhelly@hotmail.com', 'SELF', 'hoofddorp', 'Mastbos 421', '2134NL', '0612945625', 'cool', 'PHP is cool!!!', '2021-06-09 09:05:08');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projecten`
--

CREATE TABLE `projecten` (
  `projectID` int(11) NOT NULL,
  `projectICON` varchar(40) NOT NULL,
  `projectTITLE` varchar(20) NOT NULL,
  `projectDESC` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `projecten`
--

INSERT INTO `projecten` (`projectID`, `projectICON`, `projectTITLE`, `projectDESC`) VALUES
(1, 'fas fa-running', 'NOVA FIT', 'We moesten een site maken en veranderen volgens een userstory.'),
(2, 'fas fa-gamepad', 'Ganzenbord', 'We hadden bij een eindproject een Ganzenbord spel moeten maken en hij was erg goed gelukt.'),
(3, 'fab fa-galactic-senate', 'Tic Tac Toe', 'Tic Tac Toe was een erg leuk project waar ik aan had gewerkt.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `skills`
--

CREATE TABLE `skills` (
  `id` int(6) UNSIGNED NOT NULL,
  `SkillsNAME` varchar(30) NOT NULL,
  `SkillsPERCENTAGE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `skills`
--

INSERT INTO `skills` (`id`, `SkillsNAME`, `SkillsPERCENTAGE`) VALUES
(1, 'HTML', '45%'),
(2, 'CSS', '40%'),
(3, 'C#', '55%'),
(4, 'PHP', '35%'),
(5, 'MYSQL', '35%');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `werkervaring`
--

CREATE TABLE `werkervaring` (
  `id` int(6) UNSIGNED NOT NULL,
  `Werktitel` varchar(30) NOT NULL,
  `WerkVerleden` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `werkervaring`
--

INSERT INTO `werkervaring` (`id`, `Werktitel`, `WerkVerleden`) VALUES
(1, 'Spaarne Gasthuis, Hoofddorp', 'Functie Hospitality, keuken afdeling, eten serveren'),
(2, 'Albert Heijn,  Hoofddorp', 'Functie: Vulploegmedewerker\r\n');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `projecten`
--
ALTER TABLE `projecten`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexen voor tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `werkervaring`
--
ALTER TABLE `werkervaring`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `projecten`
--
ALTER TABLE `projecten`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `werkervaring`
--
ALTER TABLE `werkervaring`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
