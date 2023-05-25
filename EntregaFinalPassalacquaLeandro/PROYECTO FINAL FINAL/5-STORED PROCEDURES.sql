-- 1.1 CREA un Procedimiento de incorporacion de cliente
DROP PROCEDURE IF EXISTS Registro_cliente;
DELIMITER //
CREATE PROCEDURE Registro_cliente (Nombre varchar(100),Apellido varchar(100),Documento varchar(50),Persona_f_j BOOLEAN,Cuit_Cliente int,Pais varchar(50),Provincia varchar(50), Direccion varchar(200),Email varchar(100),telefono varchar(30))
BEGIN
INSERT INTO cliente(Nombre,Apellido,Documento,Persona_f_j,Cuit_Cliente,Pais,Provincia , Direccion ,Email ,telefono)
VALUES(Nombre,Apellido,Documento,Persona_f_j,Cuit_Cliente,Pais,Provincia ,Direccion,Email,telefono);
SELECT 'Cliente Registrado Correctamente';
SELECT * FROM cliente;

END //
DELIMITER ;


--  1.2 PROCEDIMIENTO PARA INSERTAR Y MOSTRAR DATOS EN TABLA PRODUCTO
DROP PROCEDURE IF EXISTS inserta_producto;
DELIMITER //
CREATE PROCEDURE inserta_producto ( IN sp_id_proveedor INT, IN sp_Producto_nombre varchar(200), IN sp_Categoria  varchar(100), IN sp_stock_unidades INT, IN sp_precio_unidad INT )
BEGIN
	INSERT INTO producto_stock (id_proveedor,Producto_nombre,Categoria,stock_unidades,precio_unidad) 
    VALUES (sp_id_proveedor,sp_Producto_nombre,sp_Categoria,sp_stock_unidades,sp_precio_unidad);
	SELECT * FROM producto_stock;
END //



-- 2 procedimientos de busqueda por numero
-- BUSCA POR numero dentro de Pedidos
DROP PROCEDURE IF EXISTS Buscar_Por_numero_en_pedidos;
DELIMITER //
CREATE PROCEDURE Buscar_Por_numero_en_pedidos (busqueda INT)
BEGIN
SELECT id_cliente,id_empleado,fecha_orden,direccion_envio FROM pedidos WHERE
(id_cliente LIKE CONCAT ('%',busqueda,'%') OR
id_empleado LIKE CONCAT ('%',busqueda,'%') OR
fecha_orden LIKE CONCAT ('%',busqueda,'%')); 

END //
DELIMITER ;


-- 2.1 procedimientos de busqueda cadena
--  BUSCA por letras dentro de Pedidos
DROP PROCEDURE IF EXISTS Busca_empleado_por_caracteres;
DELIMITER //
CREATE PROCEDURE Busca_empleado_por_caracteres (busqueda VARCHAR(20))
BEGIN
SELECT nombre,apellido,Usuario,sucursal,telefono, e_mail_empleado FROM empleado WHERE
(nombre LIKE CONCAT ('%',busqueda,'%') OR
apellido LIKE CONCAT ('%',busqueda,'%') OR
Usuario LIKE CONCAT ('%',busqueda,'%') OR
sucursal LIKE CONCAT ('%',busqueda,'%') OR
telefono LIKE CONCAT ('%',busqueda,'%') OR
e_mail_empleado LIKE CONCAT ('%',busqueda,'%')); 

END //
DELIMITER ;

-- 3  Busca dentro de cualquier tabla, el campo solicitado y lo ordena de segun la tercer variable ASC o DESC

DROP PROCEDURE IF EXISTS ordena_por_parametro;
DELIMITER //
    CREATE PROCEDURE ordena_por_parametro(IN tabla varchar(50),IN campo_orden varchar(50), IN tipo_orden varchar(5))
        BEGIN
            SET @consulta = CONCAT('SELECT * FROM ',tabla,' ORDER BY ',campo_orden,' ',tipo_orden);
            PREPARE stmt2 FROM @consulta;
            EXECUTE stmt2;
    DEALLOCATE PREPARE stmt2;
        END //
DELIMITER //
-- -------------------



-- 4 ---------------------
DELIMITER //
CREATE PROCEDURE actualiza_STOCK(sku INT,stock FLOAT)
UPDATE producto_stock SET stock_unidades=stock WHERE sku_nro_producto=sku;
END //
DELIMITER ;
--



--
-- 5 BUSCA POR PRODUCTO SKU-NOMBRE-CATEGORIA
DROP PROCEDURE IF EXISTS SEARCH_Stock;
DELIMITER //
CREATE PROCEDURE SEARCH_stock (busqueda VARCHAR(100))
BEGIN
SELECT sku_nro_producto,Producto_nombre,Categoria,stock_unidades,precio_unidad FROM producto_stock WHERE
(sku_nro_producto LIKE CONCAT ('%',busqueda,'%') OR
Producto_nombre LIKE CONCAT ('%',busqueda,'%') OR
Categoria LIKE CONCAT ('%',busqueda,'%')); 

END //
DELIMITER ;





