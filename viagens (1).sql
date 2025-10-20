-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-203655-db.mariadb-203655:19296
-- Tempo de geração: 20-Out-2025 às 15:35
-- Versão do servidor: 11.1.2-MariaDB-1:11.1.2+maria~ubu2004
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viagens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome do destino',
  `descricao` varchar(255) NOT NULL COMMENT 'Descricao do destino'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `destinos`
--

INSERT INTO `destinos` (`id`, `nome`, `descricao`) VALUES
(5, 'Ana Paula', 'Tóquio - Tecnologia, cultura e gastronomia japonesa'),
(1, 'João', 'Rio de Janeiro - Praias famosas, Cristo Redentor e vida cultural'),
(2, 'Maria', 'São Paulo - Centro urbano, museus e vida noturna'),
(3, 'Roberto César', 'Buenos Aires - Caminito, tango e gastronomia típica'),
(4, 'Roberto Yanes', 'Paris - Cidade do amor, museus e pontos turísticos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) DEFAULT NULL COMMENT 'Identificador unico da reserva',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Referencia ao ID do usuario que fez a reserva',
  `id_destino` int(11) DEFAULT NULL COMMENT 'Referencia ao ID do destino da reserva',
  `data` date DEFAULT NULL COMMENT 'Data da reserva',
  `status` varchar(255) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmada, pemdemte, cancelada, etc.)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `id_usuario`, `id_destino`, `data`, `status`) VALUES
(1, 1, 1, '2025-10-25', 'confirmada'),
(2, 2, 2, '2025-10-26', 'pendente'),
(3, 3, 3, '2025-10-27', 'confirmada'),
(4, 4, 4, '2025-10-28', 'pendente'),
(5, 5, 5, '2025-10-29', 'cancelada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome do usuario',
  `email` varchar(100) NOT NULL COMMENT 'E-mail do usuario',
  `endereco` varchar(50) NOT NULL COMMENT 'Endereco do usuario',
  `data_nascimento` date NOT NULL COMMENT 'Data de nascimento do usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `endereco`, `data_nascimento`) VALUES
(5, 'Ana Paula', 'ana@example.com', 'Rua E, 567', '1991-07-15'),
(1, 'João', 'joao@example.com', 'Rua A, 123', '1990-01-01'),
(2, 'Maria', 'maria@example.com', 'Rua B, 234', '1988-02-15'),
(3, 'Roberto César', 'roberto@example.com', 'Rua C, 345', '1990-05-20'),
(4, 'Roberto Yanes', 'yanes@example.com', 'Rua D, 456', '1989-12-10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `destinos`
--
ALTER TABLE `destinos`
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
