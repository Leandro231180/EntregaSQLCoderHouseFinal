USE proyectosql;

-- Procedimiento que da los pedidos realizados por cada cliente, buscandolos por mendio del ID del cliente
DROP PROCEDURE IF EXISTS Pedidos_Hechos_Cliente;
DELIMITER //
CREATE PROCEDURE Pedidos_Hechos_Cliente (IN cliente_nro INT)
BEGIN
SELECT * FROM pedidos WHERE id_cliente = cliente_nro;

END //
DELIMITER ;


-- PROCEDIMIENTO PARA INSERTAR Y MOSTRAR DATOS EN TABLA
DROP PROCEDURE IF EXISTS inserta_producto;
DELIMITER //
CREATE PROCEDURE inserta_producto ( IN sp_id_proveedor INT, IN sp_Producto_nombre varchar(200), IN sp_Categoria  varchar(100), IN sp_stock_unidades INT, IN sp_precio_unidad INT )
BEGIN
	INSERT INTO producto_stock (id_proveedor,Producto_nombre,Categoria,stock_unidades,precio_unidad) 
    VALUES (sp_id_proveedor,sp_Producto_nombre,sp_Categoria,sp_stock_unidades,sp_precio_unidad);
	SELECT * FROM producto_stock;
END //


-- PROCEDIMIENTO PARA ORDENAR POR HEADER
-- Este Procedimiento ordena de manera descendente y ascendenmte, cuando es llamada y dado el parametro del campo a ordenar que en este caso son `orden_id` int NOT NULL AUTO_INCREMENT,
--  `id_cliente` ,`id_empleado` ,  `fecha_orden`,  `sku_nro_producto_vendido`,   `Producto_nombre` ,`unidades_ordenadas`, `fecha_envio` ,  `direccion_envio` ,`precio_venta` 
-- y un segundo parametro ASC para Ascendente o DESC para descendente

DROP PROCEDURE IF EXISTS sp_mi_procedimiento;
DELIMITER //
    CREATE PROCEDURE sp_mi_procedimiento(IN campo_orden varchar(50), IN tipo_orden varchar(5))
        BEGIN
            SET @s = CONCAT('SELECT * FROM pedidos ORDER BY ',campo_orden,' ',tipo_orden);
            PREPARE stmt2 FROM @s;
            EXECUTE stmt2;
    DEALLOCATE PREPARE stmt2;
        END //



