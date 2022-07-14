<?php include 'template/header.php' ?>
<?php
    if(!isset($_GET['codigo'])){
        header('Location: turismo.php?mensaje=error');
        exit();
    }

    include_once 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("select * from turismo where codigo = ?;");
    $sentencia->execute([$codigo]);
    $turismo = $sentencia->fetch(PDO::FETCH_OBJ);
    //print_r($turismo);
?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Editar datos:
                </div>
                <form class="p-4" method="POST" action="editarProcesoTuri.php">
                    <div class="mb-3">
                        <label class="form-label"=Área: </label>
                        <input type="text" class="form-control" name="txtArea" required 
                        value="<?php echo $turismo->Area; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Fecha: </label>
                        <input type="date" class="form-control" name="txtFecha" autofocus required
                        value="<?php echo $turismo->Fecha ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del bien: </label>
                        <input type="text" class="form-control" name="txtObjeto" autofocus required
                        value="<?php echo $turismo->Objeto; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Clave: </label>
                        <input type="text" class="form-control" name="txtClave" autofocus required
                        value="<?php echo $turismo->Clave; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion: </label>
                        <input type="text" class="form-control" name="txtDescripcion" autofocus required
                        value="<?php echo $turismo->Descripcion; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del responsable: </label>
                        <input type="text" class="form-control" name="txtResponsable" autofocus required
                        value="<?php echo $turismo->Responsable; ?>">
                    </div>
                    <div class="d-grid">
                        <input type="hidden" name="codigo" value="<?php echo $turismo->codigo; ?>">
                        <input type="submit" class="btn btn-primary" value="Editar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>