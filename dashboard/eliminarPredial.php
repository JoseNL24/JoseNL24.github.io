<?php 
    if(!isset($_GET['codigo'])){
        header('Location: predial.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM predial where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: predial.php?mensaje=eliminado');
    } else {
        header('Location: predial.php?mensaje=error');
    }
    
?>