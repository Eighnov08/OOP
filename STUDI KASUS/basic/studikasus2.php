<?php 

class Database{

    protected $connect;

    function __construct()
    {
        $this->connect = mysqli_connect("localhost","root","","oop");
    }

    public function get(){
        $query = mysqli_query($this->connect, "SELECT * FROM $this->table");

        $output = "";
        while($row = mysqli_fetch_array($query)){
            $output .= "<p>".$row["fullname"]."</p>";
            $output .= "<p>".$row["email"]."</p>";
            $output .= "<p>".$row["biodata"]."</p>";
            $output .= "<p><img src='../project/images/".$row["photo"]."'/></p>";
            $output .= "<p>".$row["password"]."</p>";
            $output .= "<p>".$row["datetime"]."</p>";
        }
        return $output;
    }
}

class Users extends Database{
    public $table = "oop_users";
    public function getUsers(){
        return $this->get();
    }
}

$users = new Users;
echo $users->getUsers();

?>