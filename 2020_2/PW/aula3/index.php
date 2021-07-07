<?php
    require_once('header.php');

    if(!isset($_GET['modulo'])){
        require_once('home.php');
    }else{
        switch($_REQUEST['modulo']){
            case 'home':
                require_once("home.php");
            break;
            case 'sobre':
                require_once('sobre.php');
            break;
            case 'contatos':
                require_once('contatos.php');
            break;
        }
    }

    require_once('footer.php');
?>