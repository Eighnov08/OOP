<?php 
    class Murid{
        // PROPERTY
        public $nama = "Fajar";

        // METHOD
        public function belajar(){
            // THIS UNTUK MEMANGGIL PROPERTY DAN METHOD DALAM CLASS YANG SAMA
            return $this->nama." Belajar OOP";
        }

        public function cetak_belajar(){
            return $this->belajar();
        }

    }

    $murid = new Murid;
    echo $murid->nama;
    echo "<br>";
    echo $murid->belajar();
    echo "<br>";
    echo $murid->cetak_belajar();
?>