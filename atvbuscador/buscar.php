<html>
<head>
<style>fieldset{width:600px;margin:auto;}</style>
<meta charset="utf-8"/>
<link rel="shortcut icon" type="image/icon" href="img/logo.ico" />
<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
<title>Joojle</title>
</head>

<body>
<?php
    include_once 'conexao.php';
    
    $nome = $_POST["cxbuscasite"];

	$consultar = "select *from tbsite where nomesite LIKE '%$nome%'";
    $executar = mysqli_query($conn,$consultar);
    $resultado = mysqli_num_rows($executar);
?>

<form method="POST" action="buscar.php">
            
				<div class="imagem">
					<img src="img/joojle.png"/>
				</div>
                <div class="caixa1">
                    <input type="text" class="cxbusca" name="cxbuscasite" placeholder="Pesquisar...">
                </div>
                <div class="caixa2">
                    <button type="submit" value="Procurar" class="btn-buscar"> </button>
                </div>
            
</form> <br/><br/><br/>

<?php
	if($resultado == 0){
        echo "<h2>Nenhum resultado encontrado.</h2>"."<br/>";
	} 
?>

<div id="listar">
	<?php
		while($linha = mysqli_fetch_array($executar))
		{
		?>
	<div class="linha1">
	<?php echo $linha["nomesite"]."<br/>";?>
	</div>

	<div class="linha2">
	<?php  echo "<a href='$linha[enderecosite]' id='link' target='_blank'>$linha[enderecosite]<a>"."<br/>"; ?>
	</div>
	
	<div class="linha3">
	<?php echo $linha["descricao"]."<br>"."<br>";?>
	</div>
	
	
	
	<?php } ?>
	<a href="index.php">Voltar</a>
</div>

</body>
</html>