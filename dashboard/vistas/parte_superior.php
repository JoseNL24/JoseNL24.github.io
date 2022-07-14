<?php
session_start();

if($_SESSION["s_usuario"] === null){
    header("Location: ../index.php");
}

?>

<!DOCTYPE html>
<html lang="es">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shortcut icon" href="#">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Inventario 2020-2024</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!--datables CSS básico-->
    <link rel="stylesheet" type="text/css" href="vendor/datatables/datatables.min.css"/>
    <!--datables estilo bootstrap 4 CSS-->  
    <link rel="stylesheet"  type="text/css" href="vendor/datatables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">      
    
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <li class="nav-item active">
        <a class="nav-link" href="index.php">
        <img class="img-profile rounded-square" src="https://cdn-icons-png.flaticon.com/512/2825/2825514.png"></i>
          <span>INVENTARIO

          </span></a>
      </li>
      <!-- Heading -->
      <div class="sidebar-heading">
        Menú
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
        <img class="img-profile rounded-square" src="https://cdn-icons-png.flaticon.com/512/561/561123.png"></i>
          <span>Áreas</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Selecciona El Área:</h6>
            <a class="collapse-item" href="adulto_mayor.php">Adulto Mayor</a>
            <a class="collapse-item" href="biblioteca.php">Biblioteca Municipal</a>
            <a class="collapse-item" href="pamar.php">Centro PAMAR</a>
            <a class="collapse-item" href="comunicacion.php">Comunicación Social</a>
            <a class="collapse-item" href="consultorio.php">Consultorio Municipal</a>
            <a class="collapse-item" href="contraloria.php">Contraloría</a>
            <a class="collapse-item" href="agua.php">Cultura Del Agua</a>
            <a class="collapse-item" href="agropecuario.php">Desarrollo Agropecuario</a>
            <a class="collapse-item" href="social.php">Desarrollo Social</a>
            <a class="collapse-item" href="despacho.php">Despacho Presidencial</a>
            <a class="collapse-item" href="dif.php">DIF</a>
            <a class="collapse-item" href="deportes.php">Dirección de Deporte</a>
            <a class="collapse-item" href="juridico.php">Dirección Jurídica</a>
            <a class="collapse-item" href="ecologia.php">Ecología y Medio Ambiente</a>
            <a class="collapse-item" href="predial.php">Impuesto Predial</a>
            <a class="collapse-item" href="informatica.php">Informatica</a>
            <a class="collapse-item" href="mujer.php">Instancia A La Mujer</a>
            <a class="collapse-item" href="catastro.php">Instituto Catastral</a>
            <a class="collapse-item" href="conciliador.php">Juez Conciliador</a>
            <a class="collapse-item" href="obras.php">Obras Públicas</a>
            <a class="collapse-item" href="oficialia.php">Oficialía Mayor</a>
            <a class="collapse-item" href="planeacion.php">Planeación</a>
            <a class="collapse-item" href="proteccion.php">Protección Civil</a>
            <a class="collapse-item" href="recepcion.php">Recepción</a>
            <a class="collapse-item" href="familiar.php">Registro Familiar</a>
            <a class="collapse-item" href="secretaria.php">Secretaría General</a>
            <a class="collapse-item" href="seguridad.php">Seguridad Pública</a>
            <a class="collapse-item" href="servicios.php">Servicios Públicos</a>
            <a class="collapse-item" href="tesoreria.php">Tesorería</a>
            <a class="collapse-item" href="turismo.php">Turismo y Cultura</a>
            <var></var>
          </div>
        </div>
      </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
        <a class="nav-link" href="index.php">
        <img class="img-profile rounded-circle" src="img/acerca_de.png"></i>
          <span>Acerca de</span></a>
      </li>
                  
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- Nav Item - Dashboard -->
           <li class="nav-item active">
        <a class="nav-link" href="observaciones.php">
        <img class="img-profile rounded-square" src="img/observacion.png"></i>
          <span>Observaciones y Comentarios</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

         

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION["s_usuario"];?></span>
                <!--<img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">-->
                <img class="img-profile rounded-circle" src="https://cdn-icons-png.flaticon.com/128/3135/3135768.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Cerrar Sesión
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->
