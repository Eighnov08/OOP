<?php 

    namespace controller;
    use PDO;

    class Database extends PDO{
        private $host = "localhost";
        private $dbname = "oop";
        private $username = "root";
        private $password = "";

        function __construct(){
            // fitur PDO: API dari php fungsinya untuk menampilkan db dg bentuk object
            parent::__construct("mysql:host=".$this->host.";dbname=".$this->dbname, $this->username, $this->password);
        }
    }

?>