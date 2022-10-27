select * from articulos;
delete from articulos; -- borra los registros de forma NO permanente
select * from articulos;

rollback; -- recupera los regitros borrados por que  no se borraron en forma permaneste /DELETE/
select * from articulos;

truncate table articulos; -- borra en forma permanente los  archivos; /TRAUNCATE/
select * from articulos;
rollback;  -- no se puede recuperar los registros por  formatea la table 

