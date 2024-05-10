-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Mai 2024 um 12:28
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `webtech`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benutzerserie`
--

CREATE TABLE `benutzerserie` (
  `benutzerID` int(11) NOT NULL,
  `serienID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `benutzerserie`
--

INSERT INTO `benutzerserie` (`benutzerID`, `serienID`) VALUES
(1, 2),
(2, 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `benutzerserie`
--
ALTER TABLE `benutzerserie`
  ADD PRIMARY KEY (`benutzerID`,`serienID`),
  ADD UNIQUE KEY `benutzerID` (`benutzerID`,`serienID`),
  ADD KEY `serienID` (`serienID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `benutzerserie`
--
ALTER TABLE `benutzerserie`
  ADD CONSTRAINT `benutzerserie_ibfk_1` FOREIGN KEY (`benutzerID`) REFERENCES `benutzer` (`ID`),
  ADD CONSTRAINT `benutzerserie_ibfk_2` FOREIGN KEY (`serienID`) REFERENCES `serien` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
