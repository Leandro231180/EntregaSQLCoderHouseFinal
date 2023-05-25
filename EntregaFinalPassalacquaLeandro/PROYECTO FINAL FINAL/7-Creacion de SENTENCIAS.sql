-- Creacion de Sentencias

-- 1  
-- Creacion Usuario Gerente LEANDRO PASSALACQUA. Usuario = LEADIRECTOR, Para posteriormente darle permisos de SELECT sobre toda la base de datos
-- Crea el usuario el password indicando el lugar de donde se conecta en este caso localhost
CREATE USER 'LEADIRECTOR'@'localhost' identified by 'director2023';
-- Se le asigna al usuario anteriomente creado el permiso para poder realizar consultas en todas las tablas de la base de datos-
GRANT SELECT ON  proyectofinalleandropassalacqua.* TO 'LEADIRECTOR'@'localhost';


 -- 2 vendedores 1
 -- Creacion del usuario vendedor Africanus, asigna tambien el lugar de coneccion y la clave de acceso a la base de datos
CREATE USER 'AFRICANUS'@'localhost' identified by 'ventas2023';
-- Asigna permisos de Select, insert y Update en la base de datos Pedidos.
GRANT SELECT, INSERT,UPDATE ON proyectofinal.pedidos TO 'AFRICANUS'@'localhost';
-- Asigna persimos de Select, Insert y Update en la tabla donde se registran el detalle de los items que integran el pedido
GRANT SELECT, INSERT,UPDATE ON proyectofinalleandropassalacqua.detalle_pedido TO 'AFRICANUS'@'localhost';



-- 3 jefe de deposito, Con el archivo CARGA STOCK.py se puede usar con la app de PYTHON adjuntado

DROP USER 'ALFONSOX'@'localhost';
CREATE USER 'ALFONSOX'@'localhost' identified by 'chiefdeposit';
GRANT SELECT, INSERT,UPDATE ON proyectofinalleandropassalacqua.producto_stock TO 'ALFONSOX'@'localhost';

-- 4 Jefe de deposito Incorpora productos PUEDE EJECUTARSE CON EL ARCHIVO PYTHON adjuntado
DROP USER 'MARK25'@'localhost';
CREATE USER 'MARK25'@'localhost' identified by 'romanruler';
GRANT SELECT, INSERT,UPDATE ON proyectofinalleandropassalacqua.empleado TO 'MARK25'@'localhost';