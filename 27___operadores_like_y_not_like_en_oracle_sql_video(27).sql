drop table empleados;
 
 create table empleados(
  nombre varchar2(30),
  documento char(8) not null,
  domicilio varchar2(30),
  fechaingreso date,
  seccion varchar2(20),
  sueldo number(6,2),
  primary key(documento)
 );
  insert into empleados
  values('Juan Perez','22333444','Colon 123',to_date('08/10/1990','dd/mm/yyyy'),'Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987',to_date('18/12/1995','dd/mm/yyyy'),'Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235',to_date('15/05/2005','dd/mm/yyyy'),'Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873',to_date('12/02/1999','dd/mm/yyyy'),'Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801',to_date('22/09/2002','dd/mm/yyyy'),'Contaduria',630.70);
 insert into empleados
  values('Yolanda perez','35111222','Colon 180',to_date('08/10/1990','dd/mm/yyyy'),'Administracion',400);
 insert into empleados
  values('Rodolfo perez','35555888','Coronel Olmedo 588',to_date('28/05/1990','dd/mm/yyyy'),'Sistemas',800);
 
 DESC empleados;
  
 SELECT * FROM empleados;
 
SELECT * FROM empleados WHERE nombre LIKE '%Perez';

SELECT  * from empleados WHERE nombre LIKE '%erez';
SELECT  * from empleados WHERE nombre not LIKE '%erez';

SELECT * FROM empleados WHERE nombre like '%Perez%';
 
SELECT * FROM empleados WHERE nombre like '%erez%';

SELECT * from empleados where nombre like 'R%z';

 SELECT * FROM empleados;

select * from empleados where domicilio like 'C%0';
select * from empleados where domicilio not like 'C%0';

select * from empleados where nombre like 'J%z' and domicilio LIKE 'C%3'
OR nombre LIKE 'A__';

select * from empleados where nombre like 'J%z' and domicilio LIKE 'C%3'
OR nombre LIKE '%a'
OR documento LIKE'2%7';

select * from empleados where nombre like 'J%z' and domicilio LIKE 'C%3' ;
select * from empleados where nombre not like 'J%z' and domicilio not LIKE 'C%3' ;







  
  
  