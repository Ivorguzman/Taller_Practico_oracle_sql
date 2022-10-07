                            --- ***** CREACION DEL USUARIO ***** ---
CREATE USER MIUSUARIO IDENTIFIED BY laclave -- creacion de la clave para el usuario
DEFAULT TABLESPACE SYSTEM  -- espacio de archivo con el que va a trabajar este usuario ==> TABLESPACE  (en este caso por defecto) 
TEMPORARY TABLESPACE TEMP  -- esto administra un espacio de memoria temporal para el usuario
QUOTA UNLIMITED ON SYSTEM; -- aqui se define el espacion que puede utilizr del TABLESPACE para tabajar



                                --- **** PRIVILEGIOS DE USUARIO **** ---

GRANT CREATE SESSION TO MIUSUARIO -- creacion del privilegio de conexion

-- PRIVILEGIO PARA LA CREACION DE TABLAS EN BD ---
GRANT CREATE TABLE TO MIUSUARIO;

-- PRIVILEGIO PARA LA CREACION DE VISTAS EN BD ---
GRANT CREATE VIEW TO MIUSUARIO;

-- PRIVILEGIO PARA LA CREACION Y CONFIGURACION DE PROCEDIMIENTOS EN BD ---
GRANT CREATE PROCEDURE TO MIUSUARIO;

-- PRIVILEGIO PARA LA CREACION DE SECUENCIAS EN BD --
GRANT CREATE SEQUENCE TO MIUSUARIO;

-- PRIVILEGIO PARA LA ADMINISTRACIO DE TABLAS EN BD --
GRANT ALL ON NOMBREDETABLA TO MIUSUARIO;

-- REVOCAR PRIBILEGIO DE ADMINISTRACION DE TABLAS
REVOKE ALL ON NOMBREDETABLA FROM MIUSUARIO;

--BORRAR USUARIO DEL SISTEMA --
DROP USER MIUSUARIO CASCADE;
 




