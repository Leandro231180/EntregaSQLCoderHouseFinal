-- Inserta los datos en la tabla Cliente
insert into Cliente (Nombre,Apellido, Documento,Persona_f_j, Cuit_Cliente, Pais, Provincia, Direccion, Email, telefono)
values ('Leandro', 'Passalacqua', '28488094',1, 2028488, 'argentina', 'CABA', 'micasa 664 depto 2','leandro2311@gmail.com', '1566651102'),
('Sebastian', 'Passalacqua', '33111222',1, 282311, 'argentina','CABA', 'Su casa ET 123 depto 2', 'sebaspassalacqua@gmail.com', '1122233325'),
('Mauro', 'Passalacqua', '35612213',1, 20356122, 'argentina', 'CABA', 'Once 123', 'mauropassa@gmail.com','1146417264'),
('Susana', 'Prystupa','11258756',1, 456546, 'Argentina','CABA', 'Carlos encina', 'Susanaprys@gmail.com', '123456'),
('Daniel', 'Passalacqua', '123456789',1, 12714756, 'Argentina', 'CABA', 'Carlos Encina', 'DanPassa@queteimporta.com','123546'),
('Laura','Rojas','39140593',1,20391405933,'argentina','CABA','Abasto 678','laura@spf.ml','789123'),
('Karen','Caseti','40643709',1,20406437093,'Argentina','CABA','yerbal 4567','keren@apuc.com','1565889'),
('Nicolas','Caseti','38931774',1,20389317744,'Argentina','Caba','yerbal 9875','nico@gool.org','156879'),
('Daniel','Figueroa','2212346',1,2022123466,'Argentina','Tucuman','Av. San Martin 1887','dany@aisa.org','15123456'),
('Bruno','Kano','34960913',1,23349609133,'Argentina','BS AS','caseros 456','brunoK@algo.com','15123459'),
('Andres','Cano','32975589',1,20329755893,'Argenina','Caba','Av Larazaval 151','Anresc@afip.com','15456789'),
('Pablo','Gallo','24456',1,2024456,'Argentina','Caba','Mercedez 3580','pablogallo@arcolor.com','15531592'),
('Leonardo','davico','24789',1,2024789,'Argentina','Caba','Ramon l. Falcon 4582','leodavico@ecep.edu','7534284'),
('Walther','White','39140593',1,2391405936,'Argentina','Caba','tinogasta 2580','wally@yo.edu.ar','4567826'),
('James','Bond','48879915',1,'20488799156','Argentina','Caba','Marco sastre 2423','rafa@educar.efu','741265'),
('Instituto', 'Passalacqua', '',0, 302028123, 'argentina', 'CABA', 'micasa 664 depto 2', 'leandro2311@gmail.com', '1566651102'),
('computacion', 'El minorista', '',0, 30741369, 'argentina', 'CABA', 'micasa 664 depto 2', 'leandro2311@gmail.com', '1566651102');

-- ******************************************************

-- Inserta los datos en la tabla Empleado
insert into Empleado (nombre, apellido,cuit_empleado, Usuario, sucursal, telefono, e_mail_empleado)
values ('LEANDRO','PASSALACQUA',20284880944,'LEADIRECTOR','Casa Central','156651102','leandro@empresa.com'),
('SEBASTIAN','PASSALCQUA',20329876543,'SEBCONTADOR','Casa Central','15789456','seba56@empresa.com'),
('PEPE','ARGENTO',230516843,'Empleado1','Casa Central','1566887','pepe@empresa.com'),
('TSUN','TSU',2093051623,'ARTOFWAR','Casa Central','15456102','TSUN@empresa.com'),
('NICOLA','TESLA',204213567,'ACSCELEC','Casa Central','1567412','rebe@empresa.com'),
('SAULO','TARZO',273451165,'ROMANO24','Casa Central','15741852','lisandrop@empresa.com'),
('MARCO','AURELIO',204511653,'MARK25','Casa Central','152258702','markventas@empresa.com'),
('SOFIA','JUSTINIANO',20302285341,'SOFISEN','Casa Central','15987456','sofiventas@empresa.com'),
('FLAVIO','BELISARIO',204160713,'FLABE','Casa Central','159456546','fbventas@empresacom'),
('MARIO','CAYO',234425087,'MARIOCAYO','Casa Central','15988888','marioventas@empresa.com'),
('ALFONSO','ELSABIO','20347098247','ALFONSOX','Casa Central','1591216','alfonsoventas@empresa.com'),
('PULIO','ESCIPION',234430162,'AFRICANUS','Sucursal Libertador','15545456','pulioventas@empresa.com'),
('ANIBAL','BARCA',27422561,'ANIBALCARTAGO','Sucursal Cartago','1591234922','anibalventas@empresa.com'),
('NAPOLEON','BONAPARTE',274494991,'REXFRANCIA','Sucursal Florida','15987654','Napo-ventas@empresa.com'),
('ALEJANDRO','MAGNO',253022854,'MACEDONIAREX','Sucursal Once','15987456','magnaventa@empresa.com'),
('LORD','BYRON',20105329874,'BYRONUSR','Casa Central','156651102','');

-- ******************************************************

-- Inserta los datos en la tabla sueldos
insert into sueldos_Empleado(legajo_empleado,mes_liquidado,fecha_de_ingreso,cargo,direccion,sueldo_bruto,sueldo_neto, cargas_sociales) 
values (1,'2022-11-30','2010-11-23', 'Gerente', 'Carlos encina 670', 350000,300000,50000),
(2,'2022-11-30','2010-11-23','Gerente contable', 'Carlos encina 670',300000,250000,50000),
(3,'2022-11-30','2020-12-01', 'Administrativo','Av rivadavia 10500', 120000,100000,20000),
(4,'2022-11-30','2021-01-01','Vendedor','balcarse 50',180000,150000,50000),
(5,'2022-11-30','2019-06-05','Vendedor','acoite 507', 150000,120000,30000),
(6,'2022-11-30','2018-09-21','Mantenimiento','Av. rivadavia 4567 CABA',200000,150000,50000),
(7,'2022-11-30','2017-05-25','Jefe de Personal','Av. pueyrredon 456 CABA',250000,200000,50000),
(8,'2022-11-30','2017-05-04','Secretaria','Av. Carabobo 150 psio 2 depto b',150000,120000,30000),
(9,'2022-11-30','2016-09-30','Personal','Av. Corrientes 1460 piso 5 depto F',180000,150000,30000),
(10,'2022-11-30','2015-03-05','Contador','Yrigogen 1078 CABA', 200000,150000,50000),
(11,'2022-11-30','2015-09-18','Jefe de deposito','Av. Larrazabal 4200 piso 10 CABA',250000,200000,50000),
(12,'2022-11-30','2014-06-11','Vendedor','Tinogasta 2700 CABA',130000,100000,30000),
(13,'2022-11-30','2013-04-07','Vendedor','Alberti 160 CABA',150000,120000,30000),
(14,'2022-11-30','2011-06-12','Vendedor','Blanco de Encalada 1580 piso 12 depto g CABA',190000,150000,40000),
(15,'2022-11-30','2010-11-14','Vendedor','Gaugamela 350 CABA',120000,100000,20000),

(1,'2022-12-30','2010-11-23', 'Gerente', 'Carlos encina 670', 525000,450000,75000),
(2,'2022-12-30','2010-11-23','Gerente contable', 'Carlos encina 670',400000,350000,50000),
(3,'2022-12-30','2020-12-01', 'Administrativo','Av rivadavia 10500', 180000,130000,50000),
(4,'2022-12-30','2021-01-01','Vendedor','balcarse 50',230000,150000,50000),
(5,'2022-12-30','2019-06-05','Vendedor','acoite 507', 230000,185000,50000),
(6,'2022-12-30','2018-09-21','Mantenimiento','Av. rivadavia 4567 CABA',300000,250000,50000),
(7,'2022-12-30','2017-05-25','Jefe de Personal','Av. pueyrredon 456 CABA',325000,275000,50000),
(8,'2022-12-30','2017-05-04','Secretaria','Av. Carabobo 150 psio 2 depto b',200000,170000,30000),
(9,'2022-12-30','2016-09-30','Personal','Av. Corrientes 1460 piso 5 depto F',220000,190000,30000),
(10,'2022-12-30','2015-03-05','Contador','Yrigogen 1078 CABA', 250000,200000,50000),
(11,'2022-12-30','2015-09-18','Jefe de deposito','Av. Larrazabal 4200 piso 10 CABA',300000,250000,50000),
(12,'2022-12-30','2014-06-11','Vendedor','Tinogasta 2700 CABA',200000,150000,50000),
(13,'2022-12-30','2013-04-07','Vendedor','Alberti 160 CABA',200000,150000,50000),
(14,'2022-12-30','2011-06-12','Vendedor','Blanco de Encalada 1580 piso 12 depto g CABA',200000,150000,50000),
(15,'2022-12-30','2010-11-14','Vendedor','Gaugamela 350 CABA',180000,150000,30000);

-- ******************************************************

-- Inserta los datos en la tabla Proveedor
insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values  ('Apple s.a.',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('Samsung s.a.',2945632,'Bouchard 810 CABA',' 08005557267','proveedores@samsung.com.ar','samsung.com.ar'),
('motorola s.a.',3029789,'Av. Roca 1000 CABA','800657789','proveedores@motorola.com.ar','motorola.com.ar'),
('Xiaomi s.a.',30336987,'Av. Juana Manso 314','800473288','xiaomishop.com.ar','xiaomi.com.ar'),
('Evga s.a.',3030123,'Av. Leandro N. Alem 305','800789654','proveedores@evga.com.ar','Evga.com.ar'),
('Asus s.a.',3029852,'Av. Cabildo 456','800963741','proveedores@asus.com.ar','Asus.com.ar'),
('Msi .s.a',3028741,'Acoite 515','800159753','proveedores@msi.com.ar','Msi.com.ar'),
('Lenovo s.a.',3029744,'Av. de Mayo 258','866426223','proveedores@lenovo.com','lenovo.com.ar'),
('Sony s.a.',3025741,'Av. 9 de Julio 456','800693741','proveedores@sony.com.ar','sony.com.ar'),
('LG argentina s.a.',3027456,'Av. Juana Manso 654','800966333','proveedores@lg.com.ar','LGargentina.com.ar'),
('Intel Argentina s.a.',3025741,'Av. Libertador 852','800123789','proveedores@intel.com.ar','intel.com'),
('Amd argentina s.a.',33290789,'Av. de Mayo 789','800456123','proveedores@amd.com.ar','Amd.com.ar'),
('Nvidia s.a.',3430455,'Av. Juana Manso 789','800753159','proveedores@nvidia.com.ar','Nvidia.com.ar'),
('Microsoft s.a.',3025459,'Carlos Della Paollera 261','800777333','proveedores@microsoft.com.ar','Microsoft.com'),
('Allienware s.a',3239852,'Juana Manso 1000','800777999','proveedores@allienware.com.ar','Allienware.com');

-- ******************************************************

-- Inserta los datos en la tabla Producto Stock
INSERT INTO producto_stock (id_proveedor, Producto_nombre, Categoria, stock_unidades, precio_unidad ) 
values (1,'Iphone 13 PRO','smartphone',500,200000.59),
(1,'Iphone 14','smartphone',100,300578.23),
(2,'Galaxy s23', 'SmartPhone', 100,280852.69),
(3,'Edge', 'SmasrtPhone', 100,30887.23),
(4,'Readmi Note 12x', 'SmartPhone',50,200159.4),
(5, 'Geforce RTX 4090TI','Video Card',50,343951.15),
(5,'Geforce RTX 4080','Video Card',50,300357.74),
(5, 'Power Supply 850W', 'Fuente de alimentacion',50,15000.33),
(6,'Motherboard ROX STRIG B660','Motherboard',50,15700.80),
(7,'MSI pro B660','Motherboard',50,16000.21),
(8,'Lenovo Legion Slim 7i 7gen','Notebook',40,250000),
(8,'Lenovo Legion 5i 7gen','Notebook',40,453887.90),
(11,'Intel Core i12', 'CPU',100,50000.21),
(15,'AlienWare 15 L17', 'Notebook',40,474000.20),
(15,'AlienWare Aurora R14','Pc Gamer', 20,40564.80 );

-- ******************************************************

-- Inserta los datos en la tabla Pedidos
INSERT INTO pedidos (id_cliente, id_empleado, direccion_envio) 
values (1,4,'balcarce 50'),
(1,14,'tinogasta 2580'),
(1,5,'Carlos Encina 667'),
(2,15,'Marco sastre 2423 CABA'),
(3,15,'Marco sastre 2423 CABA'),
(3,13,'CNEL Ramon L. Falcon 4582'),
(3,15,'Marco sastre 2423 CABA'),
(4,12,'Liniers 123'),
(7,13,'Carlos Encina 667'),
(7,13,'CNEL Ramon L. Falcon 4582'),
(8,12,'Mercedez 3580 CABA'),
(9,12,'Liniers 123'),
(10,15,'Av.Libertador 2589 CABA'),
(10,15,'Marco sastre 2423 CABA'),
(11,4,'Carlos Encina 667'),
(15,15,'Marco sastre 2423 CABA');

-- ******************************************************

-- Inserta los datos en la tabla detalle de pedidos, con esta tabla se pueden agregar diferentes items a un mismo pedido
INSERT INTO detalle_pedido (orden_id_detalle,sku_nro_producto_vendido,unidades_ordenadas,precio_venta) values 
(1,1,12,280159.99),
(1,5,1,259123.55),
(1,6,1,450700.51),
(2,13,1,70897.88),
(2,9,1,22158.55),
(2,7,2,358159.66),
(2,15,1,654159.88),
(3,1,10,251123.33),
(3,3,5,349125.55),
(3,5,10,258118.88),
(3,14,1,540487.88),
(3,12,3,523885.22),
(4,14,2,525123.55),
(4,5,1,257456.22),
(5,8,1,22159.55),
(5,7,1,1700.45),
(6,11,1,310159.55),
(7,7,1,358123.55),
(7,11,1,310159.22),
(8,13,1,70800.88),
(8,7,1,360879.88),
(9,3,3,349123.55),
(9,2,4,420159.88),
(10,1,3,260125.88),
(11,14,1,532123.55),
(12,5,15,258118.88),
(13,2,1,420159.88),
(14,14,1,540487.88),
(15,14,1,654159.88);

-- ******************************************************

-- Inserta los datos en la tabla donde se registran las empresas de transporte
INSERT INTO  empresa_transporte (empresa_de_transporte,cuit_empresa_transporte,telefono,e_mail) 
values ('El Aguila',30687231, '456-8899', 'elaguila@transport.com'), 
('El rapido',32123458, '4159-7894','elrapido@transporte.com'),
('The Turtle',33169875,'444-5555','laturtle@transp.com'),
('El Leon transport',35963741, '777-9999','leono@transporte.com'),
('la paloma mensajera s.a.',31456987,'789-4566','luis@palomo.com'),
('Legion x transport',31258741,'4010-1111', 'gauis@legionx.mil'),
('Aurigas Transp',3245852,'11-589-1123','envios@elauriga.com'),
('El correcaminos',30123654,'1178-9654','coyote@correcaminos.com'),
('Space X',30174852,'11369852','elon@spacex.com'),
('Correo Oficial',34123654,'11777888','envios@correoof.com'),
('Mclaren Transporte',33195357,'15996332','envios@mclaren.com'),
('Ocasa transport',31258741,'11223308','envios@ocasa.com'),
('Rappi electronicos',30321657,'11357852','rapi@envios.com'),
('Uber Envios',36998456,'11987354','uber@envios.com'),
('Retiro en sucursal','456789','Sin numero','116547788');

-- ******************************************************
-- Inserta los datos en la tabla donde se registran los Envios
INSERT INTO  Envio (orden_id,numero_seguimiento,transportadora, costo_envio, conf_entregado) 
 values 
(1,997654,4,369.7,TRUE),
(2,9874654,7,459.99,TRUE),
(3,152289,1,399.35,FALSE),
(4,65412,2,499.98,TRUE),
(5,78965,5,300.6,FALSE),
(6,159753,8,400.6,TRUE),
(7,178965,9,300.35,FALSE),
(8,963741,1,200.9,TRUE),
(9,852147,3,599.99,TRUE),
(10,321546,8,499.99,FALSE),
(11,879312,1,313.99,TRUE),
(12,963741,2,250.23,FALSE),
(13,111333,1,369.70,TRUE),
(14,001133,10,256.75,TRUE);
 