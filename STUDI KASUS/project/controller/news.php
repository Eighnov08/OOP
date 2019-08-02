<?php 

    namespace controller;

    use controller\Database as DB;

    class News extends DB{
        public function getNews(){
            $sql = $this->prepare("SELECT * FROM oop_news");
            $sql->execute();

            return $sql->fetchAll(); // fetchAll tampilkan semua data
        }

        public function getNewsDetail($id){
            $sql = $this->prepare("SELECT * FROM oop_news WHERE id = $id");
            $sql->execute();

            return $sql->fetch(); // fetch hanya tampilkan 1 data
        }
    }

?>