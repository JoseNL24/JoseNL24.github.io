<?php 
    if(!isset($_GET['codigo'])){
        header('Location: proteccion.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM proteccion where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: proteccion.php?mensaje=eliminado');
    } else {
        header('Location: proteccion.php?mensaje=error');
    }
    
?>