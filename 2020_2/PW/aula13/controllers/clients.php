<?php
class clientsController{

    var $clientModel;

    public function __construct()
    {
        require_once('models/ClientsModel.php');
        $this -> ClientModel = new clientsModel();   
    }
    
    public function listClients(){
        $this -> ClientModel -> getClients();
        $result = $this -> ClientModel -> getConsult();
        $arrayClients = array();
        while ($line = $result -> fetch_assoc()) {
            array_push($arrayClients, $line);
        }

        header('Content-Type: application/json');
        echo json_encode($arrayClients);

    }
    
    public function insertClients()
    {
        $client = json_decode(file_get_contents('php://input'));

        $arrayClient['name'] = $client -> name ;
        $arrayClient['email'] = $client -> email;
        $arrayClient['phone'] = $client -> phone;
        $arrayClient['address'] = $client -> address;

        $this -> ClientModel -> insertClient($arrayClient);
        $idClient = $this -> ClientModel -> getConsult();

        header('Content-Type: application/json');
        echo ('{"result":"true"}');
        
        
    }

    public function updateClient($idClient)
    {
        $client = json_decode(file_get_contents('php://input'));

        $arrayClient['idClient'] = $idClient;
        $arrayClient['name'] = $client -> name;
        $arrayClient['email'] = $client -> email;
        $arrayClient['phone'] = $client -> phone;
        $arrayClient['address'] = $client -> address;

        $this -> ClientModel -> updateClient($arrayClient);

        header('Content-Type: application/json');
        echo ('{"result":"true"}');
        
    }
    public function deleteClient($idClient)
    {
        $this -> ClientModel -> deleteClient($idClient);
        $linkPhoto ="assets/img/clients/{$idClient}.jpg";
        if(is_file($linkPhoto)){
            unlink($linkPhoto);
        }

        header('Content-Type: application/json');
        echo ('{"result":"true"}');   
    }

}

?>