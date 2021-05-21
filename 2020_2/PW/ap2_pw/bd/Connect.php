<?php

class Connect{

    var $conn;

    public function openConnect()
    {
        $servername ='localhost';
        $serveruser = 'root';
        $password = '';
        $dbname = 'pw_ap2';
        $this -> conn = new mysqli($servername, $serveruser, $password, $dbname);
    }

    public function getConn()
    {
        return $this -> conn;
    }
}

?>