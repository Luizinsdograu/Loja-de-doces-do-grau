-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/12/2025 às 05:57
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `doce_do_grau`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cartao`
--

CREATE TABLE `cartao` (
  `id_cartao` int(11) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `senha` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cartao`
--

INSERT INTO `cartao` (`id_cartao`, `numero`, `senha`, `tipo`) VALUES
(1, '0000-0000-0000-0000', 1234, 'crédito'),
(2, '9999-9999-9999-9999', 5678, 'débito'),
(3, '1111-1111-1111-1111', 9012, 'crédito');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `id_pagamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `senha`, `id_endereco`, `id_item`, `id_pagamento`) VALUES
(1, 'Lucas de Souza', 'lucas@gmail.com', '12345', 1, 1, 1),
(2, 'Kemi Fernandes', 'kemi@gmail.com', '67890', 2, 2, 2),
(3, 'Otto Lopes', 'otto@gmail.com', '10203', 3, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `numero_da_casa` int(11) DEFAULT NULL,
  `id_lagadouro` int(11) DEFAULT NULL,
  `id_me` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `cep`, `numero_da_casa`, `id_lagadouro`, `id_me`) VALUES
(1, '00000-000', 29, 1, 1),
(2, '11111-111', 37, 2, 2),
(3, '99999-999', 50, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item`
--

INSERT INTO `item` (`id_item`, `nome`, `quantidade`, `valor`, `descricao`) VALUES
(1, 'Doce de Banana', 1, 20, 'Doce feito de Banana.'),
(2, 'Doce de Leite', 1, 34, 'Doce feito de leite de vaca.'),
(3, 'Doce de Fgo', 1, 30, 'Doce feito de Figo.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lagadouro`
--

CREATE TABLE `lagadouro` (
  `id_lagadouro` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lagadouro`
--

INSERT INTO `lagadouro` (`id_lagadouro`, `tipo`, `nome`) VALUES
(1, 'Rua', '3'),
(2, 'Avenida', '070'),
(3, 'Bairro', 'São José');

-- --------------------------------------------------------

--
-- Estrutura para tabela `me`
--

CREATE TABLE `me` (
  `id_me` int(11) NOT NULL,
  `nome_da_cidade` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `me`
--

INSERT INTO `me` (`id_me`, `nome_da_cidade`, `pais`, `estado`) VALUES
(1, 'Barra do Garças', 'Brasil', 'Mato Grosso'),
(2, 'Pontal do Araguaia', 'Brasil', 'Mato Grosso'),
(3, 'Aragarças', 'Brasil', 'Goiás');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `id_pix` int(11) DEFAULT NULL,
  `id_cartao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `valor`, `id_pix`, `id_cartao`) VALUES
(1, 54, 1, NULL),
(2, 34, NULL, 1),
(3, 60, 2, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pix`
--

CREATE TABLE `pix` (
  `id_pix` int(11) NOT NULL,
  `chave` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pix`
--

INSERT INTO `pix` (`id_pix`, `chave`) VALUES
(1, '000-000-000-00'),
(2, '111-111-111-11'),
(3, '222-222-222-22');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cartao`
--
ALTER TABLE `cartao`
  ADD PRIMARY KEY (`id_cartao`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_endereco` (`id_endereco`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_pagamento` (`id_pagamento`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `id_lagadouro` (`id_lagadouro`),
  ADD KEY `id_me` (`id_me`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `lagadouro`
--
ALTER TABLE `lagadouro`
  ADD PRIMARY KEY (`id_lagadouro`);

--
-- Índices de tabela `me`
--
ALTER TABLE `me`
  ADD PRIMARY KEY (`id_me`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_pix` (`id_pix`),
  ADD KEY `id_cartao` (`id_cartao`);

--
-- Índices de tabela `pix`
--
ALTER TABLE `pix`
  ADD PRIMARY KEY (`id_pix`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cartao`
--
ALTER TABLE `cartao`
  MODIFY `id_cartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lagadouro`
--
ALTER TABLE `lagadouro`
  MODIFY `id_lagadouro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `me`
--
ALTER TABLE `me`
  MODIFY `id_me` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pix`
--
ALTER TABLE `pix`
  MODIFY `id_pix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_pagamento`) REFERENCES `pagamento` (`id_pagamento`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_lagadouro`) REFERENCES `lagadouro` (`id_lagadouro`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`id_me`) REFERENCES `me` (`id_me`);

--
-- Restrições para tabelas `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_pix`) REFERENCES `pix` (`id_pix`),
  ADD CONSTRAINT `pagamento_ibfk_2` FOREIGN KEY (`id_cartao`) REFERENCES `cartao` (`id_cartao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
