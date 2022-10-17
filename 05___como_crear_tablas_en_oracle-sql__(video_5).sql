drop table usuarios ; -- borra la tabla

CREATE TABLE usuarios( -- crea la tabla
id_usuario int,
nombre CHAR(10),
fecha_nacimiento DATE,
telefono CHAR(10),
salario NUMBER(6,2)
);

 
select * FROM usuarios;

describe usuarios; -- muestra la estructura de la tabla

