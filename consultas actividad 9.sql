select facultad.NombreDecano, FACULTAD.NombreFacultad, UNIVERSIDAD.NombreUniversidad, FACULTAD.cod_fac
	 from FACULTAD inner join UNIVERSIDAD on FACULTAD.cod_uni=UNIVERSIDAD.cod_uni
	 where NombreFacultad='SISTEMAS'



select facultad.nombrefacultad AS FACULTAD, FACULTAD.cod_fac, carrera.codesc, carrera.nombrecarrera AS CARRERA
	from facultad inner join carrera on facultad.cod_fac=carrera.cod_fac
	where nombrefacultad = 'CIENCIAS'


select * from FACULTAD

select count(alucedula), AluGenero from ALUMNO
group by AluGenero

select * from SEMESTRE

select MATRICULA.CodPer, MATRICULA.FechaMatricula, ALUMNO.AluNombre, ALUMNO.AluCedula
	from MATRICULA inner join ALUMNO on MATRICULA.AluCedula=ALUMNO.AluCedula
	where FechaMatricula > '2022-03-08'

select MATRICULA.MatriculaNum, MATRICULA.FechaMatricula, ALUMNO.AluCedula, ALUMNO.AluNombre, MATRICULA.NroCreditos
	from MATRICULA inner join ALUMNO on MATRICULA.AluCedula=ALUMNO.AluCedula
	where MATRICULA.NroCreditos>28
	
select SEMESTRE.cod_fac, SEMESTRE.CodEsc, SEMESTRE.CodPer, CARRERA.NombreCarrera, CARRERA.CodEsc, SEMESTRE.FchIni
	from SEMESTRE inner join CARRERA on SEMESTRE.CodEsc=CARRERA.CodEsc
	where SEMESTRE.FchIni='2022-03-10'

select MATRICULA.MatriculaNum, MATRICULA.FechaMatricula, ALUMNO.AluCedula, ALUMNO.AluNombre, MATRICULA.NroCreditos, AluFechNac
	from MATRICULA inner join ALUMNO on MATRICULA.AluCedula=ALUMNO.AluCedula
