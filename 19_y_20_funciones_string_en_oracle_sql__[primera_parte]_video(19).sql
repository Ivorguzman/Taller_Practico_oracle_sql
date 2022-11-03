--***********************  Funiones internas de oracle ******************************
--permiten hacer el manejo de string
-- solo se pueden usar con caracteres alfanumerico
-- retornan string , valores numericos, 

-- https://www.techonthenet.com/oracle/functions/chr.php
-- CHR(65) ==> 
-- ASCII('A') ==> 
-- INITCAP('hola') ==> 
-- LOWER('BUENAS') ==> 
-- UPPER('buenas') ==> 
-- CONCAT() ==> le permite concatenar dos cadenas juntas.
-- LPAD() ==> rellena el lado izquierdo de una cadena con un conjunto espec�fico de caracteres (cuando cadena1 no es nulo).
-- RPAD() ==> rellena el lado derecho de una cadena con un conjunto espec�fico de caracteres (cuando string1 no es nulo)
-- LTRIM() ==>  elimina todos los caracteres especificados del lado izquierdo de una cadena.
-- RTRIM() ==> elimina todos los caracteres especificados del lado derecho de una cadena.

/*
-- TRIM() 
TRIM( [ [ LEADING | TRAILING | BOTH ] trim_character FROM ] string1 )

Par�metros o Argumentos
LEADING
La funci�n eliminar� caracter del frente de string1.

TRAILING
La funci�n eliminar� caracter del final de string1 .

BOTH
La funci�n eliminar� caracter del frente y el final de string1 .

trim_character
El car�cter que se eliminar� de string1 . Si se omite este par�metro, la funci�n TRIM eliminar� los caracteres de espacio de string1 .

string1
La string para recortar.

*/

/*

-- REPLACE()
REPLACE( cadena1, cadena_para_reemplazar [, cadena_reemplazo] )
Par�metros o Argumentos

cadena1
La cadena para reemplazar una secuencia de caracteres con otro conjunto de caracteres.

cadena_para_reemplazar
La cadena que se buscar� en string1 .

cadena_reemplazo (Opcional)
Todas las apariciones de cadena_para_reemplazar se reemplazar�n con 
cadena_reemplazo en cadena1 .Si se omite el par�metro cadena_reemplazo , 
la funci�n REPLACE simplemente elimina todas las apariciones de cadena_para_reemplazar
y devuelve la cadena resultante.

*/

/*

-- SUBSTR( )
SUBSTR( string, start_position [, length ] )
Par�metros o Argumentos

string
La cadena de origen.

start_position
La posici�n inicial para la extracci�n. La primera posici�n en la cadena es siempre 1.

length
Opcional. Es el n�mero de caracteres a extraer. Si se omite este par�metro,
la funci�n SUBSTR devolver� la cadena completa.

Devoluciones
La funci�n SUBSTR devuelve un valor de cadena.
Si lengthes un n�mero negativo, la funci�n SUBSTR devolver� un valor NULL.

Nota
Si start_position es 0, entonces la funci�n SUBSTR trata start_position como 1 (es decir, la primera posici�n en la cadena).
Si start_position es un n�mero positivo, entonces la funci�n SUBSTR comienza desde el principio de la cadena.
Si start_position es un n�mero negativo, entonces la funci�n SUBSTR comienza desde el final de la cadena y cuenta hacia atr�s.
Consulte tambi�n la

*/

-- LENGTH() ==> devuelve la longitud de la cadena especificada.

/*
-- INSTR() ==> devuelve la ubicaci�n de una subcadena en una cadena.
La sintaxis de la funci�n: INSTR( string, substring [, start_position [, th_appearance ] ] )

Par�metros o Argumentos

string
La cadena a buscar. la cadena puede ser CHAR, VARCHAR2, NCHAR, NVARCHAR2, CLOB o NCLOB.

substring
La subcadena a buscar en string . la subcadena puede ser CHAR, VARCHAR2, NCHAR, NVARCHAR2, CLOB o NCLOB.

start_position
Opcional. La posici�n en la cadena donde comenzar� la b�squeda. Si se omite, el valor predeterminado es 1.
La primera posici�n en la cadena es 1. Si la posici�n_inicial es negativa,
la funci�n INSTR cuenta hacia atr�s el n�mero de caracteres de la posici�n_inicial desde el final de la cadena
y luego busca hacia el comienzo de la cadena .

nth_appearance
Opcional. La en�sima aparici�n de substring . Si se omite, el valor predeterminado es 1.
*/

/*
--  TRANSLATE 
reemplaza una secuencia de caracteres en una cadena con otro conjunto de caracteres. Sin embargo, reemplaza un solo car�cter a la vez.

Por ejemplo, reemplazar� el primer car�cter en string_to_replace con el primer car�cter en replace_string .
Luego reemplazar� el segundo car�cter en string_to_replace con el segundo car�cter en replace_string , y as� sucesivamente.

Sintaxis
La sintaxis de la funci�n TRANSLATE( string1, string_to_replace, replacement_string )

TRANSLATE( string1, string_to_replace, replacement_string )

Par�metros o Argumentos

string1
La cadena para reemplazar una secuencia de caracteres con otro conjunto de caracteres.

string_to_replace
La cadena que se buscar� en string1 .

replacement_string
Todos los caracteres en string_to_replace se reemplazar�n con el car�cter correspondiente en replace_string .

*/




-- CHR() 
select chr(65) from dual; -- consulta del caracter numero 65(A) ASCII en la tabla dual

-- ASCII()
select ascii('A') from dual;--consulta inversa el codigo del caracter A(65) en la tabla ASCII
select ascii('a') from dual;--consulta inversa el codigo del caracter a(97) en la tabla ASCII

-- INITCAP() 
select INITCAP('the soap') from dual; --The Soap

-- LOWER()
 select lower('BUENAS TARDES') from dual; -- buenas tardes
 
 -- UPPER()
select UPPER('buenas tardes') from dual; -- BUENAS TARDES

-- CONCAT()
select concat('buenas','tardes') from dual;

-- LPAD()
select LPAD('ORACLE' ,10,'xyz-') from dual ; 
select LPAD('ORACLE' ,11,'xyz-') from dual;
select LPAD('ORACLE' ,12,'xyz-') from dual;
select LPAD('ORACLE' ,13,'xyz-') from dual;
select LPAD('ORACLE' ,14,'xyz-') from dual;
--________________________________________

select LPAD('ORACLE' ,9,'xyz-') from dual;
select LPAD('ORACLE' ,8,'xyz-') from dual;
select LPAD('ORACLE' ,7,'xyz-') from dual;
select LPAD('ORACLE' ,6,'xyz-') from dual;


-- RPAD()
select RPAD('ORACLE' ,10,'xyz-') from dual ; 
select RPAD('ORACLE' ,11,'xyz-') from dual;
select RPAD('ORACLE' ,12,'xyz-') from dual;
select RPAD('ORACLE' ,13,'xyz-') from dual;
select RPAD('ORACLE' ,14,'xyz-') from dual;
--________________________________________

select RPAD('ORACLE' ,9,'xyz-') from dual;
select RPAD('ORACLE' ,8,'xyz-') from dual;
select RPAD('ORACLE' ,7,'xyz-') from dual;
select RPAD('ORACLE' ,6,'xyz-') from dual;
 
 
 -- LTRIM() 
 select LTRIM('   tech') from dual;--. Si se omite este par�metro, la funci�n LTRIM eliminar� todos los espacios iniciales de string1 .
 select LTRIM('   tech', ' ') from dual;
 select LTRIM('000123', '0') from dual;
 select LTRIM('123123Tech', '123') from dual;
 select LTRIM('123123Tech123', '123') from dual;
 select LTRIM('xyxzyyyTech', 'xyz') from dual; -- En realidad, elimina las ocurrencias individuales de 'x', 'y' y 'z', a diferencia del patr�n de 'xyz'.
 select LTRIM('xyxzyyyTech', 'yzx') from dual;
 select LTRIM('6372Tech', '0123456789')  from dual;
 select LTRIM('xxyyxzyxyyxTech', 'xyz')   from dual;
 select LTRIM( '637Tech', '0123456789')   from dual;
 
-- RTRIM()
 select RTRIM('tech    ') from dual;--. Si se omite este par�metro, la funci�n RTRIM eliminar� todos los espacios finales de string1 ..
 select RTRIM('tech   ', ' ') from dual;
 select RTRIM('1230000', '0') from dual;
 select RTRIM('1230000', '230') from dual;
 select RTRIM('Tech123123', '123') from dual;
 select RTRIM('Tech123123123', '321') from dual;
 select RTRIM('Techxyxzyyy', 'xyz') from dual; -- En realidad, elimina las ocurrencias individuales de 'x', 'y' y 'z', a diferencia del patr�n de 'xyz'.
 select RTRIM('Techxyxzyyy', 'yzx') from dual;
 select RTRIM('Techxyxzyyy', 'yyy') from dual;
 select RTRIM('Tech6372', '0123456789')  from dual;
 select RTRIM('Techxxyyxzyxyyx', 'xyz')   from dual;
 select RTRIM( 'Tech637', '0123456789')   from dual;
  
  -- TRIM()
  select TRIM('   tech   ') from dual;
  select TRIM(' '  FROM  '   tech   ') from dual;
  select TRIM(LEADING '0' FROM '000123') from dual;
  select TRIM(TRAILING '1' FROM 'Tech1')  from dual;
  select TRIM(BOTH '1' FROM '123Tech111')  from dual;

   -- REPLACE()
   select REPLACE('123123tech', '123')  from dual;
   select REPLACE('123tech123', '123') from dual;
   select REPLACE('222tech', '2', '3') from dual;
   select REPLACE('0000123', '0') from dual;
   select REPLACE('0000123', '0', ' ') from dual; 
   
  -- SUBSTR( )
   select SUBSTR('This is a test', 6, 2)  from dual;
   select SUBSTR('This is a test', 6) from dual;
   select SUBSTR('TechOnTheNet', 1, 4) from dual;
   select SUBSTR('TechOnTheNet', -3, 3) from dual;
   select SUBSTR('TechOnTheNet', -6, 3) from dual;
   select SUBSTR('TechOnTheNet', -8, 2) from dual; 
  
  -- LENGTH()
  
  select LENGTH(NULL)  from dual;
  select LENGTH('')  from dual;
  select LENGTH(' ')  from dual;
  select LENGTH('Tech on the Net')  from dual;
  select LENGTH('Tech on the Net ')  from dual;
  
  
  -- INSTR()
  SELECT INSTR('Tech on the net','e') from  dual;  
  SELECT INSTR('Tech on the net', 'e',1,1) from  dual; 
  SELECT INSTR('Tech on the net', 'e', 1, 2) from  dual; 
  SELECT INSTR('Tech on the net', 'e', 1, 3) from  dual; 
  SELECT INSTR('Tech on th net', 'e', -3, 2) from  dual; 
   
  -- TRANSLATE ()
  SELECT  translate('1tech23', '123', '456') from dual;
  SELECT  translate('tech123', '123', '456') from dual;
  select translate('222tech', '2ec', '3it') from dual;
   


























