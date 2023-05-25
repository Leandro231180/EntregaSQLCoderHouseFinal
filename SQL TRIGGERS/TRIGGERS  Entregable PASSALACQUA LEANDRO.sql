-- CREA TABLA AUDITORIA, CREA TRIGGER AUDITORIA STOCK.

CREATE TABLE auditoria_stock (producto_nuevo_nombre VARCHAR (100),precio_nuevo INT, hora_creacion DATETIME);


CREATE TRIGGER trigger_auditoria_Stock AFTER INSERT ON producto_stock  FOR EACH ROW INSERT INTO auditoria_stock (producto_nuevo_nombre,precio_nuevo,hora_creacion ) 
VALUES (NEW.Producto_nombre,NEW.precio_unidad, NOW());

-- Insert para probar
INSERT INTO producto_stock (id_proveedor, Producto_nombre, Categoria, stock_unidades, precio_unidad ) values (8,'productoX','ALGO',1,1);

SELECT * FROM producto_stock;


-- FUNCION 2 crea Una tabla de LOG de proveedores y le inserta la fecha de cuando fue creado el registro

CREATE TABLE proveedor_log (Nombre_proveedor VARCHAR (200), cuit_prov INT, fecha_registro DATETIME);


CREATE TRIGGER trigger_proveedor_ingresa AFTER INSERT ON proveedor FOR EACH ROW INSERT INTO proveedor_log (Nombre_proveedor, cuit_prov,fecha_registro  ) VALUES (NEW.Company_name, NEW.Cuit_proveedor, NOW());



-- Insert para probar
insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('Apple s.a.',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com')


