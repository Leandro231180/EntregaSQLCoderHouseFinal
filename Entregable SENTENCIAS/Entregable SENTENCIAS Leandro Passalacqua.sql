use proyectosql;

-- Crea el usuario superman indicando el nombre del mismo, pudiendo conectarse de cualquier lugar (No soy muy original con los nombres)
-- y el password del mismo usando identidied by ''
-- Le da permisos de ver los datos de todas las tablas proyectosql

CREATE USER 'superman'@'%' identified by 'cripton';

GRANT SELECT ON proyectosql.* TO 'superman'@'%';

-- Usuario Batman, pudiendo conectarse solamente del local host
-- y teniendo permisos de ver, insertar y modificar los datos de la tabla proveedor
CREATE USER 'batman'@'localhost' identified by 'batimovil';
GRANT SELECT, INSERT,UPDATE ON proyectosql.proveedor TO 'batman'@'localhost';


-- Solo por diversion, usuario con todos los privilegios
CREATE USER 'Leandrito'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON proyectosql.* TO  'Leandrito'@'%';