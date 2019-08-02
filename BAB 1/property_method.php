<?php 
    class Murid{
        // PROPERTY
        public $nama = "Fajar";

        // METHOD
        public function belajar(){
            return " Belajar OOP";
        }

    }

    $murid = new Murid;
    echo $murid->nama;
    echo $murid->belajar();
?>