
-- Primer ejercicio

-- muestra la tabla empelado

select * from empleado;

-- setea el autocommit a False, no va a realizar autocommit

SELECT  @@autocommit = 0;

-- inserta en la tabla empleado 4 registros nuevos
insert into empleado(nombre, apellido,cuit_empleado, Usuario,sucursal, telefono, e_mail_empleado)
values('leonel','messi',20253216547,'delantero','Casa Central','156651552','messil@empresa.com'),
('rodrigo','De Paul',20322587411,'delantero','Casa Central','156672202','rodepaul@empresa.com'),
('leonel','escaloni',20409637415,'team leader','Casa Central','156651552','lscaloni@empresa.com'),
('emiliano','martinez',20407894560,'aquero','Casa Central','156651552','emartinez@empresa.com');

-- Empieza una transaccion y borra el registro numero 18
start transaction;
delete from empleado where id_empleado = 16;

-- Hace un rollback y recupera lo borrado
rollback ;
-- guarda definitivamente los datos 
COMMIT;


-- Segundo ejercicio Transaccion
-- selecciona la base de datos a usar


-- inicia una nueva transaccion e inserta 4 registros y crea el punto de salvado numero 1

select @@autocommit = 0;

start transaction;

insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('venus',3012345,' Primer Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','venus.com'),
('mercurio',3012345,' Segundo planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','Mercury.com'),
('tierra',3012345,' Tercer Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','Tierra.com'),
('marte',3012345,' Cuarto Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','Marte.com');
savepoint SAVE1;

-- inserta 4 registros mas y crea el punto de salvado numero 3

insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('Jupiter',3012345,' Quinto Planet; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('saturno',3012345,' Sexto Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('urano',3012345,' Septimo planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('neptuno',3012345,' Octavo Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('pluton',3012345,' Noveno Planeta; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE2;

-- comprobar que se incorporaron los datos
SELECT * FROM proveedor;


-- Vuelve los datos de la tabla al savepoint Save2
rollback to savepoint  SAVE1;

-- Borra el Savepoint
RELEASE SAVEPOINT  SAVE1;

