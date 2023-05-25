-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectosql
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
-- Dumping data for table `auditoria_nomina_empleados`
--

LOCK TABLES `auditoria_nomina_empleados` WRITE;
/*!40000 ALTER TABLE `auditoria_nomina_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_nomina_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auditoria_stock`
--

LOCK TABLES `auditoria_stock` WRITE;
/*!40000 ALTER TABLE `auditoria_stock` DISABLE KEYS */;
INSERT INTO `auditoria_stock` VALUES ('GEFORCE 5090',1000),('GEFORCE 5090ti',1000111),('GEFORCE 5060ti',1021),('RTX GEFORCE 5060ti',1021),('manzana',1),('leo',1),('copa del mnundo',1),('MBAPPE',1),('TUCUTUCU',1),('TUCUTUCU',1),('TUCUTUCU',1),('TUCUTUCU222',1),('productoX',1);
/*!40000 ALTER TABLE `auditoria_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auditoria_stock2`
--

LOCK TABLES `auditoria_stock2` WRITE;
/*!40000 ALTER TABLE `auditoria_stock2` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_stock2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auditoria_stock3`
--

LOCK TABLES `auditoria_stock3` WRITE;
/*!40000 ALTER TABLE `auditoria_stock3` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_stock3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Leandro','Passalacqua','28488094',2028,'argentina','CABA','micasa 664 depto 2','leandro2311@gmail.com','1566651102'),(2,'Sebastian','Passalacqua','33111222',203311,'argentina','Caba','Su casa ET 123 depto 2','sebaspassalacqua@gmail.com','1122233325'),(3,'Mauro','Passalacqua','12345678',2012345,'argentina','CABA','Once 123','mauropassa@gmail.com','46417264'),(4,'Susana','Prystupa','11258756',456546,'Argentina','CABA','Carlos encina','Susanaprys@gmail.com','123456'),(5,'Daniel','Passalacqua','123456789',12714756,'Argentina','CABA','Carlos Encina','DanPassa@queteimporta.com','123546'),(6,'Laura','Rojas','291233',2029133,'argentina','CABA','Abasto 678','laura@spf.ml','789123'),(7,'Karen','Caseti','42123',2042123,'Argentina','CABA','yerbal 4567','keru@yo.org','1565889'),(8,'Nicolas','Caseti','412234',20412234,'Argentina','Caba','yerbal 9875','nico@gool.org','156879'),(9,'Daniel','Figueroa','2212346',202212346,'Argentina','Tucuman','san ruben 123','dany@aisa.org','123456'),(10,'Bruno','Kano','39123',239123,'Argentina','BS AS','caseros 456','brunoK@algo.com','123459'),(11,'Andres','Cano','34123',2034123,'Argenina','Caba','Liniers 123','Anresc@afip.com','456789'),(12,'Pablo','Gallo','24456',2024456,'Argentina','Caba','Mercedez 3580','pablogallo@arcolor.com','753159'),(13,'Leonardo','davico','24789',2024789,'Argentina','Caba','ramon falcon 4582','leodavico@ecep.edu','7534284'),(14,'Benito','Bongarra','42346',2042346,'Argentina','Caba','tinogasta 2580','benito@yo.edu.ar','4567826'),(15,'Rafael','Saenz','42826',2042826,'Argentina','Caba','Marco sastre 2423','rafa@educar.efu','741265');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'LEANDRO','PASSALACQUA','LEADIRECTOR','CLAVE123','Carlos Encina 664','0000-00-00','Gerente','Casa Central','156651102','leandro@empresa.com',200000),(2,'SEBA','PASSA','SEBCONTADOR','CLAVE321','Carlos Encina 664','0000-00-00','Contador','Casa Central','15789456','seba56@empresa.com',150000),(3,'PEPE','Rodriguez','Empleado1','CLAVE456','Av rivadavia 10500','0000-00-00','Empleado','Casa Central','1566887','pepe@empresa.com',100000),(4,'Mauricio','Macri','maurim','CLAVE123','balcarse 50','0000-00-00','empleado','Casa Central','15456102','mauri@empresa.com',100000),(5,'REBECA','LOPEZ','REBE1CA','CLAVE102','acoite 50','0000-00-00','empleado','Casa Central','1567412','rebe@empresa.com',100000),(6,'LISANDRO','PAZ','LICHA24','CLAVE753','rivadavia 4567','0000-00-00','empleado','Casa Central','15741852','lisandrop@empresa.com',100000),(7,'MARCOS','ROJAS','MARK25','CLAVE965','pueyrredon 456','0000-00-00','empleado','Casa Central','152258702','markventas@empresa.com',150000),(8,'SOFIA','BENELLI','SOFISEN','CLAVE45A4','balcarse 50','0000-00-00','empleado','Casa Central','15987456','sofiventas@empresa.com',150000),(9,'ANAHI','SCHEL','ANASCHE','CLAVE4as56a','tuyuti 450','0000-00-00','empleado','Casa Central','159456546','anahiiventas@empresa.com',150000),(10,'MARIO','SCHACHER','MARIOALEM','CLAVE45A4','Venezuela 4789','0000-00-00','empleado','Casa Central','15988888','marioventas@empresa.com',150000),(11,'ALFONSO','ELSABIO','ALFONSOX','CLAVE4df45','madrid 456','0000-00-00','empleado','Casa Central','1591216','alfonsoventas@empresa.com',150000),(12,'PULIO','ESCIPION','AFRICANUS','CLAVE45A4','Zama 4550','0000-00-00','empleado','Casa Central','15545456','pulioventas@empresa.com',100000),(13,'ANIBAL','BARCA','ANIBALCARTAGO','CLAVEELEFANTE','Cartago 330','0000-00-00','empleado','Casa Central','1591234922','anibalventas@empresa.com',10000),(14,'NAPOLEON','BONAPARTE','REXFRANCIA','CLAVE1776','Francia 1786','0000-00-00','empleado','Casa Central','15987654','Napo-ventas@empresa.com',150000),(15,'ALEJANDRO','MAGNO','MACEDONIAREX','CLAVEOPLON','Gaugamela 350','0000-00-00','empleado','Casa Central','15987456','sofiventas@empresa.com',150000),(16,'leonel','messi','delantero','CLAVE123','su casa','0000-00-00','administrativo','Casa Central','156651552','messil@empresa.com',20000),(17,'rodrigo','De Paul','delantero','CLAVE123','su casa','0000-00-00','administratico','Casa Central','156672202','rodepaul@empresa.com',20000),(18,'leonel','escaloni','team leader','CLAVE123','su casa','0000-00-00','Gerente','Casa Central','156651552','lscaloni@empresa.com',20000),(19,'emiliano','martinez','aquero','CLAVE123','su casa','0000-00-00','administrativo','Casa Central','156651552','emartinez@empresa.com',20000),(20,'leonel','messi','delantero','CLAVE123','su casa','0000-00-00','administrativo','Casa Central','156651552','messil@empresa.com',20000),(21,'rodrigo','De Paul','delantero','CLAVE123','su casa','0000-00-00','administratico','Casa Central','156672202','rodepaul@empresa.com',20000),(23,'emiliano','martinez','aquero','CLAVE123','su casa','0000-00-00','administrativo','Casa Central','156651552','emartinez@empresa.com',20000);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,1,111,'El Aguila','333444','elaguila@transport.com'),(2,2,112,'El Aguila','333444','elaguila@transport.com'),(3,3,113,'El rapido','111222','elrapido@transporte.com'),(4,4,114,'El Aguila','333444','elaguila@transport.com'),(5,5,115,'The Turtle','4445555','laturtle@transp.com'),(6,6,116,'El Leon transport','777999','leono@transporte.com'),(7,7,117,'la paloma mensajera s.a.','7894566','luis@palomo.com'),(8,8,118,'El Leon transport','777999','leono@transporte.com'),(9,9,119,'The Turtle','4445555','laturtle@transp.com'),(10,10,120,'El rapido','111222','elrapido@transporte.com'),(11,11,121,'la paloma mensajera s.a.','7894566','luis@palomo.com'),(12,12,122,'El Aguila','333444','elaguila@transport.com'),(13,13,123,'Lgion x transport','10101111','gauis@legionx.mil'),(14,14,124,'El rapido','111222','elrapido@transporte.com'),(15,15,125,'El Leon transport','777999','leono@transporte.com');
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,2,'2022-11-23',6,'GeForce RTX 4080',1,'2022-11-23','mi casa 123',300000),(2,7,1,'2022-11-23',15,'AlienWare Aurora R14',1,'2022-11-23','Su casa 321',390000),(3,8,5,'2022-12-01',11,'Lenovo Legion Slim i7',1,'2022-12-02','yerbal 5550',290000),(4,12,8,'2022-12-02',1,'Iphone 14',1,'2022-12-03','rivadavia 12500 2a',450000),(5,10,9,'2022-12-02',2,'Ipad',1,'2022-12-02','Tinogasta 2580',250000),(6,13,5,'2022-12-03',5,'Readmi Note 4',1,'2022-12-03','Yrigoyen 458',160000),(7,14,9,'2022-12-04',3,'Samsung Galaxy',3,'2022-12-04','larrazabal 1356',212000),(8,3,10,'2022-12-04',2,'Ipad 9inchs',1,'2022-12-04','Emilio Castro 18988',270000),(9,2,2,'2022-12-04',11,'Lenovo Legion Slim 7i',1,'2022-12-04','Carlos Encina 667',370000),(10,9,7,'2022-12-04',14,'Alienware 15 L17',1,'2022-12-04','yerbal 515',500000),(11,4,13,'2022-12-04',5,'Readmi Note 4',1,'2022-12-04','Garcia de Cossio 4567',123456),(12,10,12,'2022-12-04',8,'Power Supply 850w',2,'2022-12-05','Lisandro de la Torre 234',10000),(13,12,15,'2022-12-05',9,'Motherboard ROX STRIG B660',3,'2022-12-05','Cnel Ramon L. Falcon 4567',6900),(14,4,7,'2022-12-05',3,'Galaxy s23',1,'2022-12-05','leguizamon 150',345000),(15,11,9,'2022-12-05',7,'MSI pro B660',1,'2022-12-05','Bolaños 195',10800),(16,7,1,'2022-12-06',6,'Geforce RTX 4090TI',2,'2022-12-05','Carlos Encina 664',480000);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto_stock`
--

LOCK TABLES `producto_stock` WRITE;
/*!40000 ALTER TABLE `producto_stock` DISABLE KEYS */;
INSERT INTO `producto_stock` VALUES (1,1,'Iphone 14','smartphone',100,1000),(2,1,'Ipad 9inchs','Tablet',70,800),(3,2,'Galaxy s23','SmartPhone',100,900),(4,3,'Edge','SmasrtPhone',100,700),(5,4,'Readmi Note 4','SmartPhone',50,700),(6,5,'Geforce RTX 4090TI','Video Card',50,1700),(7,5,'Geforce RTX 4080','Video Card',50,1200),(8,5,'Power Supply 850W','Fuente de alimentacion',50,500),(9,6,'Motherboard ROX STRIG B660','Motherboard',50,700),(10,7,'MSI pro B660','Motherboard',50,600),(11,8,'Lenovo Legion Slim 7i 7gen','Notebook',40,2000),(12,8,'Lenovo Legion 5i 7gen','Notebook',40,1500),(13,11,'Intel Core i12','CPU',100,1500),(14,15,'AlienWare 15 L17','Notebook',40,2500),(15,15,'AlienWare Aurora R14','Pc Gamer',20,3000),(16,1,'copa del mundo','trofeo',1,1000003),(17,1,'copa del mundo','trofeo',1,1000003),(18,10,'sable corvo SM','Sable',1,4353454),(19,13,'GEFORCE 5090','placa de video',10,1000),(20,13,'GEFORCE 5090ti','placa de video',10,1000111),(21,13,'GEFORCE 5060ti','placa de video',10,1021),(22,13,'RTX GEFORCE 5060ti','placa de video',10,1021),(23,1,'manzana','jugador de futbol',1,1),(28,1,'leo','jugador de futbol',1,1),(30,1,'copa del mnundo','jugador de futbol',1,1),(34,3,'MBAPPE','jugador de futbol',1,1),(35,3,'TUCUTUCU','jugador de futbol',1,1),(36,3,'TUCUTUCU','jugador de futbol',1,1),(37,3,'TUCUTUCU','jugador de futbol',1,1),(38,3,'TUCUTUCU222','jugador de futbol',1,1),(39,8,'productoX','ALGO',1,1);
/*!40000 ALTER TABLE `producto_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Apple s.a.',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),(2,'Samsung s.a.',29456,'Bouchard 810 CABA',' 08005557267','proveedores@samsung.com.ar','samsung.com.ar'),(3,'motorola s.a.',29789,'Av. Roca 1000 CABA','800657789','proveedores@motorola.com.ar','motorola.com.ar'),(4,'Xiaomi s.a.',336987,'Av. Juana Manso 314','800473288','xiaomishop.com.ar','xiaomi.com.ar'),(5,'Evga s.a.',30123,'Av. Leandro N. Alem 305','800789654','proveedores@evga.com.ar','Evga.com.ar'),(6,'Asus s.a.',29852,'Av. Cabildo 456','800963741','proveedores@asus.com.ar','Asus.com.ar'),(7,'Msi .s.a',28741,'Acoite 515','800159753','proveedores@msi.com.ar','Msi.com.ar'),(8,'Lenovo s.a.',29744,'Av. de Mayo 258','866426223','proveedores@lenovo.com','lenovo.com.ar'),(9,'Sony s.a.',25741,'Av. 9 de Julio 456','800693741','proveedores@sony.com.ar','sony.com.ar'),(10,'LG argentina s.a.',27456,'Av. Juana Manso 654','800966333','proveedores@lg.com.ar','LGargentina.com.ar'),(11,'Intel Argentina s.a.',25741,'Av. Libertador 852','800123789','proveedores@intel.com.ar','intel.com'),(12,'Amd argentina s.a.',290789,'Av. de Mayo 789','800456123','proveedores@amd.com.ar','Amd.com.ar'),(13,'Nvidia s.a.',30455,'Av. Juana Manso 789','800753159','proveedores@nvidia.com.ar','Nvidia.com.ar'),(14,'Microsoft s.a.',25459,'Carlos Della Paollera 261','800777333','proveedores@microsoft.com.ar','Microsoft.com'),(15,'Allienware s.a',39852,'Juana Manso 1000','800777999','proveedores@allienware.com.ar','Allienware.com'),(16,'Apple s.a.',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),(20,'SPACEX2',3012345,' One Apple Park Way; texas, U.S.A.','8002752852','proveedores@apple.com','spacex.com'),(23,'gigabtye',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor_log`
--

LOCK TABLES `proveedor_log` WRITE;
/*!40000 ALTER TABLE `proveedor_log` DISABLE KEYS */;
INSERT INTO `proveedor_log` VALUES ('Apple s.a.',3012345,'2022-12-22 20:34:51'),('SPACEX',3012345,'2023-01-09 12:17:19'),('SPACEX',3012345,'2023-01-09 13:20:31'),('SPACEX2',3012345,'2023-01-09 14:27:15'),('SPACEX2',3012345,'2023-01-09 14:27:42'),('NASA',3012345,'2023-01-09 14:30:10'),('NASA',3012345,'2023-01-09 14:58:56'),('gigabtye',3012345,'2023-01-09 19:14:51');
/*!40000 ALTER TABLE `proveedor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor_log2`
--

LOCK TABLES `proveedor_log2` WRITE;
/*!40000 ALTER TABLE `proveedor_log2` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor_log2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,'leandro','passsa',NULL),(1,'leandro','passsa',NULL),(2,'leandro','passsa',3),(2,'Tomas','passsa',3),(2,'Tomas','passsa',3),(2,'marcela','passsa',3),(2,'marcela','barreiro',3);
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-10 19:41:36
