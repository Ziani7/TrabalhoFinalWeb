<?php
include_once __DIR__ . '/../Conexao/Conexao.php';
include_once __DIR__ . '/../Model/Competicao.php';

class CompeticaoDAO
{
    private $conexao;

    public function __construct() {
        $this->conexao = Conexao::getConexao();
    }

    public function cadastrar($competicao) {
        try {
            $stmt = $this->conexao->prepare('INSERT INTO competicao (nome, modalidade) VALUES (:nome, :modalidade)');
            $stmt->bindValue(':nome', $competicao->getNome());
            $stmt->bindValue(':modalidade', $competicao->getModalidade());
            return $stmt->execute();
        } catch (PDOException $e) {
            echo "Erro ao cadastrar competição: " . $e->getMessage();
            return false;
        }
    }
}
