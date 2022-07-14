<?php 
    if(!isset($_GET['codigo'])){
        header('Location: consultorio.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM consultorio where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: consultorio.php?mensaje=eliminado');
    } else {
        header('Location: consultorio.php?mensaje=error');
    }
    
?>