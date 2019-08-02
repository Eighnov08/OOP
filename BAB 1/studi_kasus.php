<?php 

    class Person{

        public $usia;

        public function setUsia($_usia){
            $this->usia = $_usia;
        }

        public function getLevel(){
            $val = $this->usia;
            if($val <= 5 && $val >= 0){
                return "Balita";
            } else if($val >=6 && $val <=10){
                return "Anak-anak";
            } else if($val >=11 && $val <=19){
                return "Remaja";
            } else if($val >=20){
                return "Dewasa";
            } else {
                return "Usia Tidak Valid";
            }
        }
    }

    $person = new Person;
    $person->setUsia(23);
    echo $person->getLevel();

?>