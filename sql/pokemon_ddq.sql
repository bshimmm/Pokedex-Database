-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: classmysql.engr.oregonstate.edu:3306
-- Generation Time: Feb 08, 2019 at 04:38 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs340_shimb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `loc_id` int(11) NOT NULL,
  `loc_name` varchar(255) NOT NULL,
  `loc_gym` tinyint(1) NOT NULL,
  `loc_pc` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`loc_id`, `loc_name`, `loc_gym`, `loc_pc`) VALUES
(1, 'Viridian Forest', 0, 1),
(2, 'Rock Tunnel', 0, 1),
(3, 'Cerulean City', 0, 1),
(4, 'Forest', 1, 0),
(5, 'Cerulean Cave', 0, 0),
(6, 'Cerulean Cave', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Move`
--

CREATE TABLE `Move` (
  `move_id` int(11) NOT NULL,
  `move_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Move`
--

INSERT INTO `Move` (`move_id`, `move_name`) VALUES
(1, 'Scratch'),
(2, 'Ember'),
(3, 'Water Gun'),
(4, 'Night Shade'),
(5, 'Hydro Pump'),
(6, 'Hyper Beam');

-- --------------------------------------------------------

--
-- Table structure for table `move_type`
--

CREATE TABLE `move_type` (
  `m_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pokemon`
--

CREATE TABLE `Pokemon` (
  `p_id` int(11) NOT NULL,
  `p_no` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_catchrate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pokemon`
--

INSERT INTO `Pokemon` (`p_id`, `p_no`, `p_name`, `p_catchrate`) VALUES
(1, 1, 'Bulbasaur', 50),
(2, 4, 'Charmander', 45.5),
(3, 7, 'Squirtle', 45.5),
(4, 94, 'Gengar', 25),
(5, 130, 'Gyarados', 4.5),
(6, 143, 'Snorlax', 0.9);

-- --------------------------------------------------------

--
-- Table structure for table `PokemonBall`
--

CREATE TABLE `PokemonBall` (
  `pb_id` int(11) NOT NULL,
  `pb_name` varchar(255) NOT NULL,
  `pb_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PokemonBall`
--

INSERT INTO `PokemonBall` (`pb_id`, `pb_name`, `pb_cost`) VALUES
(1, 'Pokeball', 200),
(2, 'Pokeball', 200),
(3, 'Poke Ball', 200),
(4, 'Great Ball', 600),
(5, 'Ultra Ball', 800),
(6, 'Master Ball', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_ball`
--

CREATE TABLE `pokemon_ball` (
  `pbs_id` int(11) NOT NULL,
  `pok_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_location`
--

CREATE TABLE `pokemon_location` (
  `pok_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_move`
--

CREATE TABLE `pokemon_move` (
  `pok_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_type`
--

CREATE TABLE `pokemon_type` (
  `pok_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE `Type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `weak_against` varchar(255) NOT NULL,
  `strong_against` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Type`
--

INSERT INTO `Type` (`type_id`, `type_name`, `weak_against`, `strong_against`) VALUES
(1, 'Grass', 'Fire, Bug, Steel', 'Ground, Water, Rock'),
(2, 'Fire', 'Water, Dragon, Rock', 'Grass, Ice, Bug'),
(3, 'Water', 'Grass, Dragon', 'Fire, Ground, Rock'),
(4, 'Ghost', 'Dark, Steel', 'Ghost, Psychic'),
(5, 'Flying, Water', 'Electric, Rock', 'Fire, Bug'),
(6, 'Normal', 'Fighting', 'Ghost');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `Move`
--
ALTER TABLE `Move`
  ADD PRIMARY KEY (`move_id`);

--
-- Indexes for table `move_type`
--
ALTER TABLE `move_type`
  ADD PRIMARY KEY (`m_id`,`t_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `PokemonBall`
--
ALTER TABLE `PokemonBall`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `pokemon_ball`
--
ALTER TABLE `pokemon_ball`
  ADD PRIMARY KEY (`pbs_id`,`pok_id`),
  ADD KEY `pok_id` (`pok_id`);

--
-- Indexes for table `pokemon_location`
--
ALTER TABLE `pokemon_location`
  ADD PRIMARY KEY (`pok_id`,`l_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `pokemon_move`
--
ALTER TABLE `pokemon_move`
  ADD PRIMARY KEY (`pok_id`,`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD PRIMARY KEY (`pok_id`,`t_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Move`
--
ALTER TABLE `Move`
  MODIFY `move_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Pokemon`
--
ALTER TABLE `Pokemon`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `PokemonBall`
--
ALTER TABLE `PokemonBall`
  MODIFY `pb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Type`
--
ALTER TABLE `Type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `move_type`
--
ALTER TABLE `move_type`
  ADD CONSTRAINT `move_type_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `Move` (`move_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `move_type_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `Type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_ball`
--
ALTER TABLE `pokemon_ball`
  ADD CONSTRAINT `pokemon_ball_ibfk_1` FOREIGN KEY (`pok_id`) REFERENCES `Pokemon` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_ball_ibfk_2` FOREIGN KEY (`pbs_id`) REFERENCES `PokemonBall` (`pb_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_location`
--
ALTER TABLE `pokemon_location`
  ADD CONSTRAINT `pokemon_location_ibfk_1` FOREIGN KEY (`pok_id`) REFERENCES `Pokemon` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_location_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Location` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_move`
--
ALTER TABLE `pokemon_move`
  ADD CONSTRAINT `pokemon_move_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `Move` (`move_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_move_ibfk_2` FOREIGN KEY (`pok_id`) REFERENCES `Pokemon` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD CONSTRAINT `pokemon_type_ibfk_1` FOREIGN KEY (`pok_id`) REFERENCES `Pokemon` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_type_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `Type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
