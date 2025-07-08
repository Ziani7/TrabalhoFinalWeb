<?php
session_start();
include_once __DIR__ . '/../Rotas/Constantes.php';
include_once __DIR__ . '/../Controller/ModalidadeDAO.php';
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Competição</title>
</head>
<body>

<h2>Cadastre Uma Competição</h2>

<div>
    <form action='<?=HOME?>controller/cadastrar' method='post'>
        <div>
            <label for='nome'>Nome da Competição</label>
            <input type='text' name='nome' id='nome' autocomplete='off' required>
        </div>
        <div>
            <label for='modalidade'>Modalidade</label>
            <select id="modalidade" name="modalidade" required>
                <option value="" disabled selected>Selecione uma modalidade</option>
                <?php
                $modalidadeDAO = new ModalidadeDAO();
                $modalidades = $modalidadeDAO->selectCombo();
                foreach ($modalidades as $modalidade):
                    echo "<option value='{$modalidade['id']}'>{$modalidade['nome']}</option>";
                endforeach;
                ?>
            </select>
        </div>
        <div><label for='NumMaxEquipe'>Número de Equipes permitido</label>
                <input type='number' name='NumMaxEquipe' id='NumMaxEquipe' autocomplete='off' required>
        </div>
        <div>  <label for="local">Local</label>
        <input type="text" name="local" id="local" autocomplete="off" required></div>
        <div>  <label for="datainicio">Data Inicio</label>
        <input type="date" name="datainicio" id="datainicio" autocomplete="off" required></div>
        <div>  <label for="datafim">Data Fim</label>
        <input type="date" name="datafim" id="datafim" autocomplete="off" required></div>
        <div>
            <input type="hidden" name="id" value="1">
            <input type="hidden" name="ativo" value=1>
            <button type="submit">Cadastrar</button>
        </div>
    </form>
    <div>
        <a href='<?=HOME?>'>Voltar</a>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('select');
        if (M && M.FormSelect) {
            M.FormSelect.init(elems);
        }
    });
</script>
</body>
</html>
