<html>
    <head>
        <style>fieldset{width:600px;margin:auto;}</style>
        <title>Lista de Sites</title>
        <meta charset="utf-8"/>
        <link rel="shortcut icon" type="image/icon" href="img/logo.ico" />
        <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
    </head>

    <body>
        <?php
	        include_once 'conexao.php';
	        $consultar = "select *from tbsite";
	        $executar = mysqli_query($conn,$consultar);
        ?>
		<table style="width:100%" border=1 cellspacing=0 cellpadding=2>
			<tr>
				<th>Nome</th>
				<th>Endereço</th>
				<th>Descrição</th>
				<th>Opções</th>
			</tr>
	    <?php
		    while($linha = mysqli_fetch_array($executar))
		    {
		?>

			
			<tr>
				<td><?php echo $linha["nomesite"];?></td>
	    		<td><?php  echo "<a href='$linha[enderecosite]' target='_blank'>$linha[enderecosite]<a>"."<br/>"; ?></td>
				<td><?php echo $linha["descricao"];?></td>
				<td>
				<a href="mostrarAlterarSite.php?id=<?php echo $linha["codigo"];?>">Alterar</a>
	    		<a href="excluirSite.php?id=<?php echo $linha["codigo"];?>">Excluir</a>
				</td>
			</tr>
	
	   
	
	

	<?php } ?>
	</table>
	<br/><a href="cadsite.php">Voltar</a>

</body>
</html>