<?php 
    if(!isset($_GET['codigo'])){
        header('Location: dif.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM dif where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: dif.php?mensaje=eliminado');
    } else {
        header('Location: dif.php?mensaje=error');
    }
    
?>