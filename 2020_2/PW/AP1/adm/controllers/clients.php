<?php
class clientsController{
    
    public function listClient()
    {
        require_once("models/clientsModel.php"); 
        $client = new clientsModel();
        $client -> listClients();
        $result = $client -> getConsult();

        $arrayClients = array();

        while($line = $result -> fetch_assoc())
        {
            array_push($arrayClients, $line);
        }

        require_once('views/templates/header.php');
        require_once('views/clients/listClients.php');
        require_once('views/templates/footer.php');
    }
}

?>