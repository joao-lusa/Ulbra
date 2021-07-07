<h1>Lista de clientes</h1>
<table class="table table-striped">
    <tr class="thead-dark">
        <th>Código</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Telefone</th>
        <th>Endereço</th>
        <th colspan="2">Ações</th>
    </tr>
    <?php
    foreach ($arrayClient as $clients){
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
            <td>
                <a href="?controller=clients&action=updateClient&id=<?=$clients
                ['idClient']?>" class= "btn btn-warning">Editar</a>
            </td>
            <td>
                <a href="?controller=clients&action=deleteClient&id=<?=$clients['idClient']?>" class="btn btn-danger">excluir</a>
            </td>
        </tr>
    <?php
    }
    ?>
</table>