<?php
    //print_r($_POST);
    if(empty($_POST["oculto"]) || empty($_POST["txtArea"]) || empty($_POST["txtFecha"]) || empty($_POST["txtObjeto"]) || empty($_POST["txtClave"]) || empty($_POST["txtDescripcion"]) || empty($_POST["txtResponsable"])){
        header('Location: social.php?mensaje=falta');
        exit();
    }

    include_once 'bd/conexion.php';
    $Area = $_POST["txtArea"];
    $Fecha = $_POST["txtFecha"];
    $Objeto = $_POST["txtObjeto"];
    $Clave = $_POST["txtClave"];
    $Descripcion = $_POST["txtDescripcion"];
    $Responsable = $_POST["txtResponsable"];
    
    $sentencia = $bd->prepare("INSERT INTO social (Area,Fecha,Objeto,Clave,Descripcion,Responsable) VALUES (?,?,?,?,?,?);");
    $resultado = $sentencia->execute([$Area, $Fecha, $Objeto, $Clave, $Descripcion, $Responsable,]);

    if ($resultado === TRUE) {
        header('Location: social.php?mensaje=registrado');
    } else {
        header('Location: social.php?mensaje=error');
        exit();
    }
    
?>