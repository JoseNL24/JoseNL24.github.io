<?php include 'template/header.php' ?>
<?php
    if(!isset($_GET['codigo'])){
        header('Location: oficialia.php?mensaje=error');
        exit();
    }

    include_once 'bd/conexion.php';
    $codigo = $_GET['codigo'];

    $sentencia = $bd->prepare("select * from oficialia where codigo = ?;");
    $sentencia->execute([$codigo]);
    $oficialia = $sentencia->fetch(PDO::FETCH_OBJ);
    //print_r($oficialia);
?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Editar datos:
                </div>
                <form class="p-4" method="POST" action="editarProcesoOfi.php">
                    <div class="mb-3">
                        <label class="form-label"=Área: </label>
                        <input type="text" class="form-control" name="txtArea" required 
                        value="<?php echo $oficialia->Area; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Fecha: </label>
                        <input type="date" class="form-control" name="txtFecha" autofocus required
                        value="<?php echo $oficialia->Fecha ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del bien: </label>
                        <input type="text" class="form-control" name="txtObjeto" autofocus required
                        value="<?php echo $oficialia->Objeto; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Clave: </label>
                        <input type="text" class="form-control" name="txtClave" autofocus required
                        value="<?php echo $oficialia->Clave; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion: </label>
                        <input type="text" class="form-control" name="txtDescripcion" autofocus required
                        value="<?php echo $oficialia->Descripcion; ?>">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del responsable: </label>
                        <input type="text" class="form-control" name="txtResponsable" autofocus required
                        value="<?php echo $oficialia->Responsable; ?>">
                    </div>
                    <div class="d-grid">
                        <input type="hidden" name="codigo" value="<?php echo $oficialia->codigo; ?>">
                        <input type="submit" class="btn btn-primary" value="Editar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>