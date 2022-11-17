SELECT * from  ARTICULOS ;

-- consulta de todos los articulos iguales a monitores (=)
SELECT * from  ARTICULOS where  ARTICULO= 'monitor';

-- consultar todos los articulos menos monitores (!=)
SELECT * from ARTICULOS where   ARTICULO!= 'monitor';

-- consultar todos los articuloscon precio mayor a 100 (>)
SELECT * from ARTICULOS where  precio_costo > 100;

-- consultar todos los articuloscon precio menor a 100 (<)
SELECT * from ARTICULOS where  precio_costo < 100; 

-- consultar todos los articuloscon precio mayor a 900 (>=)
SELECT * from ARTICULOS where  precio_costo >= 800; 

-- consultar todos los articuloscon precio menor a 900 (<=)
SELECT * from ARTICULOS where  precio_costo <= 600; 




