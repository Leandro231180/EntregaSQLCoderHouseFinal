
CREATE VIEW Cliente_pedido AS 
SELECT C.id_cliente, C.nombre,C.Documento,P.Producto_nombre, P.unidades_ordenadas, P.direccion_envio from cliente C 
INNER JOIN pedidos P ON C.id_cliente = P.id_cliente;

CREATE VIEW Empleado_venta_efectuada AS
SELECT P.orden_id, P.Producto_nombre, P.unidades_ordenadas, E.id_empleado, E.nombre, E. Apellido FROM pedidos P 
INNER JOIN empleado E ON P.id_empleado = E.id_empleado;

CREATE VIEW VENTAS AS 
SELECT P.orden_id,P.id_cliente,P.fecha_orden,P.sku_nro_producto_vendido,P.Producto_nombre,P.unidades_ordenadas,P.direccion_envio,S.precio_unidad  FROM pedidos P INNER JOIN
producto_stock S ON P.sku_nro_producto_vendido = S.sku_nro_producto; 
	
CREATE VIEW envios AS
SELECT EN.id_envios, EN.numero_seguimiento, EN.empresa_de_transporte, EN.telefono, EN.e_mail, PE.id_cliente, PE.fecha_orden, PE.Producto_nombre,PE.fecha_envio, PE.direccion_envio FROM envio EN 
INNER JOIN pedidos PE ON EN.orden_id = PE.orden_id;

CREATE VIEW Productos_Proveedor AS
SELECT PS.sku_nro_producto, PS.id_proveedor, PS.Producto_nombre, PS.Categoria, PS.stock_unidades, PS.precio_unidad, PROV.Company_name, PROV.Cuit_proveedor, PROV.telefono_proveedor,PROV.email_proveedor, PROV.home_page  FROM producto_stock PS INNER JOIN proveedor PROV 
ON PS.id_proveedor = PROV.id_proveedor ;

