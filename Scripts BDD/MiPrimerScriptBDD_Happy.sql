create database bdd_practica_3

create table universidad
(
coduni int primary key identity,
nombreuniversidad varchar(13) not null,
rucuni varchar(13) check (len(rucuni)=13) not null,
nombrerector varchar(100) not null,
nombrecoordinador varchar(100) null
);

SELECT * FROM universidad

insert into universidad values('Espe','1715815781001','Rodrigo Gomez','Juan Perez');
insert into universidad values('Udla','1134848383001','Andres Torres','Andrea Alban');
insert into universidad values('Ute','1602934884001','Fernanda Arias','Sofia Bernis');
insert into universidad values('Catolica','1200392929001','Ruben Lopez','Paula Bernis');

create table facultad
(
coduni int,
codfac int identity,
nombrefacultad varchar(100) not null,
nombredecano varchar(100),
constraint claveprimaria primary key(coduni,codfac),
constraint claveexterna foreign key(coduni) references universidad (coduni)
);

insert into facultad values (1,'Mecanica','Vero Zapata');
insert into facultad values (1,'Electronica','Victor Bernis');
insert into facultad values (1,'Sistemas Informacion','Carlos Torres');
insert into facultad values (1,'Civil','Andres Zapata');
insert into facultad values (1,'Ciencias Administrativas','Carmen Gomez');

select * from facultad 



