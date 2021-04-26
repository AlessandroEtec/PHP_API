SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "-03:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `api_produto`
--
CREATE DATABASE IF NOT EXISTS `api_produto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api_produto`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_descricao` varchar(50) DEFAULT NULL,
  `pro_preco` decimal(12,2) NOT NULL DEFAULT '0.00',
  `pro_validade` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`pro_id`, `pro_descricao`, `pro_preco`, `pro_validade`) VALUES
(1, 'Batata', '2.39', '2021-06-28'),
(2, 'Cebola', '1.19', '2021-07-15'),
(3, 'Arroz', '21.75', '2021-09-11'),
(4, 'Feijão', '8.29', '2021-10-14'),
(5, 'Abacate', '9.68', '2021-12-24'),
(6, 'Cenoura', '2.15', '2021-05-24'),
(7, 'Tomate', '3.98', '2021-05-01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
