 drop table medicamentos;
 
 create table medicamentos(
  codigo number(5) not null,
  nombre varchar2(20) not null,
  laboratorio varchar2(20),
  precio number(5,2),
  cantidad number(3,0) not null
 );

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',0,200);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina',' ','2.90' ,200);
  insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche','' ,200);
  
  select * from medicamentos;
  
--  Para recuperar registros de una tabla que tenga valores nulos (null)
--  no se deben utilizar los operadores Igual(=), no Igual(!=)
-- se debe utilizar la clausula [is null] ralaciona todos los valores nulos en iuna tabla

-- cuantos tienen el valor null en la tabla
select * from medicamentos where laboratorio is null;

-- consulta medicamento sin informacion de precio
select * from medicamentos where precio is null;

-- Nota : el valor null indica que no existe registro en la tabla

select * from  medicamentos where precio = 0;

-- consulta excluyendo todos los valores nulao de una tabla
select * from  medicamentos where laboratorio is not null;

-- consultar valores vacio en una tabla
select * from medicamentos where laboratorio = ' ';

-- consulta valor numerico vacio (se debe quitar el espacio entre las comillas)
select * from medicamentos where precio='';






