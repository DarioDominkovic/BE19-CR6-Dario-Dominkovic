-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Aug 2023 um 21:07
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigevents_dominkovic`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811163217', '2023-08-11 18:32:26', 69);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `image`, `type`, `description`) VALUES
(1, 'Vienna Food & Wine Expo', '2023-10-05 09:00:00', 'https://cdn.pixabay.com/photo/2014/07/31/21/37/bar-406884_1280.jpg', 'cultural', 'Explore a delectable world of culinary delights and exquisite wines from around the globe in this gourmet event.'),
(2, 'Vienna Art Fair', '2023-11-12 12:00:00', 'https://cdn.pixabay.com/photo/2018/02/04/09/09/brushes-3129361_1280.jpg', 'cultural', 'Immerse yourself in the vibrant world of contemporary art and witness masterpieces from renowned artists.'),
(3, 'Vienna Fashion Week', '2024-02-21 10:00:00', 'https://cdn.pixabay.com/photo/2016/10/16/23/32/fashion-show-1746581_1280.jpg', 'cultural', 'Witness the latest trends on the runway and attend workshops by leading designers in the fashion industry.'),
(4, 'Vienna Christmas Market', '2023-12-01 09:00:00', 'https://cdn.pixabay.com/photo/2016/04/15/22/08/town-hall-1332069_1280.jpg', 'cultural', 'Experience the enchantment of the holiday season with festive decorations, traditional crafts, and heartwarming treats.'),
(5, 'New Year Event', '2025-01-01 00:00:00', 'https://cdn.pixabay.com/photo/2017/01/04/21/00/fireworks-1953253_1280.jpg', 'cultural', 'Join us for testing the filter and enjoy a spectacular New Year\'s celebration with mesmerizing fireworks.'),
(6, 'Vienna Music Festival', '2023-09-15 22:00:00', 'https://cdn.pixabay.com/photo/2015/01/16/15/00/concert-601537_960_720.jpg', 'concert', 'A four-day celebration of classical and contemporary music featuring renowned orchestras, virtuoso soloists, and captivating performances.'),
(7, 'Classical Music Schönbrunn', '2024-04-08 16:00:00', 'https://cdn.pixabay.com/photo/2016/11/19/09/57/violins-1838390_960_720.jpg', 'concert', 'Enjoy screenings of international films along with Q&A sessions with directors and actors, all set to the backdrop of classical music in the stunning Schönbrunn Palace.'),
(8, 'Pop Concert', '2024-05-20 18:00:00', 'https://cdn.pixabay.com/photo/2015/01/16/15/00/concert-601537_960_720.jpg', 'concert', 'Dance to the sounds of international pop stars in an electrifying concert experience that will leave you energized and thrilled.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
