<?php 

    namespace controller;
    use \controller\Database as DB;

    class News extends DB{
        public function getNews(){
            $sql = $this->prepare(
                "SELECT * FROM oop_news"
            );
            $sql->execute();

            return $sql->fetchAll();
        }

        public function getNewsDetail($id){
            $sql = $this->prepare(
                "SELECT * FROM oop_news WHERE id = $id"
            );
            $sql->execute();

            return $sql->fetch();
        }
    }

?>