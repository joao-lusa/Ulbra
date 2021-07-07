<h1>Lista de clientes</h1>
<table class="table table-striped">
    <tr class="thead-dark">
        <th scope="col">Código</th>
        <th scope="col">Nome</th>
        <th scope="col">Email</th>
        <th scope="col">Telefone</th>
        <th scope="col">Endereço</th>
    </tr>
    <?php
    foreach ($arrayClients as $clients){
    ?>
        <tr>
            <td>
                <?=$clients["idClient"]?>
            </td>
            <td>
                <?=$clients["name"]?>
            </td>
            <td>
                <?=$clients["email"]?>
            </td>
            <td>
                <?=$clients["phone"]?>
            </td>
            <td>
                <?=$clients["address"]?>
            </td>
        </tr>
    <?php
    }
    ?>
</table>