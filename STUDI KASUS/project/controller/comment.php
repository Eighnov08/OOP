<?php 

    namespace controller;

    use \controller\Database as DB;

    class Comment extends DB{

        public function saveComment($data){
            $sql = $this->prepare(
                "INSERT oop_comments(news_id, users_id, content)
                VALUES(
                    '".$data['news_id']."',
                    '".$data['users_id']."',
                    '".$data['content']."')"
            );

            $sql->execute();

            // echo '<script>window.location.href="index.php?detail='.$data['news_id'].'"</script>'; //alternatif header dgn js
            header("location:index.php?detail=".$data['news_id']); // jika mau pake header ini harus pake ob_start() di index
        }

        public function getByArticleId($news_id){
            $sql = $this->prepare(
                "SELECT oop_comments.*, oop_users.photo, oop_users.fullname
                FROM oop_comments JOIN oop_news ON oop_comments.news_id = oop_news.id
                JOIN oop_users ON oop_comments.users_id = oop_users.id
                WHERE oop_comments.news_id = $news_id"
            );
            $sql->execute();

            return $sql->fetchAll();
        }

    }

?>