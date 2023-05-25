CREATE DATABASE PROYECTOSQL;
USE proyectosql;


CREATE TABLE IF NOT EXISTS Cliente (
id_cliente Int  auto_increment,
Nombre varchar(100) NOT NULL,
Apellido varchar(200) NOT NULL,
Documento varchar(50) NOT NULL,
Cuit_Cliente int NOT NULL,
Pais varchar(50)NOT NULL,
Provincia varchar(50) NOT NULL,
Direccion varchar(300) NOT NULL,
Email varchar(30) NOT NULL,
telefono varchar(30),
PRIMARY KEY (id_cliente)
);

CREATE TABLE IF NOT EXISTS Empleado(
id_empleado int auto_increment,
nombre varchar(100) NOT NULL,
apellido varchar(100)NOT NULL,
Usuario varchar(100)NOT NULL,
Clave_usuario varchar(20)NOT NULL,
direccion varchar(100) NOT NULL,
fecha_de_ingreso date NOT NULL,
cargo varchar(100) NOT NULL,
sucursal varchar(100),
telefono varchar(100)NOT NULL,
e_mail_empleado varchar(100)NOT NULL,
sueldo int NOT NULL,
PRIMARY KEY (id_empleado)
);



CREATE TABLE IF NOT EXISTS Proveedor (
id_proveedor int auto_increment, 
Company_name varchar(300),
Cuit_proveedor int NOT NULL,
direccion_proveedor varchar(300),
telefono_proveedor varchar(50),
email_proveedor varchar(100),
home_page varchar(100),
PRIMARY KEY (id_proveedor)
);

CREATE TABLE IF NOT EXISTS Producto_stock (
sku_nro_producto int auto_increment,
id_proveedor int, 
Producto_nombre varchar(200),
Categoria varchar(100), 
stock_unidades int,
precio_unidad int,
primary key (sku_nro_producto),
constraint foreign key (id_proveedor) references Proveedor (id_proveedor)
);


CREATE TABLE IF NOT EXISTS Pedidos(
orden_id int not null auto_increment,
id_cliente int,
id_empleado  int,
fecha_orden date,
sku_nro_producto_vendido int,
Producto_nombre varchar(200),
unidades_ordenadas int NOT NULL,
fecha_envio date,
direccion_envio varchar(250),
primary key (orden_id),
constraint foreign key (id_empleado) references Empleado (id_empleado),
constraint foreign key (id_cliente) references Cliente (id_cliente),
constraint foreign key (sku_nro_producto_vendido) references Producto_stock (sku_nro_producto)
);
 
CREATE TABLE IF NOT EXISTS Envio (
id_envios int auto_increment,
orden_id int, 
numero_seguimiento int, 
empresa_de_transporte varchar (100),
telefono varchar(100),
e_mail varchar(100),
primary key (id_envios),
foreign key (orden_id) references Pedidos(orden_id)
 );