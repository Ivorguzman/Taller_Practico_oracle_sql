 --borrar antigua tabla de medicamentos
 drop table medicamentos;

 --crear nuevamente la tabla
  create table medicamentos(
  codigo number(5),
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(3),
  fechavencimiento date not null,
  numerolote number(6) default null,
  primary key(codigo)
 );

--insertar datos en la tabla
 insert into medicamentos
  values(120,'Sertal','Roche',5.2,1,to_date('01/02/2015','dd/mm/yyyy'),123456);
 insert into medicamentos 
  values(220,'Buscapina','Roche',4.10,3,to_date('01/02/2016','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(228,'Amoxidal 500','Bayer',15.60,100,to_date('01/05/2017','dd/mm/yyyy'),232566);
 insert into medicamentos
  values(324,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(587,'Bayaspirina',null,2.10,null,to_date('01/12/2019','dd/mm/yyyy'),556999); 
 insert into medicamentos 
  values(789,'Amoxidal jarabe','Bayer',null,null,to_date('15/12/2019','dd/mm/yyyy'),null);
  
  DESC medicamentos;
  
  select * FROM medicamentos;
  
  select COUNT(*) FROM medicamentos; -- cuantos registros  existen
   
  SELECT count(*) "Total Registros en la tabla" FROM medicamentos ;
   
  select count(laboratorio) "Laboratorios registrados " FROM medicamentos;
  
  select count(laboratorio) "Laboratorios registrados", count(cantidad) 
  " Medicamentos registrados " from medicamentos ;
  
  select count(fechavencimiento) "Medicmentos vencidos" FROM medicamentos
  WHERE EXTRACT(YEAR FROM fechavencimiento) in (2015,2016);
  
  select count(fechavencimiento) "Medicmentos  no vencidos" FROM medicamentos
  WHERE EXTRACT(YEAR FROM fechavencimiento) in (2019);Oracle conexiones

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 