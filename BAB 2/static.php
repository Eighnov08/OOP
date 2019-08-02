<?php 

    class School{

        public static $school_name = "Dumet School";

        public static function belajar(){
            return "Belajar di ".self::$school_name; // property biasa menggunakan this, khusus statis menggunakan self
        }

        // jika menggunakan extend manggilnnya bisa pakai parent atau self

    }

    // akan error
    // $school = new School;
    // echo $school->school_name;

    // KHUSUS STATIC CARA MENAMPILKANNYA DENGAN CARA DIBAWAH INI 
    echo School::$school_name;
    echo "<br>";
    echo School::belajar();

?>