create procedure roles_disponibles
AS SELECT * FROM Roles WHERE UPPER(habilitado) = 'S'
GO

create procedure hoteles_disponibles
AS SELECT * FROM Hoteles
GO

create procedure documentos_disponibles
AS SELECT * FROM Tipo_documento
GO

create procedure funcionalidades_disponibles
AS SELECT * FROM Funcionalidad
GO

create procedure obtener_funcionalidades(@id_rol bigint)
AS SELECT descripcion 
FROM Funcionalidad_X_Rol FR
join Funcionalidad Fun on Fun.id_funcionalidad = FR.id_funcionalidad
WHERE fr.id_rol = @id_rol
GO

create procedure obtener_roles(@id_usuario bigint)
AS SELECT nombre, habilitado
FROM Usuario_X_Rol UR
join Roles on Roles.id_rol = UR.id_rol
WHERE id_usuario = @id_usuario
GO

create procedure obtener_hoteles(@id_usuario bigint)
AS SELECT nombre, mail, telefono, calle, altura, fecha_creacion, estrellas, recarga_estrellas, pais_id, ciudad
FROM Hotel_X_Empleado HE
join Hoteles on HE.hotel_id = Hoteles.id
WHERE usuario_id = @id_usuario
GO

create procedure buscar_usuario_por_id(@id_usuario bigint)
AS SELECT * FROM Usuarios WHERE id = @id_usuario
GO

create procedure baja_usuario(@id_usuario bigint)
AS
UPDATE Usuarios set habilitado = 'N' WHERE id = @id_usuario
GO

create procedure insertar_usuario_x_rol(@id_usuario int, @id_rol bigint)
AS BEGIN
BEGIN TRY
INSERT INTO Usuario_X_Rol (id_usuario, id_rol) VALUES (@id_usuario, @id_rol)
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure borrar_usuario_x_rol(@id_usuario bigint, @id_rol bigint)
AS BEGIN
BEGIN TRY
DELETE FROM Usuario_X_Rol
WHERE id_usuario = @id_usuario
AND id_rol = @id_rol
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure insertar_usuario_x_hotel(@id_usuario bigint, @id_hotel bigint)
AS BEGIN
BEGIN TRY
INSERT INTO Hotel_X_Empleado (usuario_id, hotel_id) VALUES (@id_usuario, @id_hotel)
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure borrar_usuario_x_hotel(@id_usuario bigint, @id_hotel bigint)
AS BEGIN
BEGIN TRY
DELETE FROM Hotel_X_Empleado 
WHERE usuario_id = @id_usuario
AND hotel_id = @id_hotel
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure buscar_cliente_por_id(@id_cliente bigint)
AS SELECT * FROM Cliente
WHERE id_cliente = @id_cliente
GO

create procedure login(@usuario varchar(50), @password varchar(50), @error bigint OUTPUT)
AS
IF (SELECT * FROM Usuarios WHERE Username = @usuario) = 0
	SET @error = -2
ELSE
	BEGIN
	IF (SELECT * FROM Usuarios WHERE Username = @usuario AND pw = @password) = 0
	SET @error = -1
	ELSE
		BEGIN
		SET @error = 0
		SELECT * FROM Usuarios WHERE Username = @usuario AND pw = @password;
		END
	END
RETURN
GO

create procedure buscar_clientes(@nombre varchar(50), @apellido varchar(50), @email varchar(50), @nroId bigint, @Id_tipo_identificación bigint)
AS SELECT * FROM Cliente WHERE
UPPER(nombre) LIKE UPPER(@nombre)
AND UPPER(apellido) LIKE UPPER(@apellido)
AND mail LIKE @email
AND CAST(numero_identificacion as varchar(50)) LIKE CAST(@nroId as varchar(50))
AND id_tipo_identificacion = @Id_tipo_identificación
GO

create procedure buscar_usuarios(@nombre varchar(50), @apellido varchar(50), @email varchar(50), @username varchar(50), @id_rol bigint, @id_hotel bigint)
AS SELECT * FROM Usuarios WHERE
UPPER(nombre) LIKE UPPER(@nombre)
AND UPPER(apellido) LIKE UPPER(@apellido)
AND mail LIKE @email
AND UPPER(username) LIKE UPPER(@username)
AND (SELECT id_usuario FROM Usuario_X_Rol WHERE id_rol = @id_rol) = id
AND (SELECT usuario_id FROM Hotel_X_Empleado WHERE hotel_id = @id_hotel) = id
GO

create procedure insertar_usuario(@username varchar(50), @password varchar(50), @nombre varchar(50), @apellido varchar(50), @Id_tipo_dni bigint, @dni varchar(50), @mail varchar(50), @telefono varchar(50), @direccion varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
INSERT INTO Usuarios (username, pw, nombre, apellido, tipo_documento_id, numero_documento, mail, telefono, direccion, fecha_nacimiento) VALUES (@username, @password, @nombre, @apellido, @Id_tipo_dni, @dni, @mail, @telefono, @direccion, @fechaNacimiento)
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -4
END CATCH
END
GO

create procedure actualizar_usuario(@id bigint, @username varchar(50), @password varchar(50), @nombre varchar(50), @apellido varchar(50), @Id_tipo_dni bigint, @dni varchar(50), @mail varchar(50), @telefono varchar(50), @direccion varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
UPDATE Usuarios SET
Username = @username,
pw = @password,
nombre = @nombre,
apellido = @apellido,
tipo_documento_id = @Id_tipo_dni,
numero_documento = @dni,
mail = @mail,
telefono = @telefono,
direccion = @direccion,
fecha_nacimiento = @fechaNacimiento
WHERE id = @id
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -4
END CATCH
END
GO

create procedure insertar_cliente(@nombre varchar(50), @apellido varchar(50), @id_tipo_identificacion bigint, @nroId bigint, @mail varchar(50), @telefono varchar(50), @calle varchar(50), @localidad varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
INSERT INTO Cliente (nombre, apellido, id_tipo_identificacion, numero_identificacion, mail, telefono, calle, localidad, fecha_nacimiento, habilitado) VALUES (@nombre, @apellido, @id_tipo_identificacion, @nroId, @mail, @telefono, @calle, @localidad, @fechaNacimiento, 1)
END TRY
BEGIN CATCH
IF (SELECT COUNT (mail) FROM Usuarios WHERE mail = @mail) > 0
	RETURN -5
IF @@ERROR = 2627
    RETURN -6
END CATCH
END
GO

create procedure actualizar_cliente(@id bigint, @nombre varchar(50), @apellido varchar(50), @id_tipo_identificacion bigint, @nroId bigint, @mail varchar(50), @telefono varchar(50), @calle varchar(50), @localidad varchar(50), @fechaNacimiento datetime, @habilitado char(1))
AS BEGIN
BEGIN TRY
UPDATE Cliente SET
nombre = @nombre,
apellido = @apellido,
id_tipo_identificacion = @id_tipo_identificacion,
numero_identificacion = @nroId,
mail = @mail,
telefono = @telefono,
calle = @calle,
localidad = @localidad,
fecha_nacimiento = @fechaNacimiento,
habilitado = @habilitado
WHERE id_cliente = @id
END TRY
BEGIN CATCH
IF (SELECT COUNT (mail) FROM Usuarios WHERE mail = @mail) > 0
	RETURN -5
IF @@ERROR = 2627
    RETURN -6
END CATCH
END
GO

create procedure buscar_habitaciones(@id_hotel bigint, @numero_habitacion bigint, @piso_habitacion bigint, @ubicacion_habitacion varchar(10), @id_tipo_habitacion bigint, @descripcion_habitacion varchar(50))
AS SELECT * FROM Habitacion WHERE
id_hotel = @id_hotel
AND numero = @numero_habitacion
AND piso = @piso_habitacion
AND UPPER(ubicacion) LIKE UPPER(@ubicacion_habitacion)
AND id_tipo_habitacion = @id_tipo_habitacion
AND UPPER(descripcion) LIKE UPPER(@descripcion_habitacion)
GO

create procedure buscar_habitacion_por_id(@id_habitacion bigint)
AS SELECT * FROM Habitacion
WHERE id_habitacion = @id_habitacion
GO

create procedure baja_logica_habitacion(@id_habitacion bigint)
AS
UPDATE Habitacion set habilitada = 'N' WHERE id_habitacion = @id_habitacion
GO

create procedure insertar_reserva(@id_regimen bigint, @fecha_inicio datetime, @fecha_fin datetime, @id_cliente bigint, @fecha_realizacion datetime)
AS BEGIN
BEGIN TRY
INSERT INTO Reservas (id_regimen, fecha_inicio, fecha_fin, id_cliente_titular, fecha_realizacion, id_estado) VALUES (@id_regimen, @fecha_inicio, @fecha_fin, @id_cliente, @fecha_realizacion, (SELECT id_Estado FROM Estado WHERE descripcion LIKE '% correcta'))
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure insertar_habitacion_reservada(@id_reserva bigint, @id_habitacion bigint)
AS BEGIN
BEGIN TRY
INSERT INTO HabitacionReservada (reserva_id, habitacion_id) VALUES (@id_reserva, @id_habitacion)
END TRY
BEGIN CATCH
DECLARE @fechaReserva datetime
SET @fechaReserva = (SELECT fecha_inicio FROM Reservas WHERE id_reserva = @id_reserva)
IF (SELECT COUNT (*) FROM HabitacionReservada HR JOIN Reservas R ON HR.reserva_id != R.id_reserva WHERE HR.habitacion_id = @id_habitacion AND @fechaReserva BETWEEN R.fecha_inicio AND R.fecha_fin)>0
	RETURN -7
--raiseError
END CATCH
END
GO
--Agrega una habitacion reservada. Si ya esá asociada a otra reserva en fechas que se superponen, debe fallar y devovler -7

create procedure borrar_habitacion_reservada(@id_reserva bigint, @id_habitacion bigint)
AS BEGIN
BEGIN TRY
DELETE FROM HabitacionReservada 
WHERE reserva_id = @id_reserva
AND habitacion_id = @id_habitacion
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure buscar_habiaciones(@id_hotel bigint, @id_tipo_habitacion bigint, @cantidad bigint, @fecha_inicio datetime, @fecha_fin datetime)
--hace un select para devovler las top cantidad habitaciones que hay de ese tipo en ese hotel que estén disponibles
--entre esas fechas, es decir tales que no hay otra reserva asociada q se superponga.El orden es trivial.

create procedure regimenes_disponibes(@id_hotel bigint)
AS SELECT *
FROM Regimen_X_Hotel RH
join Regimen R on RH.id_regimen = R.id_regimen
WHERE RH.id_hotel = @id_hotel AND R.habilitado = 'S'
GO

create procedure tipos_habitacion_disponibles
AS SELECT * FROM Tipo_habitacion
GO

create procedure buscar_reserva_por_id(@id_reserva bigint)
--Hace un select con los joins correspondientes para devovlerme las siguientes columnas para la reserva del id dado:
--fecha_fin, fecha_inicio,id_hotel_habitacion,nombre_hotel_habitacion,id_regimen_habitacon, descripcion_regimen_habitacion

create procedure obtener_habitaciones(@id_reserva bigint)
AS SELECT DISTINCT H.id_habitacion, H.id_tipo_habitacion, H.descripcion
FROM HabitacionReservada HR
join Habitacion H on H.id_habitacion = HR.habitacion_id
WHERE HR.reserva_id = @id_reserva
GO

create procedure actualizar_reserva(@id_reserva bigint, @id regimen bigint, @fecha_inicio datetime, @fecha_fin datetime)
--actualiza la reserva del id dado;Setea el estado de la reserva al 
--codigo q le correspoidne por reserva Modificada;

create procedure insertar_modificacion(@fecha datetime, @id_reserva bigint, @ide_usuario bigint,varchar @motivo varchar(50), @tipo bigint)
AS BEGIN
BEGIN TRY
IF @tipo = 0
	INSERT INTO Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, @tipo, (SELECT id_tipo_modificacion FROM Tipo_modificacion WHERE descripcion LIKE '%modifica%'))
IF @tipo = 1
	INSERT INTO Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, @tipo, (SELECT id_tipo_modificacion FROM Tipo_modificacion WHERE descripcion LIKE '%cancela%'))
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure reserva_editable(@id_reserva bigint)
AS IF (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%correc%') OR id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%modific%')) > 0
	RETURN 1
IF ((SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%cancela%') OR id_estado  = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva)=0 OR (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND fecha_fin = getdate() + ??)>0)
	RETURN 0
GO
--Devuelve 1 si la reserva tiene estado en "reserva correcta" o "reserva modificada". si esta cancelada o con ingreso, o si no existe devuelve 0
--Tambien devuelve 0 (false) si está a menos d eun dia de efectivizarse

create procedure cancelar_reserva_no_show(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE Reservas SET id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%no show') WHERE id_reserva = @id_reserva
GO

create procedure cancelar_reserva_clientew(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE Reservas SET id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%cliente') WHERE id_reserva = @id_reserva
GO

create procedure cancelar_reserva_recepcion(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE Reservas SET id_estado = (SELECT id_Estado FROM Estado WHERE descripcion LIKE '%personal de recepcion') WHERE id_reserva = @id_reserva
GO

create procedure buscar_roles(@nombre varchar(50), @estado char(1))
AS SELECT * FROM Roles WHERE
UPPER(nombre) LIKE UPPER(@nombre)
AND UPPER(habilitado) LIKE UPPER(@estado)
GO
--Hace el select y trae los roles que correspondan, el nombre viene por default en "" y el estado 
--en True (el estado es distinto a la alta o baja logica)

create procedure buscar_rol_por_id(@id bigint)
AS SELECT * FROM Roles WHERE id_rol = @id
GO

create procedure baja_rol(@id bigint)
AS
UPDATE Roles SET habilitado = 'N' WHERE id_rol = @id
GO

create procedure habitaciones_de_reserva(@id_reserva bigint)
AS SELECT DISTINCT HR.habitacion_id, H.numero
FROM HabitacionReservada HR
join Habitacion H on H.id_habitacion = HR.habitacion_id
WHERE HR.reserva_id = @id_reserva
UNION
SELECT COUNT (*) FROM HabitacionReservada_X_Cliente CH JOIN Habitacion H ON CH.habitacion_id = H.id_habitacion_reservada WHERE CH.id_reserva = @id_reserva
GO
--Hace un select para devovlerme una tabla con la ssiguientes columnas:
--id(id_habitacion_reservada), numero (numero de la habitacion reservada), clientes (cantidad de clientes q tiene asociados)

create procedure cambiar_habitacion(@id_habitacion_reservada bigint, @numero bigint)
AS DECLARE @id_tipo_habitacion_anterior bigint
DECLARE @id_hotel_habitacion_anterior bigint
SET @id_tipo_habitacion_anterior = (SELECT H.id_tipo_habitacion FROM HabitacionReservada HR JOIN Habitacion H ON H.id_habitacion = HR.habitacion_id WHERE HR.id = @id_habitacion_reservada)
SET @id_hotel_habitacion_anterior = (SELECT H.id_hotel FROM HabitacionReservada HR JOIN Habitacion H ON H.id_habitacion = HR.habitacion_id WHERE HR.id = @id_habitacion_reservada)
IF (SELECT COUNT (*) FROM Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) > 0
	UPDATE HabitacionReservada SET habitacion_id = (SELECT TOP 1 * FROM Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) WHERE id = @id_habitacion_reservada
ELSE
	RETURN -8
GO
--Cambia el id_habitacion de una habitacion reservada por el de una habitacion del numero dado, que sea del mismo tipo y hotel que el que tenía antes.
--Si no hay habitaciones disponibles en el mismo hotel y tipo con otro número deve devovler codigo de error -8

create procedure insertar_cliente_x_habitacion(@id_habitacion_reservada bigint, @id_cliente bigint)
AS BEGIN
BEGIN TRY
INSERT INTO HabitacionReservada_X_Cliente (habitacion_reservada_id, cliente_id) VALUES (@id_habitacion_reservada, @id_cliente)
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -9
END CATCH
END
GO

create procedure reserva_ingresable(@id_reserva bigint, @id_hotel bigint)
AS IF (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%correc%') OR id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%modific%'))>0
	RETURN 1
IF ((SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%cancel%') OR id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM HabitacionReservada HR JOIN Habitacion H ON H.id_habitacion = HR.habitacion_id WHERE HR.reserva_id = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND fecha_inicio < getdate())>0)
	RETURN 0
GO
--Devuelve 1 si la reserva tiene estado en "reserva correcta" o "reserva modificada". si esta cancelada o con ingreso, o si no existe devuelve 0
--Tambien devuelve 0 (false) si ya se pasó la fecha de inicio o si no pertenece al hotel especidicado

create procedure (@id_reserva bigint, @id_hotel bigint)
AS IF (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%ingres%'))>0
	RETURN 1
IF ((SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM Estado WHERE descripcion NOT LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM HabitacionReservada HR JOIN Habitacion H ON H.id_habitacion = HR.habitacion_id WHERE HR.reserva_id = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM Reservas WHERE id_reserva = @id_reserva)=0)
	RETURN 0
GO
--Devuelve 1 si la reserva tiene estado en "reserva ingresada" si el estado es otro , o si no existe devuelve 0
--Tambien devuelve 0 (false) si no pertenece al hotel especidicado

create procedure registrar_ingreso_reserva(@id_reserva bigint)
AS
UPDATE Reservas SET id_estado = (SELECT id_estado FROM Estado WHERE descripcion LIKE '%ingresa%') WHERE id_reserva = @id_reserva
GO

create procedure consumibles_de_reserva(@id_reserva bigint)
--Hace un select y devuelve los consumibles de esa reserva. las columnas son: id (id del producto) descripcion,
--cantidad,precio unitario, precio total (cantidad * unitario)

create procedure insertar_producto_x_habitacion_reservada(@id_reserva bigint, @id_producto bigint, @cantidad bigint)
AS BEGIN
BEGIN TRY
INSERT INTO Producto_X_HabitacionReservada (id_habitacion_reservada, id_producto, cantidad) VALUES (@id_reserva, @id_producto, @cantidad)
IF (SELECT COUNT (*) FROM Producto_X_HabitacionReservada WHERE id_producto = @id_producto AND id_habitacion_reservada = @id_reserva) > 0
	UPDATE Producto_X_HabitacionReservada SET cantidad = cantidad + @cantidad WHERE id_habitacion_reservada = @id_reserva AND id_producto = @id_producto
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure borrar_producto_x_habitacion_reservada(@id_reserva bigint, @id_producto bigint)
AS BEGIN
BEGIN TRY
DELETE FROM Producto_X_HabitacionReservada
WHERE id_habitacion_reservada = @id_reserva
AND id_producto = @id_producto
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure productos_disponibles
AS SELECT DISTINCT id_producto, descripcion FROM Producto
GO

create procedure items_factura(@id_factura bigint)
--Hace un select que me devuelve todos los items de la factura y también devuelve un item dias Alojado y dias no alojado.
--Tambien tiene que estar el item de devolucion por all inclusive si corresponde, para esto yo lo que
--habia pensado es simplementye hacer que haya un producto "Devolucion All Inclusive" de precio -1 y cargarlo
--en los items con la cantidad igual a lo q hay q restar, para que al multiplicar se eso y reste solo.

create procedure total_factura(@id_factura bigint)
AS SELECT DISTINCT total FROM Factura WHERE id_factura = @id_factura
--devuelve un decimal con el valor ttoald e la factura;

create procedure facturar(@id_reserva bigint, @fecha_salida datetime, @modo_pago varchar(50))
AS BEGIN
BEGIN TRY
UPDATE Reservas SET
id_estado = (SELECT id_Estado FROM Estado WHERE descripcion = 'facturada'),
fecha_fin = @fecha_salida
WHERE id_reserva = @id_reserva
UPDATE Factura SET id_medoto_pago = (SELECT id_metodo_pago FROM MetodoPago WHERE descripcion LIKE @modo_pago) WHERE id_reserva = @id_reserva
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure top5estadistico_hoteles_mas_reservas_canceladas(@trimestre bigint, @año bigint)
--Trae los 5 hoteles con mas reservas canceladas en ese trimestre del año, con las columnas correspondientes solo a los atributos del hotel y la cantidad de reservas canceladas

create procedure top5estadistico_hoteles_mas_consumibles_facturados(@trimestre bigint, @año bigint)
--Trae los 5 hoteles con mas consumibles facturados en ese trimestre del año, con las columnas correspondientes solo a los atributos del hotel y la cantidad de consumibles

create procedure top5estadistico_hoteles_con_mas_periodo_inactivo(@trimestre bigint, @año bigint)
--Trae los 5 hoteles con mas tiempo inactivo tuvieron en el trimestre del año, con las columnas correspondientes solo a los atributos del hotel

create procedure top5estadistico_habitaciones_mas_ocupadas(@trimestre bigint, @año bigint)
--Trae las 5 habitaciones que mas se ocuparon en ese trimestre del año, esto es por orden, las que mas dias se ocuparon, y las que mas veces se ocuparon.
--(habitacion que se ocupo 4 dias, en 2 veces de 2 dias) >> (habitacion que se ocupo 4 dias en una vez sola),
-- trae los datos de la habitacion, los dias que se ocupo, cuantas veces fue ocupada, y el nombre del hotel al que pertenece

create procedure top5estadistico_clientes_por_puntaje(@trimestre bigint, @año bigint)
--Trae los 5 clientes con mas puntaje del trimestre en el año, donde cada $10 en estadías vale 1 punto y cada $5 de consumibles es 1 punto,
-- de la suma de todas las facturaciones que haya tenido (independientemente del Hotel).
--Trae todos las columnas correspondientes a los atributos del Cliente