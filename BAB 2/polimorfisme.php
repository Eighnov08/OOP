<?php 
    // POLIMORFISME: kontrak method




    // INTERFACE: tidak bisa masukkan function didalam interface

    interface Roda{
        public function berputar($roda);
        public function berhenti();
    }

    // class yang dimasukkan implements harus mendeklarasikan semua functionnya

    class RodaMobil implements Roda{
        public $abc;
        public function berputar($roda){
            return "Roda Mobil ".$roda;
        }
        public function berhenti(){

        }
        public function maju(){

        }
    }

    class RodaMotor implements Roda{
        public function berputar($roda){

        }
        public function berhenti(){

        }
    }

    class RodaPesawat implements Roda{
        public function berputar($roda){

        }
        public function berhenti(){

        }
    }

    $rodamobil = new RodaMobil;
    echo $rodamobil->berputar("Berputar");






    // ABSTRACT: bisa masukkan function didalam interface tetapi yg di extend hanya harus mendeklarasikan abstract saja

    // abstract class Roda{
    //     public $abc;
    //     abstract public function berputar($roda);
    //     abstract public function berhenti();
    // }

    // class RodaMobil extends Roda{
    //     public function berputar($roda)
    //     {
            
    //     }
    //     public function berhenti()
    //     {
            
    //     }
    // }
?>