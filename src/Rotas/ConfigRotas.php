<?php

include_once __DIR__ .'/Rotas.php';

Rotas::add('/', 'View/home.php');
Rotas::add('/index.php' , 'View/home.php');
Rotas::add('/home', 'View/home.php');
Rotas::addGet('/home', 'View/home.php', 'toast');
Rotas::add('/cadastrar', 'View/cadastrarComp.php');
Rotas::addGetInt('/editar', 'View/editarComp.php', 'id');
Rotas::addGetInt('/excluir', 'View/excluirComp.php', 'id');
Rotas::addGet('/controller', 'Controller/compController.php', 'function');

Rotas::erro('View/404.php');
Rotas::exec();
?>

