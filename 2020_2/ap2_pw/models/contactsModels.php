<?php

    class contactModels{

        var $result;
        var $conn;

        public function __construct()
        {
            require_once("bd/Connect.php");
            $Oconn = new Connect();
            $Oconn -> openConnect();
            $this -> conn = $Oconn -> getConn();
        }

        public function getContacts()
        {
            $sql = "SELECT * FROM contacts";
            
            $this -> result = $this -> conn -> query($sql);
        }

        public function insertContact($arrayContact)
        {
            $sql = "
                INSERT INTO contacts 
                (name, email, message)
                VALUES(
                    '{$arrayContact['name']}',
                    '{$arrayContact['email']}',
                    '{$arrayContact['message']}'
                    )
            ";
            $this -> conn ->query($sql);

        }

        public function getContact($idContact)
        {
            $sql = "
                SELECT * FROM contacts
                WHERE   idContact = {$idContact}
            ";
            
            $this -> result = $this -> conn -> query($sql);

        }

        public function getConsult()
        {
            return $this -> result;
        }
    }
?>