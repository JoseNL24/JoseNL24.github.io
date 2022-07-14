<?php 
    if(!isset($_GET['codigo'])){
        header('Location: turismo.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM turismo where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: turismo.php?mensaje=eliminado');
    } else {
        header('Location: turismo.php?mensaje=error');
    }
    
?>