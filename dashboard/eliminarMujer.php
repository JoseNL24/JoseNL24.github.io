<?php 
    if(!isset($_GET['codigo'])){
        header('Location: mujer.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM mujer where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: mujer.php?mensaje=eliminado');
    } else {
        header('Location: mujer.php?mensaje=error');
    }
    
?>