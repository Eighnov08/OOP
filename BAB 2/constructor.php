<?php 

    class Cat{
        // METHOD CONSTRUCT: method yang selalu dijalankan pertama kali, biasanya untuk koneksi database atau load page
        public function __construct(){
            echo "<h1>INI METHOD CONSTRUCT</h1>";
        }

        public function index(){
            return "<p>INI METHOD BIASA</p>";
        }

        // METHOD DESTRUCT: method yang selalu dijalankan terakhir
        public function __destruct(){
            echo "<h1>INI METHOD DESTRUCT</h1>";
        }

    }

    $cat = new Cat;
    echo $cat->index();

?>