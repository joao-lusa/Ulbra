<?php

class UsersModel{

    var $result;

    public function getUser($login)
    {
        require_once('bd/Connect.php');
        $Oconn = new Connect();
        $Oconn -> openConnect();
        $conn = $Oconn -> getConn();

        $sql = "
            SELECT * FROM users
            WHERE user= '{$login}'
        ";

        $this -> result = $conn -> query($sql);
    }

    public function getConsult()
    {
        return $this -> result;
    }
}

?>