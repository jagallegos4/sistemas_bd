-- EJERCICIOS DE SELECT (CONSULTAS)

-- EL * NOS DEVUELVE TODOS LOS REGISTROS DE UNA TABLA O DE VARIAS TABLAS

SELECT * FROM ventas

-- CONSULTE EL DETALLE DE VENTAS CON LA SIGUIENTE
-- INFORMACION: CLIENTE, FECHA DE VENTA Y MONTO

SELECT CLIENTE, FECHA, TOTAL
FROM VENTAS 

-- DISTINCT

--INDIQUE LOS CLIENTES DE LA TABLA VENTAS

SELECT * FROM  VENTAS

SELECT DISTINCT CLIENTE FROM VENTAS

--INDIQUE LAS FECHAS QUE SE REALIZARON VENTAS

SELECT DISTINCT FECHA FROM VENTAS 

-- INDIQUE EL CLIENTE Y LAS FECHAS DE COMPRA

SELECT DISTINCT CLIENTE, FECHA 
FROM VENTAS

--SELECT *, VALOCREDITO * 1.12 AS 'Valor Credito conIva' FROM CARRERA

SELECT NUM_FACTURA, CLIENTE, FECHA, MONTO 
FROM VENTAS

SELECT * FROM PARAMETROS_SISTEMA

--INSERT INTO PARAMETROS_SISTEMA VALUES(1,'DATO DEL IVA',0.12)
INSERT INTO PARAMETROS_SISTEMA VALUES(1,'SAN VALENTIN',0.010);
INSERT INTO PARAMETROS_SISTEMA VALUES(1,'DIA DE LA MADRE',0.030);
INSERT INTO PARAMETROS_SISTEMA VALUES(1,'DIA DEL PADRE',0.020);

SELECT * FROM PARAMETROS_SISTEMA

UPDATE PARAMETROS_SISTEMA
SET VALOR = 0.08
WHERE IDPARAMETRO = 1

SELECT NUM_FACTURA, CLIENTE, FECHA, MONTO, 
(MONTO*1.12)-MONTO AS IVA 
FROM VENTAS

-- AL QUERY ANTERIOR CALCULE EL TOTAL EN CADA LINEA

SELECT NUM_FACTURA, 
CLIENTE, 
FECHA, 
MONTO, 
(MONTO*1.12)-MONTO AS IVA, 
((MONTO*1.12)-MONTO)+MONTO AS TOTAL 
FROM VENTAS

-- select * from carrera where valocredito>40

SELECT * FROM VENTAS

--DETALLE LAS VENTAS REALIZADAS POR JUAN PEREZ

SELECT * FROM
VENTAS 
WHERE CLIENTE = 'Juan Perez'

SELECT * FROM
VENTAS 
WHERE CLIENTE = 'Juan Perez'

-- LIKE

SELECT * FROM
VENTAS 
WHERE CLIENTE LIKE '%Perez%'

select distinct cliente 
from Ventas 
where cliente like 'Perez%'

-- BETWEEN

SELECT *
FROM VENTAS
WHERE NUM_FACTURA IN (1,2,3,4,5,6,7,8,9,10,11,.... )

SELECT *
FROM VENTAS
WHERE NUM_FACTURA BETWEEN 1 AND 100
 
-- IN

select * 
from Ventas 
where num_factura IN (1,4,8)

select NUM_FACTURA, CLIENTE, FECHA, TOTAL
from Ventas 
where num_factura IN (1,4,8)

SELECT * 
FROM VENTAS
WHERE MONTO = 700

SELECT * 
FROM VENTAS
WHERE IVA >= 50

--	IS NULL

SELECT * FROM
VENTAS 
WHERE MONTO IS  NULL 

--	OR

SELECT * FROM
VENTAS 
WHERE cliente like '%Perez'
OR monto > 500 

SELECT * FROM
VENTAS 
WHERE cliente like '%Perez'
AND monto > 500 

SELECT * 
FROM
VENTAS
ORDER BY Cliente

SELECT * 
FROM
VENTAS
ORDER BY Monto desc

SELECT * 
FROM
VENTAS
ORDER BY cliente, num_factura desc

SELECT * 
FROM
VENTAS
ORDER BY num_factura, cliente  desc

SELECT *
FROM VENTAS
ORDER BY 2,1

-- OBTENER EL VALOR DE VENTA POR CLIENTE

SELECT CLIENTE, 
SUM(TOTAL) AS TOTAL_VENTAS
FROM VENTAS
GROUP BY CLIENTE 

-- OBTENER EL VALOR DE VENTA POR CLIENTE 
-- CON FACTURAS ENTRE EL 1 AL 3 DE ENERO

SELECT CLIENTE, SUM(total) AS TOTAL_VENTA
FROM Ventas
WHERE FECHA BETWEEN '2022-01-01' AND '2022-01-03'
GROUP BY CLIENTE

-- OBTENER EL VALOR DE VENTA POR CLIENTE 
-- CON FACTURAS MAYORES AL 3 DE ENERO

SELECT CLIENTE, SUM(total) AS TOTAL_VENTA
FROM Ventas
WHERE FECHA >  '2022-01-03'
GROUP BY CLIENTE

-- OBTENER EL VALOR TOTAL DE VENTA
-- POR CLIENTE Y FECHA

SELECT CLIENTE, FECHA, SUM(TOTAL)
FROM Ventas
GROUP BY CLIENTE, FECHA	

SELECT SUM(total) AS TOTAL_VENTA,
CLIENTE, FECHA
FROM Ventas
GROUP BY TOTAL, CLIENTE, FECHA

-- OBTENER EL TOTAL DE VENTAS POR FECHA

SELECT FECHA, SUM(TOTAL)
FROM Ventas
GROUP BY  FECHA 

-- OBTENER EL TOTAL DE VENTAS

SELECT * FROM VENTAS

SELECT SUM(TOTAL) AS TOTAL_VENTAS
FROM VENTAS 

-- OBTENER EL VALOR MAXIMO DE VENTAS

SELECT MAX(TOTAL) AS TOTAL_VENTAS
FROM VENTAS 

-- OBTENER EL VALOR MINIMO DE VENTAS

SELECT MIN(TOTAL) AS TOTAL_VENTAS
FROM VENTAS 

-- OBTENER EL VALOR PROMEDIO DE VENTAS

SELECT AVG(TOTAL) AS TOTAL_VENTAS
FROM VENTAS 

-- OBTENER EL VALOR PROMEDIO DE VENTAS
-- DEL PRIMERO AL DOS DE ENERO

SELECT AVG(TOTAL) AS TOTAL_VENTAS
FROM VENTAS
WHERE FECHA BETWEEN '2022-01-01' AND '2022-01-02'












--	AND 

--	NOT 

--cl�usula �ORDER BY�

UPPER(cadenaTexto): 

LOWER(cadenaTexto): 

LEN(cadenaTexto): 

CONCAT(cadenaTexto, cadenaTexto2,�): 

DATEPART(datepart, datetime): 

DATEADD(datepart, Interval, datetime): 

DATEDIFF(datepart, startdate, enddate): 

CAST ( expression AS data_type [ ( length ) ] )

CASE expresi�n
  WHEN valor1 THEN resultado1
  [WHEN valor2 THEN resultado2] ...
  [ELSE resultado_por_defecto]
END;

-- GROUP BY 

-- HAVING

--SUM(EXPRESION)

--COUNT(*)

--MIN

--MAX
