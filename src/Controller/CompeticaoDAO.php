<?php
include_once __DIR__ . '/../Conexao/Conexao.php';
include_once __DIR__ . '/../Model/Competicao.php';

class CompeticaoDAO
{
    private $conexao;

    public function __construct() {
        $this->conexao = Conexao::getConexao();
    }

    public function cadastrar() {
            $competicao = new Competicao($_POST);
            $stmt = $this->conexao->prepare('INSERT INTO competicao (nome,id_modalidade,num_max_equipe,ativo,local,data_inicio,data_fim,id_criador) VALUES (:nome, :id_modalidade,:num_max_equipe,:ativo,:local,:data_inicio,:data_fim,:id_criador)');
            $stmt->bindValue(':nome', $competicao->getNome());
            $stmt->bindValue(':id_modalidade', $competicao->getIdModalidade());
            $stmt->bindValue(':num_max_equipe', $competicao->getNumMaxEquipe());
            $stmt->bindValue(':ativo', $competicao->getAtivo());
            $stmt->bindValue(':local', $competicao->getLocal());
            $stmt->bindValue(':data_inicio', $competicao->getDataInicio());
            $stmt->bindValue(':data_fim', $competicao->getDataFim());
            $stmt->bindValue(':id_criador', $competicao->getIdCriador());
            if ($stmt->execute()) {
                header("Location: ".HOME."home/cadastroSucesso");
            } else {
                header("Location: ".HOME."home/cadastroErro");
            }
    }
}
