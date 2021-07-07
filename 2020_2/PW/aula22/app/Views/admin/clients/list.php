<h1>Lista de clientes</h1>
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