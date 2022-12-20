create database UNIVERSIDAD


create table UNIVERSIDAD
(
cod_uni int primary key identity,
NombreUniversidad varchar(13) not null,
RucUni varchar(13) check (len(RucUni)=13) not null,
NombreRector varchar(100) not null,
NombreCoordinador varchar(100) null
);


create table FACULTAD
(
cod_uni int,
cod_fac int identity,
NombreFacultad varchar (10) not null,
NombreDecano varchar(100),
constraint claveprimaria primary key(cod_uni, cod_fac),
constraint claveexterna foreign key(cod_uni) references UNIVERSIDAD(cod_uni)
);


create table CARRERA
(
cod_uni int,
cod_fac int,
CodEsc int identity,
NombreCarrera varchar(20) not null,
constraint restriccion1 primary key(cod_uni, cod_fac, CodEsc),
constraint fkCarreraUniversidadFac foreign key(cod_uni, cod_fac) references facultad (cod_uni, cod_fac),
);


create table SEMESTRE
(
CodPer int identity,
cod_uni int,
cod_fac int,
CodEsc int,
descPeriodo int not null,
FchIni date not null,
FchFin date not null,
constraint restriccion2 primary key(CodPer),
constraint fkSemestre foreign key(cod_uni, cod_fac, CodEsc) references carrera (cod_uni, cod_fac, CodEsc)
);


create table ALUMNO
(
AluCedula varchar(10) not null,
AluNombre varchar(100) not null,
AluGenero varchar(20)not null,
AluFechNac date not null,
constraint restriccion4 primary key(AluCedula)
);

--delete FROM ALUMNO
--delete from matricula

create table MATRICULA
(
MatriculaNum int identity,
AluCedula varchar(10),
CodPer int,
FechaMatricula date,
NroCreditos int
constraint restriccion3 primary key(MatriculaNum),
constraint fkMatricula1 foreign key(AluCedula) references alumno (AluCedula),
constraint fkMatricula2 foreign key(CodPer) references semestre(CodPer)
);