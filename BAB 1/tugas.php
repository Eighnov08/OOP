<?php 

    class Murid{

        public $nilai;

        public function setNilai($_nilai){
            $this->nilai = $_nilai;
        }

        public function getGrade(){
            $val = $this->nilai;
            if($val >= 0 && $val <= 64){
                return "D";
            } else if($val >=65 && $val <= 74){
                return "C";
            } else if($val >=75 && $val <= 84){
                return "B";
            } else if($val >=85 && $val <= 100){
                return "A";
            } else {
                return "Tidak Valid";
            }
        }
    }

    $murid = new Murid;
    $murid->setNilai(98);
    echo "Nilai Anda: ".$murid->nilai."<br>";
    echo "Grade: ".$murid->getGrade();
?>