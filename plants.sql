SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants` (
  `name` varchar(64) NOT NULL,
  `category` varchar(16) NOT NULL,
  `description` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `plants` (`name`, `category`, `description`, `image`) VALUES
('Aloe Vera', 'outdoor', 'Aloe vera is a herb with succulent leaves that are arranged in a rosette. The leaves are  green with sharp spines along the edge and sometimes have white spots on their surfaces.', 'images\\aloe-vera.jpg'),
('Dirt', 'essential', 'Loose soil or earth', 'images\\dirt.jpg'),
('Ficus Elastica Burgundy', 'indoor', 'This plant features very dark green, nearly black leaves with red mid-veins', 'images\\ficus-elastica-burgundy.jpg'),
('Ficus Elastica Robusta', 'indoor', ' Leaves that are wider and more glossy', 'images\\ficus-elastica-robusta.jpg'),
('Ficus Elastica Ruby', 'indoor', 'Tropical looking plant with leaves variegated green, cream, and a vibrant pink or red color', 'images\\ficus-elastica-ruby.jpg'),
('Ficus Elastica Tineke', 'indoor', 'Tropical looking plant with variegated dark and light green with cream, with pinkish veins', 'images\\ficus-elastica-tineke.jpg'),
('FLAG', 'flag', 'This is a peculiar looking plant.\r\n\r\nISSACTF{$tRing_Qu3rY_pL4n7$}', 'images\\flag.jpg'),
('Garden Gloves', 'essential', 'Usually made from a waterproof material, with the fingers and palms covered in rubber.', 'images\\garden-gloves.webp'),
('Garden Trowel', 'essential', 'It is used for breaking up earth, digging small holes, especially for planting and weeding, mixing in fertilizer or other additives, and transferring plants to pots.', 'images\\garden-trowel.webp'),
('Hibiscus', 'outdoor', 'The large, trumpet-shaped flowers have five or more petals, and come in a range of colors, including white, pink, orange, red, yellow, purple, and multi-hued patterns.', 'images\\hibiscus.webp'),
('Leca', 'essential', 'LECA stands for Lightweight Expanded Clay Aggregate - a collection of baked clay pebbles that expand when you soak them in water.', 'images\\leca.png'),
('Marigold', 'outdoor', 'Marigolds are comprised of tiny florets surrounded by many layers of delicate, ruffled petals and a thick hollow stem with fernlike leaves.', 'images\\marigold.jpg'),
('Peace Lily', 'indoor', 'Grows glossy, dark green oval leaves that narrow to a point. It periodically produces lightly fragrant white flowers that resemble calla lilies. The long-lasting, pure white flowers will turn a pale green as they age.', 'images\\peace-lily.webp'),
('Rose Bush', 'outdoor', 'Beautiful flowers with thorny stems.', 'images\\rose-bush.jpg'),
('Snake Plant', 'indoor', 'The most common snake plant foliage presents as slender, green leaves with grey or silver horizontal streaks.', 'images\\snake.webp'),
('Sphagnum Moss', 'essential', 'It is an unique softness medium that possesses amazing water-retention and aeration properties.', 'images\\sphagnum-moss.webp');


ALTER TABLE `plants`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
