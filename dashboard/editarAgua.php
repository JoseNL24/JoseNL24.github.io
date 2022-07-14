<?php include 'template/header.php' ?>
<?php
    if(!isset($_GET['codigo'])){
        header('Location: agua.php?mensaje=error');
        exit();
    }

    include_once 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("select * from agua where codigo = ?;");
    $sentencia->execute([$codigo]);
    $agua = $sentencia->fetch(PDO::FETCH_OBJ);
    //print_r($agua);
?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Editar datos:
                </div>
                <form class="p-4" method="POST" action="editarProcesoAgua.php">
                    <div class="mb-3">
                        <label class="form-label"=Área: </label>
                        <input type="text" class="form-control" name="txtArea" required 
                        value="<?php echo $agua->Area; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Fecha: </label>
                        <input type="date" class="form-control" name="txtFecha" autofocus required
                        value="<?php echo $agua->Fecha ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del bien: </label>
                        <input type="text" class="form-control" name="txtObjeto" autofocus required
                        value="<?php echo $agua->Objeto; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Clave: </label>
                        <input type="text" class="form-control" name="txtClave" autofocus required
                        value="<?php echo $agua->Clave; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion: </label>
                        <input type="text" class="form-control" name="txtDescripcion" autofocus required
                        value="<?php echo $agua->Descripcion; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del responsable: </label>
                        <input type="text" class="form-control" name="txtResponsable" autofocus required
                        value="<?php echo $agua->Responsable; ?>">
                    </div>
                    <div class="d-grid">
                        <input type="hidden" name="codigo" value="<?php echo $agua->codigo; ?>">
                        <input type="submit" class="btn btn-primary" value="Editar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>