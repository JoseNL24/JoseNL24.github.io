<?php 
    if(!isset($_GET['codigo'])){
        header('deportes: agua.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM agua where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('deportes: agua.php?mensaje=eliminado');
    } else {
        header('deportes: agua.php?mensaje=error');
    }
    
?>