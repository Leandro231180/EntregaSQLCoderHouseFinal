-- CREA TABLA AUDITORIA, CREA TRIGGER AUDITORIA STOCK.
DROP TABLE IF EXISTS auditoria_stock ;
CREATE TABLE auditoria_stock (producto_nuevo_nombre VARCHAR (100),precio_nuevo INT, hora_creacion DATETIME,Usuario CHAR(50));


DROP TRIGGER IF EXISTS trigger_auditoria_Stock;
DELIMITER //
CREATE TRIGGER trigger_auditoria_Stock BEFORE INSERT ON producto_stock  FOR EACH ROW 
BEGIN 
INSERT INTO auditoria_stock (producto_nuevo_nombre,precio_nuevo,hora_creacion, Usuario ) 
VALUES (NEW.Producto_nombre,NEW.precio_unidad, NOW(),CURRENT_USER());
END //


-- Insert para probar
INSERT INTO producto_stock (id_proveedor, Producto_nombre, Categoria, stock_unidades, precio_unidad ) values (8,'productoX','BIGTRY',1,1);
-- Select de la tabla relacionada con el trigger
SELECT * FROM auditoria_stock;
-- Select de la tabla producto
SELECT * FROM producto_stock;

-- ******************************************************

-- FUNCION 2 crea Una tabla de LOG de proveedores y le inserta la fecha de cuando fue creado el registro
DROP TABLE IF EXISTS proveedor_log ;
CREATE TABLE proveedor_log (Nombre_proveedor VARCHAR (200), cuit_prov INT, fecha_registro DATETIME);

DELIMITER //
CREATE TRIGGER proveedor_log AFTER INSERT ON proveedor FOR EACH ROW 
BEGIN
INSERT INTO proveedor_log (Nombre_proveedor, cuit_prov,fecha_registro  )
VALUES (NEW.Company_name, NEW.Cuit_proveedor, NOW());
END//

-- Insert para probar
INSERT INTO  proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
VALUES ('Applepp s.a.',301442345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','ape.com');

SELECT * FROM proyectosql.proveedor
SELECT * FROM proyectosql.empleado;




-- *********************************************
-- Precio nuevo y precio viejo 
DROP TABLE IF EXISTS auditoria_stock2 ;
CREATE TABLE auditoria_stock2 (sku_modificado INT,precio_viejo FLOAT, hora_creacion DATETIME,Usuario CHAR(50));

DROP TRIGGER IF EXISTS trigger_auditoria_Stock2;
DELIMITER //
CREATE TRIGGER trigger_auditoria_Stock2 BEFORE UPDATE ON producto_stock  FOR EACH ROW 
BEGIN 
INSERT INTO auditoria_stock2 (sku_modificado,precio_viejo,hora_creacion,Usuario) 
VALUES (sku_nro_producto,OLD.precio_unidad, NOW(),CURRENT_USER());
END //

-- ********

DROP TABLE IF EXISTS modificacion_stock;

CREATE TABLE modificacion_stock (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sku_nro_producto INT,
    beforeprice INT,
    afterprice INT,
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS precio_update;
DELIMITER $$

CREATE TRIGGER precio_update
AFTER UPDATE
ON producto_stock FOR EACH ROW
BEGIN
    IF OLD.precio_unidad <> new.precio_unidad THEN
        INSERT INTO modificacion_stock(sku_nro_producto,beforeQuantity, afterQuantity)
        VALUES(sku_nro_producto, old.precio_unidad, new.precio_unidad);
    END IF;
END$$
DELIMITER ;

select * from producto_stock;
select * from modificacion_stock;

UPDATE producto_stock 
SET precio_unidad = 7656
WHERE (sku_nro_producto = 17);

