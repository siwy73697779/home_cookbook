-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Cze 2022, 14:59
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `home_cookbook`
--

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_recipe` (IN `CategoryID` INT(100), IN `link` CHAR(100) CHARSET utf8mb4, IN `name` TEXT CHARSET utf8mb4, IN `ingredient_1` TEXT CHARSET utf8mb4, IN `ingredient_2` TEXT CHARSET utf8mb4, IN `ingredient_3` TEXT CHARSET utf8mb4, IN `ingredient_4` TEXT CHARSET utf8mb4, IN `ingredient_5` TEXT CHARSET utf8mb4, IN `ingredient_6` TEXT CHARSET utf8mb4, IN `ingredient_7` TEXT CHARSET utf8mb4, IN `ingredient_8` TEXT CHARSET utf8mb4, IN `ingredient_9` TEXT CHARSET utf8mb4, IN `ingredient_10` TEXT CHARSET utf8mb4, IN `step_1` TEXT CHARSET utf8mb4, IN `step_2` TEXT CHARSET utf8mb4, IN `step_3` TEXT CHARSET utf8mb4, IN `step_4` TEXT CHARSET utf8mb4, IN `step_5` TEXT CHARSET utf8mb4, IN `step_6` TEXT CHARSET utf8mb4, IN `step_7` TEXT CHARSET utf8mb4, IN `step_8` TEXT CHARSET utf8mb4, IN `step_9` TEXT CHARSET utf8mb4, IN `step_10` TEXT CHARSET utf8mb4)  begin
	insert into recipe
	values
	(NULL,
	CategoryID,
	link,
	name,
	ingredient_1,
	ingredient_2,
	ingredient_3,
	ingredient_4,
	ingredient_5,
	ingredient_6,
	ingredient_7,
	ingredient_8,
	ingredient_9,
	ingredient_10,
	step_1,
	step_2,
	step_3,
	step_4,
	step_5,
	step_6,
	step_7,
	step_8,
	step_9,
	step_10);

End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_type` (IN `TypeSearch` CHAR(100) CHARSET utf8mb4, IN `TypeNamePL` CHAR(100) CHARSET utf8mb4, IN `TypeNameEN` CHAR(100) CHARSET utf8mb4)  begin
        insert into category
        values
    (NULL, TypeSearch, TypeNamePL, TypeNameEN);

End$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `category_id` int(100) UNSIGNED NOT NULL,
  `TypeSearch` char(100) NOT NULL,
  `TypeNamePL` char(100) NOT NULL,
  `TypeNameEN` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`category_id`, `TypeSearch`, `TypeNamePL`, `TypeNameEN`) VALUES
(1, 'confectionery', 'Cukierniczy', 'Confectionery'),
(2, 'main_dish', 'Dania G????wne', 'Main Dish'),
(3, 'drinks_cocktails', 'Drinki i Koktajle', 'Drinks and Cocktails'),
(4, 'liquors', 'Nalewki', 'Liquors'),
(5, 'soft_drinks', 'Napoje', 'Soft Drinks'),
(6, 'salads', 'Sa??atki', 'Salads'),
(7, 'sauces_side_dishes', 'Sosy i Dodatki', 'Sauces and Side dishes'),
(8, 'syrups', 'Syropy', 'Syrups'),
(9, 'soups', 'Zupy', 'Soups');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(255) UNSIGNED NOT NULL,
  `category_id` int(100) UNSIGNED NOT NULL,
  `link` char(100) NOT NULL,
  `name` text NOT NULL,
  `ingredient_1` text NOT NULL,
  `ingredient_2` text NOT NULL,
  `ingredient_3` text DEFAULT NULL,
  `ingredient_4` text DEFAULT NULL,
  `ingredient_5` text DEFAULT NULL,
  `ingredient_6` text DEFAULT NULL,
  `ingredient_7` text DEFAULT NULL,
  `ingredient_8` text DEFAULT NULL,
  `ingredient_9` text DEFAULT NULL,
  `ingredient_10` text DEFAULT NULL,
  `step_1` text NOT NULL,
  `step_2` text NOT NULL,
  `step_3` text DEFAULT NULL,
  `step_4` text DEFAULT NULL,
  `step_5` text DEFAULT NULL,
  `step_6` text CHARACTER SET utf8 DEFAULT NULL,
  `step_7` text CHARACTER SET utf8 DEFAULT NULL,
  `step_8` text DEFAULT NULL,
  `step_9` text CHARACTER SET utf32 DEFAULT NULL,
  `step_10` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `category_id`, `link`, `name`, `ingredient_1`, `ingredient_2`, `ingredient_3`, `ingredient_4`, `ingredient_5`, `ingredient_6`, `ingredient_7`, `ingredient_8`, `ingredient_9`, `ingredient_10`, `step_1`, `step_2`, `step_3`, `step_4`, `step_5`, `step_6`, `step_7`, `step_8`, `step_9`, `step_10`) VALUES
(1, 4, 'pomaranczowa_nalewka_swiateczna', 'Pomara??czowa Nalewka ??wi??teczna', '6 pomara??czy', '200 g cukru', '1 laska wanilii', '1 kora cynamonu', 'kilka szt go??dzik??w', '250-300 ml w??dki', '300 ml wody', '', '', '', 'Pomara??cze umy??, sparzy?? wrz??tkiem, zetrze?? sk??rk?? i wycisn???? sok.', 'Do garnka wla?? sok, wod??, doda?? sk??rk??, cukier, prze??aman?? kor?? cynamonu, lask?? wanilii.', 'Doprowadzi?? do wrzenia i gotowa?? 10 minut. Zdj???? z ognia.', 'Odstawiamy do wystygni??cia.', 'Do soku wla?? w??dk??. Ilo???? w??dki zale??y od nas, je??li lubimy mocniejsze smaki dodajmy 300 ml je??li lubimy s??absze dodajmy 250 ml.', 'Przy pomocy drobnego sita przecedzamy nalewk??, najlepiej dwa razy. Je??li nie mamy sitka o ma??ych oczkach u??yjmy gazy.', 'Nalewk?? przela?? do butelek, w??o??y?? kor?? cynamonu i lask?? wanilii.', 'Odstawi?? i przez kolejne pi???? dni, codziennie wstrz??samy butelkami.', 'Po pi??ciu dniach nalewka jest gotowa do picia.', ''),
(2, 2, 'zapiekane_jajka', 'Zapiekane jajka', '4 jajka ugotowane na twardo', '2 jajka', '3 p??aty ciasta lasagne', 'szklanka ??mietany', '10 dag ??????tego sera', 'p??czek szczypiorku', 's??l i pieprz', '1 cebula', '1 ??y??ka oleju', '', 'P??aty lasagne obgotowa??, os??czy?? i wy??o??y?? nimi ??aroodporne naczynie.', 'Ugotowane jajka przekroi?? wzd??u?? na p????, wyj???? ??????tka.', 'Cebul?? obra?? , drobno posieka?? i przyrumieni?? na oleju.', 'Wymiesza?? z roztartymi ??????tkami i posiekanym szczypiorkiem.', 'Past?? przyprawi?? do smaku sol?? i pieprzem, po czym nadzia?? ni?? po????wki jajek, nast??pnie u??o??y?? na p??atach ciasta.', '2 jajka rozk????ci?? ze ??mietan??, wymiesza?? ze startym serem, przyprawi??.', 'Mas?? zala?? jajka i wstawi?? na 20 minut do piekarnika o temperaturze 200???C. ', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Indeksy dla tabeli `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`,`category_id`) USING BTREE,
  ADD UNIQUE KEY `link` (`link`) USING HASH,
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzut??w tabel
--

--
-- Ograniczenia dla tabeli `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
