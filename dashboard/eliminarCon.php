<?php 
    if(!isset($_GET['codigo'])){
        header('Location: conciliador.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM conciliador where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: conciliador.php?mensaje=eliminado');
    } else {
        header('Location: conciliador.php?mensaje=error');
    }
    
?>