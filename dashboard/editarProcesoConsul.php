<?php
    print_r($_POST);
    if(!isset($_POST['codigo'])){
        header('Location: consultorio.php?mensaje=error');
    }

    include 'bd/conexion.php';
    $codigo = $_POST['codigo'];
    $Area = $_POST['txtArea'];
    $Fecha = $_POST['txtFecha'];
    $Objeto = $_POST['txtObjeto'];
    $Clave = $_POST['txtClave'];
    $Descripcion = $_POST['txtDescripcion'];
    $Responsable = $_POST['txtResponsable'];

    $sentencia = $bd->prepare("UPDATE consultorio SET Area = ?, Fecha = ?, Objeto = ?, Clave = ?, Descripcion = ?, Responsable = ? where codigo = ?;");
    $resultado = $sentencia->execute([$Area, $Fecha, $Objeto, $Clave, $Descripcion, $Responsable, $codigo]);

    if ($resultado === TRUE) {
        header('Location: consultorio.php?mensaje=editado');
    } else {
        header('Location: consultorio.php?mensaje=error');
        exit();
    }
    
?>