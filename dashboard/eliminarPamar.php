<?php 
    if(!isset($_GET['codigo'])){
        header('Location: pamar.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM pamar where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: pamar.php?mensaje=eliminado');
    } else {
        header('Location: pamar.php?mensaje=error');
    }
    
?>