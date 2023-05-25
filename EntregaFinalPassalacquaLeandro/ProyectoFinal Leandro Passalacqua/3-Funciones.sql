-- 1.1 FUNCION Y VISTA VAN JUNTAS
-- FUNCION QUE ARROJA LAS VENTAS REALIZADAS POR CADA EMPLEADO
DROP FUNCTION IF EXISTS buscar_total;     
DELIMITER //
CREATE  FUNCTION buscar_total(id_vendedor INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE TOTAL_VENT INT;
SELECT COUNT(*) INTO TOTAL_VENT FROM pedidos WHERE id_empleado=id_vendedor ;
RETURN TOTAL_VENT;
END//
DELIMITER ;

-- 1.2 Vista que utiliza la funcion buscar_total ventas hechas por cada empleado
DROP VIEW IF EXISTS Ventas_por_cada_empleado;
CREATE VIEW Ventas_por_cada_empleado AS
    SELECT 
        empleado.id_empleado AS `id_empleado`,
        empleado.nombre AS `nombre`,
        empleado.apellido AS `apellido`,
        BUSCAR_TOTAL(empleado.id_empleado) AS `Ventas realizadas`
    FROM empleado WHERE empleado.id_empleado IN(15,14,13,12,4,5)
    ORDER BY `Ventas realizadas` DESC;
-- *************************************************   
    
-- 2 Crea una funcion que detecta si en el email se encuentra la letra @, si no la encuentra indica que el email es invalido
DROP FUNCTION IF EXISTS chequea_email;
DELIMITER //
CREATE FUNCTION chequea_email (nombre varchar(100),apellido varchar(100),e_mail_empleado varchar(100)) RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	DECLARE nombre_completo VARCHAR(150);
    SET nombre_completo = CONCAT(nombre, ' ', apellido);
    IF e_mail_empleado  LIKE '%@%.%' THEN
		RETURN CONCAT ('Email OK Bienvenido',' ', nombre_completo);
    ELSE 
		RETURN 'No tienes email';
	END IF;
    
END //

-- CREA UNA VISTA UTILIZANDO LA FUNCION CREADA
CREATE VIEW chequea_emails_empleados AS
SELECT id_empleado,nombre,apellido,e_mail_empleado, chequea_email(nombre,apellido,e_mail_empleado)
AS saludarArroba FROM empleado;

-- *************************************************
-- 3 Se crean 2 funciones para aplicar calculos que luego son aplicados a una vista

-- Calula ganancias, ganancia unidad, ganancia total FUNCIONA CON LA VISTA Vista_Detalle_Ventas_Producto_Precio_Ganancia
DROP FUNCTION IF EXISTS Calcula_ganancia_uni;   
DELIMITER // 
CREATE FUNCTION Calcula_ganancia_uni(Valor_compra FLOAT, Valor_venta FLOAT) RETURNS FLOAT
DETERMINISTIC
BEGIN
SET @total=0;
SELECT (Valor_venta - Valor_compra)  into @total;
RETURN @total;
END//
DELIMITER ;

-- Crea una  funcion ganancia por producto 
DROP FUNCTION IF EXISTS Calcula_ganancia;
DELIMITER // 
CREATE FUNCTION Calcula_ganancia(Valor_compra FLOAT, Valor_venta FLOAT, cantidad FLOAT) RETURNS FLOAT
DETERMINISTIC
BEGIN
SET @total=0;
SELECT ((Valor_venta - Valor_compra) * cantidad) into @total;
RETURN @total;
END//
DELIMITER ;


-- Calcula el subtotal multiplicando unidades por precio de venta.
DROP FUNCTION IF EXISTS calcula_total;
DELIMITER //
CREATE FUNCTION calcula_total(unidades_ordenadas FLOAT,precio_venta FLOAT) RETURNS FLOAT
DETERMINISTIC
BEGIN
SET @total=0;
SELECT unidades_ordenadas * precio_venta   INTO @total;
RETURN @total;
END//
DELIMITER ;

-- Crea una vista que Usa las tres funciones anteriormente creadas, dando la ganancia por unidad, 
DROP VIEW IF EXISTS Vista_Detalle_Ventas_Producto_Precio_Ganancia;
CREATE OR REPLACE VIEW Detalle_Ventas_Producto_Precio_Ganancia AS
SELECT P.orden_id as 'Nro. orden', P.id_cliente 'Legajo Cliente',D.sku_nro_producto_vendido,PS.Producto_nombre,D.unidades_ordenadas,PS.precio_unidad AS 'Precio Compra',D.precio_venta,
calcula_ganancia_uni(PS.precio_unidad,D.precio_venta) AS 'Ganancia unidad',Calcula_ganancia(PS.precio_unidad,D.precio_venta,D.unidades_ordenadas) AS 'Ganancia 
subtotal',calcula_total(D.precio_venta,D.unidades_ordenadas) AS 'Subtotal del item'  FROM pedidos AS P
INNER JOIN detalle_pedido AS D ON P.orden_id = D.orden_id_detalle
INNER JOIN producto_stock AS PS ON D.sku_nro_producto_vendido = PS.sku_nro_producto
ORDER BY P.orden_id ASC ;

-- *************************************************
-- 4 Funcion que determina el stock de las unidades del deposito
DROP  function IF EXISTS nivel_Stock;
DELIMITER //
create function nivel_Stock(cantidad INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
CASE
WHEN cantidad >= 100 THEN RETURN 'ALTO';
WHEN cantidad >= 50 THEN RETURN 'medio';
ELSE  RETURN 'Bajo';
END CASE;
END //
DELIMITER ;

-- Crea una vista que revisa el nivel de stock de cada uno de los productos de la tabla producto_stock
DROP VIEW IF EXISTS nivel_stock_productos;
CREATE VIEW  nivel_stock_productos AS
SELECT sku_nro_producto, id_proveedor,Producto_nombre, Categoria, stock_unidades, precio_unidad,
 nivel_Stock(stock_unidades) FROM producto_stock; 

 -- ******************************
 
 -- 5 Determina si un sueldo es bajo , medio o bajo--
DROP FUNCTION IF EXISTS tipo_sueldo;
DELIMITER //
CREATE FUNCTION tipo_sueldo (sueldo INT) RETURNS varchar(10) 
DETERMINISTIC
BEGIN
DECLARE a VARCHAR(10);

IF sueldo>300000 THEN
RETURN 'ALTO';
ELSEIF
	sueldo >= 200000 THEN
RETURN 'MEDIO';

ELSE
	RETURN 'BAJO';
END IF;

END //
DELIMITER //

-- Crea una vista que otorga los parametros directamente de la tabla
CREATE VIEW Sueldos_quality AS
SELECT legajo_empleado,mes_liquidado,cargo,sueldo_bruto, tipo_sueldo(sueldo_bruto) FROM sueldos_empleado;
