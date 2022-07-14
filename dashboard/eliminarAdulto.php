<?php 
    if(!isset($_GET['codigo'])){
        header('Location: adulto_mayor.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM adulto where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: adulto_mayor.php?mensaje=eliminado');
    } else {
        header('Location: adulto_mayor.php?mensaje=error');
    }
    
?>