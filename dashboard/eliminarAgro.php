<?php 
    if(!isset($_GET['codigo'])){
        header('Location: agropecuario.php?mensaje=error');
        exit();
    }

    include 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("DELETE FROM agropecuario where codigo = ?;");
    $resultado = $sentencia->execute([$codigo]);

    if ($resultado === TRUE) {
        header('Location: agropecuario.php?mensaje=eliminado');
    } else {
        header('Location: agropecuario.php?mensaje=error');
    }
    
?>