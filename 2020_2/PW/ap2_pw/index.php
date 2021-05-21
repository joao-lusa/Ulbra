<?php

    session_start();

    $requestMethod = $_SERVER['REQUEST_METHOD'];    //  get, post, put, delete
    $local = $_SERVER['SCRIPT_NAME']; //pw_2020...index.php
    $uri = $_SERVER['PHP_SELF']; // pw_2020...index.php/xx/123
    $rout = str_replace($local,'', $uri); // /xx/123

    $uriSegments = explode('/', $rout);

    if(isset($uriSegments[1])){
        $controller = $uriSegments[1];
        switch ($controller) {
            case 'contacts':
                require_once('controllers/contacts.php');
                $Contacts = new contactsController();
                switch($requestMethod){
                    case 'GET':
                        if(isset($uriSegments[2]) && $uriSegments[2] != ''){
                            $Contacts -> listContact($uriSegments[2]);
                        }else{
                            $Contacts -> listContacts();
                        }
                    break;
                    case 'POST':
                        $Contacts -> insertContact();
                    break;
                }  
                break;
            
            case 'users':
                require_once('controllers/Users.php');
                $Users = new UsersController();
                switch($requestMethod){
                    case 'GET':
                        if(isset($uriSegments[2]) && $uriSegments[2] == 'login'){
                            if(!isset($uriSegments[3]) || $uriSegments[3] = ''){
                                $Users -> login();
                            }
                        }
                    break;
                }
            break;
        }
    }

?>