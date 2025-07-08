<?php

class Competicao
{
    private $id;
    private $nome;
    private $id_modalidade;
    private $num_max_equipe;
    private $ativo;
    private $local;
    private $data_inicio;
    private $data_fim;
    private $id_criador;

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
    public function setId($id) {
        $this->id = $id;
    }

    public function getNome() {
        return $this->nome;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }
    public function getIdModalidade() {
        return $this->id_modalidade;
    }
    public function setIdModalidade($id_modalidade) {
        $this->id_modalidade = $id_modalidade;
    }
    public function getNumMaxEquipe() {
        return $this->num_max_equipe;
    }
    public function setNumMaxEquipe($num_max_equipe) {
        $this->num_max_equipe = $num_max_equipe;
    }
    public function getAtivo() {
        return $this->ativo;
    }
    public function setAtivo($ativo) {
        $this->ativo = $ativo;
    }
    public function getLocal() {
        return $this->local;
    }
    public function setLocal($local) {
        $this->local = $local;
    }
    public function getDataInicio() {
        return $this->data_inicio;
    }
    public function setDataInicio($data_inicio) {
        $this->data_inicio = $data_inicio;
    }
    public function getDataFim() {
        return $this->data_fim;
    }
    public function setDataFim($data_fim) {
        $this->data_fim = $data_fim;
    }
    public function getIdCriador() {
        return $this->id_criador;
    }
    public function setIdCriador($id_criador) {
        $this->id_criador = $id_criador;
    }

}
