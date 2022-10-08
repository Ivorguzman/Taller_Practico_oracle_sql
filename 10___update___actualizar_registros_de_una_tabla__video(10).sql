-- drop table if exists ARTICULOS; No fiunciona en Oracle_sql,  sql_developer o Oracle data Base XE
drop table  ARTICULOS; -- sin el uso de  if exists 
select * from articulos;
select * from articulos where  codigo=8 or codigo=3 order by codigo desc; 

 create table articulos(
  codigo number(5),
  nombre varchar2(20),
  descripcion varchar2(30),
  precio number(7,2)
 );


 insert into articulos values (1,'impresora','Epson Stylus C45',400.80);
 insert into articulos values (2,'impresora','Epson Stylus C85',500);
 insert into articulos values (3,'monitor','Samsung 14',800);
 insert into articulos values (4,'teclado','ingles Biswal',100);
 insert into articulos values (5,'teclado','español Biswal',90);
 insert into articulos values (6, 'mouse', 'Genius',20);
 insert into articulos values (7, 'mouse','teclado blanco', 30);
 insert into articulos values (8, 'Computadora','Dell', 2000);
 

describe articulos;
 
 -- actualizacion UN campo de un registro  determinado (update .... set .....) (where xxxx=xx) 
  update articulos  set  nombre = 'impresora' where codigo = 8;
  
-- actualizar VARIOS campos de un registro  determinado (update .... set .....) (where xxxx=xx) 
  update articulos  set nombre= 'impresora', precio = 500  where codigo = 8;

--actualizar TODOS  los campos  de una tabla;
   update articulos  set  precio =1000 ;

  
  
  
  
  
  
  
  
  
  
  
  