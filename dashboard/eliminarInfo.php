<?php 
    if(!isset($_GET['codigo'])){
        header('Location: informatica.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM informatica where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: informatica.php?mensaje=eliminado');
    } else {
        header('Location: informatica.php?mensaje=error');
    }
    
?>