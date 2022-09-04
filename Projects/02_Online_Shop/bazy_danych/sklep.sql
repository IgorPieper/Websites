-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Maj 2022, 23:59
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
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kamien`
--

CREATE TABLE `kamien` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `cena` float NOT NULL,
  `opis_kr` varchar(200) NOT NULL,
  `opis_dl` text NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kamien`
--

INSERT INTO `kamien` (`id`, `nazwa`, `cena`, `opis_kr`, `opis_dl`, `ilosc`) VALUES
(1, 'Zwykły Kamień', 1, 'Zwykły kamień - nic dodać nic ująć', 'kamień – potoczna nazwa skały spoistej, zwięzłej bez względu na jej rodzaj genetyczny, wielkość frakcji i skład mineralogiczny.', 999),
(2, 'Pumeks', 3, 'Pumeks - powszechnie używany w domu', 'Pumeks (z łac. pumex), dawniej pemza – wulkaniczna skała magmowa zbudowana z porowatego (ponad 50% porów) szkliwa wulkanicznego powstałego z silnie gazującej, pienistej lawy. Ma szklistą, drobnoziarnistą strukturę. Powstaje głównie z kwaśnych odmian lawy (riolitowej). Pumeksem nazywa się też czasem mocno porowaty materiał piroklastyczny.', 99),
(3, 'Agat', 15, 'Jak cebula ma warstwy', 'Agat – półszlachetny minerał, wielobarwna, wstęgowa odmiana chalcedonu. Nazwa pochodzi od rzeki Achates (dzisiaj Dirillo) w południowej Sycylii we Włoszech, gdzie wydobywano go już w starożytności.Agaty powstają w geodach. Zbudowane są z wielu różnokolorowych, naprzemianległych (najczęściej bladych) warstw. Powstawanie pasm było prawdopodobnie wynikiem zachodzących procesów wielokrotnego wydzielania się krzemionki z roztworów lub cyklicznego wytrącania się pigmentu w żelu krzemionkowym. Zróżnicowana jest też barwa agatów – powodują ją bardzo drobne wrostki różnych minerałów np. chlorytów, hematytu, goethytu. Przeważają warstwy szare, różowawe i brunatne, rzadko występują żywsze barwy: czerwone, zielone, czarne. Stąd stosowane bardzo często sztuczne barwienie agatów. ', 50),
(4, 'Szmaragd', 1000, 'Podobno można go kupić za jednego patyka', 'Szmaragd – odmiana berylu, minerału należącego do grupy krzemianów. Nazwa pochodzi od łac. smaragdus z gr. σμάραγδος smaragdos ‛zielony klejnot’. Nawiązuje do charakterystycznej barwy, wywołanej podstawieniami jonów chromu, rzadziej wanadu i żelaza. ', 25),
(5, 'Topaz', 1000, 'Jest złoty, a nie niebieski', 'Topaz – minerał z gromady krzemianów, rozpowszechniony w wielu rejonach świata. Nazwa pochodzi od gr. τοπάζιος (topázios) = poszukiwać lub od sanskryckiego słowa topas = ogień, co nawiązuje do pomarańczowo-złotej barwy i blasku szlachetnych odmian tego minerału ', 10),
(6, 'Rubin', 1000, 'Podobno ciągle czeka w plikach', 'Rubin − kamień szlachetny o barwie od różowej do krwistoczerwonej. Jest to rzadki minerał z gromady tlenków (Al2O3), odmiana korundu. ', 10),
(7, 'Szafir', 1000, 'Serce legendarnego smoka', 'Szafir – bardzo twardy minerał z gromady tlenków – niebieska odmiana korundu. Jest minerałem rzadkim. Nazwa pochodzi od stgr. σάπφειρος sappheiros, w starożytności oznaczała przede wszystkim lapis-lazuli. Grecka nazwa została zapewne przejęta z języków semickich (hebr. sappir). ', 10),
(8, 'Bursztyn', 500, 'Złap je wszystkie', 'Bursztyn, jantar, amber (łac. sucinum, czasem także elektrum z gr. ἤλεκτρον – elektron) – kopalna żywica drzew iglastych, a w rzadszych przypadkach żywicujących liściastych drzew z grupy bobowców. Znanych jest około 60 odmian (gatunków). Najstarsze z nich pochodzą z utworów dewońskich (stwierdzono je w Kanadzie); najmłodsze, niezaliczane zasadniczo do bursztynów są znajdowane w Ameryce Południowej, Afryce, Australii i Nowej Zelandii (kopal). ', 30),
(9, 'Redstone', 40, 'Sproszkowany prąd', 'Redstone (lub czerwienit w Bedrock Edition) to materiał służący do tworzenia mechanizmów oraz różnego typu przedmiotów. ', 630),
(10, 'Ametyst', 150, 'Chroni przed upiciem', 'Ametyst – minerał, przezroczysta odmiana kwarcu mlecznego (SiO2) o fioletowej barwie. Kamień półszlachetny, używany w jubilerstwie. Jego nazwa pochodzi z języka greckiego i oznacza \"trzeźwy\" (ἀ- a – ‘nie’, μέθυστος méthystos – ‘pijany’), gdyż według greckich wierzeń, picie wina z czar ametystowych zabezpieczało pijącego przed upiciem się.', 20),
(11, 'Diament', 1000000, 'Wykorzystywany w mieczach', 'Diament – bardzo rzadki minerał z gromady pierwiastków rodzimych. Nazwa pochodzi od stgr. ἀδάμας adamas (dopełniacz ἀδάμαντος adamantos, łac. diamentum) ‛niepokonany, niezniszczalny’ i nawiązuje do jego wyjątkowej twardości. Jest najtwardszą znaną substancją występującą w przyrodzie. ', 5),
(12, 'Kalcyt', 10, 'Nie mam pomysłu', 'Kalcyt – minerał z gromady węglanów, węglan wapnia. Bardzo rozpowszechniony minerał skałotwórczy. Nazwa pochodzi od gr. χάλιξ chalix = wapno oraz łac. calx (calcis) = wapno i nawiązuje do tradycyjnego zastosowania tego minerału. ', 103),
(13, 'Żelazo', 80, 'Idealne prasuje', 'Żelazo (Fe, łac. ferrum) – pierwiastek chemiczny o liczbie atomowej 26, metal z VIII grupy pobocznej układu okresowego, należący do grupy metali przejściowych. Pod względem masy żelazo jest najczęściej występującym pierwiastkiem chemicznym na Ziemi. Stanowi większość składu jej jądra zewnętrznego i wewnętrznego. Jest także czwartym najbardziej powszechnym pierwiastkiem w skorupie ziemskiej.', 76),
(14, 'Piaskowiec', 5, 'Kieszonkowa Pustynia', 'Piaskowiec jest to drobnoziarnista skała osadowa. Występuje jako jedna z najczęstszych skał tego typu. Występuje zwykle w warstwie wodonośnej lub w miejscach występowania złóż ropy oraz gazu ziemnego', 92),
(15, 'Wapień', 6, 'U kosmitów wywołuje zgagę', 'Wapień – skała osadowa (chemogeniczna lub organogeniczna) zbudowana głównie z węglanu wapnia, przede wszystkim w postaci kalcytu.', 69),
(16, 'Kamień Księżcowy', 20000, 'Powoduje zaćmienie słońca', 'Adularowy kamień księżycowy – odmiana ortoklazu. Fazą przeważającą jest adular, a fazą rozproszoną – albit. Kamienie księżycowe reprezentowane są przez kryształy adularu i ortoklazu (zawierające listewkowate wrostki albitu), odznaczające się srebrzysto-perłową lub srebrzysto-niebiesko-perłową poświatą, przypominającą światło księżyca. Ten rodzaj opalescencji nazywany jest niekiedy adularyzacją. ', 8),
(17, 'Uran', 90000, 'Zmienia kolor ręki na zielony', 'Uran (U, łac. uranium) – pierwiastek chemiczny z grupy aktynowców w układzie okresowym. Wśród pierwiastków występujących naturalnie na Ziemi ma największą liczbę atomową – 92 (nie licząc śladowych ilości 93Np i 94Pu). W uranie naturalnym występuje głównie słabo promieniotwórczy izotop U (około 99,3%), któremu towarzyszy U (około 0,7%) i ślady U.', 16),
(18, 'Lazuryt', 10000, 'Potrzebny do zaklęć', 'Lazuryt – skała metamorficzna powstała w wyniku przeobrażeń utworów węglanowych (wapieni i dolomitów) pod wpływem intruzji granitów, syenitów lub pegmatytów. Jej głównym składnikiem jest lazuryt, minerał z gromady krzemianów, zaliczany do grupy skaleniowców. Nazwa pochodzi od łac. lapis (kamień) oraz arab. azul i pers. lazhward = niebieski (niebo), nawiązuje do barwy skały', 90),
(19, 'Miedź', 500, 'Dobrze jest mieć miedź', 'Miedź (Cu, łac. cuprum) – pierwiastek chemiczny z grupy metali przejściowych. Nazwa łacińska (a za nią w innych językach, w tym angielskim) pochodzi od Cypru, gdzie w starożytności wydobywano miedź. Początkowo nazywano ją metalem cypryjskim (cyprum aes), a następnie cuprum. Ma 26 izotopów z przedziału mas 55–80. Trwałe są dwa: 63 i 65. ', 122),
(20, 'Węgiel', 24, 'Bardzo wysportowany węgiel', 'Węgiel – skała osadowa pochodzenia roślinnego, zawierająca 75−97% pierwiastka węgla, powstała głównie w karbonie (era paleozoiczna) ze szczątków roślinnych, które bez dostępu tlenu uległy uwęgleniu. Ma czarną barwę, matowy połysk, czarną rysę.', 777),
(21, 'Srebro', 700, 'Zabójczy dla potworów', 'Srebro (Ag, łac. argentum) – pierwiastek chemiczny z grupy metali przejściowych w układzie okresowym. Jest srebrzystobiałym metalem, o największej przewodności elektrycznej i termicznej. W przyrodzie występuje w stanie wolnym, a także w minerałach, takich jak argentyt czy chlorargyryt. Większość wydobywanego srebra występuje jako domieszka rud miedzi, złota, ołowiu i cynku. ', 56),
(22, 'Złoto', 1200, 'Dużo jest go w piekle', 'Złoto (Au, łac. aurum) – pierwiastek chemiczny o liczbie atomowej 79. Złoto jest ciężkim, miękkim i błyszczącym metalem, najbardziej kowalnym i ciągliwym spośród wszystkich znanych metali. Czyste złoto ma jasnożółty kolor i wyraźny połysk, nie utlenia się w wodzie czy powietrzu. Chemicznie złoto należy do metali przejściowych i pierwiastków grupy 11.', 34),
(23, 'Obsydian', 1500000, 'Stanowi drzwi do piekła', 'Obsydian (izofir) łac. lapis obsidianus – kwaśna skała wylewna, złożona niemal wyłącznie ze szkliwa wulkanicznego, zawiera do 1% wody. Naturalne szkło powstaje w wyniku natychmiastowego stygnięcia magmy (lawy). Skład chemiczny (głównie dwutlenek krzemu) związany jest z typem lawy i obejmuje bardzo wiele form, od obsydianu ryolitowego po fonolitowy. Ulega rekrystalizacji, przyjmując wygląd zwyczajnej, drobnoziarnistej skały.', 10),
(24, 'Kamień Nerkowy', 63, 'Pottera guilty pleasure', 'Proces wytrącania się złogów w drogach moczowych jest najczęściej wynikiem nałożenia się szeregu czynników. Najważniejszym jest koncentracja w moczu składnika, który występuje w nim w warunkach zdrowia lub pojawia się jako skutek schorzeń lub zdarzeń patologicznych.', 81),
(25, 'Krzemień', 10, 'Klucz do piekła', 'Krzemień – skała osadowa, skrytokrystaliczna, krzemionkowa (biochemiczna lub chemiczna), występująca w formie kulistych, bulwiastych, bochenkowatych lub soczewkowatych konkrecji w obrębie skał niekrzemionkowych takich jak wapienie, margle, dolomity. Konkrecje krzemienne mają ostre granice ze skałą otaczającą, co odróżnia je od czertu.', 99),
(26, 'Plastik', 2, 'Bardzo pospolity', 'Plastik - Tworzywa polimerowe stanowią osobną grupę materiałów obok materiałów ceramicznych, metali i ich stopów oraz drewna, które, ze względu na budowę cząsteczek celulozy, również należy zaliczyć do naturalnych materiałów polimerowych. ', 503),
(27, 'Kamień Zen', 636, 'Idealny do medytacji', 'Zen (cicha medytacja, religijna kontemplacja, pinyin chánnà, chán) – nurt buddyzmu, który w pełni rozwiniętą formę uzyskał w Chinach (zob. chan), skąd przedostał się do Korei, Wietnamu i Japonii. Wywodzi się z rodziny buddyzmu mahajany, ale na przestrzeni wieków nabrał wyrazistego indywidualnego stylu, pełnego minimalizmu i zamierzonych paradoksów. ', 210),
(28, 'Skamielina', 1000, 'Zamrożenie inaczej', 'Skamieniałości – zachowane w skałach szczątki organizmów (skamieniałości właściwe, strukturalne), a także ślady ich aktywności życiowej (skamieniałości śladowe). Skamieniałości powstają w wyniku procesu fosylizacji. Najczęściej fosylizacji ulegają tylko części szkieletowe.', 50),
(29, 'Siarka', 64, 'Po cichaczu', 'Siarka (S, łac. sulphur) – pierwiastek chemiczny, niemetal z bloku p w układzie okresowym. Izotopy stabilne siarki to 32S, 33S, 34S i 36S. ', 64),
(30, 'Perła', 1000, 'Skarb oceanu', 'Perły – wytwory małży (głównie perłopławów z rodzajów Pteria i Pinctada), rzadko ślimaków. Zbudowane są z tej samej substancji co wewnętrzna strona muszli (masa perłowa), której głównymi składnikami są węglan wapnia (w postaci aragonitu) i rogowata substancja białkowa (konchiolina), która spaja mikrokryształy skupione koncentrycznie wokół jądra.', 16),
(31, 'Vege Kamień', 24, 'Jak zgnije to śmierdzi', 'Litops (Lithops) – rodzaj sukulentów z rodziny przypołudnikowatych. Znany pod zwyczajową nazwą żywe kamienie. Pochodzi z Afryki, głównie z Namibii i RPA. Należy do niego ok. 40 gatunków.', 98),
(32, 'Sól Kamienna', 47, 'Nieskończony lizak', 'Sól Kamienna – minerał z gromady halogenków. Nazwa pochodzi od greckich słów hals – sól, oraz lithos – kamień. Minerał znany i używany od czasów starożytnych. Głównym składnikiem jest chlorek sodu. Halityt (potocznie sól kamienna) to monomineralna skała zbudowana z halitu. ', 136),
(33, 'Kamień Kuba', 100, 'Nasza Maskotka', 'Kuba – imię męskie. Wywodzi się od hebrajskiego. Imię to przynależy do grupy imion teoforycznych, które w formie skróconej znaczy: \"Niech Bóg strzeże\".Imię to było znane w Mezopotamii w brzmieniu Ja-ah-qu-ub-el i w Egipcie Ja’qob-hr. W Polsce imię Jakub znane jest od XIII wieku.', 99),
(34, 'Meteoryt', 3000000, 'Jeszcze ciepły', 'Meteoryt – pozostałość ciała niebieskiego (meteoroidu, asteroidy czy komety), które w postaci ciała stałego dotarło do jego powierzchni. Na Ziemi najczęściej meteoryty należą do chondrytów. Badaniem meteorytów i wszystkich aspektów z nimi związanych zajmuje się meteorytyka. ', 3),
(35, 'Rtęć', 13678, 'Płynna temperatura', 'Rtęć (Hg, łac. hydrargyrum, z gr. hydrargyros ‘wodne srebro’) – pierwiastek chemiczny z grupy metali przejściowych. Uznana za pierwiastek przez Lavoisiera. Rtęć jest jedynym metalem występującym w warunkach normalnych w stanie ciekłym. ', 20),
(36, 'Żywy Kamień', 4, 'Śpi jak kamień', 'Pet Rocks to gładkie kamienie z miasta Rosarito w stanie Baja California w Meksyku. Sprzedawano je jak żywe zwierzęta domowe, w specjalnych kartonowych pudełkach, ze słomą i otworami do oddychania. Moda na nie trwała około sześciu miesięcy. Autor sprzedał ponad milion Pet Rocks po 4 dolary za sztukę i stał się milionerem. ', 999999);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `id` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `ocena` tinyint(1) NOT NULL,
  `kamien_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `ranga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `mail`, `ranga`) VALUES
(1, 'admin', 'admin', 'admin@super.vip', 1),
(2, 'Kornel', 'kornel123!', 'kornelek02@google.com', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kamien`
--
ALTER TABLE `kamien`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kamien_id` (`kamien_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kamien`
--
ALTER TABLE `kamien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD CONSTRAINT `opinie_ibfk_1` FOREIGN KEY (`kamien_id`) REFERENCES `kamien` (`id`),
  ADD CONSTRAINT `opinie_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
