<?php
include_once __DIR__ . '/../Model/Competicao.php';
include_once __DIR__ . '/../DAO/CompeticaoDAO.php';

$competicao = new Competicao($_POST);
$dao = new CompeticaoDAO();

if ($dao->cadastrar($competicao)) {
    header('Location: ' . HOME . 'View/sucesso.php');
    exit;
} else {
    echo "Erro ao cadastrar competição.";
}
