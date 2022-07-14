<?php 
    if(!isset($_GET['codigo'])){
        header('Location: seguridad.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM seguridad where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: seguridad.php?mensaje=eliminado');
    } else {
        header('Location: seguridad.php?mensaje=error');
    }
    
?>