<?php 
    if(!isset($_GET['codigo'])){
        header('Location: catastro.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM catastro where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: catastro.php?mensaje=eliminado');
    } else {
        header('Location: catastro.php?mensaje=error');
    }
    
?>