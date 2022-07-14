<?php 
    if(!isset($_GET['codigo'])){
        header('Location: despacho.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM despacho where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: despacho.php?mensaje=eliminado');
    } else {
        header('Location: despacho.php?mensaje=error');
    }
    
?>