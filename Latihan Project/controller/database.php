<?php 

    namespace controller;
    use PDO;

    class Database extends PDO{
        private $host = "localhost";
        private $dbname = "oop";
        private $username = "root";
        private $password = "";

        function __construct()
        {
            parent::__construct(
                "mysql:host=".$this->host.";dbname=".$this->dbname,$this->username,$this->password
            );
        }
    }

?>