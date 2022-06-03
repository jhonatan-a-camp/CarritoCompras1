<?php
include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");


$id = "";
$nombre = " ";
$apellido = " ";
$fecha= " ";
$detalle = " ";


if($_SERVER['REQUEST_METHOD']==="POST" AND isset($_POST) and $_POST["Enviar"]==="Actualizar") {
    $id = $_POST["id"];
    $sql = "select * from clientes where id=$id";

    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
  //  $id = $row["id"];
    $nombre = $row["nombre"];
    $apellido = $row["apellido"];
    $fecha = $row["fnacimiento"];
    $detalle = $row["detalle"];
    
}


?>
<div class="container">
    <div class="row">

        <div class="col-md-6">
            <form action="crudcliente.php" method="POST" enctype="multipart/form-data" style="color:white ;">
                <h2 class="from-label">Formulario Cliente</h2>
                
                <input type="hidden" name="id" value="<?php echo $id?>" /><br>

                <h4 class="from-label">Ingrese Nombre</h4>
                <input type="text" name=" nombre" class="from-control" placeholder="Ingrese Nombre" value="<?php echo $nombre?>"/><br>

                <h4 class="from-label1">Ingrese el Apellido </h4>
                <input type="text" name="apellido" class="from-control" placeholder="Ingrese Apellido" value="<?php echo $apellido?>"/><br>


                <h4 class="from-label1">Fecha de naciemiento </h4>
                <input type="date" name="fnacimiento" class="from-control" placeholder="Ingrese la fecha" value="<?php echo $fecha?>"/><br>


                <h4 class="from-label1">Ingrese el detalle </h4>
                <input type="text" name="detalle" class="from-control" placeholder="Ingrese el detalle" value="<?php echo $detalle?>"/><br>

                <br>

                <button type="submit" class="byn btn-primay" name="Enviar" value="Guardar">Guardar </button>
            </form>
        </div>
    </div>
</div>

<?php 
include("Plantillas/Pie.php");
?>