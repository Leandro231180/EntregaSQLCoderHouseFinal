
-- Segundo ejercicio Transaccion
-- selecciona la base de datos a usar

select * from proyectosql.proveedor;

-- setea el autocommit en false booleano
select @@autocommit = 0;

-- Inicia la transaccion e inserta un registro y a continuacion genera el SAVEPOINT 1

start transaction;
insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('gigabtye',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE1;


-- borra el registro con el id 166
delete from proyectosql.proveedor where id_proveedor = 16;
-- vuelve al punto savepoint1
rollback to savepoint  SAVE1;

-- inicia una nueva transaccion e inserta 4 registros y crea el punto de salvado numero 2
start transaction;

insert into proveedor(Company_name,Cuit_proveedor, direccion_proveedor, telefono_proveedor, email_proveedor, home_page) 
values ('venus',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('mercurio',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('tierra',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com'),
('marte',3012345,' One Apple Park Way; Cupertino, CA 95014, U.S.A.','8002752273','proveedores@apple.com','apple.com');
savepoint SAVE2;

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

select @@autocommit = 0;

-- seleccioa el esquema a usar
use proyectosql;
-- muestra la tabla empelado

select * from proyectosql.empleado;

-- inserta en la tabla empleado 4 registros nuevos
insert into empleado(nombre, apellido, Usuario, Clave_usuario, direccion, fecha_de_ingreso, cargo, sucursal, telefono, e_mail_empleado, sueldo)
values('leonel','messi','delantero','CLAVE123','su casa',23/01/2000,'administrativo','Casa Central','156651552','messil@empresa.com', 20000),
('rodrigo','De Paul','delantero','CLAVE123','su casa',12/01/2000,'administratico','Casa Central','156672202','rodepaul@empresa.com', 20000),
('leonel','escaloni','team leader','CLAVE123','su casa',15/01/2000,'Gerente','Casa Central','156651552','lscaloni@empresa.com', 20000),
('emiliano','martinez','aquero','CLAVE123','su casa',20/01/2000,'administrativo','Casa Central','156651552','emartinez@empresa.com', 20000);

-- Empieza una transaccion y borra el registro numero 21
start transaction;
delete from proyectosql.empleado where id_empleado = 21;

-- Hace un rollback y recupera lo borrado
rollback ;
-- guarda definitivamente los datos 
COMMIT;