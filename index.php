<?php
include("encabezado/Enca.php");
include("Admin/BDD/Conexion.php");


$sql= "select * from productos where Stock > 3;";
$result = $conn->query($sql);

?>
<head>

    <script src="js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"  />
           
   
}

</head>

<div class="container">
<div class="row">
    <?php while($row =$result->fetch_assoc()){?>
        <div class="col-md-3">
        <div class="card text-black">
        <img class="card-img-top" src="img/Productos/<?php echo $row['foto']?>" alt="">
        <div class="card-body">      
                <h4 class="card-title"> <?php echo $row['nombre']?></h4> 
                <p class="card-text"> Detalle: <?php echo $row['detalle']?></p> 
                <p class="card-text"> $<?php echo $row['precio']?></p> 
               <form action="CarritoLogica.php" method="POST">
                   <input type="hidden" name="id" value="<?php echo $row['id']?>"/>
            
                
                <button type="submit" class="btn btn-success" name="Operacion" value="Add">
                    <span class="glyphicon  glyphicon-shopping-cart"></span>Añadir al carrito</button> 
                
            </form>
        </div>
        </div>

</div> 
<?php
    }
    $conn->close();
?>
</div>
</div>

