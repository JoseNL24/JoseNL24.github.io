<?php 
    if(!isset($_GET['codigo'])){
        header('Location: oficialia.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM oficialia where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: oficialia.php?mensaje=eliminado');
    } else {
        header('Location: oficialia.php?mensaje=error');
    }
    
?>