-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jul-2025 às 02:39
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdsporthub`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atleta`
--

CREATE TABLE `atleta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataNascimento` date NOT NULL,
  `id_equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao`
--

CREATE TABLE `classificacao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `id_competicao` int(11) NOT NULL,
  `pontos` int(11) NOT NULL,
  `vitorias` int(11) NOT NULL,
  `empates` int(11) NOT NULL,
  `derrotas` int(11) NOT NULL,
  `gols_pro` int(11) NOT NULL,
  `gols_contra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `texto` text NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `competicao`
--

CREATE TABLE `competicao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `id_modalidade` int(11) NOT NULL,
  `numMaxEquipes` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `local` varchar(255) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `id_criador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

CREATE TABLE `partida` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `local` varchar(255) NOT NULL,
  `id_equipe1` int(11) NOT NULL,
  `id_equipe2` int(11) NOT NULL,
  `id_competicao` int(11) NOT NULL,
  `pontos_equipe1` int(11) NOT NULL,
  `pontos_equipe2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `classificacao`
--
ALTER TABLE `classificacao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `competicao`
--
ALTER TABLE `competicao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classificacao`
--
ALTER TABLE `classificacao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competicao`
--
ALTER TABLE `competicao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partida`
--
ALTER TABLE `partida`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Relacionamento: atleta -> equipe
ALTER TABLE `atleta`
  ADD CONSTRAINT `fk_atleta_equipe`
  FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: classificacao -> equipe
ALTER TABLE `classificacao`
  ADD CONSTRAINT `fk_classificacao_equipe`
  FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: classificacao -> competicao
ALTER TABLE `classificacao`
  ADD CONSTRAINT `fk_classificacao_competicao`
  FOREIGN KEY (`id_competicao`) REFERENCES `competicao` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: comentario -> usuario
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_usuario`
  FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: comentario -> partida
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_partida`
  FOREIGN KEY (`id_jogo`) REFERENCES `partida` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: competicao -> modalidade
ALTER TABLE `competicao`
  ADD CONSTRAINT `fk_competicao_modalidade`
  FOREIGN KEY (`id_modalidade`) REFERENCES `modalidade` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: competicao -> usuario (criador)
ALTER TABLE `competicao`
  ADD CONSTRAINT `fk_competicao_criador`
  FOREIGN KEY (`id_criador`) REFERENCES `usuario` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: imagem -> partida
ALTER TABLE `imagem`
  ADD CONSTRAINT `fk_imagem_partida`
  FOREIGN KEY (`id_jogo`) REFERENCES `partida` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: partida -> equipe1
ALTER TABLE `partida`
  ADD CONSTRAINT `fk_partida_equipe1`
  FOREIGN KEY (`id_equipe1`) REFERENCES `equipe` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: partida -> equipe2
ALTER TABLE `partida`
  ADD CONSTRAINT `fk_partida_equipe2`
  FOREIGN KEY (`id_equipe2`) REFERENCES `equipe` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

-- Relacionamento: partida -> competicao
ALTER TABLE `partida`
  ADD CONSTRAINT `fk_partida_competicao`
  FOREIGN KEY (`id_competicao`) REFERENCES `competicao` (`id`)
  ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE `inscricao` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_competicao` BIGINT UNSIGNED NOT NULL,
  `id_equipe` BIGINT UNSIGNED NOT NULL,
  `data_inscricao` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_inscricao_competicao` FOREIGN KEY (`id_competicao`) REFERENCES `competicao` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_inscricao_equipe` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`) ON DELETE CASCADE
);
