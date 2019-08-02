<?php 
    // INHERITANCE adalah sifat turunan
    class Gadget{
        public $merk = "Asus";

        public function beli(){
            return "Beli Komputer ".$this->merk;
        }
    }

    // class Gadget di turunkan ke class Laptop dengan menggunakan extends
    class Laptop extends Gadget{

    }

    class Tablet extends Gadget{

    }

    $laptop = new Laptop;
    echo $laptop->beli()."<br>";
    
    $tablet = new Tablet;
    echo $tablet->merk;

?>