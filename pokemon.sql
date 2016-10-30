-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 30, 2016 kell 10:16 PL
-- Serveri versioon: 10.1.9-MariaDB
-- PHP versioon: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `pokemon`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pokemons`
--

CREATE TABLE `pokemons` (
  `pokemon_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(11) NOT NULL,
  `story` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `pokemons`
--

INSERT INTO `pokemons` (`pokemon_id`, `name`, `story`) VALUES
(1, 'Bulbasaur', 'Bulbasaur is a Grass-Poison Type Pokemon. It evolves into Ivysaur.	\nBulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun''s rays, the seed grows progressively larger.'),
(2, 'Ivysaur', 'Ivysaur is a Grass-Poison Type Pokemon. It evolves into Venusaur. There is a bud on this Pokemon''s back. To support its weight, Ivysaur''s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it is a sign that the bud will bloom into a large flower soon.'),
(3, 'Venusaur', 'Venusaur is a Grass-Poison Type Pokemon. It evolves from Ivysaur. There is a large flower on its back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower''s aroma soothes the emotions of people.'),
(4, 'Charmander', 'Charmander is a Fire Type Pokemon. It evolves into Charmeleon. The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokemon becomes enraged, the flame burns fiercely.'),
(5, 'Charmeleon', 'Charmeleon is a Fire Type Pokemon. It evolves into Charizard.	Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.'),
(6, 'Charizard', 'Charizard is a Fire/Flying Type Pokemon. It evolves from Charmeleon. Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.'),
(7, 'Squirtle', 'Its shell is not merely used for protection. The shell is rounded shape and the grooves on its surface help minimize resistance in water, enabling this PokÃ©mon to swim at high speeds.');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`pokemon_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `pokemon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
