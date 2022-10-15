
/*   
   1.ESTO ES UN COMENTARIO DE BLOQUE
*/


 -- 2.ESTE ES UN COMETARIO EN LINEA
 
/*

Para aclarar algunas instrucciones, en ocasiones, necesitamos agregar comentarios.

Es posible ingresar comentarios en la línea de comandos, es decir, 
un texto que no se ejecuta; para ello se emplean dos guiones (--):

 select *from libros; --mostramos los registros de libros 
en la línea anterior, todo lo que está luego de los guiones (hacia la derecha) no se ejecuta.

Para agregar varias líneas de comentarios, se coloca una barra seguida de un asterisco (/*)
al comienzo del bloque de comentario y al finalizarlo, un asterisco seguido de una barra 

*/


/*

show tables;
create table usuarios (
nombre varchar(30),
clave varchar(10)
);

*/

-- drop table usuarios;

create table usuarios (
nombre varchar(30),
clave varchar(10)
);

show tables; -- consulta para mostrar  la tabla y su contenido

describe usuarios; -- cosulta para mostrar la estrucyura de la tabla








