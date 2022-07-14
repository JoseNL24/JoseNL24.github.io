<?php 
    if(!isset($_GET['codigo'])){
        header('Location: contraloria.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM contraloria where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: contraloria.php?mensaje=eliminado');
    } else {
        header('Location: contraloria.php?mensaje=error');
    }
    
?>