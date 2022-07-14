<?php 
    if(!isset($_GET['codigo'])){
        header('Location: ecologia.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM ecologia where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: ecologia.php?mensaje=eliminado');
    } else {
        header('Location: ecologia.php?mensaje=error');
    }
    
?>