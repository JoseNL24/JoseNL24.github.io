<?php
    print_r($_POST);
    if(!isset($_POST['codigo'])){
        header('Location: social.php?mensaje=error');
    }

    include 'bd/conexion.php';
    $codigo = $_POST['codigo'];
    $Area = $_POST['txtArea'];
    $Fecha = $_POST['txtFecha'];
    $Objeto = $_POST['txtObjeto'];
    $Clave = $_POST['txtClave'];
    $Descripcion = $_POST['txtDescripcion'];
    $Responsable = $_POST['txtResponsable'];

    $sentencia = $bd->prepare("UPDATE social SET Area = ?, Fecha = ?, Objeto = ?, Clave = ?, Descripcion = ?, Responsable = ? where codigo = ?;");
    $resultado = $sentencia->execute([$Area, $Fecha, $Objeto, $Clave, $Descripcion, $Responsable, $codigo]);

    if ($resultado === TRUE) {
        header('Location: social.php?mensaje=editado');
    } else {
        header('Location: social.php?mensaje=error');
        exit();
    }
    
?>