<?php 
    if(!isset($_GET['codigo'])){
        header('Location: recepcion.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM recepcion where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: recepcion.php?mensaje=eliminado');
    } else {
        header('Location: recepcion.php?mensaje=error');
    }
    
?>