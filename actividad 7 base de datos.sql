create database BIBLIOTEK_GALLEGOS_JOSE


create table libro
(
cod_libro int primary key identity,
titulo varchar(50) not null,
paginas int not null,
isbn varchar(20) not null,
editorial varchar(50) null,
);


create table ejemplar
(
cod_libro int,
cod_ejemplar int identity,
localizacion varchar(10) not null,
constraint claveprimaria primary key(cod_ejemplar),
constraint clavexterna foreign key(cod_libro) references libro(cod_libro)
);

create table usuario
(
cod_usuario int identity,
nom_usuario varchar(100) not null,
ape_usuario varchar(100) not null,
telefono varchar(10) not null,
direccion varchar(50),
constraint claveprimaria2 primary key(cod_usuario)
);

create table prestamo
(
cod_usuario int,
cod_ejemplar int,
cod_prestamo int identity,
fecha_perestamo date not null,
fecha_devolucion date not null,
constraint claveprimaria3 primary key(cod_prestamo),
constraint fkprestamo1 foreign key(cod_usuario) references usuario(cod_usuario),
constraint fkprestamo2 foreign key(cod_ejemplar) references ejemplar(cod_ejemplar)
);