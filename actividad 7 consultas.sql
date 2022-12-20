insert into [dbo].[libro] values('Rio Blanco',230,'LOIJ02354','los andes');
insert into [dbo].[libro] values('Anatomia',780,'ASDW5264','McCain');
insert into [dbo].[libro] values('Introducción a la Electrónica',560,'ACD256','Libertad');
insert into [dbo].[libro] values('La Casa Abandonada',420,'SASSADE785','CIERTE');

SELECT * FROM [dbo].[libro];

insert into [dbo].[ejemplar] values(1,'F1-A5');
insert into [dbo].[ejemplar] values(2,'F2-B10');
insert into [dbo].[ejemplar] values(3,'F4-D6');
insert into [dbo].[ejemplar] values(4,'F10-G5');

SELECT * FROM [dbo].[ejemplar];

insert into [dbo].[usuario] values('ANDRES','PERALTA','0998568745','IBARRA');
insert into [dbo].[usuario] values('DIANA','CEVALLOS','0985987122','EL COCA');
insert into [dbo].[usuario] values('JORGE','COBOS','0996587444','SALINAS');
insert into [dbo].[usuario] values('MARIO','TERAN','0912357896','QUITO');

SELECT * FROM [dbo].[usuario];

insert into [dbo].[prestamo] values(1,4,'2021/12/18', '2022/01/05');
insert into [dbo].[prestamo] values(2,2,'2021/01/25', '2021/04/12');
insert into [dbo].[prestamo] values(3,1,'2021/06/04', '2021/08/10');
insert into [dbo].[prestamo] values(4,3,'2021/10/16', '2021/11/05');

SELECT * FROM [dbo].[prestamo];