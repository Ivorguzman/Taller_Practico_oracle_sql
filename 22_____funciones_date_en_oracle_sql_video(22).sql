
-- https://www.techonthenet.com/oracle/functions

-- MOD( m, n ) devuelve una fecha con un número específico de meses agregados ==> DD_MONTHS( date1, number_months )
select add_months(to_date('01/01/2022','dd/mm/yyyy'),5) from dual;--add_months(5) Suma meses
select add_months(to_date('01/01/2022','dd/mm/yyyy'),-5) from dual;--add_months(5) resta meses

-- LAST_DAY( date )  Rertorna el ultimo dia del mes de la fecha enviada como parametro 
select last_day(to_date('01/12/2022','dd/mm/yyyy')) from dual;
 
-- MONTHS_BETWEEN( fecha1, fecha2 ) Devuelve el número de meses entre fecha1 y fecha2.
select  ROUND(MONTHS_BETWEEN (to_date('01/01/2022','dd/mm/yyyy'),to_date('31/12/2022','dd/mm/yyyy'))* -1) AS "Cantidad de dias" from dual; 

-- NEXT_DAY( date, weekday ) Retorna el primer día de la semana  mayor que una fecha que se le indica con el parametro dd/mm/aaaa .
SELECT NEXT_DAY(to_date('25/01/2022','dd/mm/yyyy'),'viernes') from dual;

-- Nota : Para estudiar las mas de 20 funciones date que tiene oracl-SQL visitar   https://www.techonthenet.com/oracle/functions

