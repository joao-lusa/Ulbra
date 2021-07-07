<div class="col-md-12">
    <h1>Lista de clientes</h1>
</div>
<div class="col-md-12">
    <form action="<?= base_url("admin/clients")?>" method=GET enctype='multipart/form-data'>
        <div class="row">
            <div class="col-md-12">
                <label for="tel">pesquisar cliente:</label>
            </div>
            <div class="col-md-10">
                <input type="text" class="form-control" name="search">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-success btn-block">pesquisar</button>
            </div>
        </div><br>
    </form>
</div>
<table class="table table-striped">
    <tr class="thead-dark">
        <th scope="col">Código</th>
        <th scope="col">Nome</th>
        <th scope="col">Email</th>
        <th scope="col" colspan='3'>Ações</th>
    </tr>
    <?php
    foreach ($clients as $client){
    ?>
        <tr>
            <td>
                <?=$client["idClient"]?>
            </td>
            <td>
                <?=$client["name"]?>
            </td>
            <td>
                <?=$client["email"]?>
            </td>
            <td>
                <a href="<?=base_url("admin/{$client['idClient']}")?>"> 
                ver detalhes</a>
            </td>
            <td>
            <a class="btn btn-warning" href="<?=base_url("admin/clients/update/{$client['idClient']}")?>"> 
                editar</a>
            </td>
            <td>
            <a class="btn btn-danger" href="<?=base_url("admin/clients/delete/{$client['idClient']}")?>"> 
                apagar</a>
            </td>
        </tr>
    <?php
    }
    ?>
</table>