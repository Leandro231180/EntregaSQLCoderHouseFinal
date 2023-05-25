-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinalleandropassalacqua
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `auditoria_stock`
--

LOCK TABLES `auditoria_stock` WRITE;
/*!40000 ALTER TABLE `auditoria_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Leandro','Passalacqua','28488094',1,2028488,'argentina','CABA','micasa 664 depto 2','leandro2311@gmail.com','1566651102'),(2,'Sebastian','Passalacqua','33111222',1,282311,'argentina','CABA','Su casa ET 123 depto 2','sebaspassalacqua@gmail.com','1122233325'),(3,'Mauro','Passalacqua','35612213',1,20356122,'argentina','CABA','Once 123','mauropassa@gmail.com','1146417264'),(4,'Susana','Prystupa','11258756',1,456546,'Argentina','CABA','Carlos encina','Susanaprys@gmail.com','123456'),(5,'Daniel','Passalacqua','123456789',1,12714756,'Argentina','CABA','Carlos Encina','DanPassa@queteimporta.com','123546'),(6,'Laura','Rojas','39140593',1,20391405933,'argentina','CABA','Abasto 678','laura@spf.ml','789123'),(7,'Karen','Caseti','40643709',1,20406437093,'Argentina','CABA','yerbal 4567','keren@apuc.com','1565889'),(8,'Nicolas','Caseti','38931774',1,20389317744,'Argentina','Caba','yerbal 9875','nico@gool.org','156879'),(9,'Daniel','Figueroa','2212346',1,2022123466,'Argentina','Tucuman','Av. San Martin 1887','dany@aisa.org','15123456'),(10,'Bruno','Kano','34960913',1,23349609133,'Argentina','BS AS','caseros 456','brunoK@algo.com','15123459'),(11,'Andres','Cano','32975589',1,20329755893,'Argenina','Caba','Av Larazaval 151','Anresc@afip.com','15456789'),(12,'Pablo','Gallo','24456',1,2024456,'Argentina','Caba','Mercedez 3580','pablogallo@arcolor.com','15531592'),(13,'Leonardo','davico','24789',1,2024789,'Argentina','Caba','Ramon l. Falcon 4582','leodavico@ecep.edu','7534284'),(14,'Walther','White','39140593',1,2391405936,'Argentina','Caba','tinogasta 2580','wally@yo.edu.ar','4567826'),(15,'James','Bond','48879915',1,20488799156,'Argentina','Caba','Marco sastre 2423','rafa@educar.efu','741265'),(16,'Instituto','Passalacqua','',0,302028123,'argentina','CABA','micasa 664 depto 2','leandro2311@gmail.com','1566651102'),(17,'computacion','El minorista','',0,30741369,'argentina','CABA','micasa 664 depto 2','leandro2311@gmail.com','1566651102');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,1,12,280160),(2,1,5,1,259124),(3,1,6,1,450700),(4,2,13,1,70897.9),(5,2,9,1,22158.6),(6,2,7,2,358160),(7,2,15,1,654160),(8,3,1,10,251123),(9,3,3,5,349126),(10,3,5,10,258119),(11,3,14,1,540488),(12,3,12,3,523885),(13,4,14,2,525124),(14,4,5,1,257456),(15,5,8,1,22159.6),(16,5,7,1,1700.45),(17,6,11,1,310160),(18,7,7,1,358124),(19,7,11,1,310159),(20,8,13,1,70800.9),(21,8,7,1,360880),(22,9,3,3,349124),(23,9,2,4,420160),(24,10,1,3,260126),(25,11,14,1,532124),(26,12,5,15,258119),(27,13,2,1,420160),(28,14,14,1,540488),(29,15,14,1,654160);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'LEANDRO','PASSALACQUA',20284880944,'LEADIRECTOR','Casa Central','156651102','leandro@empresa.com'),(2,'SEBASTIAN','PASSALCQUA',20329876543,'SEBCONTADOR','Casa Central','15789456','seba56@empresa.com'),(3,'PEPE','ARGENTO',230516843,'Empleado1','Casa Central','1566887','pepe@empresa.com'),(4,'TSUN','TSU',2093051623,'ARTOFWAR','Casa Central','15456102','TSUN@empresa.com'),(5,'NICOLA','TESLA',204213567,'ACSCELEC','Casa Central','1567412','rebe@empresa.com'),(6,'SAULO','TARZO',273451165,'ROMANO24','Casa Central','15741852','lisandrop@empresa.com'),(7,'MARCO','AURELIO',204511653,'MARK25','Casa Central','152258702','markventas@empresa.com'),(8,'SOFIA','JUSTINIANO',20302285341,'SOFISEN','Casa Central','15987456','sofiventas@empresa.com'),(9,'FLAVIO','BELISARIO',204160713,'FLABE','Casa Central','159456546','fbventas@empresacom'),(10,'MARIO','CAYO',234425087,'MARIOCAYO','Casa Central','15988888','marioventas@empresa.com'),(11,'ALFONSO','ELSABIO',20347098247,'ALFONSOX','Casa Central','1591216','alfonsoventas@empresa.com'),(12,'PULIO','ESCIPION',234430162,'AFRICANUS','Sucursal Libertador','15545456','pulioventas@empresa.com'),(13,'ANIBAL','BARCA',27422561,'ANIBALCARTAGO','Sucursal Cartago','1591234922','anibalventas@empresa.com'),(14,'NAPOLEON','BONAPARTE',274494991,'REXFRANCIA','Sucursal Florida','15987654','Napo-ventas@empresa.com'),(15,'ALEJANDRO','MAGNO',253022854,'MACEDONIAREX','Sucursal Once','15987456','magnaventa@empresa.com'),(16,'LORD','BYRON',20105329874,'BYRONUSR','Casa Central','156651102','');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empresa_transporte`
--

LOCK TABLES `empresa_transporte` WRITE;
/*!40000 ALTER TABLE `empresa_transporte` DISABLE KEYS */;
INSERT INTO `empresa_transporte` VALUES (1,'El Aguila',30687231,'456-8899','elaguila@transport.com'),(2,'El rapido',32123458,'4159-7894','elrapido@transporte.com'),(3,'The Turtle',33169875,'444-5555','laturtle@transp.com'),(4,'El Leon transport',35963741,'777-9999','leono@transporte.com'),(5,'la paloma mensajera s.a.',31456987,'789-4566','luis@palomo.com'),(6,'Legion x transport',31258741,'4010-1111','gauis@legionx.mil'),(7,'Aurigas Transp',3245852,'11-589-1123','envios@elauriga.com'),(8,'El correcaminos',30123654,'1178-9654','coyote@correcaminos.com'),(9,'Space X',30174852,'11369852','elon@spacex.com'),(10,'Correo Oficial',34123654,'11777888','envios@correoof.com'),(11,'Mclaren Transporte',33195357,'15996332','envios@mclaren.com'),(12,'Ocasa transport',31258741,'11223308','envios@ocasa.com'),(13,'Rappi electronicos',30321657,'11357852','rapi@envios.com'),(14,'Uber Envios',36998456,'11987354','uber@envios.com'),(15,'Retiro en sucursal',456789,'Sin numero','116547788');
/*!40000 ALTER TABLE `empresa_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,1,997654,'2023-02-08 14:03:38',4,369.7,1),(2,2,9874654,'2023-02-08 14:03:38',7,459.99,1),(3,3,152289,'2023-02-08 14:03:38',1,399.35,0),(4,4,65412,'2023-02-08 14:03:38',2,499.98,1),(5,5,78965,'2023-02-08 14:03:38',5,300.6,0),(6,6,159753,'2023-02-08 14:03:38',8,400.6,1),(7,7,178965,'2023-02-08 14:03:38',9,300.35,0),(8,8,963741,'2023-02-08 14:03:38',1,200.9,1),(9,9,852147,'2023-02-08 14:03:38',3,599.99,1),(10,10,321546,'2023-02-08 14:03:38',8,499.99,0),(11,11,879312,'2023-02-08 14:03:38',1,313.99,1),(12,12,963741,'2023-02-08 14:03:38',2,250.23,0),(13,13,111333,'2023-02-08 14:03:38',1,369.7,1),(14,14,1133,'2023-02-08 14:03:38',10,256.75,1);
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,4,'2023-02-08 14:03:38','balcarce 50'),(2,1,14,'2023-02-08 14:03:38','tinogasta 2580'),(3,1,5,'2023-02-08 14:03:38','Carlos Encina 667'),(4,2,15,'2023-02-08 14:03:38','Marco sastre 2423 CABA'),(5,3,15,'2023-02-08 14:03:38','Marco sastre 2423 CABA'),(6,3,13,'2023-02-08 14:03:38','CNEL Ramon L. Falcon 4582'),(7,3,15,'2023-02-08 14:03:38','Marco sastre 2423 CABA'),(8,4,12,'2023-02-08 14:03:38','Liniers 123'),(9,7,13,'2023-02-08 14:03:38','Carlos Encina 667'),(10,7,13,'2023-02-08 14:03:38','CNEL Ramon L. Falcon 4582'),(11,8,12,'2023-02-08 14:03:38','Mercedez 3580 CABA'),(12,9,12,'2023-02-08 14:03:38','Liniers 123'),(13,10,15,'2023-02-08 14:03:38','Av.Libertador 2589 CABA'),(14,10,15,'2023-02-08 14:03:38','Marco sastre 2423 CABA'),(15,11,4,'2023-02-08 14:03:38','Carlos Encina 667'),(16,15,15,'2023-02-08 14:03:38','Marco sastre 2423 CABA');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto_stock`
--

LOCK TABLES `producto_stock` WRITE;
/*!40000 ALTER TABLE `producto_stock` DISABLE KEYS */;
INSERT INTO `producto_stock` VALUES (1,1,'Iphone 13 PRO','smartphone',500,200001),(2,1,'Iphone 14','smartphone',100,300578),(3,2,'Galaxy s23','SmartPhone',100,280853),(4,3,'Edge','SmasrtPhone',100,30887.2),(5,4,'Readmi Note 12x','SmartPhone',50,200159),(6,5,'Geforce RTX 4090TI','Video Card',50,343951),(7,5,'Geforce RTX 4080','Video Card',50,300358),(8,5,'Power Supply 850W','Fuente de alimentacion',50,15000.3),(9,6,'Motherboard ROX STRIG B660','Motherboard',50,15700.8),(10,7,'MSI pro B660','Motherboard',50,16000.2),(11,8,'Lenovo Legion Slim 7i 7gen','Notebook',40,250000),(12,8,'Lenovo Legion 5i 7gen','Notebook',40,453888),(13,11,'Intel Core i12','CPU',100,50000.2),(14,15,'AlienWare 15 L17','Notebook',40,474000),(15,15,'AlienWare Aurora R14','Pc Gamer',20,40564.8);
/*!40000 ALTER TABLE `producto_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Apple s.a.',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),(2,'Samsung s.a.',2945632,'Bouchard 810 CABA',' 08005557267','proveedores@samsung.com.ar','samsung.com.ar'),(3,'motorola s.a.',3029789,'Av. Roca 1000 CABA','800657789','proveedores@motorola.com.ar','motorola.com.ar'),(4,'Xiaomi s.a.',30336987,'Av. Juana Manso 314','800473288','xiaomishop.com.ar','xiaomi.com.ar'),(5,'Evga s.a.',3030123,'Av. Leandro N. Alem 305','800789654','proveedores@evga.com.ar','Evga.com.ar'),(6,'Asus s.a.',3029852,'Av. Cabildo 456','800963741','proveedores@asus.com.ar','Asus.com.ar'),(7,'Msi .s.a',3028741,'Acoite 515','800159753','proveedores@msi.com.ar','Msi.com.ar'),(8,'Lenovo s.a.',3029744,'Av. de Mayo 258','866426223','proveedores@lenovo.com','lenovo.com.ar'),(9,'Sony s.a.',3025741,'Av. 9 de Julio 456','800693741','proveedores@sony.com.ar','sony.com.ar'),(10,'LG argentina s.a.',3027456,'Av. Juana Manso 654','800966333','proveedores@lg.com.ar','LGargentina.com.ar'),(11,'Intel Argentina s.a.',3025741,'Av. Libertador 852','800123789','proveedores@intel.com.ar','intel.com'),(12,'Amd argentina s.a.',33290789,'Av. de Mayo 789','800456123','proveedores@amd.com.ar','Amd.com.ar'),(13,'Nvidia s.a.',3430455,'Av. Juana Manso 789','800753159','proveedores@nvidia.com.ar','Nvidia.com.ar'),(14,'Microsoft s.a.',3025459,'Carlos Della Paollera 261','800777333','proveedores@microsoft.com.ar','Microsoft.com'),(15,'Allienware s.a',3239852,'Juana Manso 1000','800777999','proveedores@allienware.com.ar','Allienware.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sueldos_empleado`
--

LOCK TABLES `sueldos_empleado` WRITE;
/*!40000 ALTER TABLE `sueldos_empleado` DISABLE KEYS */;
INSERT INTO `sueldos_empleado` VALUES (1,1,'2022-11-30','2010-11-23','Gerente','Carlos encina 670',350000,300000,50000),(2,2,'2022-11-30','2010-11-23','Gerente contable','Carlos encina 670',300000,250000,50000),(3,3,'2022-11-30','2020-12-01','Administrativo','Av rivadavia 10500',120000,100000,20000),(4,4,'2022-11-30','2021-01-01','Vendedor','balcarse 50',180000,150000,50000),(5,5,'2022-11-30','2019-06-05','Vendedor','acoite 507',150000,120000,30000),(6,6,'2022-11-30','2018-09-21','Mantenimiento','Av. rivadavia 4567 CABA',200000,150000,50000),(7,7,'2022-11-30','2017-05-25','Jefe de Personal','Av. pueyrredon 456 CABA',250000,200000,50000),(8,8,'2022-11-30','2017-05-04','Secretaria','Av. Carabobo 150 psio 2 depto b',150000,120000,30000),(9,9,'2022-11-30','2016-09-30','Personal','Av. Corrientes 1460 piso 5 depto F',180000,150000,30000),(10,10,'2022-11-30','2015-03-05','Contador','Yrigogen 1078 CABA',200000,150000,50000),(11,11,'2022-11-30','2015-09-18','Jefe de deposito','Av. Larrazabal 4200 piso 10 CABA',250000,200000,50000),(12,12,'2022-11-30','2014-06-11','Vendedor','Tinogasta 2700 CABA',130000,100000,30000),(13,13,'2022-11-30','2013-04-07','Vendedor','Alberti 160 CABA',150000,120000,30000),(14,14,'2022-11-30','2011-06-12','Vendedor','Blanco de Encalada 1580 piso 12 depto g CABA',190000,150000,40000),(15,15,'2022-11-30','2010-11-14','Vendedor','Gaugamela 350 CABA',120000,100000,20000),(16,1,'2022-12-30','2010-11-23','Gerente','Carlos encina 670',525000,450000,75000),(17,2,'2022-12-30','2010-11-23','Gerente contable','Carlos encina 670',400000,350000,50000),(18,3,'2022-12-30','2020-12-01','Administrativo','Av rivadavia 10500',180000,130000,50000),(19,4,'2022-12-30','2021-01-01','Vendedor','balcarse 50',230000,150000,50000),(20,5,'2022-12-30','2019-06-05','Vendedor','acoite 507',230000,185000,50000),(21,6,'2022-12-30','2018-09-21','Mantenimiento','Av. rivadavia 4567 CABA',300000,250000,50000),(22,7,'2022-12-30','2017-05-25','Jefe de Personal','Av. pueyrredon 456 CABA',325000,275000,50000),(23,8,'2022-12-30','2017-05-04','Secretaria','Av. Carabobo 150 psio 2 depto b',200000,170000,30000),(24,9,'2022-12-30','2016-09-30','Personal','Av. Corrientes 1460 piso 5 depto F',220000,190000,30000),(25,10,'2022-12-30','2015-03-05','Contador','Yrigogen 1078 CABA',250000,200000,50000),(26,11,'2022-12-30','2015-09-18','Jefe de deposito','Av. Larrazabal 4200 piso 10 CABA',300000,250000,50000),(27,12,'2022-12-30','2014-06-11','Vendedor','Tinogasta 2700 CABA',200000,150000,50000),(28,13,'2022-12-30','2013-04-07','Vendedor','Alberti 160 CABA',200000,150000,50000),(29,14,'2022-12-30','2011-06-12','Vendedor','Blanco de Encalada 1580 piso 12 depto g CABA',200000,150000,50000),(30,15,'2022-12-30','2010-11-14','Vendedor','Gaugamela 350 CABA',180000,150000,30000);
/*!40000 ALTER TABLE `sueldos_empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 11:11:15
