<html>
    <head>
        <meta charset="utf-8"/>
        <link rel="shortcut icon" type="image/icon" href="img/logo.ico" />
        <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
        <style> fieldset{width:600px;margin:auto;}</style>
        
        <title>Cadastro de Site</title>

        <?php 
            session_start();

            if((isset($_SESSION['user']) == false) && (isset($_SESSION['senha']) == false)){
                unset($_SESSION['user']);
                unset($_SESSION['senha']);
                header('location:index.php');
            } else {
                $logado = $_SESSION['user'];
            }
        ?>
    </head>

    <body>
        <form method="POST" action="inserirSite.php">
            <fieldset>
            <legend>Cadastro de Site</legend>
            Nome: <input type="text" name="cxnome"><br/><br/>
            Endereço: <input type="text" name="cxendereco"><br/><br/>
            Descrição: <input type="text" name="cxdescricao" size="50"><br/><br/>

            <input type="submit" value="Cadastrar">

            </fieldset>
        </form>
        <a href="listarSite.php">Listar dados cadastrados</a> <br/><br/>

        <a href="index.php">Voltar</a> <br/><br/>

    </body>
</html>