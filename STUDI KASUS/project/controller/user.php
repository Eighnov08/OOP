<?php 

    namespace controller;
    use controller\Database as DB;

    class User extends DB{
        public function login($data){
            $sql = $this->prepare(
                "SELECT * FROM oop_users WHERE email = '".$data['email']."' AND password = md5('".$data['password']."')"
            );
            $sql->execute();

            if($sql->rowCount() === 1){
                $result = $sql->fetch();
                $_SESSION["fullname"] = $result["fullname"];
                $_SESSION["id"] = $result["id"];
                $_SESSION["is_login"] = true; //status
                header("location:index.php");
            } else {
                header("location:?login&failed");
            }
        }

        public function logout(){
            $_SESSION["fullname"] = null;
            $_SESSION["id"] = null;
            $_SESSION["is_login"] = null; //status
            header("location:index.php?");
        }
    }

?>