<?php


include("Admin/BDD/Conexion.php");
header('Content-type:application/vnd.ms-excel;charset=UTF-8');
header('Content-Disposition:attachment; filename=nombre_archivo.xls');
echo"<table border='1' cellpadding='2'cellspacing='0' width='100%'>";
$sql = "Select * from productos;";
$datos= $conn->query ($sql );
echo"<tr><td>ID</td><td>Nombre</td><td>Detalle</td><td>Precio";
foreach ($datos as $produc ){
    echo"<tr><td>".$produc['id']."</td><td>".$produc['nombre']."</td><td>".$produc['detalle']."</td><td>".$produc['precio']."</td></tr> ";
}
?>





   