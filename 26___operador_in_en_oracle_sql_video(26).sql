-- condición Oracle *** IN ***
-- condición Oracle *** NOT ***
-- condición Oracle *** EXTRAC ***

/*
Descripción
La condición IN de Oracle se usa para ayudar a reducir la necesidad de usar múltiples condiciones OR en una declaración SELECT, INSERT, UPDATE o DELETE.

Sintaxis
La sintaxis de la condición IN en Oracle/PLSQL es:

expression IN (value1, value2, ... value_n);



Descripción
La función Oracle/PLSQL EXTRACT extrae un valor de un valor de fecha o intervalo.
*/
drop table medicamentos;

 create table medicamentos(
  codigo number(6) not null,
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(4),
  fechavencimiento date not null,
  primary key(codigo)
 );

 insert into medicamentos
  values(102,'Sertal','Roche',5.2,10,to_date('01/02/2020','dd/mm/yyyy'));
 insert into medicamentos 
  values(120,'Buscapina','Roche',4.10,200,to_date('01/12/2017','dd/mm/yyyy'));
 insert into medicamentos 
  values(230,'Amoxidal 500','Bayer',15.60,100,to_date('28/12/2017','dd/mm/yyyy'));
 insert into medicamentos
  values(250,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'));
 insert into medicamentos 
  values(350,'Bayaspirina','Bayer',2.10,150,to_date('01/12/2019','dd/mm/yyyy'));
 insert into medicamentos 
  values(456,'Amoxidal jarabe','Bayer',5.10,250,to_date('01/10/2020','dd/mm/yyyy'));

DESC MEDICAMENTOS;

SELECT * FROM medicamentos;

SELECT * FROM medicamentos WHERE laboratorio IN ('Roche');

SELECT *  FROM medicamentos  WHERE cantidad = 100
OR cantidad = 150;

-- misma consulta con  el operador IN (reduce la necesidad de usar múltiples condiciones OR)
SELECT
 *
FROM medicamentos  
WHERE cantidad IN(100,150);

-- Ejemplo: uso del operador NOT

SELECT * FROM medicamentos WHERE cantidad NOT IN(100,150);

-- Ejemplo: uso de la funcion EXTRACT(....) funcion para manejar  fechas

/*
a sintaxis de la función EXTRAER en Oracle/PLSQL es:

EXTRACT (
{ YEAR | MONTH | DAY | HOUR | MINUTE | SECOND }
| { TIMEZONE_HOUR | TIMEZONE_MINUTE }
| { TIMEZONE_REGION | TIMEZONE_ABBR }
FROM { date_value | interval_value } )
*/


SELECT * FROM medicamentos WHERE EXTRACT(YEAR  FROM fechavencimiento)in (2017,2018) ORDER by fechavencimiento ASC;

SELECT * FROM medicamentos WHERE EXTRACT(Month from fechavencimiento) in  (02,12);

SELECT * FROM medicamentos WHERE EXTRACT(day from fechavencimiento) in  (28);
  
 



