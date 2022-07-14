<?php 
    if(!isset($_GET['codigo'])){
        header('Location: juridico.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM juridico where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: juridico.php?mensaje=eliminado');
    } else {
        header('Location: juridico.php?mensaje=error');
    }
    
?>