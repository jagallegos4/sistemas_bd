SELECT * from facultad

select COUNT(*) as[ALUMNOS MASCULINOS]
from Alumno
WHERE AluGenero='M'

select COUNT(*) as[ALUMNOS FEMENINO]
from Alumno
WHERE AluGenero='F'


select COUNT(*) as[Alumnos Nacidos desde 2002]
FROM ALUMNO
where DATEPART(year, AluFechNac)>='2002'

select
cod_uni, COUNT(cod_fac) as [Numero de facultades]
from facultad
GROUP BY cod_uni


select * 
from Alumno
where AluNombre like 'D%'

select * 
from Alumno
where AluNombre like 'JUAN%' and DATEPART(year, AluFechNac)>='2002'

select * from UNIVERSIDAD

select facultad.NombreDecano, FACULTAD.NombreFacultad, UNIVERSIDAD.NombreUniversidad, FACULTAD.cod_fac
	 from FACULTAD inner join UNIVERSIDAD on FACULTAD.cod_uni=UNIVERSIDAD.cod_uni
	 where NombreFacultad='SISTEMAS'

select MATRICULA.MatriculaNum, MATRICULA.AluCedula, ALUMNO.AluNombre, ALUMNO.AluGenero, ALUMNO.AluFechNac,
	MATRICULA.NroCreditos, SEMESTRE.CodEsc, SEMESTRE.FchIni, SEMESTRE.FchFin  	
	from MATRICULA inner join ALUMNO on MATRICULA.AluCedula = ALUMNO.AluCedula inner join SEMESTRE on SEMESTRE.CodPer=MATRICULA.CodPer
	where NroCreditos <= 26

select * from CARRERA

