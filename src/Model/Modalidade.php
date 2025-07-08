<?php

class Modalidade
{
    private $id;
    private $nome;

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

    public function atualizar($atributos) {
        foreach ($atributos as $atributo => $valor) {
            if(isset($valor) && property_exists($this, $atributo)){
                $this->$atributo = $valor;
            }
        }
    }

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function getNome() {
        return $this->nome;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function __toString(){
        return "<br>ID: ".$this->id."<br>NOME: ".$this->nome."<br><br>";
    }
}
