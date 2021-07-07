<?php
class clientsController{

public function register()
{
    require_once('views/templates/header.php');
    require_once('views/clients/register.php');
    require_once('views/templates/footer.php');
}

public function registerView(){
    $client = array(
        'name' => $_POST['name'],
        'email' => $_POST['email'],
        'interest' => $_POST['interest']
    );
    

    require_once('views/templates/header.php');
    require_once('views/clients/registerView.php');
    require_once('views/templates/footer.php');
}

}

?>