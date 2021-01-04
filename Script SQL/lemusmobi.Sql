create database lemusmobi;

use lemusmobi;

create table disponibilidad(id_disponibilidad int (5)not null primary key AUTO_INCREMENT,
     descripcion varchar (10));
	 
 create table tipos_casa(id_tipo int (5)not null primary key AUTO_INCREMENT,
    descripcion varchar (40),
    id_disponibilidad int(5),
    foreign key (id_disponibilidad) references disponibilidad(id_disponibilidad));	 



	
create table ubicacion(id_ubicacion int (5)not null primary key AUTO_INCREMENT,
     calle varchar (50),
     colonia varchar (50),
     numero varchar(40),
     municipio varchar(40),
     cp int(10),
     id_tipo int (20),
     foreign key (id_tipo) references tipos_casa(id_tipo));



	 
	 create table contacto(id_contacto int (10)not null primary key AUTO_INCREMENT,
     Nombre varchar (40),
     telefono varchar (40),
     email varchar (40),
     sitio_web varchar (40),
     id_ubicacion int (5),
     foreign key (id_ubicacion) references ubicacion(id_ubicacion));


	 
	  create table casa(id_casa int (5)not null primary key AUTO_INCREMENT,
      descripcion varchar (40),
plantas  int(10),
jardin   int(10),
recamara int(10),
patio    int(10),
ciudad   int(10),
comedor  int(10),
baños    int(10),
no_autos int(10),
clima    varchar(15),
garage   int(10),
cocina   int(10),
id_contacto int(10),
id_tipo  int(20),
foreign key (id_contacto) references contacto(id_contacto),
foreign key (id_tipo) references tipos_casa(id_tipo));


	 

	
	insert into disponibilidad values
        (1,'venta'),
	(2,'renta');
	
	
	insert into tipos_casa values
        (1,'casa_habitacion',1),
	(2,'departamento',2),
        (3,'terreno_baldio',2),
        (4,'terreno_residencial',1),
        (5,'locales',2),
        (6,'bodegas',1);
	
	
	
	
	
	
	