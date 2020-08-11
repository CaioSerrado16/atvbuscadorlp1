<?php

	include_once 'conexao.php';
	$id = $_GET['id'];
	
	$excluir = "delete from tbsite where codigo='$id' ";
	$executar = mysqli_query($conn,$excluir);
	if($executar)
	{
		echo "Site excluido com sucesso";
		echo "<br>";
		echo "<a href='listarSite.php'>Voltar</a>";
	}
	else
	{
		echo "Erro ao excluir os dados";
	}
?>