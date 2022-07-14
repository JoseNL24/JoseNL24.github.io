<?php 
    if(!isset($_GET['codigo'])){
        header('Location: planeacion.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM planeacion where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: planeacion.php?mensaje=eliminado');
    } else {
        header('Location: planeacion.php?mensaje=error');
    }
    
?>