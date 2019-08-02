<?php 

    class Database{

        // CONNECT
        protected $connect;

        function __construct(){
            $this->connect = mysqli_connect("localhost","root","","oop");
        }

        public function get(){
            // BUAT QUERY
            $query = mysqli_query($this->connect, "SELECT * FROM $this->table");
            // TAMPILKAN DENGAN LOOPING
            $output = "";
            while($row = mysqli_fetch_array($query)){
                $output .= "<h1>".$row["title"]."</h1>";
                $output .= "<p>".$row["description"]."</p>";
            }
            return $output;
        }

    }

    class News extends Database{
        public $table = "oop_news";
        public function getNews(){
            return $this->get();
        }
    }

    $news = new News;
    echo $news->getNews();

?>