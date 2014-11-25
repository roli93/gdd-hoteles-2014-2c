/*  I M P O R T A N T E  */
-- PARA IMPRIMIR EL RETURN DE UN SP
/*
DECLARE @return_status int;
EXEC @return_status = MAX_POWER.(sp) (param1), (param2), ... ;
print @return_status
*/


/*  S I N   V E R I F I C A R  */










CREATE PROCEDURE [MAX_POWER].baja_rol(@id BIGINT)
AS
UPDATE [MAX_POWER].Rol SET habilitado = 'N' WHERE id_rol = @id
GO

CREATE PROCEDURE [MAX_POWER].insertar_cliente_x_habitacion(@id_habitacion_reservada BIGINT, @id_cliente BIGINT)
AS BEGIN
	BEGIN TRY
		INSERT INTO [MAX_POWER].Habitacion_reservada_X_Cliente (id_habitacion_reservada, id_cliente) VALUES (@id_habitacion_reservada, @id_cliente)
	END TRY
	BEGIN CATCH
		IF @@ERROR = 2627
			RETURN (-9)
	END CATCH
	RETURN(0)
	END
GO

CREATE PROCEDURE [MAX_POWER].registrar_ingreso_reserva(@id_reserva BIGINT)
AS
UPDATE [MAX_POWER].reserva SET id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingresa%') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].insertar_producto_x_habitacion_reservada(@id_reserva BIGINT,@id_habitacion BIGINT, @id_producto BIGINT, @cantidad BIGINT)
AS BEGIN
	IF (SELECT COUNT (*) FROM [MAX_POWER].Producto_X_Habitacion_reservada ph, MAX_POWER.Habitacion_reservada hr 
			WHERE  hr.id_habitacion=@id_habitacion AND hr.id_reserva=@id_reserva AND ph.id_habitacion_reservada =hr.id_habitacion_reservada AND  ph.id_producto = @id_producto
		) > 0
		UPDATE [MAX_POWER].Producto_X_Habitacion_reservada SET cantidad = cantidad + @cantidad WHERE id_habitacion_reservada = @id_reserva AND id_producto = @id_producto
	ELSE
		INSERT INTO [MAX_POWER].Producto_X_Habitacion_reservada (id_habitacion_reservada, id_producto, cantidad) VALUES (@id_reserva, @id_producto, @cantidad)
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_producto_x_habitacion_reservada(@id_reserva BIGINT, @id_producto BIGINT)
AS BEGIN
	delete FROM [MAX_POWER].Producto_X_Habitacion_reservada 
		WHERE id_producto = @id_producto AND id_habitacion_reservada IN (SELECT id_habitacion_reservada FROM [MAX_POWER].Habitacion_reservada  
																			WHERE id_reserva=@id_reserva)
END
GO

CREATE PROCEDURE [MAX_POWER].facturar(@id_reserva BIGINT, @fecha_salida DATETIME, @modo_pago VARCHAR(50),@total DECIMAL)
AS BEGIN
	BEGIN TRY
		UPDATE [MAX_POWER].reserva SET
			id_estado = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion = 'facturada'),
			fecha_salida = @fecha_salida
			WHERE id_reserva = @id_reserva
		UPDATE [MAX_POWER].Factura SET 
			id_medoto_pago = (SELECT id_metodo_pago FROM [MAX_POWER].Metodo_pago WHERE descripcion LIKE @modo_pago) 
			WHERE id_reserva = @id_reserva
		UPDATE [MAX_POWER].Factura SET 
			total = @total 
			WHERE id_reserva = @id_reserva
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].habitacion_de_reserva(@id_reserva BIGINT)
AS SELECT hc.id_habitacion_reservada AS id, h.numero AS numero, COUNT(hc.id_cliente) AS clientes 
		FROM MAX_POWER.Habitacion_reservada hr,MAX_POWER.Habitacion h, MAX_POWER.Habitacion_reservada_x_cliente hc
		WHERE hr.id_habitacion = h.id_habitacion AND hr.id_habitacion_reservada=hc.id_habitacion_reservada AND hr.id_reserva=@id_reserva
		group by hc.id_habitacion_reservada, h.numero
GO

CREATE PROCEDURE [MAX_POWER].cambiar_habitacion(@id_habitacion_reservada BIGINT, @numero BIGINT)
AS DECLARE @id_tipo_habitacion_anterior BIGINT
	DECLARE @id_hotel_habitacion_anterior BIGINT
	SET @id_tipo_habitacion_anterior = (SELECT H.id_tipo_habitacion FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_habitacion_reservada = @id_habitacion_reservada)
	SET @id_hotel_habitacion_anterior = (SELECT H.id_hotel FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_habitacion_reservada = @id_habitacion_reservada)
	IF (SELECT COUNT (*) FROM [MAX_POWER].Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) > 0
		BEGIN
		UPDATE [MAX_POWER].Habitacion_reservada SET id_habitacion = (SELECT TOP 1 id_habitacion FROM [MAX_POWER].Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) WHERE id_habitacion_reservada = @id_habitacion_reservada
		RETURN(0)
		END
	ELSE
		RETURN (-8)
GO

CREATE PROCEDURE [MAX_POWER].reserva_ingresable(@id_reserva BIGINT, @id_hotel BIGINT)
AS 
	IF (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%correc%') OR id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%modific%'))>0
		RETURN (1)
	IF ((SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%cancel%') OR id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_reserva = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND fecha_inicio < getdate())>0)
		RETURN (8)
GO

CREATE PROCEDURE [MAX_POWER].reserva_egresable(@id_reserva BIGINT, @id_hotel BIGINT)
AS 
	IF (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingres%'))>0
		RETURN (1)
	IF ((SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion NOT LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_reserva = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)=0)
		RETURN (0)
GO

CREATE PROCEDURE [MAX_POWER].actualizar_reserva(@id_reserva BIGINT, @id_regimen BIGINT, @fecha_inicio DATETIME, @fecha_fin DATETIME)
AS
	UPDATE [MAX_POWER].reserva SET
		id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE UPPER(descripcion) LIKE UPPER('%modific%')),
		fecha_inicio = @fecha_inicio,
		fecha_fin = @fecha_fin,
		id_regimen = @id_regimen
		WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].consumibles_reserva(@id_reserva BIGINT) AS
	SELECT ph.id_producto AS id, p.descripcion AS descripcion, H.numero AS numero_habitacion, ph.cantidad AS cantidad,p.precio AS precio_unitario, ph.cantidad*p.precio AS precio_total
		FROM MAX_POWER.producto_x_Habitacion_reservada ph,MAX_POWER.producto p, MAX_POWER.Habitacion_reservada hr, MAX_POWER.habitacion h
		WHERE ph.id_producto=p.id_producto AND hr.id_habitacion_reservada=ph.id_habitacion_reservada AND hr.id_habitacion=h.id_habitacion AND hr.id_reserva=@id_reserva
GO

CREATE FUNCTION [MAX_POWER].precio_dia(@id_reserva BIGINT, @id_regimen BIGINT) RETURNS DECIMAL AS
BEGIN
	DECLARE @precio DECIMAL 
	SELECT @precio=SUM(th.porcentual*r.precio_base) 
		FROM max_power.Habitacion_reservada hr, max_power.regimen r, max_power.habitacion h, max_power.tipo_habitacion th
		WHERE @id_reserva=hr.id_reserva AND hr.id_habitacion=h.id_habitacion AND h.id_tipo_habitacion=th.id_tipo_habitacion AND r.id_regimen = @id_regimen
	RETURN @precio
END
GO

CREATE PROCEDURE [MAX_POWER].items_factura(@id_factura BIGINT)AS
SELECT p.id_producto AS id, p.descripcion AS descripcion, SUM(ph.cantidad) AS cantidad, p.precio AS precio_unitario, SUM(ph.cantidad*p.precio) AS precio_total
	FROM MAX_POWER.producto_x_Habitacion_reservada ph,MAX_POWER.producto p
	WHERE ph.id_producto=p.id_producto  AND ph.id_factura =@id_factura
	group by p.id_producto,p.descripcion,p.precio
UNION
SELECT 0, 'Dias alojado', DATEDIFF(day,r.fecha_inicio, r.fecha_salida), max_power.precio_dia(r.id_reserva,r.id_regimen), DATEDIFF(day,r.fecha_inicio, r.fecha_salida)*max_power.precio_dia(r.id_reserva,r.id_regimen)
	FROM Max_power.factura f,max_power.reserva r 
	WHERE f.id_reserva=r.id_reserva AND f.id_factura=@id_factura
UNION
	SELECT 0, 'Dias no alojado', DATEDIFF(day,r.fecha_salida, r.fecha_fin), max_power.precio_dia(r.id_reserva,r.id_regimen), DATEDIFF(day,r.fecha_salida, r.fecha_fin)*max_power.precio_dia(r.id_reserva,r.id_regimen)
	FROM Max_power.factura f,max_power.reserva r 
WHERE f.id_reserva=r.id_reserva AND f.id_factura=@id_factura
GO

CREATE PROCEDURE [MAX_POWER].tiene_all_inclusive(@id_reserva BIGINT)AS
BEGIN
	DECLARE @regimen VARCHAR(50)
	SELECT @regimen=rg.descripcion FROM max_power.regimen rg, max_power.reserva rs
		WHERE rs.id_reserva=@id_reserva AND rg.id_regimen=rs.Id_regimen
	IF(@regimen like '%all%inclusive%')
		RETURN (1)
	ELSE 
		RETURN (0)
END
GO

/*  S I N   V E R I F I C A R  */