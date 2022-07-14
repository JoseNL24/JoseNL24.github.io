<?php 
    if(!isset($_GET['codigo'])){
        header('Location: servicios.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM servicios where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: servicios.php?mensaje=eliminado');
    } else {
        header('Location: servicios.php?mensaje=error');
    }
    
?>