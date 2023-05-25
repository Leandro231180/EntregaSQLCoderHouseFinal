use proyectofinalleandropassalacqua;
-- 1 MUESTRA UNA LISTA DE LOS CLIENTES INDICANDO DATOS COMPLETOS Y SI ES PERSONA FISICA O JURIDICA 
DROP VIEW IF EXISTS Clientes;
CREATE OR REPLACE VIEW Clientes AS
SELECT C.id_cliente,C.nombre,C.Apellido,C.Documento, IF (C.Persona_f_j, 'Persona Fisica','Pesona Juridica') AS 'Tipo de persona',C.Cuit_Cliente,C.Email, C.Telefono FROM cliente AS C;
 
-- *************************************************
 -- 2 VISTA QUE MUESTRA LOS PEDIDOS , LOS DETALLES DE LA MISMA , LEGAJO DEL COMPRADOR, PRECIO DE ADQUISICION Y PRECIO DE VENTA
DROP VIEW IF EXISTS Vista_Ventas;
CREATE OR REPLACE VIEW Vista_Ventas AS
SELECT P.orden_id as 'Nro. orden', P.id_cliente 'Legajo Cliente',D.sku_nro_producto_vendido,PS.Producto_nombre,D.unidades_ordenadas,PS.precio_unidad AS 'Precio Compra',D.precio_venta FROM pedidos AS P
INNER JOIN detalle_pedido AS D ON P.orden_id = D.orden_id_detalle
INNER JOIN producto_stock AS PS ON D.sku_nro_producto_vendido = PS.sku_nro_producto
ORDER BY P.orden_id ASC ;

-- 2 Version  VISTA QUE MUESTRA LOS DATOS DEL PEDIDO , LOS DETALLES DE LA MISMA , LEGAJO DEL COMPRADOR  Y CALCULA DOS FUNCIONES
DROP VIEW IF EXISTS Vista_Detalle_Ventas_Producto_Precio_Ganancia;
CREATE OR REPLACE VIEW Detalle_Ventas_Producto_Precio_Ganancia AS
SELECT P.orden_id as 'Nro. orden', P.id_cliente 'Legajo Cliente',D.sku_nro_producto_vendido,PS.Producto_nombre,D.unidades_ordenadas,PS.precio_unidad AS 'Precio Compra',D.precio_venta,
calcula_ganancia_uni(PS.precio_unidad,D.precio_venta) AS 'Ganancia unidad',Calcula_ganancia(PS.precio_unidad,D.precio_venta,D.unidades_ordenadas) AS 'Ganancia 
subtotal'FROM pedidos AS P
INNER JOIN detalle_pedido AS D ON P.orden_id = D.orden_id_detalle
INNER JOIN producto_stock AS PS ON D.sku_nro_producto_vendido = PS.sku_nro_producto
ORDER BY P.orden_id ASC ;

-- **************************************************

-- 3 LISTA QUE MUESTRA DE LOS EMPLEADOS TODAS LAS LIQUIDACIONES DE SUELDOS ORDENANDO DE LO MAS NUEVOS A LOS MAS ANTIGUOS
DROP VIEW IF EXISTS Empleados_sueldos;
CREATE OR REPLACE VIEW Empleados_sueldos AS
SELECT E.id_empleado, E.nombre, E.apellido,E.usuario AS Usuario_Sistema,S.fecha_de_ingreso,S.mes_liquidado AS liquidacion_al_dia,S.cargo,S.direccion, S.sueldo_bruto,S.sueldo_neto,S.cargas_sociales, E.sucursal FROM empleado as E
INNER JOIN sueldos_empleado as S on E.id_empleado = S.legajo_empleado ORDER BY liquidacion_al_dia DESC;

-- ***************************************************

-- 4 MUESTRA EL ENVIO, LA EMPRESA  y EL SEGUIMIENTO QUE INDICA SI ESTA PENDIENTE O ENTREGADO
DROP VIEW IF EXISTS Envios_seguimiento;
CREATE OR REPLACE VIEW Envios_seguimiento AS
SELECT P.orden_id, P.id_cliente,STOCK.Producto_nombre,P.fecha_orden, DET.sku_nro_producto_vendido AS SKU ,DET.unidades_ordenadas AS Cantidad,
 EN.transportadora AS EMPRESA,EMP.empresa_de_transporte,EN.numero_seguimiento  AS SEGUIMIENTO, 
 EN.fecha_envio , IF (EN.conf_entregado, 'Entregado','Pendiente') AS Estado FROM pedidos AS P
INNER JOIN detalle_pedido AS DET ON P.orden_id = DET.orden_id_detalle
INNER JOIN producto_stock AS STOCK ON DET.sku_nro_producto_vendido = STOCK.sku_nro_producto
INNER JOIN envio AS EN ON P.orden_id = EN.orden_id
INNER JOIN empresa_transporte AS EMP ON EN.transportadora = EMP.id_emp_envios
ORDER BY orden_id ASC;

-- ***************************************************

-- 5 MUESTRA EL STOCK INDICANDO STOCK Y PROVEEDOR DEL PRODUCTO (Utilizando LEFT JOIN)
DROP VIEW IF EXISTS Stock_Ordenado_Proveedor;
CREATE VIEW Stock_Ordenado_Proveedor AS 
SELECT producto_stock.id_proveedor 'Nro Proveedor',producto_stock.sku_nro_producto AS 'SKU', producto_stock.Producto_nombre 'Nombre Producto' , 
producto_stock.Categoria 'Categoria', proveedor.Company_name 'Nombre Proveedor',proveedor.home_page 'Pagina Web Proveedor', producto_stock.stock_unidades AS 'unidades en deposito', producto_stock.precio_unidad AS 'Precio_compra'
FROM producto_stock
LEFT JOIN proveedor
ON producto_stock.id_proveedor = proveedor.id_proveedor ORDER BY producto_stock.id_proveedor ASC ;

-- ******************************************************

-- 6 Cuenta las ordenes hechas por cada empleado
-- Crea una funcion donde muestra la cantidad de ventas que realizo cada empleado que tiene por ocupacion vendedor en la empresa.
DROP VIEW IF EXISTS cuanto_vendio_empleado;    
CREATE VIEW cuanto_vendio_empleado AS
    SELECT 
        empleado.id_empleado AS `id_empleado`,
        empleado.nombre AS `nombre`,
        empleado.apellido AS `apellido`,
        BUSCAR_TOTAL(empleado.id_empleado) AS `Ventas realizadas`
    FROM empleado WHERE empleado.id_empleado IN(15,14,13,12,4,5)
    ORDER BY `Ventas realizadas` DESC;

-- *******************************************************

-- 7 AGRUPA SKU POR PEDIDO y MUESTRA LOS PRODUCTOS  QUE LO INTEGRAN
DROP VIEW IF EXISTS Productos_de_cada_Pedido ; 
CREATE VIEW Productos_de_cada_Pedido  AS
SELECT  DET.orden_id_detalle,GROUP_CONCAT( PROD.`Producto_nombre`) FROM detalle_pedido AS DET
INNER JOIN producto_stock AS PROD ON DET.sku_nro_producto_vendido = PROD.sku_nro_producto
GROUP BY orden_id_detalle ;






