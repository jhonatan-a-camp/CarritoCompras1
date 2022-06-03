<!-- Example split danger button -->
<?php
include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");

$sql= "select * from productos where Stock > 3;";

$result = $conn->query($sql);

?>
<div class="btn-group">
  <button type="button" class="btn btn-danger">Prodcutos</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu">
    
    <li><a class="dropdown-item" href="formularioproduc.php">Ingresar</a></li>
    <li><a class="dropdown-item" href="tablaproductos.php">Tabla</a></li>
 
  </ul>
</div>


<div class="btn-group">
  <button type="button" class="btn btn-danger">Clientes</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu">
    
    <li><a class="dropdown-item" href="formularioproduc.php">Ingresar</a></li>
    <li><a class="dropdown-item" href="tablaproductos.php">Tabla</a></li>
 
  </ul>
</div>
 
<?php
    
    $conn->close();
?>
</div>
</div>

