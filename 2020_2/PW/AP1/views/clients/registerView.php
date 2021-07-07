<h2>dados</h2>
<table>
    <tr>
        <th>Nome:</th>
        <td><?=$client['name']?></td>
    </tr>
    <tr>
        <th>Email:</th>
        <td><?=$client['email']?></td>
    </tr>
    <tr>
        <th>Interresse</th>
        <td><?=$client['interest']?></td>
    </tr>
    <tr>
        <th>Senha</th>
        <td><?=$client['password']?></td>
    </tr>
    <tr>
        <th>Genero</th>
        <td><?=$client['gender']?></td>
    </tr>
    <tr>
        <th> Linguagem: </th>
        <td> 
        <?php
            foreach($language as $languages){
                echo $languages.", ";}
        ?>
        </td>
    </tr>
</table>