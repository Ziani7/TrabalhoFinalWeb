<?php
include_once __DIR__ . '/../Model/Modalidade.php';
include_once __DIR__ . '/../Conexao/Conexao.php';

class ModalidadeDAO
{
    private $conexao;

    public function __construct() {
        $this->conexao = Conexao::getConexao();
    }

    public function cadastrar() {
        try {
            $modalidade = new Modalidade($_POST);
            $stmt = $this->conexao->prepare('INSERT INTO modalidade (nome) VALUES (:nome)');
            $stmt->bindValue(":nome", $modalidade->getNome());
            return $stmt->execute();
        } catch (PDOException $e) {
            echo "Erro ao cadastrar modalidade: " . $e->getMessage();
            return false;
        }
    }

    public function selectCombo() {
        $stmt = $this->conexao->prepare('SELECT * FROM modalidade');
        $stmt->execute();
        $modalidade = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $modalidade;
    }
}
