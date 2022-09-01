-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Wrz 2022, 23:36
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `karty_ike`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty`
--

CREATE TABLE `karty` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Cena` int(11) NOT NULL,
  `HP` int(11) NOT NULL,
  `Atak` int(11) NOT NULL,
  `Temperatura` int(11) NOT NULL,
  `Typ` int(11) NOT NULL,
  `Skill_Spec` text NOT NULL,
  `Opis` text NOT NULL,
  `Wystepowanie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `karty`
--

INSERT INTO `karty` (`id`, `Nazwa`, `Cena`, `HP`, `Atak`, `Temperatura`, `Typ`, `Skill_Spec`, `Opis`, `Wystepowanie`) VALUES
(1, 'Slime', 1, 1, 1, 1, 1, 'Brak', 'Uff ale lepki. Ciekawe co się stanie gdy wsadzę ...', 1),
(2, 'Dirt', 1, 2, 0, 1, 1, 'Brak', 'Bardzo lubi zbierać EXP', 1),
(3, 'Mag Mak', 3, 1, 1, 1, 3, 'Brak', 'Z takim czarodziejem to trzeba uważać. Nie wiadomo kiedy się zrani.', 1),
(4, 'Exp', 3, 1, 1, 1, 4, 'Brak', 'Potężne pyłki dające wielką moc', 1),
(5, 'Mniszek Lekarski', 3, 2, 0, 1, 1, 'Leczy za 1 dowolną jednostkę co turę', 'Taki z niego mnich, że regularnie pozbywa się swoich włosów', 1),
(6, 'Gwoździo Mech', 2, 1, 2, 1, 1, 'Brak', 'Pomysł na niego powstał na plaży podczas burzy mózgów', 1),
(7, 'Oset', 1, 1, 1, 1, 1, 'Brak', 'Taki chwast', 1),
(8, 'Rzut Pomidorem', 2, 0, 1, 1, 4, 'Brak', 'To warzywo. Koniec i kropka', 1),
(9, 'Kapustopulta', 6, 2, 2, 1, 3, 'Atakuje w pierwszej kolejności tylne linie', 'Ciekawe z jakiej gry pochodzi', 1),
(10, 'Dyńka', 4, 3, 1, 1, 2, 'Brak', 'Pierwsza karta, która dostałą remake', 1),
(11, 'Zamszony Bruk', 3, 3, 0, 1, 2, 'Brak', 'Nie łysieje ze stresu', 1),
(12, 'Vanilia', 3, 0, 0, 1, 4, 'Daje dwie karty', 'Zawija karty jak naleśniki', 1),
(13, 'Paproć', 2, 2, 0, 1, 2, 'Brak', 'Rysowanie jej to tragedia', 1),
(14, 'Komaro-liber', 4, 1, 1, 1, 1, 'Przebija cały rząd kart (tanka, zwyklaka i dystansowego)', 'Ciekawe połączenie genetyczne', 1),
(15, 'Róża', 3, 2, 2, 1, 1, 'Brak', 'Równie piękna co zabójcza', 1),
(16, 'Boxer - Bonk Choy', 5, 1, 5, 1, 1, 'Brak', 'Ten też nie wiem czym był inspirowany', 1),
(17, 'Elektryczna Pałka', 3, 1, 2, 1, 1, 'Niewykorzystany atak przechodzi na następnego w rzędzie przeciwnika', 'Pieści aż popieści', 1),
(18, 'Pnączobicz', 3, 1, 3, 1, 1, 'Brak', 'Mały włos i by do gry nie trafił. Zrobiony po deadline\'ie', 1),
(19, 'Pirania', 3, 2, 2, 1, 1, 'Brak', 'Uwaga! Słodka Rybka, gryzie', 2),
(20, 'Wkurzona Mucha', 2, 1, 1, 1, 1, 'Może stać na wodzie i na lądzie', 'Nadszedł czas zemsty', 2),
(21, 'Pijawka', 4, 1, 1, 1, 1, 'Leczy się za każde zadane obrażenie w stosunku 1 do 1', 'Lubi czerwone napoje. Podobno też umie wypić czerwony kolor', 2),
(22, 'Grzyb Wodny', 3, 1, 1, 1, 3, 'Brak', 'Tak tak witamy w świecie Pvz', 2),
(23, 'Lilia Wodna', 1, 0, 0, 1, 4, 'Pozwala jednostce stać na wodzie', 'Bardzo twarda z niej sztuka', 2),
(24, 'Złota Rybka', 1, 1, 1, 1, 1, 'Brak', 'Ta nie spełnia życzeń. Za dużo osób naginało przepisy', 2),
(25, 'Za Gruby Komar', 6, 6, 0, 1, 2, 'Brak', 'Zjadł całego pomidora (warzywo)', 2),
(26, 'Oszukany Grzyb', 4, 2, 3, 1, 1, 'Brak', 'Z takim przebraniem nikt go nie rozpozna', 2),
(27, 'Runa Jera', -1, 0, 0, 1, 4, 'Pozwala użyć innej sztuczki podwójnie, ale jej cena także się podwaja (jednorazowa)', 'To runa, nie runo', 2),
(28, 'Tatarak', 5, 1, 5, 1, 1, 'Brak', 'Prawdziwy Tatar', 2),
(29, 'Kostka z Wierzby', 2, 2, 0, 1, 2, 'Brak', 'Miałem kiedyś taką wierzbę, co ją bardzo lubiłem. Niestety nie przetrwała drugiego przesadzenia, więc przerobiłem ją na taką pamiątkową kostkę', 2),
(30, 'Mucho-mor', 3, 1, 1, 1, 1, 'Karta, która go zabije zostaje zatruta', 'To białe to muchy', 2),
(31, 'Puff Grzyb', 7, 2, 2, 1, 1, 'Przebija cały rząd kart (tanka, zwyklaka i dystansowego)', 'Dmucha dużo baniek', 2),
(32, 'Komarorańcza', 3, 2, 1, 1, 1, 'Może stać na wodzie i na lądzie', 'Bo taki miałem plan', 2),
(33, 'Butypuc', 7, 3, 2, 1, 1, 'Zdejmuje umiejętność z oponenta naprzeciw (jednego, pierwszego z kolei)', 'Dziadka pomysł', 2),
(34, 'Laleczka Voodoo', 5, 2, 0, 1, 3, 'Przeciwnik na końcu rzędu traci 1 punkt życia co turę', 'Opłaca się w ten sposób torturować ryby', 2),
(35, 'Wilgotny Mech', 1, 0, 0, 1, 4, 'Pozwala jednostce wodnej stać na lądzie', 'Wystarczy tylko kilka kropli', 2),
(36, 'Otrucie', 3, 0, 0, 1, 4, 'Brak', 'Ubóstwiam tą grafikę', 2),
(37, 'Komar', 5, 1, 1, 1, 1, 'Leczy się za każde zadane obrażenie w stosunku 1 do 1. Może stać na wodzie i na lądzie', 'Droga ta bestia', 2),
(38, 'Szpikulec', 2, 0, 1, 1, 4, 'Brak', 'Boli, ale masuje', 2),
(39, 'Strzykawiec', 4, 1, 2, 1, 1, 'Brak', 'Gdy spodziewasz się go najmniej, wysunie się z ukrycia i dziabnie cię w nogala', 2),
(40, 'Muszka Owocówka', 3, 1, 1, 1, 1, 'Brak', 'Po postawieniu wylecz 2 jednostki po jeden', 3),
(41, 'Pszczoła', 2, 1, 2, 1, 1, 'Brak', 'Bzzzzzzzzzzz', 3),
(42, 'Pszczeli Ul', 9, 6, 0, 1, 1, 'Po każdym oberwaniu dostaje +2 do ataku', 'Jak włożysz w niego rękę to poczuje się ona jak balon', 3),
(43, 'Miód', 2, 0, 0, 1, 4, 'Leczy zatrucie', 'Ale słodki ... Ale wolę dziewczyny', 3),
(44, 'Ciemnoskóra Winogrona', 6, 2, 3, 1, 3, 'Brak', 'To nie opalenizna', 3),
(45, 'Jabłko Newtona', 3, 0, 2, 1, 4, 'Brak', 'W świecie kreatywności wymyślasz sobie jabłko, które uderza cię w głowę tworząc jeszcze więcej pomysłów i jabłek', 3),
(46, 'Polski Skarabeusz', 5, 3, 0, 1, 2, 'Przeciwnik gdy go zaatakuje, zostanie zatruty', 'Szybka kupa, a ile daje szczęścia', 3),
(47, 'Szerszeń', 7, 1, 6, 1, 2, 'Brak', 'Boli', 3),
(48, 'Wróżka', 5, 2, 1, 1, 1, 'Całkowita odporność na negatywne efekty', 'Magiczna kulka, która lata', 3),
(49, 'Jagoda', 5, 1, 3, 1, 3, 'Brak', 'Polska najlepsza jagoda', 3),
(50, 'Meh Mech', 2, 2, 0, 1, 2, 'Brak', 'To nie robot', 3),
(51, 'Malina', 2, 1, 0, 1, 4, 'Brak', 'Jeżyna w przebraniu', 3),
(52, 'Jeżyna', 2, 0, 1, 1, 4, 'Brak', 'Oryginalnie miała być obrócona w drugą stronę', 3),
(53, 'Poziomka', 7, 1, 3, 1, 1, 'Co turę dostaje 1 życia', 'Rośnie w zastraszającym tempie', 3),
(54, 'Sosna Niezwyczajna', 7, 4, 4, 1, 1, 'Brak', 'Uwaga kłuje', 3),
(55, 'Truskarta', 5, 0, 0, 1, 4, 'Dobierz 3 karty', 'Przydatna', 3),
(56, 'Woskowe Działo', 6, 2, 3, 1, 3, 'Brak', 'Wojskowe Woskowe Działo, dzieło Pszczej Pszczoły', 3),
(57, 'Wilcza Jagoda', 3, 0, 0, 1, 4, '-2 obrażenia dla przeciwnika karty', 'Podczas pełni łatwo się jej szuka', 3),
(58, 'Płonąca Mucha', 3, 1, 1, 3, 1, 'Brak', 'To nie świetlik', 4),
(59, 'Zapałka', 3, 0, 0, 3, 4, 'Brak', 'Ostatnia w paczce i nie chce się odpalić', 4),
(60, 'Płonąca Trawa', 4, 2, 0, 3, 2, 'Przeciwnik, który ją zaatakuje zostanie podpalony', 'Ale się tym jara', 4),
(61, 'Wytresowana Chmura', 2, 0, 0, 1, 4, 'Gasi podpalenie', 'Jej tresura nie jest rzeczą prostą', 4),
(62, 'Drzewo Kauczukowe', 8, 2, 2, 1, 3, 'Atakuje 3 tylne linie (Tylko raz bohatera, gdy wszystkie 3 linie są wolne)', 'Deszcze automatowych piłeczek', 4),
(63, 'Wężowy Znak', 4, 2, 2, 1, 4, 'Stawiany w czasie sztuczki', 'Kąsa kąsa kąsa', 4),
(64, 'Pułapka Statyczna', 4, 0, 1, 1, 5, 'Atakuje cały rząd. Gdy pojawi się na nim nowy przeciwnik', 'Nie dotykać', 4),
(65, 'Wszystko Widzące Oko', 4, 1, 0, 1, 3, 'Ujawnia wszystkie pułapki', 'Nie mruga, ty tak nie próbuj', 4),
(66, 'Znak Leczący', 5, 1, 0, 1, 3, 'Leczy jednostkę przed sobą za 1 co turę', 'Te rogi są tylko dla ozdoby', 4),
(67, 'Seryjne Błyskawice', 4, 0, 1, 1, 4, 'Atakuje w rzędzie', 'Elektryzujące', 4),
(68, 'Atak Termitów', -1, 0, 0, 1, 4, 'Karta oponenta traci cały atak. Cena wynosi ilość punktów ataku przeciwnika + 1', 'Twój miecz smakuje rdzą', 4),
(69, 'Bębny Wojenne', 4, 2, 0, 1, 1, 'Karta przed nim dostaje +2 do ataku. Efekt utrzymuje się do śmierci bębniarza', 'Nie słyszę własnych myśli, więc nie mogę ich spisać', 4),
(70, 'Przyzwaniec', 3, 1, 1, 1, 5, 'Pojawia się po śmierci karty. Po pojawieniu automatycznie atakuje za 1', 'Powinno być ich dwóch, albo trzech. Nie pamiętam', 4),
(71, 'Kula Ognia', 3, 0, 0, 3, 4, 'Brak', 'Lata w około broni', 4),
(72, 'Mały Wielki Hall', 4, 3, 0, 1, 2, 'Stawia się go w czasie sztuczki', 'Zestaw złóż go sam', 4),
(73, 'Akacja Bonsai', 3, 2, 2, 1, 1, 'Brak', 'Zwykłe drzewko, tylko mniejsze', 4),
(74, 'Eukaliptus Szlachetny', 5, 2, 4, 1, 1, 'Brak', 'Na nim nie rosną koale', 4),
(75, 'Płonący Krzew', 6, 1, 3, 3, 1, 'Brak', 'I wtedy przemówił ...', 4),
(76, 'O Jeden Krok za Daleko', 5, 0, 3, 3, 5, 'Po postawieniu jednostki dostaje ona wpiernicz', 'Ale nieszczęście. Szansa jeden na każdy mój plan', 4),
(77, 'Orzeszek Ziemny', 5, 3, 0, 1, 5, 'Gdy oponent postawi na tej linii kartę to ujawni się ona na linii dla tanka', 'Orzeszek? A gdzie jego dwie głowy?', 4),
(78, 'Krew Mannorotha', 6, 2, 2, 1, 4, 'Brak', 'Zmienia kolor skóry na zielony, potem czerwony, a na końcu szary', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_rodzaj`
--

CREATE TABLE `karty_rodzaj` (
  `id` int(11) NOT NULL,
  `karty_id` int(11) NOT NULL,
  `rodzaj_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `karty_rodzaj`
--

INSERT INTO `karty_rodzaj` (`id`, `karty_id`, `rodzaj_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 3, 4),
(5, 4, 4),
(6, 5, 3),
(7, 6, 3),
(8, 7, 3),
(9, 8, 3),
(10, 9, 3),
(11, 10, 3),
(12, 11, 2),
(13, 11, 3),
(14, 12, 3),
(15, 13, 3),
(16, 14, 5),
(17, 15, 3),
(18, 16, 3),
(19, 17, 3),
(20, 18, 3),
(21, 19, 6),
(22, 20, 5),
(23, 21, 1),
(24, 22, 7),
(25, 23, 3),
(26, 24, 6),
(27, 25, 5),
(28, 26, 3),
(29, 26, 8),
(30, 27, 4),
(31, 28, 3),
(32, 29, 2),
(33, 29, 3),
(34, 30, 7),
(35, 31, 7),
(36, 32, 5),
(37, 32, 9),
(38, 33, 6),
(39, 34, 4),
(40, 34, 6),
(41, 35, 3),
(42, 36, 7),
(43, 36, 10),
(44, 37, 5),
(45, 38, 10),
(46, 39, 3),
(47, 40, 5),
(48, 40, 9),
(49, 41, 5),
(50, 42, 5),
(51, 43, 5),
(52, 43, 10),
(53, 44, 9),
(54, 45, 9),
(55, 46, 5),
(56, 47, 5),
(57, 48, 4),
(58, 48, 5),
(59, 49, 9),
(60, 50, 3),
(61, 51, 9),
(62, 52, 9),
(63, 53, 3),
(64, 53, 9),
(65, 54, 9),
(66, 55, 9),
(67, 56, 5),
(68, 57, 9),
(69, 57, 11),
(70, 58, 5),
(71, 59, 10),
(72, 60, 3),
(73, 61, 4),
(74, 61, 10),
(75, 62, 3),
(76, 62, 10),
(77, 63, 4),
(78, 63, 11),
(79, 64, 10),
(80, 65, 10),
(81, 65, 12),
(82, 66, 10),
(83, 67, 4),
(84, 67, 5),
(85, 68, 5),
(86, 69, 5),
(87, 69, 10),
(88, 70, 4),
(89, 70, 5),
(90, 71, 4),
(91, 72, 10),
(92, 73, 3),
(93, 74, 3),
(94, 75, 3),
(95, 76, 3),
(96, 76, 8),
(97, 77, 9),
(98, 78, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_skillpods`
--

CREATE TABLE `karty_skillpods` (
  `id` int(11) NOT NULL,
  `karty_id` int(11) NOT NULL,
  `skill_pods_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `karty_skillpods`
--

INSERT INTO `karty_skillpods` (`id`, `karty_id`, `skill_pods_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 31, 1),
(31, 33, 1),
(32, 34, 1),
(33, 35, 1),
(34, 36, 2),
(35, 37, 1),
(36, 39, 2),
(37, 40, 1),
(38, 41, 1),
(39, 42, 1),
(40, 43, 1),
(41, 44, 1),
(42, 45, 1),
(43, 46, 1),
(44, 47, 1),
(45, 48, 1),
(46, 49, 1),
(47, 50, 1),
(48, 51, 1),
(49, 52, 1),
(50, 53, 1),
(51, 54, 1),
(52, 55, 1),
(53, 56, 1),
(54, 57, 1),
(55, 58, 3),
(56, 59, 3),
(57, 60, 3),
(58, 61, 1),
(59, 62, 1),
(60, 63, 1),
(61, 64, 1),
(62, 65, 1),
(63, 66, 1),
(64, 67, 1),
(65, 68, 1),
(66, 69, 1),
(67, 70, 1),
(68, 71, 3),
(69, 72, 1),
(70, 73, 1),
(71, 74, 1),
(72, 75, 3),
(73, 76, 1),
(74, 77, 1),
(75, 78, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_tryb`
--

CREATE TABLE `karty_tryb` (
  `id` int(11) NOT NULL,
  `karty_id` int(11) NOT NULL,
  `tryb_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `karty_tryb`
--

INSERT INTO `karty_tryb` (`id`, `karty_id`, `tryb_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 4),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 4),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 4),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 3),
(20, 20, 1),
(21, 20, 3),
(22, 21, 3),
(23, 22, 3),
(24, 23, 3),
(25, 24, 3),
(26, 25, 3),
(27, 26, 1),
(28, 27, 4),
(29, 28, 3),
(30, 29, 3),
(31, 30, 1),
(32, 31, 1),
(33, 32, 1),
(34, 32, 3),
(35, 33, 3),
(36, 34, 1),
(37, 35, 1),
(38, 36, 4),
(39, 37, 1),
(40, 37, 3),
(41, 38, 4),
(42, 39, 1),
(43, 40, 1),
(44, 41, 1),
(45, 42, 1),
(46, 43, 4),
(47, 44, 1),
(48, 45, 4),
(49, 46, 1),
(50, 47, 1),
(51, 48, 1),
(52, 50, 1),
(53, 51, 4),
(54, 52, 4),
(55, 53, 1),
(56, 54, 1),
(57, 55, 4),
(58, 56, 1),
(59, 57, 1),
(60, 58, 1),
(61, 59, 4),
(62, 60, 1),
(63, 61, 4),
(64, 62, 1),
(65, 63, 1),
(66, 64, 4),
(67, 65, 1),
(68, 66, 1),
(69, 67, 4),
(70, 68, 4),
(71, 69, 1),
(72, 70, 4),
(73, 71, 4),
(74, 72, 1),
(75, 73, 1),
(76, 74, 1),
(77, 75, 1),
(78, 76, 4),
(79, 77, 4),
(80, 78, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj`
--

CREATE TABLE `rodzaj` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rodzaj`
--

INSERT INTO `rodzaj` (`id`, `Nazwa`, `Opis`) VALUES
(1, 'Szlam', 'Uff ale się klei, ciekawe co się stanie gdy wsadzę w to rękę'),
(2, 'Blok', 'Ciekawe z jakiej to Gry'),
(3, 'Roślina', 'Wszelakie kwiaty, kaktusy i im podobne korzenionogie'),
(4, 'Magia', 'To była magia ugh'),
(5, 'Owad', 'Mucha, Komar, Pająk, Robak itd.'),
(6, 'Ryba', 'Jak Ryba w Wodzie'),
(7, 'Grzyb', 'Tutaj rozmiar ma znaczenie'),
(8, 'Kamień', 'Twardy jak skała. A nawet bardziej. Twardy jak Kamień'),
(9, 'Owoc', 'Bo to przecież nie jest roślina'),
(10, 'Rzecz', 'Czyli wszystko co nie pasuje'),
(11, 'Bestia', 'Duże, straszne zwierze'),
(12, 'Ciało', 'To takie brutalne. Pomyśl o tym jak o żelkach');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skill_pods`
--

CREATE TABLE `skill_pods` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Moc` int(11) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `skill_pods`
--

INSERT INTO `skill_pods` (`id`, `Nazwa`, `Moc`, `Opis`) VALUES
(1, 'Brak', 0, 'Naprawdę nic nie daje'),
(2, 'Zatrucie', 1, 'To tylko przejściowe ...'),
(3, 'Podpalenie', 1, 'Ale gorący chłop');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `temperatura`
--

INSERT INTO `temperatura` (`id`, `Nazwa`, `Opis`) VALUES
(1, 'Neutralny', 'Taki nie zimny, ale też i nie ciepły'),
(2, 'Zimny', 'Taki co lubi Zimę'),
(3, 'Ciepły', 'Taki co lubi Lato');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tryb`
--

CREATE TABLE `tryb` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tryb`
--

INSERT INTO `tryb` (`id`, `Nazwa`, `Opis`) VALUES
(1, 'Dzień', 'Domyślny'),
(2, 'Noc', 'Karty w dzień śpią'),
(3, 'Woda', 'Karty można postawić tylko na polu wodnym'),
(4, 'Niedotyczy', 'Można używać niezależnie od okoliczności');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ`
--

CREATE TABLE `typ` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `typ`
--

INSERT INTO `typ` (`id`, `Nazwa`, `Opis`) VALUES
(1, 'Zwyklak', 'Taki co walczy na blisko'),
(2, 'Tank', 'Stoi przed zwyklakiem'),
(3, 'Dystansowy', 'Stoi za zwyklakiem'),
(4, 'Sztuczka', 'Rzucasz na dowolną jednostkę'),
(5, 'Pułapka', 'Uruchamia się po spełnieniu szczególnych okoliczności'),
(6, 'Pogoda', 'Działa na całą linię typów'),
(7, 'Środowisko', 'Działa na całą linię');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wystepowanie`
--

CREATE TABLE `wystepowanie` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(100) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wystepowanie`
--

INSERT INTO `wystepowanie` (`id`, `Nazwa`, `Opis`) VALUES
(1, 'Roślinny Zamek', 'Dungeon dla Początkujących Podróżników'),
(2, 'Moczary Wiedźmy', 'Z wiedźmy jest straszna moczydupa, dlatego zbyt często się nie pojawia'),
(3, 'Owocowy Las', 'Przyciąga szkodniki'),
(4, 'Sa-wanna z ciepłą wodą', 'Co jak co, ale akurat z nazwy jestem dumny'),
(5, 'Kraina Grzybów', 'Na jej teranach znajduje się pradawne źródło zmarłych'),
(6, 'Szafa Pełna Pomysłów', 'Tematycznie plaża + wycięte karty z poprzednich światów'),
(7, 'Nadchodzi Noc część 1', 'Witamy w nocy. Prawie niecodzienna to rzecz'),
(8, 'Nadchodzi Noc część 2', 'W nocy, kocy się nie moczy'),
(9, 'Water Wars', 'A to mapka z okazji rocznicy innej naszej gry'),
(10, 'Piaszczyste Pustkowie', 'Wracamy do czegoś bardziej okrojonego tematycznie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `karty`
--
ALTER TABLE `karty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Temperatura` (`Temperatura`),
  ADD KEY `Typ` (`Typ`),
  ADD KEY `Wystepowanie` (`Wystepowanie`);

--
-- Indeksy dla tabeli `karty_rodzaj`
--
ALTER TABLE `karty_rodzaj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karty_id` (`karty_id`),
  ADD KEY `rodzaj_id` (`rodzaj_id`);

--
-- Indeksy dla tabeli `karty_skillpods`
--
ALTER TABLE `karty_skillpods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karty_id` (`karty_id`),
  ADD KEY `karty_skillpods_ibfk_2` (`skill_pods_id`);

--
-- Indeksy dla tabeli `karty_tryb`
--
ALTER TABLE `karty_tryb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karty_id` (`karty_id`),
  ADD KEY `tryb_id` (`tryb_id`);

--
-- Indeksy dla tabeli `rodzaj`
--
ALTER TABLE `rodzaj`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `skill_pods`
--
ALTER TABLE `skill_pods`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tryb`
--
ALTER TABLE `tryb`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typ`
--
ALTER TABLE `typ`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wystepowanie`
--
ALTER TABLE `wystepowanie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `karty`
--
ALTER TABLE `karty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT dla tabeli `karty_rodzaj`
--
ALTER TABLE `karty_rodzaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT dla tabeli `karty_skillpods`
--
ALTER TABLE `karty_skillpods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT dla tabeli `karty_tryb`
--
ALTER TABLE `karty_tryb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT dla tabeli `rodzaj`
--
ALTER TABLE `rodzaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `skill_pods`
--
ALTER TABLE `skill_pods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `tryb`
--
ALTER TABLE `tryb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `typ`
--
ALTER TABLE `typ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `wystepowanie`
--
ALTER TABLE `wystepowanie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `karty`
--
ALTER TABLE `karty`
  ADD CONSTRAINT `karty_ibfk_1` FOREIGN KEY (`Temperatura`) REFERENCES `temperatura` (`id`),
  ADD CONSTRAINT `karty_ibfk_2` FOREIGN KEY (`Typ`) REFERENCES `typ` (`id`),
  ADD CONSTRAINT `karty_ibfk_3` FOREIGN KEY (`Wystepowanie`) REFERENCES `wystepowanie` (`id`);

--
-- Ograniczenia dla tabeli `karty_rodzaj`
--
ALTER TABLE `karty_rodzaj`
  ADD CONSTRAINT `karty_rodzaj_ibfk_1` FOREIGN KEY (`karty_id`) REFERENCES `karty` (`id`),
  ADD CONSTRAINT `karty_rodzaj_ibfk_2` FOREIGN KEY (`rodzaj_id`) REFERENCES `rodzaj` (`id`);

--
-- Ograniczenia dla tabeli `karty_skillpods`
--
ALTER TABLE `karty_skillpods`
  ADD CONSTRAINT `karty_skillpods_ibfk_1` FOREIGN KEY (`karty_id`) REFERENCES `karty` (`id`),
  ADD CONSTRAINT `karty_skillpods_ibfk_2` FOREIGN KEY (`skill_pods_id`) REFERENCES `skill_pods` (`id`);

--
-- Ograniczenia dla tabeli `karty_tryb`
--
ALTER TABLE `karty_tryb`
  ADD CONSTRAINT `karty_tryb_ibfk_1` FOREIGN KEY (`karty_id`) REFERENCES `karty` (`id`),
  ADD CONSTRAINT `karty_tryb_ibfk_2` FOREIGN KEY (`tryb_id`) REFERENCES `tryb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
