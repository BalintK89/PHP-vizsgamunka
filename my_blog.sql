-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 30. 15:39
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `my_blog`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(4, 'Balint', 'K.', 'admin', '$2y$10$zncBADxC5s3FPPOVVvEoS.aURoO4O2rLcnuOI1/1F4igrBoD59Qnu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'My Mind'),
(10, 'Lifestyle'),
(11, 'Everyday'),
(12, 'Other');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `post_id`, `crated_at`) VALUES
(16, 'Szuper bejegyzés, csak igy tovább!', 7, 6, '2025-01-30 13:11:22'),
(17, 'Várom a folytatást ! :)', 8, 6, '2025-01-30 13:12:24');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(127) NOT NULL,
  `post_text` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(5, 'Test title', '<div>1. test title</div><div>2. test Image</div><div>3. test text :&nbsp;<u><br>Proin ut leo aliquet lacus finibus efficitur.</u> Sed vel elit ut orci \r\ncommodo porttitor vitae non tellus. <b>Curabitur id convallis ligula,</b> in \r\n<b>hendrerit</b> est. <span style=\"background-color: red;\">Quisque imperdiet sem tristique lobortis consequat.</span> \r\nPellentesque quis tortor non arcu posuere convallis sit amet eu nulla. \r\nNam luctus, nisl id ultrices aliquam, lectus turpis pharetra diam, \r\nsagittis vulputate massa elit condimentum orci. <font color=\"#0000ff\">Nam rutrum ligula vel \r\neuismod commodo.</font> Pellentesque feugiat finibus iaculis. Sed blandit nulla\r\n quis libero convallis, sed auctor nunc cursus. Sed sed tortor eget arcu\r\n porttitor cursus. Vestibulum vitae odio elit. Nulla quis aliquam est. \r\nDuis elementum massa vitae erat sodales, et porta tellus aliquet. Cras \r\net neque efficitur, rhoncus dolor non, rhoncus ipsum.&nbsp;</div>', 1, 1, 'COVER-6761f60e18b737.51830983.jpg', '2024-12-15 20:11:34'),
(6, 'Üdvözlet a Blogomon!', '<h3><br></h3><div><span style=\"background-color: rgb(255, 255, 0);\">Köszönöm</span>, hogy itt vagy és elolvasod az első <b>bejegyzésemet</b>! 😊 Ez a blog az én kis szigetem, ahol megoszthatom veletek a <span style=\"background-color: red;\">gondolataimat</span>, történeteimet, és az élet nagy <font face=\"Arial Black\">kérdéseit, ahogyan én látom.</font></div><div><font face=\"Arial Black\"><span style=\"font-size:22px;\">Célom, hogy inspiráljalak, megmosolyogtassalak, vagy épp elgondolkodtassalak. </span></font>Akár véletlenül találtál ide, akár tudatosan, <font color=\"#f79646\">remélem</font>, hogy találsz valamit, ami megszólít.</div><div><font color=\"#ff0000\">Kíváncsi vagyok</font> a véleményedre, szóval nyugodtan írj kommentet – szívesen olvasom, mit gondolsz! 💬</div><div>Ez csak a kezdet... Tarts <span style=\"background-color: rgb(63, 49, 81);\">velem</span><span style=\"font-size:20px;\">, hogy együtt fedezzük fel a világot és <span style=\"background-color: red;\">önmagunkat</span>! 🌍✨</span></div>', 10, 1, 'COVER-6761f4b4528924.94751788.png', '2024-12-15 20:15:27'),
(9, 'ez egy teszt', '<div>asdasdasd</div>', 11, 0, 'default.jpg', '2024-12-18 00:07:27'),
(11, 'Ez az uj postom', '<div><h2>What is Lorem Ipsum?</h2></div><div><strong><br></strong></div><div><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</div><div><br></div><div><br></div>', 11, 1, 'COVER-678414372e9f41.30285966.png', '2025-01-12 20:12:55'),
(13, 'Php alapok :)', '<div><h2 class=\"wp-block-heading joli-heading jtoc-heading\" id=\"mi-az-a-php-a-php-fogalma\">Mi az a PHP? A PHP fogalma</h2>\r\n\r\n\r\n\r\n<div>Kezdjük egyből a legfontosabb tudnivalóval, azaz azzal, hogy mi is az a PHP. </div>\r\n\r\n\r\n\r\n<div><strong>A PHP fogalma:</strong> A PHP egy szerveroldali szkriptnyelv,\r\n mely segítségével dinamikus weblapokat készíthetünk. A PHP nyelven írt \r\nkódokat a webszerver PHP feldolgozómodulja értelmezi. A PHP egy olyan \r\nprogramozási nyelv, mely segítségével képesek lehetünk elkészíteni egy \r\nadatbázisalapú weboldalt is, azaz az adatok egy része egy szerveren van \r\ntárolva. Szerveren általában különböző felhasználókhoz köthető adatokat \r\ntárolunk, például a bejelentkezési adatok, feltöltött tartalmak.</div></div><div><br></div><div><h2 class=\"wp-block-heading joli-heading jtoc-heading\" id=\"szerverkornyezet-a-php-szamara\">Szerverkörnyezet a PHP számára</h2>\r\n\r\n\r\n\r\n<div>A PHP egy szerveroldali nyelv, azaz szerverre van szükség ahhoz, hogy\r\n a PHP-ban megírt kódokat futtatni tudjuk. Az sajnos nem lehetséges, \r\nmint a HTML-nél, hogy megírjuk a kódot, majd szimplán megnyitjuk a \r\nböngészőnkben. Ha ezt megpróbáljuk, akkor nem a weboldalt fogjuk látni, \r\nhanem szimplán a kódot.</div>\r\n\r\n\r\n\r\n<div>Két lehetőség közül választhatunk:</div>\r\n\r\n\r\n\r\n<ul><li>feltelepítjük a PHP-t és az Apache-ot</li><li>feltelepítjük a XAMPP-ot</li></ul>\r\n\r\n\r\n\r\n<div><br>Ez a két megoldás egymástól független, szóval nincs szükség \r\nmindkettő telepítésére, elegendő a két megoldás közül csak egyet \r\nválasztani. Fontos, hogy a PHP fájlainkat csak úgy tudjuk futtatni, ha \r\naz Apache vagy XAMPP szerverünk fut.</div></div><a href=\"https://webiskola.hu/php-ismeretek/php-alapok-kezdoknek/\" target=\"_blank\">Tovább...</a><div></div>', 12, 1, 'COVER-679b6e40a8d2e2.70843957.png', '2025-01-30 13:19:12');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `post_like`
--

INSERT INTO `post_like` (`like_id`, `liked_by`, `post_id`, `liked_at`) VALUES
(19, 5, 5, '2025-01-12 20:20:09'),
(20, 7, 5, '2025-01-30 13:10:42'),
(21, 7, 11, '2025-01-30 13:11:46'),
(22, 8, 6, '2025-01-30 13:12:08'),
(23, 7, 13, '2025-01-30 13:19:43');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(2, 'John Doe', 'JD21', '$2y$10$rlY4IJmTEABgo4NmMbgaj.DZugv3ypJTjpNnpJshwydaIE96bgNFW'),
(7, 'test1', 'test1', '$2y$10$1GYlDCcEKVdcH4o.G1pUfuHukIuJvs4n8zrW89UgLDa3NJwWynUHu'),
(8, 'test2', 'test2', '$2y$10$mPLsSDaH6aBE3yFtA.9NuukSMJD/d9NkK3rxD3XKiyq7aAMuQgFMK'),
(9, 'test3', 'test3', '$2y$10$7ig8BLZxEtp9lDxMPYGn.uW1RNOnJ3hOUMLPZC7hCLWiV1C1iQz9K');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- A tábla indexei `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- A tábla indexei `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
