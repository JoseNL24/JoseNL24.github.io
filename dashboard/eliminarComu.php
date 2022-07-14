<?php 
    if(!isset($_GET['codigo'])){
        header('Location: comunicacion.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM comunicacion where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: comunicacion.php?mensaje=eliminado');
    } else {
        header('Location: comunicacion.php?mensaje=error');
    }
    
?>