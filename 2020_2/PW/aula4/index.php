<?php
    if(!isset($_GET["controller"])){
        require_once('controllers/site.php');
        $site = new siteController();
        $site -> home();

    }else{
        switch($_REQUEST['controller']){
            case 'site';
                require_once("controllers/site.php");
                $site = new siteController();
                if(!isset($_GET['acao'])){
                    $site -> home();
                }else{
                    switch($_REQUEST['acao']){
                        case 'home';
                            $site -> home();
                        break;
                        case 'sobre';
                            $site -> sobre();
                        break;
                        case 'contatos';
                            $site -> contatos();
                        break;
                    } 
                }
            break;
        }
    }
?>