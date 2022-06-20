-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Jun-2022 às 02:04
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `cc_cursos`
-- (Veja abaixo para a view atual)
--
DROP VIEW IF EXISTS `cc_cursos`;
CREATE TABLE IF NOT EXISTS `cc_cursos` (
`cid` int(11)
,`cshort` varchar(250)
,`cfull` varchar(250)
,`cdate` varchar(50)
,`update_date` varchar(200)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Cambui', 1),
(3, 'Extrema', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(1, 'MG', 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `course` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `fname` varchar(250) DEFAULT NULL,
  `mname` varchar(250) DEFAULT NULL,
  `lname` varchar(250) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `gname` varchar(250) DEFAULT NULL,
  `ocp` varchar(50) DEFAULT NULL,
  `income` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `pchal` varchar(250) DEFAULT NULL,
  `nationality` varchar(250) DEFAULT NULL,
  `mobno` varchar(50) DEFAULT NULL,
  `emailid` varchar(250) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `padd` text,
  `cadd` text,
  `board` varchar(50) DEFAULT NULL,
  `roll` varchar(50) DEFAULT NULL,
  `pyear` varchar(50) DEFAULT NULL,
  `sub` varchar(250) DEFAULT NULL,
  `marks` varchar(250) DEFAULT NULL,
  `fmarks` varchar(250) DEFAULT NULL,
  `board1` varchar(250) DEFAULT NULL,
  `roll1` varchar(250) DEFAULT NULL,
  `yop1` varchar(250) DEFAULT NULL,
  `sub1` varchar(250) DEFAULT NULL,
  `session` varchar(250) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `marks1` varchar(50) DEFAULT NULL,
  `fmarks1` varchar(50) DEFAULT NULL,
  `regno` varchar(250) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(50) NOT NULL,
  `postingdate` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `session`
--

INSERT INTO `session` (`id`, `session`, `postingdate`, `status`) VALUES
(1, '2021-2022', '2021-01-01', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Minas Gerais', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subid` int(11) NOT NULL AUTO_INCREMENT,
  `cshort` varchar(50) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `sub1` varchar(250) DEFAULT NULL,
  `sub2` varchar(250) DEFAULT NULL,
  `sub3` varchar(250) DEFAULT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_course`
--

DROP TABLE IF EXISTS `tbl_course`;
CREATE TABLE IF NOT EXISTS `tbl_course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cshort` varchar(250) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `update_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_course`
--

INSERT INTO `tbl_course` (`cid`, `cshort`, `cfull`, `cdate`, `update_date`) VALUES
(23, 'ADS', 'Analise e Desenvolvimento de Sistemas', '19-06-2022', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(250) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `loginid`, `password`) VALUES
(1, 'Junior', 'Junior'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura para vista `cc_cursos`
--
DROP TABLE IF EXISTS `cc_cursos`;

DROP VIEW IF EXISTS `cc_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cc_cursos`  AS SELECT `tbl_course`.`cid` AS `cid`, `tbl_course`.`cshort` AS `cshort`, `tbl_course`.`cfull` AS `cfull`, `tbl_course`.`cdate` AS `cdate`, `tbl_course`.`update_date` AS `update_date` FROM `tbl_course` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
