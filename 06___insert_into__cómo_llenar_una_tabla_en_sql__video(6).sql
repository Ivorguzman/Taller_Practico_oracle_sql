create table empleados(
id_empleados int not null, --  not null le indica al sisteme que tiene que ser obligatorio llenar datos
nombre varchar2(20),-- Datos de tipo caracter y si son menos de 20 caracteres el sistema recorta el espacio sobrante 
direccion varchar2(50),
id_documento varchar2(10),
sueldo number(6,2),
fecha_nacimiento date 
);


describe  empleados;

INSERT into empleados VALUES(003,'Alexander','calle 3 con calle 4 Las acacias','6213063',4000.01,to_date('01/04/78','dd/mm/yyyy'));


SELECT * from empleados;

