<?php 

class contactsController{

    var $ContactModel;
    var $UserController;
    
    public function __construct()
    {
        require_once('models/contactsModels.php');
        $this -> ContactModel = new contactModels();

        require_once('controllers/Users.php');
        $this -> UserController = new UsersController();
                
    }

    public function listContacts()
    { 
        if($this -> UserController -> isAdmin()){
            $this -> ContactModel -> getContacts();
            $result = $this -> ContactModel -> getConsult();

            $arrayContacts = array();

            while ($line = $result -> fetch_assoc()){
                array_push($arrayContacts, $line);
            }
            
            header('Content-Type: application/json');
            echo json_encode($arrayContacts);
        }else{
            header('Content-Type: application/json');
            echo json_encode('{"access" : "denied" }');
        }
    }

    public function listContact($idContact)
    { 
        if($this -> UserController -> isAdmin()){
            $this -> ContactModel -> getContact($idContact);
            $result = $this -> ContactModel -> getConsult();

            $arrayContact = array();

            while ($line = $result -> fetch_assoc()) {
                array_push($arrayContact, $line);
            }
            
            header('Content-Type: application/json');
            echo json_encode($arrayContact);
        }else{
            header('Content-Type: application/json');
            echo json_encode('{"access" : "denied" }');
        }

    }

    public function insertContact()
    {
        $contact = json_decode(file_get_contents('php://input'));

        $arrayContact['name']= $contact -> name;
        $arrayContact['email']= $contact -> email;
        $arrayContact['message']= $contact -> message;
        
        $this -> ContactModel -> insertContact($arrayContact);
        $idContact = $this -> ContactModel -> getConsult();

        header('Content-Type: application/json');
        echo('{"result";"true"}'); 
    }
}
?>    