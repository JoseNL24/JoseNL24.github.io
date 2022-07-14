<?php 
    if(!isset($_GET['codigo'])){
        header('Location: biblioteca.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM biblioteca where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: biblioteca.php?mensaje=eliminado');
    } else {
        header('Location: biblioteca.php?mensaje=error');
    }
    
?>