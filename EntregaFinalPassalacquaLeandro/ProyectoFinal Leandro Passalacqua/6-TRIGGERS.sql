-- TRIGGER 1. CREA TABLA AUDITORIA, CREA TRIGGER AUDITORIA STOCK Y LO REGISTRA ANTES DE LA INSERCION CON EL PARAMETRO BEFORE.
DROP TABLE IF EXISTS auditoria_stock ;
CREATE TABLE auditoria_stock (producto_nuevo_nombre VARCHAR (100),precio_nuevo INT, dia_creacion DATE,hora_creacion time,Usuario CHAR(50));


DROP TRIGGER IF EXISTS trigger_auditoria_Stock;
DELIMITER //
CREATE TRIGGER trigger_auditoria_Stock BEFORE INSERT ON producto_stock  FOR EACH ROW 
BEGIN 
INSERT INTO auditoria_stock (producto_nuevo_nombre,precio_nuevo,dia_creacion,hora_creacion, Usuario ) 
VALUES (NEW.Producto_nombre,NEW.precio_unidad,DATE(NOW()),NOW(),CURRENT_USER());
END //


-- Insert para probar
-- INSERT INTO producto_stock (id_proveedor, Producto_nombre, Categoria, stock_unidades, precio_unidad ) values (8,'productoX','BIGTRY223',1,1);
-- Select de la tabla relacionada con el trigger
-- SELECT * FROM auditoria_stock2;
-- Select de la tabla producto
-- SELECT * FROM producto_stock;

-- ******************************************************

-- TRIGGER 2 crea Una tabla de LOG de proveedores y le inserta la fecha de cuando fue creado el registro
DROP TABLE IF EXISTS proveedor_log ;
CREATE TABLE proveedor_log (Nombre_proveedor VARCHAR (200), cuit_prov INT, fecha_registro DATE,hora_creacion time,Usuario CHAR(50));

DROP TRIGGER IF EXISTS proveedor_log;
DELIMITER //
CREATE TRIGGER proveedor_log AFTER INSERT ON proveedor FOR EACH ROW 
BEGIN
INSERT INTO proveedor_log (Nombre_proveedor, cuit_prov, fecha_registro,hora_creacion,Usuario)
VALUES (NEW.Company_name, NEW.Cuit_proveedor, DATE(NOW()),NOW(),CURRENT_USER());
END//

-- Insert para probar
-- INSERT INTO  proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
-- VALUES ('ouch',301442345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','ape.com');
-- ************************************************************
-- TRIGGER 4 Precio nuevo y precio viejo 

DROP TABLE IF EXISTS modificacion_stock;

CREATE TABLE modificacion_stock (
    id_CAMBIO INT AUTO_INCREMENT PRIMARY KEY, Producto_nombre VARCHAR(100),
    before_precio INT, after_precio INT,
   dia_creacion DATE,hora_creacion time,Usuario CHAR(50));


DROP TRIGGER IF EXISTS precio_update;
DELIMITER $$

CREATE TRIGGER precio_update
AFTER UPDATE
ON producto_stock FOR EACH ROW
BEGIN
    IF OLD.precio_unidad <> new.precio_unidad THEN
        INSERT INTO modificacion_stock(Producto_nombre,before_precio, after_precio,dia_creacion,hora_creacion, Usuario )
        VALUES(OLD.Producto_nombre, old.precio_unidad, new.precio_unidad,DATE(NOW()),NOW(),CURRENT_USER()); 
    END IF;
END$$
DELIMITER ;

-- Para probar el registro de la tabla. Quitar comentario
-- UPDATE producto_stock 
-- SET precio_unidad = 1200333
-- WHERE (sku_nro_producto = 1);
-- select * from modificacion_stock;

-- ************************************************************


