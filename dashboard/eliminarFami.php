<?php 
    if(!isset($_GET['codigo'])){
        header('Location: familiar.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM familiar where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: familiar.php?mensaje=eliminado');
    } else {
        header('Location: familiar.php?mensaje=error');
    }
    
?>