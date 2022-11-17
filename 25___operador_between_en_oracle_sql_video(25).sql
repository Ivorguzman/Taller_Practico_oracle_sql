-- ==> https://www.techonthenet.com/oracle/between.php
-- Operador BETWEEN 

-- La condición BETWEEN de Oracle se utiliza para recuperar valores dentro de un rango
-- en una instrucción SELECT , INSERT , UPDATE o DELETE .
-- SELECT * FROM xxxxx WHERE yyyyyy BETWEEN 4000 AND 4999;

-- CTRL+F7
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

SELECT * FROM medicamentos;

SELECT* FROM medicamentos WHERE precio BETWEEN  1 and 5  ORDER BY fechavencimiento;

SELECT * FROM medicamentos WHERE fechavencimiento BETWEEN '01/01/17' and '01/02/18' ORDER BY fechavencimiento ASC;


  
  
  