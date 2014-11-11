/* CARGAR ROLES Y ALGUNAS FUNCIONES */
insert into Roles (nombre, habilitado) values ('Administrador', 'S')
insert into Roles (nombre, habilitado) values ('Recepcionista', 'S')
insert into Roles (nombre, habilitado) values ('Guest', 'S')

insert into Funcionalidad (descripcion) values ('Administrar')
insert into Funcionalidad (descripcion) values ('Recepcionar')
insert into Funcionalidad (descripcion) values ('Atender')
insert into Funcionalidad (descripcion) values ('Reservar')

insert into Funcionalidad_X_Rol (id_rol, id_funcionalidad) values (1,1)
insert into Funcionalidad_X_Rol (id_rol, id_funcionalidad) values (2,2)
insert into Funcionalidad_X_Rol (id_rol, id_funcionalidad) values (2,3)
insert into Funcionalidad_X_Rol (id_rol, id_funcionalidad) values (2,4)
insert into Funcionalidad_X_Rol (id_rol, id_funcionalidad) values (3,4)

/* CARGAR TIPO DOCUMENTO */
insert into Tipo_documento (descripcion) values('DNI')

/* USUARIO */
insert into Usuarios (Username, pw, Nombre, Apellido, Estado, tipo_documento_id, numero_documento, mail, telefono, direccion, fecha_nacimiento, habilitado, intentos_fallidos)
	values ('test', 'test', 'Testeo', 'Maestro', 1, 1, '99999999', 'tester@testeo.com', '4444-4444', 'falsa 123', cast('01/01/1993' as date), 'S', 0)

exec insertar_usuario_x_rol 1, 1

exec insertar_usuario_x_hotel 1, 1
go
exec insertar_usuario_x_hotel 1, 2
go

