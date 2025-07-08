<?php
include_once __DIR__ . '/../Rotas/Constantes.php';
include_once __DIR__ . '/../Controller/UsuarioDAO.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Usuário</title>
</head>
<body>
    <form method="post" action="<?=HOME?>cadastrarUsuario/cadastrar">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome">
        <label for="login">Login:</label>
        <input type="text" name="login" id="login">
        <label for="senha">Senha:</label>
        <input type="text" name="senha" id="senha">
        <label for="senha">Confirme sua senha:</label>
        <input type="text" name="confirmarSenha" id="confirmarSenha">
        <input type="submit" value="Cadastrar" name="button">
    </form>
</body>
</html>