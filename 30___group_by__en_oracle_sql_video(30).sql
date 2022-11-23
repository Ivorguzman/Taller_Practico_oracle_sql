-- drop table visitantes;
CREATE TABLE visitantes (
 nombre        VARCHAR2(30),
 edad          NUMBER(2),
 sexo          CHAR(1) DEFAULT 'f',
 domicilio     VARCHAR2(30),
 ciudad        VARCHAR2(20) DEFAULT 'Cordoba',
 telefono      VARCHAR2(11),
 mail          VARCHAR2(30) DEFAULT 'no tiene',
 montocompra   NUMBER(6, 2)
);

INSERT INTO visitantes VALUES (
 'Susana Molina',
 35, DEFAULT,
 'Colon 123', DEFAULT,
 NULL,
 NULL,
 59.80
);

INSERT INTO visitantes VALUES (
 'Marcos Torres',
 29,
 'm', DEFAULT,
 'Carlos Paz', DEFAULT,
 'marcostorres@hotmail.com',
 150.50
);

INSERT INTO visitantes VALUES (
 'Mariana Juarez',
 45, DEFAULT, DEFAULT,
 'Carlos Paz',
 NULL, DEFAULT,
 23.90
);

INSERT INTO visitantes (
 nombre,
 edad,
 sexo,
 telefono,
 mail
) VALUES (
 'Fabian Perez',
 36,
 'm',
 '4556677',
 'fabianperez@xaxamail.com'
);

INSERT INTO visitantes (
 nombre,
 ciudad,
 montocompra
) VALUES (
 'Alejandra Gonzalez',
 'La Falda',
 280.50
);

INSERT INTO visitantes (
 nombre,
 edad,
 sexo,
 ciudad,
 mail,
 montocompra
) VALUES (
 'Gaston Perez',
 29,
 'm',
 'Carlos Paz',
 'gastonperez1@gmail.com',
 95.40
);

INSERT INTO visitantes VALUES (
 'Liliana Torres',
 40, DEFAULT,
 'Sarmiento 876', DEFAULT, DEFAULT, DEFAULT,
 85
);

INSERT INTO visitantes VALUES (
 'Gabriela Duarte',
 21,
 NULL,
 NULL,
 'Rio Tercero', DEFAULT,
 'gabrielaltorres@hotmail.com',
 321.50
);

SELECT
 *
FROM
 visitantes;

SELECT
 ciudad
FROM
 visitantes;

SELECT
 COUNT(*)
FROM
 visitantes;
  
  -- COMO TRABAJA LA FUNCION GROUP BY EN CONJUNTO CON LA FUNCION COUNT()

SELECT
 ciudad,
 COUNT(*) AS "CTD. DE VISITANTES POR CIUDAD "
FROM
 visitantes
GROUP BY
 ciudad;

SELECT
 ciudad,
 COUNT(telefono) AS "VISITANTES CON N° TLF."
FROM
 visitantes
GROUP BY
 ciudad;
  
  -- COMO TRABAJA LA FUNCION GROUP BY EN CONJUNTO CON LA FUNCION SUM()

SELECT
 sexo,
 SUM(montocompra) AS "TOTAL DE COMPRASPOR GENERO"
FROM
 visitantes
GROUP BY
 sexo;
  
  -- ELIMINANDO LOS REGITGROS NULOS

SELECT
 sexo,
 SUM(montocompra) AS "TOTAL DE COMPRASPOR GENERO"
FROM
 visitantes
WHERE
 sexo IS NOT NULL
GROUP BY
 sexo;
   
 -- COMO TRABAJA LA FUNCION GROUP BY CON MAS DE UN CAMPO

SELECT
 sexo,
 ciudad,
 MAX(montocompra) AS "VALOR MAYOR",
 MIN(montocompra) AS "VALOR MENOR"
FROM
 visitantes
WHERE
 sexo IS NOT NULL
 AND montocompra IS NOT NULL
GROUP BY
 sexo,
 ciudad;