
-- https://www.techonthenet.com/oracle/

-- ABS() devuelve el valor absoluto de un número.

select ABS(-23.6) from dual;
select ABS(-23) from dual;
select ABS(-23.6) from dual;
select ABS(23.65) from dual;
select ABS(23.65 * -1) from dual;

--  FLOOR() Redondea el valor hacia abajo de una cantidad que le espesifiquemos en una ejecución 
select floor(5.9) from dual;
select FLOOR(34.29) from dual;
select FLOOR(-5.9) from dual;
select floor(0.2) from dual;

-- MOD() devuelve el resto de m dividido por n ==> MOD( m, n )
select MOD(15, 4) from dual;
select MOD(15, 0) from dual;
select MOD(11.6, 2) from dual;
select MOD(11.6, 2.1) from dual;
select MOD(-15, 4)  from dual;
select MOD(-15, 0) from dual;

-- Nota: Existen   mas de 40 funciones  estudiarlas en  https://www.techonthenet.com/oracle/













 