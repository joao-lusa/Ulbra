<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>template</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!--/Bootstrap-->
</head>
<body>
    <div class="container">
        <header class="jumbotron mb-0">
            <h1>Template</h1>
        </header>
        <div class="container">
        <section class="row" >
            <nav class="col-md-4 text-light">
                <h2>informações</h2>
                <ul class="list-unstyled ">
                    <li><a class="text-light" href="?controller=site&action=home">home</a></li>
                    <li><a class="text-light" href="?controller=site&action=sobre">sobre</a></li>
                    <li><a class="text-light" href="?controller=site&action=contato">contatos</a></li>
                </ul>
                <br>

                <h2>Clientes</h2>
                <a class="text-light" href="?controller=clients&action=register">cadastro</a><br>
                <a class="text-light" href="?controller=clients&action=listclient">lista</a>
            </nav>
            <article class="col-md-8">
            