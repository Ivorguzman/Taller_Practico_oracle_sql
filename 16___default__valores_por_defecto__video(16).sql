drop table libros;


--Nota:
-- con varchar2 el default debe se tipo string
-- con number el default debe sur tipo numerico

create table libros (
titulo varchar2(30) default 'Valor no definido' not null ,-- si no se configura cantidad de caracteres el sitema boora espacios sobrantes
autor varchar2(30) default 'Valor no definido',
editorial varchar2(30) default 'Valor no definido' not null, -- con varchar2 el defaul de se tipo string
precio number(5,2)default 0,
cantidad number(3) default 0
);

desc libros;

select * from libros;

insert into libros values(default,'Miguelde cervantes','Sarpe', 40.36,40);
insert into libros values ('El quijote',default,'Sarpe', 50.60,90);
insert into libros values ('El quijote','Miguelde cervantes',default, 60.10,80);
insert into libros values ('El quijote','Miguelde cervantes','Sarpe',default,15);
insert into libros values ('El quijote','Miguelde cervantes','Sarpe', 140.10,default);

select * from libros;
 
