<?php 

    // tanpa namespace, dua class yang sama tak bisa ditampilkan
    // biasanya untuk direktori penyimpanan

    namespace Asus;
    class Laptop{
        public $merk = "Asus";
    }

    namespace Apple;
    class Laptop{
        public $merk = "Apple";
    }

    $lp1 = new \Asus\Laptop;
    $lp2 = new \Apple\Laptop;

    echo $lp1->merk;
    echo "<br>";
    echo $lp2->merk;

?>