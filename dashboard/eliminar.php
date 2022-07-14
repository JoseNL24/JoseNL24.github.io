<?php 
    if(!isset($_GET['codigo'])){
        header('Location: secretaria.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM secretariag where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: secretaria.php?mensaje=eliminado');
    } else {
        header('Location: secretaria.php?mensaje=error');
    }
    
?>