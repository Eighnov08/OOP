<?php 
    // INHERITANCE adalah sifat turunan
    class Gadget{
        // PROPERTY
        public $merk = "Asus"; // public: bisa diakses oleh object, class turunan, dan class itu sendiri
        protected $price = 234; // class turunan, dan class itu sendiri
        private $type = "Laptop"; // class itu sendiri

        public function beli(){
            return "Beli Komputer ".$this->merk;
        }
    }

    // class Gadget di turunkan ke class Laptop dengan menggunakan extends
    class Laptop extends Gadget{

        public function getPrice(){
            return "Protected ".$this->price; 
        }

        public function getType(){
            return "Private ".$this->type;
        }

    }

    class Tablet extends Gadget{

    }

    $laptop = new Laptop;
    $tablet = new Tablet;
    $gadget = new Gadget;

    echo "Public ".$gadget->merk;
    echo "<br>";
    // echo "Protected ".$gadget->price; // akan error karena hak akses protected tak bisa ditampilkan, hanya bisa diturunkan ke turunannya
    // echo $laptop->getPrice(); // value property dengan hak akses protected bisa diakses jika lewat turunannya
    // echo $laptop->getType(); // akan error karena hak akses private hanya bisa digunakan dalam classnya sendiri
    echo "<br>";
    // echo "Private ".$gadget->type; // akan error karena hak akses private tak bisa ditampilkan, hanya bisa di classnya

    echo $laptop->beli();
    echo "<br>";
    echo $tablet->merk;

?>