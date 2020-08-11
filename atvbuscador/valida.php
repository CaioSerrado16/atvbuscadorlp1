<?php
    session_start();

    $_SESSION["user"]=$_POST["usuario"];
    $_SESSION["senha"]=$_POST["senha"];

    if($_SESSION["user"] == "caio" && $_SESSION["senha"] == "123") {
        header('location:cadsite.php');
    } else {
        die ("<script>
        window.alert('Usuário ou senha incorretos!');
        window.location.href='index.php';
        </script>");
    }
?>