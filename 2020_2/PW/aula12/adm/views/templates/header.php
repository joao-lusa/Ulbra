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
                <a href="?controller=main&action=logout">logout</a>

            </header>
            <section class="row" id="ajeitar">
                <nav class="col-md-4 nav-color">
                    <h2 class="">gerenciar clientes</h2>
                        <ul class="list-unstyled">
                            <li>
                                <a class="" href="?controller=clients&action=listclient">listagem</a><br>
                                <a class="" href="?controller=clients&action=insertclient">-add cliente</a>
                            </li>
                        </ul>
                </nav>
                <article class="col-md-8">
            