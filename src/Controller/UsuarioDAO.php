<?php
include_once __DIR__ . '/../Model/Usuario.php';
include_once __DIR__ . '/../Conexao/Conexao.php';

class UsuarioDAO{

    private $conexao;

    public function __construct() {
        $this->conexao = Conexao::getConexao();
    }

    public function cadastrar() {
        try {
            $usuario = new Usuario($_POST);
            $stmt = $this->conexao->prepare('INSERT INTO usuario (nome, login, senha) VALUES (:nome, :login, :senha)');
            $stmt->bindValue(":nome", $usuario->getNome());
            $stmt->bindValue(":login", $usuario->getLogin());
            $stmt->bindValue(":senha", $usuario->getSenha());
            return $stmt->execute();
        } catch (PDOException $e) {
            echo "Erro ao cadastrar usuário: " . $e->getMessage();
            return false;
        }
    }
}