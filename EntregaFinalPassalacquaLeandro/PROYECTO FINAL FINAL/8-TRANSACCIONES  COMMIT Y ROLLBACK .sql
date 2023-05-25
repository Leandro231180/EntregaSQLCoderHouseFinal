
-- Segundo ejercicio Transaccion
-- selecciona la base de datos a usar
use proyectofinal2;
select * from proyectosql.proveedor;

-- setea el autocommit en false booleano
select @@autocommit = 0;

-- Inicia la transaccion e inserta un registro y a continuacion genera el SAVEPOINT 1

start transaction;
insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('gigabtye223',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE1;
Select * from proveedor;

-- borra el registro con el id 166
delete from proveedor where id_proveedor = 16;
Select * from proveedor;
-- vuelve al punto savepoint1
rollback to savepoint  SAVE1;
Select * from proveedor;

-- inicia una nueva transaccion e inserta 4 registros y crea el punto de salvado numero 1

select @@autocommit = 0;

start transaction;

insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('venus',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('mercurio',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('tierra',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('marte',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE2;
SELECT * FROM proveedor;
rollback to savepoint  SAVE2;
-- inserta 4 registros mas y crea el punto de salvado numero 3

insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('Jupiter',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('saturno',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('urano',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('neptuno',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('pluton',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE3;

-- Vuelve los datos de la tabla al savepoint Save2
rollback to savepoint  SAVE2;



-- Primer ejercicio
-- setea el autocommit a False, no va a realizar autocommit

SELECT  @@autocommit = 0;

-- muestra la tabla empelado

select * from empleado;

-- inserta en la tabla empleado 4 registros nuevos
insert into empleado(nombre, apellido,cuit_empleado, Usuario,sucursal, telefono, e_mail_empleado)
values('leonel','messi',20253216547,'delantero','Casa Central','156651552','messil@empresa.com'),
('rodrigo','De Paul',20322587411,'delantero','Casa Central','156672202','rodepaul@empresa.com'),
('leonel','escaloni',20409637415,'team leader','Casa Central','156651552','lscaloni@empresa.com'),
('emiliano','martinez',20407894560,'aquero','Casa Central','156651552','emartinez@empresa.com');

-- Empieza una transaccion y borra el registro numero 18
start transaction;
delete from proyectosql.empleado where id_empleado = 18;

-- Hace un rollback y recupera lo borrado
rollback ;
-- guarda definitivamente los datos 
COMMIT;