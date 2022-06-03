create table productos(
idp int not null PRIMARY KEY ,
    nombre varchar(50), 
    marca varchar(50),
    detalle varchar(50),
    precio decimal,
    stock int,
    foto varchar(200)
);

create table clientes(
    idc int not null PRIMARY key AUTO_INCREMENT,
    nombre varchar (50),
    apellido varchar(50),
    usr varchar(64),
    pwd varchar(64),
    fnacimiento date,
    detalle varchar(500)
    );
    
    
    create table usuarios(
    idu int PRIMARY KEY not null AUTO_INCREMENT,
        nombres varchar(50),
        apellidos varchar(50),
        usuario varchar(50),
        clave varchar(50)
    );
    
    create table facturas(
    idf int PRIMARY key not null AUTO_INCREMENT,
        fecha date,
        subtotal decimal,
        IVA decimal,
        total decimal,
        idcliente int,
    	FOREIGN key (idcliente) references clientes(idc)
    );
    
    
    create table detalles(
    idd int NOT null PRIMARY key AUTO_INCREMENT,
        cantidad int,
        precioventa decimal,
        importe decimal,
        idproducto int ,
        idfactura int ,
        FOREIGN key (idproducto) references productos(idp),
        FOREIGN key (idfactura) references facturas(idf)
        
    );