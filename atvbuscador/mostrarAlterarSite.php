<html>
<head>
<style>
fieldset{width:600px;margin:auto;}
</style>
<meta charset="utf-8"/>
<link rel="shortcut icon" type="image/icon" href="img/logo.ico" />
<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
<title>Alterar Site</title>
</head>

<body>
<?php
	include_once 'conexao.php';
	
	$id = $_GET['id'];
	
	$consulta = "select *from tbsite where codigo = '$id'";
	$executar = mysqli_query($conn,$consulta);

		while($exibir = mysqli_fetch_array($executar))
		{
		?>
<form method="POST" action="alterarSite.php">
	<input type="hidden" name="codigo" value="<?php echo $exibir['codigo'];?>">
	Nome: <input type="text" name="cxnome" value="<?php echo $exibir['nomesite'];?>"><br/><br/>
	Endereço: <input type="text" name="cxendereco" value="<?php echo $exibir['enderecosite'];?>"><br/><br/>
	Descrição: <input type="text" name="cxdescricao" size="50" value="<?php echo $exibir['descricao'];?>"><br/><br/>
	
	<input type="submit" value="Alterar">
	</form>
	
	<?php } ?>
	
</body>
</html>