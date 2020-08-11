<?php

if($_POST['cxnome'] != "")
{
    include_once 'conexao.php';
    
    $nome = $_POST['cxnome'];
    $endereco = $_POST['cxendereco'];
    $descricao = $_POST['cxdescricao'];
    
    $sql = "insert into tbsite (nomesite,enderecosite,descricao) 
    values ('$nome','$endereco','$descricao')";
    $query = mysqli_query($conn,$sql);
    echo "Dados cadastrados com sucesso";
}
else
{
    echo "Dados não cadastrado";
}

?>
<br/><a href="cadsite.php">Voltar</a>