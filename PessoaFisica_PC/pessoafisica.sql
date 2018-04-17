-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Abr-2018 às 14:13
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessoafisica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `estado` set('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO') NOT NULL,
  `sexo` set('F','M') NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `celular` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`cpf`, `rg`, `nome`, `endereco`, `cidade`, `bairro`, `cep`, `estado`, `sexo`, `telefone`, `celular`) VALUES
('222.222.222-22', '20.202.020-2', 'Rogerinho do Ingá', 'Rua Solta a Vinheta Simone, 10', 'Rio de Janeiro', 'Gávea', '22222222', 'RJ', 'M', '(21)2222-2222', '(21)92222-2222'),
('111.111.111-11', '10.101.010-1', 'Tayná Souza Torres Dourado', 'Rua Ambuá, 174', 'São Paulo', 'Itaim Paulista', '08190390', 'SP', 'F', '(11)1111-1111', '(11)91111-1111'),
('333.333.333-33', '30.303.030-3', 'Renan', 'Rua do Guerreirinho, 20', 'Rio de Janeiro', 'Gávea', '33333333', 'RJ', 'M', '(21)3333-3333', '(21)93333-3333'),
('444.444.444-44', '40.404.040-4', 'Julinho da Van', 'Rua do Palestrinha,30', 'Rio de Janeiro', 'Nilópolis', '44444444', 'RJ', 'M', '(21)4444-4444', '(21)94444-4444'),
('555.555.555-55', '50.505.050-5', 'Maurílio dos Anjos', 'Av. dos Amantes da Sétima Arte, 40', 'Rio de Janeiro', 'Flamengo', '55555555', 'RJ', 'M', '(21)5555-5555', '(21)95555-5555'),
('666.666.666-66', '60.606.060-6', 'Ariano Suassuna', 'Rua Santa Rosa Rosa, 16', 'São Paulo', 'Sé', '12345-678', 'SP', 'F', '(11)6666-6666', '(11)96666-6666'),
('777.777.777-77', '70.707.070-7', 'Celeste Soares', 'Rua Socorro de Deus, 100', 'Irecê', 'Centro', '46565-656', 'BA', 'F', '(74)7777-7777', '(74)97777-7777'),
('131.332.131-31', '13.132.131-3', 'Jeferson R. Lima', 'Av. Aguia de Haia, 2600', 'São Paulo', 'Jd. São Nicolau', '00000-000', 'SP', 'M', '(11)2045-4000', '(11)88888-8888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
