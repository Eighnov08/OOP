<?php 
    class Komputer{
        public $merk;

        public function setMerk($nama_merk){
            $this->merk = $nama_merk;
        }

        public function getMerk(){
            return $this->merk;
        }
    }

    $komp = new Komputer;
    
    // ISI VALUE PROPERTY MERK
    $komp->setMerk("Asus");
    // PANGGIL PROPERTY MERK
    echo $komp->getMerk();
    echo "<br>";
    
    // CARA LAIN ISI DAN TAMPILKAN PROPERTY TETAPI TAK DIANJURKAN
    $komp->merk = "Apple";
    echo $komp->merk;
?>