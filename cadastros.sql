-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jun-2023 às 00:48
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `email`) VALUES
(1, 'atualizei', 'jc200@jc200'),
(2, 'isac', 'jc200@gmail'),
(3, 'Nome atualizado', 'jc200507@gmail.com'),
(4, 'dudadua', 'jairo@jairo'),
(5, 'Cesar ', 'cesar@cesar'),
(6, 'asdfa', 'asd@asfas'),
(7, 'asdfa', 'asdf@asfda'),
(8, 'asdfas', 'asdf@asdfa'),
(9, 'teste', 'teste@teste'),
(10, 'idNumero10Alterado', 'id@id'),
(11, 'jairo', 'jaironovoemail@email'),
(12, 'jairo', 'jairo@jairo'),
(13, '', 'jairo'),
(14, '', 'jairo'),
(15, '', 'andré'),
(16, '', 'aaaaaaaaaaa'),
(17, '', 'ddddddd'),
(18, 'ID18Atualizado', 'aaaaaa@aaaaaaaaaaa'),
(19, 'jairo', 'email@email'),
(22, 'eclipseWeb', 'eclipse@eclipse'),
(23, 'javaWebnovoteste', 'javawebnovoteste@teste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
