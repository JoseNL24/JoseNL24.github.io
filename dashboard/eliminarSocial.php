<?php 
    if(!isset($_GET['codigo'])){
        header('Location: social.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM social where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: social.php?mensaje=eliminado');
    } else {
        header('Location: social.php?mensaje=error');
    }
    
?>