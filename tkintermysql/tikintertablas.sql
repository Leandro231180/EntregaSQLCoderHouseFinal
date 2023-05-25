
-- usar la tabla que desee suar
use   tabla_que_vas_a_usar;

-- crea la tabla 
CREATE TABLE prueba2 (NOMBRE varchar(100),APELLIDO varchar(100),email varchar(200),edad int);

 -- crea el usuario con la clave y desde donde se conecta
CREATE USER 'heman'@'localhost' IDENTIFIED BY 'greyskull';

-- da permisos al usuario
GRANT insert ON proyectosql.prueba2 TO 'heman'@'localhost';
