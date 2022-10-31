
-- ***Utilizacion de los alias (AS) ****

-- Informacion Original sin concatenar
select TITULO,AUTOR from libros;

-- Información concatenada con ||
select TITULO|| ' || ' ||autor as "Titulo y Autor" from libros; -- cuando el alias tiene espacio se debe poner emtre comillas
select TITULO|| '  ' ||autor as "            Titulo y Autor" from libros;-- agregando espacios a titulo de la columna

select TITULO,PRECIO || '$', ((PRECIO * 10)/100)|| '$' as "Descuento (10%)",PRECIO - ((PRECIO * 10)/100)
|| '$' as "Precio menos descuento (10%)" from libros;

 -- Información concatenada con |funcion concat(x,x)
select
   TITULO,concat(PRECIO, '$'), 
   concat((PRECIO * 10)/100,'$')  "Descuento", -- se pueda omitir la palbra reservada AS colocando el alias enter comillas
   PRECIO - ((PRECIO * 10)/100)|| '$' as "Precio menos descuento (10%)"    
from libros;





















 