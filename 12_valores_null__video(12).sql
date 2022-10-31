/*
La restricción NOT NULL obliga a una columna a NO aceptar valores NULL . Esto obliga a que un campo siempre contenga un valor, 
lo que significa que no puede insertar un nuevo registro o actualizar
un registro sin agregar un valor a este campo.



 */
drop table libros;

CREATE TABLE libros (
titulo varchar(30) not null ,--  Indicamos que es obligatorio insetar un registro
autor varchar(20) not null, 
editorial varchar (15) null, -- indicamos que puede tener el campo vacio
precio number(5,2)-- campo de cinco digitos y dos decimales
);  


insert  into libros (TITULO,AUTOR,EDITORIAL,PRECIO) values  ('El elefante Blanco','Borges','Emece',null); -- Forma 1 de insetar registros
insert  into libros  values  ('El elefante Blanco','Borges','Emece',null);  -- Forma 2 de insetar registros campo precio Null

insert  into libros  values  (null,'Borges','Emece',300.00); -- not insert NULL into ("CURSO_ORACLE"."LIBROS"."TITULO")
insert  into libros  values  ('','Borges','Emece',300.00); -- not insert NULL into ("CURSO_ORACLE"."LIBROS"."TITULO")
insert  into libros  values  (' ','Borges','Emece',300.00);-- valor del campo titulo [ VACIO ]
insert  into libros  values  ('El elefante Negro','Borges','Emece',300.00); 
insert  into libros  values  ('El elefante verde','Borges','Emece',0); -- campo precio [0]

select * from libros;