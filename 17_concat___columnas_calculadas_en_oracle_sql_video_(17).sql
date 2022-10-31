



-- Informacion Original sin concatenar
select TITULO,AUTOR from libros;

--  Información concatenada con ||
select TITULO|| ' || ' ||autor from libros;
select TITULO|| '  ' ||autor from libros;-- agregando espacios a titulo de la columna

-- Calculo de  columnas 
select TITULO,PRECIO || '$', ((PRECIO * 10)/100)|| '$' ,PRECIO - ((PRECIO * 10)/100)
|| '$'  from libros;

 -- Información concatenada con funcion concat(x,x)
select
   TITULO,concat(PRECIO, '$'), 
   concat((PRECIO * 10)/100,'$') , concat (PRECIO - ((PRECIO * 10)/100),'$')    
from libros;





















 