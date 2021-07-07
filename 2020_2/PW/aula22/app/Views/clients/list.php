<h1>Lista de clientes</h1>
<table class="table table-striped">
    <tr class="thead-dark">
        <th scope="col">Código</th>
        <th scope="col">Nome</th>
        <th scope="col">Email</th>
        <th scope="col">Ações</th>

   
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
                <a href="<?=base_url("clients/{$client['idClient']}")?>"> 
                ver detalhes</a>
            </td>
        </tr>
    <?php
    }
    ?>
</table>