-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Wrz 2022, 20:16
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
(78, 'Krew Mannorotha', 6, 2, 2, 1, 4, 'Brak', 'Zmienia kolor skóry na zielony, potem czerwony, a na końcu szary', 4),
(79, 'Zombie', 4, 1, 1, 1, 1, 'Może stać na wodzie i na lądzie', 'Lubię i nienawidzę jego grafiki', 5),
(80, '1UP', 4, 0, 0, 1, 5, 'Brak', 'Nakładane na kartę. Gdy ta karta zginie to wraca do życia z 1 punktem życia', 5),
(81, 'Purchawka', 3, 0, 0, 1, 5, 'Nakładany na linię. Pierwsza karta oponenta, która zostanie położona na tej linii zostanie zatruta', 'Gdy się jej oparów nawdychasz to z pragnienia wyzerujesz sok pomarańczowy', 5),
(82, 'Czerwony Grzyb', 5, 3, 3, 1, 4, 'Karta dostaje spore ulepszenie, ale i zostaje otruta', 'Nie graliście nigdy w Mario?', 5),
(83, 'Dziwny Grzyb', -1, 0, 0, 1, 4, 'Pozwala jednostce jednorazowo zaatakować poza kolejką. Cena wynosi tyle ile punktów ataku ma dana jednostka + 1', 'Ja bym go nie jadł', 5),
(84, 'Pasożyt', 3, 0, 2, 1, 4, 'Nakładany na kartę. Daje jej +2 ataku i odejmuje 1 życia', 'Szybko zanim złoży jaja', 5),
(85, 'Kolorowe Grzybki', 7, 0, 0, 1, 4, 'Zatruwa cały wrogi rząd', 'Delikatnie przeźroczyste w wielu nietypowych kolorach. Nocą lekko emanują blaskiem tworząc niepowtarzalny klimat', 5),
(86, 'Grzybek Halucynek', -1, 0, 0, 1, 4, 'Przejmij wrogą jednostkę na swoją stronę. Cena wynosi cenę przejętej karty + 1', 'Jego Oczy wirują nieustannie', 5),
(87, 'Ryb Grzyb', 2, 2, 1, 1, 1, 'Brak', 'Ale ma czapkę, ciekawe po co jej', 5),
(88, 'Grzyborak', 7, 3, 4, 1, 1, 'Może stać na wodzie i na lądzie', 'To nie pokemon. To pełnoprawne zwierze', 5),
(89, 'Wysoki Grzyb', 4, 2, 1, 1, 3, 'Brak', 'Najwyższy w klasie. Pewnie koszykarz', 5),
(90, 'Kurka', 3, 3, 1, 1, 1, 'Brak', 'Kurka bez piórka', 5),
(91, 'Maślak', 2, 1, 1, 1, 2, 'Brak', 'Można nim smarować chleb', 5),
(92, 'Zupa Grzybowa', 4, 3, 0, 1, 4, 'Brak', 'Ten czerwony grzyb to dla smaku', 5),
(93, 'Grzybnia Baba', 5, 4, 1, 1, 2, 'Brak', 'Nie pytaj jej o wiek', 5),
(94, 'Piecz Arka', 5, 2, 2, 3, 1, 'Brak', 'Aż skwierczy', 5),
(95, 'Grzybek', 1, 1, 1, 1, 1, 'Brak', 'Mały ale Lary', 5),
(96, 'Serco Grzyb', 6, 3, 0, 1, 3, 'Po postawieniu wylecz 2 jednostki za 1', 'Jej miłość wyleczy wszystkie rany', 5),
(97, 'Wkurwigrzyb', 10, 2, 7, 1, 3, 'Brak', 'Nawet mnie nie wkurwiaj', 5),
(98, 'Żabogrzyb', -1, 2, 0, 1, 2, 'Po postawieniu zabija jednostkę dystansową z tej linii. Cena wynosi cenę wrogiej jednostki + 2', 'Po obiadku oddaje się świeceniu', 5),
(99, 'Słońcogrzyb', 4, 1, 0, 1, 1, 'Co turę daje dodatkową kartę do ręki', 'Taki słonecznik, tylko że w dzień', 5),
(100, 'Wisp', 8, 8, 0, 1, 2, 'Brak', 'To nie są prawdziwe ognie. To tylko płomień jego duszy', 5),
(101, 'Lampa Dusz', 2, 0, 0, 1, 4, 'Daje postaci niewrażliwość na pogodę', 'Działa wyjątkowo sprawnie', 5),
(102, 'Sakwa', 3, 0, 0, 1, 4, '+2 karty do ręki', 'Tym razem bez kota w środku', 5),
(103, 'Zboże', 6, 2, 2, 1, 3, 'Zaczyna atakować od tylnych linii', 'Zbożniki bójcie się', 6),
(104, 'Chlebki', 5, 3, 0, 1, 2, 'Leczy jednostkę za nim po każdym jej ataku', 'Taki chwast, którego listki nie smakują jak chleb', 6),
(105, 'Motyl', 3, 2, 1, 1, 1, 'Może stać na wodzie i na lądzie', 'Różowy to jej ulubiony kolor', 6),
(106, 'Rybia Głowa', 3, 0, 0, 1, 4, 'Zablokuj pole przeciwnikowi. Zniszczyć to może tylko inną sztuczką', 'Jiba jiba', 6),
(107, 'To Kora', 4, 3, 0, 1, 2, 'Może stać na wodzie i na lądzie', 'Nie mylić z Korą', 6),
(108, 'Huba Buba', 5, 4, 0, 1, 2, 'Po postawieniu daje jedną kartę do ręki', 'Uwielbia dmuchać gumy', 6),
(109, 'Grzyb Komórkowy', 5, 1, 1, 1, 1, 'Dostaje +1 HP i +1 atak za każdą użytą sztuczkę', 'Nie jest dotykowy', 6),
(110, 'Mózgogrzyb', 3, 2, 0, 1, 1, 'Po postawieniu dostajesz 2 karty do ręki', 'Bardzo mądry, ale nie ma jak tej mądrości przekazać dalej', 6),
(111, 'Wata Solona', 4, 1, 0, 1, 4, 'Wszystkie jednostki na wodzie dostają +1 punkt życia', 'Na faktach autentycznych. Świeżo zebrane glony z morza zawinięte na patyku', 6),
(112, 'Piratania', 6, 2, 5, 1, 1, 'Brak', 'Arrrrrrrrrrr', 6),
(113, 'Muszla', 2, 0, 0, 1, 4, 'Karta zmienia się w Tanka i przechodzi do przodu na jego pole', 'Zebrana po sztormie', 6),
(114, 'Zamek z Piasku', 3, 2, 0, 1, 4, 'Tank stawiany w czasie sztuczki', 'Twoje pociski tylko wzmacniają moje mury', 6),
(115, 'Piesek Grzybowidz', 5, 3, 3, 1, 1, 'Brak', 'Pochodzi z odległej grzybowej jaskini', 6),
(116, 'Usypiająca Herbata', 2, 0, 0, 1, 4, 'Usypia jednostkę na jedną turę', 'Słodkich snów (zawiera cukry proste)', 6),
(117, 'Med-uza', 5, 3, 0, 1, 1, 'Leczy jednostkę z tyłu i z przodu za 1 co turę', 'Dotyk grozi przyjemnością', 6),
(118, 'Niebieskogrzyb', 3, 2, 1, 1, 1, 'Odporny na sztuczki', 'W określonych warunkach świeci', 6),
(119, 'Szczypawica', 2, 1, 1, 1, 1, 'Jej atak omija tanka', 'Uwielbia trampoliny', 6),
(120, 'Pszczoła Morska', -1, 1, 2, 1, 1, 'Zabij najbliższą wrogą jednostkę. Cena wynosi cenę wrogiej jednostki +2', 'Bardzo niebezpieczna', 6),
(121, 'Kraborak', 5, 2, 3, 1, 1, 'Może stać na wodzie i na lądzie', 'Bardziej rak, czy bardziej krab?', 6),
(122, 'Kij do Chlapania', 4, 0, 0, 1, 4, 'Wszyscy wrogowie na wodzie tracą 1hp', 'Różdżka Wody lv. 1', 6),
(123, 'Morskie Oko', 2, 0, 0, 1, 4, 'Ujawnij jedną pułapkę', 'Wszędzie znajdziesz te oko', 6),
(124, 'Hrabia Chaber', 6, 1, 6, 1, 1, 'Brak', 'Ma wiele sług i kochanek', 6),
(125, 'Klon', -1, 0, 0, 1, 1, 'Kopiuje statystyki poprzednio wyrzuconej karty', 'Taki z niego klon, że uwielbia swój sos na naleśnikach', 7),
(126, 'Ćma', 2, 2, 1, 1, 1, 'Brak', 'Ciema Eniu', 7),
(127, 'Spadająca Karta', 4, 0, 0, 1, 4, 'Zadaj 2 obrażenia i dobierz kartę', 'Nie spala się w locie', 7),
(128, 'Pająk', 1, 1, 1, 1, 1, 'Brak', 'Nie gryzie', 7),
(129, 'Pająk Mutant', 4, 1, 4, 1, 1, 'Brak', 'Gryzie', 7),
(130, 'Pajęczy Pocałunek', 6, 2, 2, 1, 4, 'Karta może działać w nocy, +2 HP +2 ataku', 'Pojawił się, tylko by cię ugryźć.', 7),
(131, 'Kawa Ziarnista', 2, 0, 0, 1, 4, 'Karta może działać w nocy', 'Uzależnia', 7),
(132, 'Świetlik', 1, 1, 1, 1, 1, 'Brak', 'Te 2 piksele potrafią wiele', 7),
(133, 'Duszek', 2, 2, 0, 1, 2, 'Brak', 'Bardzo stara mini lampka z Ikei', 7),
(134, 'Znana Lampa', 6, 3, 1, 3, 1, 'Brak', 'Każdy ją miał', 7),
(135, 'Robo Pająk', 4, 2, 1, 1, 1, 'Odsłania wszystkie pułapki', 'Bardzo satysfakcjonujący', 7),
(136, 'Cień', 1, 2, 0, 1, 2, 'Zajmuje 2 pola (Tanka i Zwyklaka)', 'Jego koncept powstał wiele lat temu', 7),
(137, 'Nietoperz', 3, 2, 2, 1, 1, 'Brak', 'Gdy będziesz się bać, przypomnij sobie, że on ze strachu śpi do góry nogami', 7),
(138, 'Świecąca Meduza', 1, 1, 1, 1, 1, 'Brak', 'Robione są z niej świecące patyki', 7),
(139, 'Kret', 4, 2, 2, 1, 5, 'Pojawia się gdy przeciwnik położy kartę na tej linii', 'Nieuchwytny', 7),
(140, 'Ace öf Spades', -1, 0, 0, 1, 4, 'Karta dostaje tyle ataku ile życia ma wroga karta przed nim. Cena Życie oponenta +1', 'Szybka partyjka w pokera', 7),
(141, 'Krib', 2, 1, 2, 1, 1, 'Brak', 'Taki to z niego creepy grzyb', 7),
(142, 'Nocny Marek', 5, 3, 3, 1, 1, 'Brak', 'Ma szemraną przeszłość', 7),
(143, 'Komarokopter', 5, 2, 2, 1, 3, 'Brak', 'Nawet nie usłyszą jak nadlatuję!', 7),
(144, 'Oko Wzroku', 3, 1, 1, 1, 3, 'Brak', 'Widzę, więc wiem', 7),
(145, 'Moonerang', 2, 0, 0, 1, 4, 'Zadaj jedno obrażenie. Po użyciu karta wraca do ręki. Wtedy jej atak rośnie o 1, a cena o 2', 'Zawsze wraca', 7),
(146, 'Ghost Pepper', 5, 1, 1, 1, 3, 'Atakuje cały rząd', 'Top 3 roślin z PVZ2', 7),
(147, 'Nocna Wróżka', 1, 1, 1, 1, 1, 'Brak', 'Prowadzi cię do pobliskiego skarbu. Kto wie co dla niej jest skarbem', 7),
(148, 'Niepowstrzymany', 5, 4, 0, 1, 3, 'Co turę idzie jedną pozycję do przodu. Twoje 3, potem oponenta 3. Jeżeli dojdzie do wrogiego bohatera to zadaje mu 5', 'Nie powstrzyma go odkurzacz', 8),
(149, 'Papier Osy', 4, 2, 2, 1, 1, 'Po postawieniu podpal dowolną jednostkę', 'Nie palcie dzieci', 8),
(150, 'Fear of the Dark', 2, 0, 0, 1, 4, 'Karta przestaje działać nocą', 'Czego się tak boisz. To tylko szafa ...', 8),
(151, 'Brzydki Burak', 5, 0, 0, 1, 4, 'Zadaj 4 obrażenia', 'Czasem szybka podmiana kolorów może zdziałać cuda', 8),
(152, 'Żądny Krwii', 9, 2, 2, 1, 3, 'Atakuje wszystkie 3 linie', 'Rzygrzygrzygrzygrzyg', 8),
(153, 'Kamień Noktowizyjny', 6, 6, 0, 1, 2, 'Brak', 'Stoi jak kamień', 8),
(154, 'Ognik', 8, 2, 3, 3, 3, 'Brak', 'Ale się tu zrobiło gorąco', 8),
(155, 'Ognisko', 5, 3, 0, 3, 1, 'Pozwala działać nocą karcie przed i za nim', 'Idealny do opowiadania historii', 8),
(156, 'Błędny Ognik', 1, 1, 1, 1, 1, 'Po śmierci wraca do ręki. Dostaje wtedy +1 HP, +1 ataku i +2 do ceny', 'Niebieski nie jest już teraz w modzie', 8),
(157, 'Duży Pająk', 3, 2, 2, 1, 1, 'Brak', 'Ma dziwną pasję. Uwielbia chodzić po ludziach gdy oni śpią', 8),
(158, 'Dominy', 10, 0, 0, 1, 5, 'Gdy oponent postawi tu kartę, cały rząd traci 3 HP', 'Nie do pary', 8),
(159, 'Zyzuś Tłuścioch', 6, 6, 1, 1, 1, 'Brak', 'Faktycznie żyjący pająk', 8),
(160, 'Krzyżak', 7, 3, 4, 1, 1, 'Brak', 'Lepiej nie zadzieraj', 8),
(161, 'Nartnik', 1, 1, 1, 1, 1, 'Brak', 'Chodzi po wodzie', 8),
(162, 'Meduza MLG', 3, 2, 2, 1, 1, 'Brak', 'Ale COOL', 8),
(163, 'Ślepiak', 4, 1, 1, 1, 1, 'Po postawieniu dobierz 2 karty', 'Zamknięty w słoju, czeka na głos który zdoła go uwolnić', 8),
(164, 'Ściekowa Potworność', 4, 2, 1, 1, 1, 'Brak', 'Śmierdzi na kilometr', 8),
(165, 'Żywa Lampa', 5, 2, 1, 1, 1, 'Co turę obudź dowolną jednostkę', 'A kto zabroni roślinie być lampą', 8),
(166, 'Kocimiętki Sum', 6, 4, 3, 1, 1, 'Brak', 'Uzależniony od samego siebie', 8),
(167, 'Modniszka', 5, 1, 2, 1, 1, 'Pozwala poświęcić dowolną ilość kart z ręki za surowiec. W stosunku jedna karta = jeden surowiec', 'Uwielbia najnowsze szyki mody', 8),
(168, 'Nocny Obrońca', 5, 2, 2, 1, 3, 'Brak', 'Laser z oka Wrrrrrrrrr', 8),
(169, 'Międzygalaktyczny Komar', 3, 1, 1, 1, 1, 'Zabiera oponentowi 1 surowiec', 'Lubi ssać', 9),
(170, 'Młotogrzyb', 3, 1, 3, 1, 1, 'Brak', 'Będzie z ciebie plaskacz', 9),
(171, 'Oko Opatrzności', -1, 0, 0, 1, 4, 'Przywróć ostatnio zabitą kartę do życia. Cena zabitej karty + 2', 'Blask i błogosławieństwo', 9),
(172, 'Lodowa Kanoniera', 8, 3, 4, 2, 3, 'Brak', 'Jego wygląd jest pojęciem względnym', 9),
(173, 'Żywiołak Lodu', 4, 2, 3, 2, 1, 'Brak', 'Ocieplenie klimatu! To nie dla mnie', 9),
(174, 'Lodołamacz', 4, 2, 3, 2, 1, 'Brak', 'On łamie lód, czy lód łamie go?', 9),
(175, 'Żywiołak Lawy', 5, 4, 0, 3, 1, 'Po dotknięciu podpala. Po postawieniu podpala jedną dowolną jednostkę', 'W takim ciepełku przyjemnie się śpi', 9),
(176, 'Skorpiuran', 4, 1, 2, 1, 1, 'Brak', 'Szkolony z największą starannością', 9),
(177, 'Ender Fly', 7, 2, 3, 1, 1, 'Co turę przeskakuje o 2 pola w prawo', 'Nieuchwytny i wcale nie boi się wody', 9),
(178, 'Dyni Weteran', 6, 5, 1, 1, 2, 'Brak', 'Przeżył za dużo. I przeżyje jeszcze wiele', 9),
(179, 'Piracka Dusza', 6, 2, 1, 1, 4, 'Postać może stać na wodzie, przesuń ją na pole wodne', 'Zaklęty w pieniążku', 9),
(180, 'Rudobrody Hak', 3, 0, 0, 1, 4, 'Wyrzuć kartę z wody na ląd', 'Mieni się na zielono i pomarańczowo. Który kolor jest jego bazowym?', 9),
(181, 'Lodomściciel', 6, 2, 5, 2, 1, 'Brak', 'Zniszczę całe zło, rozpuszczające mój lód', 9),
(182, 'Kryształ Kresu', 5, 0, 0, 1, 4, 'Postać staje się odporna na wszystkie złe efekty', 'Wydobyty z czeluści kosmosu', 9),
(183, 'Szczur Kartojad', 3, 1, 1, 1, 1, 'Wybierz na ślepo kartę oponenta i ją wyrzuć', 'Omnomnom', 9),
(184, '1 Wężowe Prawo', -1, 0, 0, 1, 4, 'Nadaj krwawienie wszystkim jednostką na planszy. Cena = ilość jednostek + 1', 'Obusieczny wąż', 9),
(185, 'Wyścigowa Biedrona', 4, 3, 2, 1, 1, 'Brak', 'Zapraszamy na zawody w wyścigi biedron. Niepowtarzalne skórki do wygrania', 9),
(186, 'Rakietowy wąż', 4, 0, 1, 1, 4, 'Zadaj całemu rzędowi 1', 'Jak się to zaczęło?', 9),
(187, 'Miedziany Tasak', 4, 0, 0, 1, 4, '+1 do ataku i postać zaczyna zadawać krwawienie', 'Rosyjska krew', 9),
(188, 'Czująca', 9, 7, 3, 1, 1, 'Brak', 'Matka natura obdarzyła ją charyzmą, aby poprowadziła rośliny ku wolności', 9),
(189, 'Ostatni Pocisk', 5, 0, 0, 1, 4, 'Zadaj 6 obrażeń karcie, sam tracisz 1 na bohaterze', 'Kula co dziesiątkuje statki', 9),
(190, 'Cierpki Wij', 4, 2, 3, 1, 1, 'Brak', 'Wije się i wije, a końca nie widać. A nie czekaj jest noc', 9),
(191, 'Wieczna Pochodnia', 9, 0, 0, 3, 4, 'Podpal swojego i wrogiego bohatera. Nie można ich ugasić', 'Niech rozpocznie się walka o przetrwanie', 10),
(192, 'Węgiełek', 3, 1, 1, 3, 1, 'Dostaje 1HP za każdą podpaloną jednostkę', 'Pal się pal', 10),
(193, 'Kaktusia', 5, 4, 0, 1, 2, 'Brak', 'Karta z poprzedniej edycji kart', 10),
(194, 'Pustynny Wij', 5, 2, 1, 1, 1, 'Brak', 'To on grabi piasek', 10),
(195, 'Żywiołak Ognia', 4, 3, 4, 3, 1, 'Podpala jednostkę za i przed sobą', 'Zrodzony z czystych płomieni', 10),
(196, 'Zimny ogień', 1, 0, 0, 1, 4, 'Podpal jednostkę tylko wizualnie', 'Ej to nie pali', 10),
(197, 'OP-uncja', 8, 3, 5, 1, 1, 'Brak', 'Spędza całe dnie na siłowni', 10),
(198, 'Kraktus', 7, 2, 3, 1, 3, 'Brak', 'Skąd ja go znam?', 10),
(199, 'Piach z nieba', 1, 0, 0, 1, 4, 'Zadaj 1 i ugaś', 'Wróg, czy swój. Wybieraj mądrze', 10),
(200, 'Ankh Reinkarnacji', 7, 0, 0, 1, 5, 'Bohater odradza się po śmierci z 1HP', 'Pradawna technologia', 10),
(201, 'Kaktusik', 3, 0, 0, 1, 5, 'Gdy wroga karta zaatakuje, dostanie obrażenia od cierni', 'Uwaga na palce', 10),
(202, 'Piaskowa Wiedźma', 8, 2, 3, 1, 1, 'Po postawieniu wylecz dowolną jednostkę za 3', 'Całe życie robi te same kanapki', 10),
(203, 'Lwia Mrówka', 4, 2, 3, 1, 1, 'Jego atak gasi', 'Ma wiele stadiów ewolucji', 10),
(204, 'Szarańcza', 4, 0, 0, 1, 6, 'Blokuje leczenie', 'Jedna z wielkich plag', 10),
(205, 'Skarpadeusz', 4, 2, 1, 1, 3, 'Brak', 'W tym przebraniu nigdy cię nie rozpoznają', 10),
(206, 'Miraż w Butelce', 4, 0, 0, 1, 6, 'Karty po jednym ruchu wracają do ręki', 'Kto to tu zamknął?', 10),
(207, 'πramida', 4, 0, 0, 1, 4, 'Ugaś 3 dowolne jednostki', 'Incepcja', 10),
(208, 'Dagaz', 6, 0, 0, 1, 4, 'Wyłącz wszystkie pogody', 'Znalezione, nie kradzione', 10),
(209, 'Kostka Horadrimów', 2, 0, 0, 1, 4, 'Połącz 2 karty', 'Znaleziona w losowej jaskini', 10),
(210, 'Ciernina', 4, 3, 1, 1, 1, 'Brak', 'Darmowe przytulasy', 10),
(211, 'Piaskowy Rekin', 7, 3, 4, 1, 1, 'Odporny na podpalenie', 'Skrywa się w mroku i czeka na najlepszy moment', 10),
(212, 'Piaskowy Dziad', 5, 2, 2, 1, 1, 'Wyłącz jedną pogodę', 'Wchodź piaskowy dziadzie!', 10);

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
(98, 78, 12),
(99, 79, 5),
(100, 79, 7),
(101, 80, 7),
(102, 81, 7),
(103, 82, 7),
(104, 83, 7),
(105, 84, 9),
(106, 84, 12),
(107, 85, 7),
(108, 86, 4),
(109, 86, 7),
(110, 87, 6),
(111, 87, 7),
(112, 88, 7),
(113, 88, 11),
(114, 89, 7),
(115, 90, 7),
(116, 91, 7),
(117, 92, 7),
(118, 92, 10),
(119, 93, 7),
(120, 93, 8),
(121, 94, 7),
(122, 95, 7),
(123, 96, 7),
(124, 97, 7),
(125, 98, 7),
(126, 98, 11),
(127, 99, 7),
(128, 100, 4),
(129, 101, 4),
(130, 101, 10),
(131, 102, 10),
(132, 103, 3),
(133, 104, 3),
(134, 105, 5),
(135, 106, 6),
(136, 106, 10),
(137, 107, 2),
(138, 107, 3),
(139, 108, 3),
(140, 108, 7),
(141, 109, 7),
(142, 110, 7),
(143, 110, 12),
(144, 111, 3),
(145, 111, 10),
(146, 112, 6),
(147, 113, 10),
(148, 114, 8),
(149, 114, 10),
(150, 115, 7),
(151, 115, 11),
(152, 116, 10),
(153, 117, 1),
(154, 118, 7),
(155, 119, 5),
(156, 120, 1),
(157, 120, 5),
(158, 121, 11),
(159, 122, 10),
(160, 123, 10),
(161, 123, 12),
(162, 124, 3),
(163, 125, 3),
(164, 126, 5),
(165, 127, 4),
(166, 128, 5),
(167, 129, 5),
(168, 129, 11),
(169, 130, 5),
(170, 131, 9),
(171, 132, 5),
(172, 133, 13),
(173, 134, 10),
(174, 135, 5),
(175, 135, 10),
(176, 136, 2),
(177, 136, 4),
(178, 137, 11),
(179, 138, 1),
(180, 139, 11),
(181, 140, 10),
(182, 141, 7),
(183, 142, 8),
(184, 143, 5),
(185, 144, 12),
(186, 145, 10),
(187, 146, 3),
(188, 146, 13),
(189, 147, 4),
(190, 147, 5),
(191, 148, 13),
(192, 149, 5),
(193, 149, 10),
(194, 150, 11),
(195, 151, 3),
(196, 152, 5),
(197, 153, 8),
(198, 153, 10),
(199, 154, 3),
(200, 155, 10),
(201, 156, 4),
(202, 156, 5),
(203, 157, 5),
(204, 158, 10),
(205, 159, 5),
(206, 160, 5),
(207, 161, 5),
(208, 162, 1),
(209, 163, 12),
(210, 163, 13),
(211, 164, 1),
(212, 165, 3),
(213, 165, 5),
(214, 166, 3),
(215, 166, 6),
(216, 167, 5),
(217, 168, 2),
(218, 168, 6),
(219, 169, 5),
(220, 170, 7),
(221, 171, 4),
(222, 171, 12),
(223, 172, 8),
(224, 173, 8),
(225, 174, 6),
(226, 175, 4),
(227, 175, 8),
(228, 176, 5),
(229, 177, 2),
(230, 177, 5),
(231, 178, 3),
(232, 179, 13),
(233, 180, 10),
(234, 181, 8),
(235, 182, 4),
(236, 183, 11),
(237, 184, 11),
(238, 185, 5),
(239, 186, 11),
(240, 187, 10),
(241, 188, 3),
(242, 189, 10),
(243, 190, 11),
(244, 191, 10),
(245, 192, 5),
(246, 193, 3),
(247, 194, 11),
(248, 195, 4),
(249, 196, 10),
(250, 197, 3),
(251, 198, 3),
(252, 199, 2),
(253, 200, 4),
(254, 200, 10),
(255, 201, 3),
(256, 202, 8),
(257, 203, 2),
(258, 203, 11),
(259, 204, 5),
(260, 205, 5),
(261, 205, 10),
(262, 206, 4),
(263, 206, 10),
(264, 207, 4),
(265, 208, 4),
(266, 209, 2),
(267, 209, 4),
(268, 210, 3),
(269, 211, 6),
(270, 211, 11),
(271, 212, 8);

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
(75, 78, 1),
(76, 79, 2),
(77, 80, 1),
(78, 81, 2),
(79, 82, 2),
(80, 83, 1),
(81, 84, 1),
(82, 85, 2),
(83, 86, 1),
(84, 87, 1),
(85, 88, 1),
(86, 89, 1),
(87, 90, 1),
(88, 91, 1),
(89, 92, 1),
(90, 93, 1),
(91, 94, 3),
(92, 95, 1),
(93, 96, 1),
(94, 97, 1),
(95, 98, 1),
(96, 99, 1),
(97, 100, 1),
(98, 101, 1),
(99, 102, 1),
(100, 103, 1),
(101, 104, 1),
(102, 105, 1),
(103, 106, 1),
(104, 107, 1),
(105, 108, 1),
(106, 109, 1),
(107, 110, 1),
(108, 111, 1),
(109, 112, 1),
(110, 113, 1),
(111, 114, 1),
(112, 115, 1),
(113, 116, 1),
(114, 117, 1),
(115, 118, 1),
(116, 119, 1),
(117, 120, 1),
(118, 121, 1),
(119, 122, 1),
(120, 123, 1),
(121, 124, 1),
(122, 125, 1),
(123, 126, 1),
(124, 127, 1),
(125, 128, 1),
(126, 129, 1),
(127, 130, 1),
(128, 131, 1),
(129, 132, 1),
(130, 133, 1),
(131, 134, 3),
(132, 135, 1),
(133, 136, 1),
(134, 137, 1),
(135, 138, 1),
(136, 139, 1),
(137, 140, 1),
(138, 141, 1),
(139, 142, 1),
(140, 143, 1),
(141, 144, 1),
(142, 145, 1),
(143, 146, 1),
(144, 147, 1),
(145, 148, 1),
(146, 149, 1),
(147, 150, 1),
(148, 151, 1),
(149, 152, 1),
(150, 153, 1),
(151, 154, 3),
(152, 155, 1),
(153, 156, 1),
(154, 157, 1),
(155, 158, 1),
(156, 159, 1),
(157, 160, 1),
(158, 161, 1),
(159, 162, 1),
(160, 163, 1),
(161, 164, 2),
(162, 165, 1),
(163, 166, 1),
(164, 167, 1),
(165, 168, 1),
(166, 169, 1),
(167, 170, 1),
(168, 171, 1),
(169, 172, 1),
(170, 173, 1),
(171, 174, 1),
(172, 175, 1),
(173, 176, 2),
(174, 177, 1),
(175, 178, 1),
(176, 179, 1),
(177, 180, 1),
(178, 181, 1),
(179, 182, 1),
(180, 183, 1),
(181, 184, 1),
(182, 185, 1),
(183, 186, 1),
(184, 187, 1),
(185, 188, 1),
(186, 189, 1),
(187, 190, 1),
(188, 191, 3),
(189, 192, 1),
(190, 193, 4),
(191, 194, 2),
(192, 194, 4),
(193, 195, 1),
(194, 196, 1),
(195, 197, 4),
(196, 198, 4),
(197, 199, 1),
(198, 200, 1),
(199, 201, 4),
(200, 202, 1),
(201, 203, 1),
(202, 204, 1),
(203, 205, 1),
(204, 206, 1),
(205, 207, 1),
(206, 208, 1),
(207, 209, 1),
(208, 210, 4),
(209, 211, 1),
(210, 212, 1);

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
(80, 78, 4),
(81, 79, 1),
(82, 79, 3),
(83, 80, 4),
(84, 81, 4),
(85, 82, 4),
(86, 83, 4),
(87, 84, 4),
(88, 85, 4),
(89, 86, 4),
(90, 87, 3),
(91, 88, 1),
(92, 88, 3),
(93, 89, 1),
(94, 90, 1),
(95, 91, 1),
(96, 92, 4),
(97, 93, 1),
(98, 94, 1),
(99, 95, 1),
(100, 96, 1),
(101, 97, 1),
(102, 98, 1),
(103, 99, 1),
(104, 100, 1),
(105, 101, 4),
(106, 102, 4),
(107, 103, 1),
(108, 104, 1),
(109, 105, 1),
(110, 105, 3),
(111, 106, 4),
(112, 107, 1),
(113, 107, 3),
(114, 108, 1),
(115, 109, 1),
(116, 110, 1),
(117, 111, 3),
(118, 112, 3),
(119, 113, 4),
(120, 114, 4),
(121, 115, 1),
(122, 116, 4),
(123, 117, 3),
(124, 118, 1),
(125, 119, 1),
(126, 120, 3),
(127, 121, 1),
(128, 121, 3),
(129, 122, 4),
(130, 123, 4),
(131, 124, 1),
(132, 125, 4),
(133, 126, 2),
(134, 127, 4),
(135, 128, 2),
(136, 129, 2),
(137, 130, 4),
(138, 131, 4),
(139, 132, 2),
(140, 133, 2),
(141, 134, 2),
(142, 135, 2),
(143, 136, 1),
(144, 137, 2),
(145, 138, 2),
(146, 138, 3),
(147, 139, 4),
(148, 140, 4),
(149, 141, 2),
(150, 142, 2),
(151, 143, 2),
(152, 144, 2),
(153, 145, 2),
(154, 146, 2),
(155, 147, 2),
(156, 148, 2),
(157, 149, 1),
(158, 150, 2),
(159, 151, 4),
(160, 152, 2),
(161, 153, 2),
(162, 154, 2),
(163, 155, 2),
(164, 156, 2),
(165, 157, 2),
(166, 158, 4),
(167, 159, 2),
(168, 160, 1),
(169, 160, 2),
(170, 161, 2),
(171, 161, 3),
(172, 162, 2),
(173, 162, 3),
(174, 163, 1),
(175, 164, 2),
(176, 165, 2),
(177, 166, 2),
(178, 166, 3),
(179, 167, 1),
(180, 168, 2),
(181, 168, 3),
(182, 169, 1),
(183, 170, 2),
(184, 171, 4),
(185, 172, 1),
(186, 173, 1),
(187, 174, 3),
(188, 175, 1),
(189, 176, 1),
(190, 177, 1),
(191, 177, 3),
(192, 178, 1),
(193, 179, 4),
(194, 180, 3),
(195, 181, 1),
(196, 182, 4),
(197, 183, 1),
(198, 184, 4),
(199, 185, 3),
(200, 186, 4),
(201, 187, 4),
(202, 188, 4),
(203, 189, 4),
(204, 190, 2),
(205, 191, 4),
(206, 192, 1),
(207, 193, 1),
(208, 194, 1),
(209, 195, 1),
(210, 196, 4),
(211, 197, 1),
(212, 198, 1),
(213, 199, 4),
(214, 200, 4),
(215, 201, 4),
(216, 202, 1),
(217, 203, 1),
(218, 204, 4),
(219, 205, 1),
(220, 206, 4),
(221, 207, 4),
(222, 208, 4),
(223, 209, 4),
(224, 210, 1),
(225, 211, 1),
(226, 212, 2);

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
(12, 'Ciało', 'To takie brutalne. Pomyśl o tym jak o żelkach'),
(13, 'Duch', 'Strach się bać');

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
(3, 'Podpalenie', 1, 'Ale gorący chłop'),
(4, 'Ciernie', 2, 'Co robią jeże, gdy chcą się przytulić?');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT dla tabeli `karty_rodzaj`
--
ALTER TABLE `karty_rodzaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT dla tabeli `karty_skillpods`
--
ALTER TABLE `karty_skillpods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT dla tabeli `karty_tryb`
--
ALTER TABLE `karty_tryb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT dla tabeli `rodzaj`
--
ALTER TABLE `rodzaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `skill_pods`
--
ALTER TABLE `skill_pods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
