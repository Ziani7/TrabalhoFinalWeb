<?php

class Competicao
{
    private $id;
    private $nome;
    private $modalidade;

    public function __construct() {
        if (func_num_args() != 0) {
            $atributos = func_get_args()[0];
            foreach ($atributos as $atributo => $valor) {
                if(isset($valor) && property_exists($this, $atributo)){
                    $this->$atributo = $valor;
                }
            }
        }
    }

    public function getId() {
        return $this->id;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getModalidade() {
        return $this->modalidade;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setModalidade($modalidade) {
        $this->modalidade = $modalidade;
    }
}
