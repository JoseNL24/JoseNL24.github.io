<?php 
    if(!isset($_GET['codigo'])){
        header('Location: tesoreria.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM tesoreria where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: tesoreria.php?mensaje=eliminado');
    } else {
        header('Location: tesoreria.php?mensaje=error');
    }
    
?>