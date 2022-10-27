-- Clave primaria es un campo o varios que identifican un registro unico en una taba ( equivalenta a un ID en programación)
-- Los valores de una llave primaria son valores unicos un una tabla.

 -- drop table usuarios;

-- Forma de crear clave primaria
-- FORMA GRAFICA : TABLA => doble click => nueva tabla => crear campos  => tildar en avanzado => crear compo de clave primaria

--FORMA SCRIPT:
create table usuarios(
nombre varchar2(20) not null, -- no puede carecer de valor
clave varchar2(10) not null,-- no puede carecer de valor
primary key(nombre) -- tranforma al campo que este como parametro en llave primaria
);

select * from usuarios;

insert into usuarios values ('Jose','123456');
insert into usuarios values('Manuel','654321');
insert into usuarios values('Manuel','654321'); -- no permite registrarla por aque existe;  error:ORA-00001: unique constraint (CURSO_ORACLE.SYS_C007120) violated
insert into usuarios values('Manel','123');
delete usuarios where nombre ='Manel';


