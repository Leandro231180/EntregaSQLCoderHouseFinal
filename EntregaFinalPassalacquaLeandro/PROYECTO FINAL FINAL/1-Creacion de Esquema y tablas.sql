-- Crea la Base de Datos
CREATE SCHEMA IF NOT EXISTS proyectofinal;
USE proyectofinal;

-- 1 Crea la tabla donde se alojan los datos de los clientes
CREATE TABLE IF NOT EXISTS Cliente (
id_cliente Int  auto_increment,
Nombre varchar(100) NOT NULL,
Apellido varchar(100) NOT NULL,
Documento varchar(50),
Persona_f_j BOOL,
Cuit_Cliente BIGINT NOT NULL,
Pais varchar(50)NOT NULL, -- CHAR
Provincia varchar(50) NOT NULL,  -- CHAR
Direccion varchar(200) NOT NULL,
Email varchar(30) NOT NULL,
telefono varchar(30),
PRIMARY KEY (id_cliente)
);


--  2 Crea la tabla donde se alojan los datos de los empleados

CREATE TABLE IF NOT EXISTS Empleado(
id_empleado int auto_increment,
nombre varchar(100) NOT NULL,
apellido varchar(100)NOT NULL,
cuit_empleado BIGINT,
Usuario varchar(100)NOT NULL,
sucursal varchar(100),
telefono varchar(100)NOT NULL,
e_mail_empleado varchar(100),
PRIMARY KEY (id_empleado)
);

-- 3 Crea una tabla para el despartamento de contabilidad para poder liquidar los sueldos

CREATE TABLE IF NOT EXISTS sueldos_Empleado (
id_liquidacion int auto_increment,
legajo_empleado int,
mes_liquidado date NOT NULL,
fecha_de_ingreso date NOT NULL,
cargo varchar(100) NOT NULL,
direccion varchar(100) NOT NULL,
sueldo_bruto FLOAT  NOT NULL,
sueldo_neto FLOAT  NOT NULL,
cargas_sociales FLOAT  NOT NULL,
PRIMARY KEY (id_liquidacion),
constraint foreign key (legajo_empleado) references Empleado (id_empleado)
);



-- 4 Crea la tabla donde se alojan los datos de los proveedores

CREATE TABLE IF NOT EXISTS Proveedor (
id_proveedor int auto_increment, 
Company_name varchar(200),
Cuit_proveedor int NOT NULL,
direccion_proveedor varchar(200),
telefono_proveedor varchar(50),
email_proveedor varchar(100),
home_page varchar(100),
PRIMARY KEY (id_proveedor)
);



-- 5 Crea la tabla Stock, en la que se guarda el tipo de mercaderia, la cantidad, y el precio de compra de las mismas. Como asi tambien para ser usados por el departamento contable en los balances.

CREATE TABLE IF NOT EXISTS Producto_stock (
sku_nro_producto int auto_increment,
id_proveedor int, 
Producto_nombre varchar(200),
Categoria varchar(100), 
stock_unidades int,
precio_unidad float,
primary key (sku_nro_producto),
constraint foreign key (id_proveedor) references Proveedor (id_proveedor)
);




--  6 Crea la tabla en la cual se realizan los pedidos de los clientes alojados en la tabla clientes y el empleado que realizo la venta.
-- cambie y agregue precio venta

CREATE TABLE IF NOT EXISTS Pedidos(
orden_id int not null auto_increment,
id_cliente int,
id_empleado  int,
fecha_orden TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
direccion_envio varchar(250),
primary key (orden_id) ,
constraint foreign key (id_empleado) references Empleado (id_empleado),
constraint foreign key (id_cliente) references Cliente (id_cliente)
);



-- 7 Crea un detalle de los productos de cada pedido, para poder aceptar multiples articulos por pedido

CREATE TABLE IF NOT EXISTS detalle_pedido( 
id_detalle_ventas int auto_increment,
orden_id_detalle int,
sku_nro_producto_vendido int,
unidades_ordenadas int NOT NULL,
precio_venta float,
primary key (id_detalle_ventas),
constraint foreign key (orden_id_detalle) references Pedidos (orden_id) ON DELETE CASCADE,
constraint foreign key (sku_nro_producto_vendido) references Producto_stock (sku_nro_producto)
);


-- 8 Crea una tabla con las empresas de transporte con los cuales se despachan las mercaderias
 
CREATE TABLE IF NOT EXISTS empresa_transporte (
id_emp_envios int auto_increment, 
empresa_de_transporte varchar (100),
cuit_empresa_transporte BIGINT,
telefono varchar(100),
e_mail varchar(100),
primary key (id_emp_envios)
 ); 


 
--  9 Crea una tabla con los envios realizados

CREATE TABLE IF NOT EXISTS Envio (
id_envios int auto_increment,
orden_id int, 
numero_seguimiento int, 
fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
transportadora int,
costo_envio float,
conf_entregado BOOLEAN,
primary key (id_envios),
foreign key (orden_id) references Pedidos(orden_id) ON DELETE CASCADE,
foreign key (transportadora) references empresa_transporte (id_emp_envios) ON DELETE CASCADE
 );
  
  
  
  -- PARA BORAR
SELECT * FROM empleado;
SELECT * FROM sueldos_empleado;
SELECT * FROM cliente;
SELECT * FROM producto_stock;
SELECT * FROM empresa_transporte;
SELECT * FROM detalle_pedido;
SELECT * FROM pedidos;
SELECT * FROM envio;

SELECT * FROM proyectofinal2.detalle_pedido WHERE orden_id_detalle = 2;
delete  FROM proyectofinal2.detalle_pedido WHERE orden_id_detalle = 2;

SELECT id_envios, IF (conf_entregado, 'Entregado','Pendiente') FROM proyectofinal.envio;
SELECT * FROM proyectofinal.proveedor;

delete  FROM proyectofinal2.pedidos WHERE orden_id = 14;
SELECT * FROM proyectofinal2.pedidos;
SELECT * FROM proyectofinal2.envio;






  

