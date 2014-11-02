	/*	V I S T A S	*/

/* V - CLIENTE */
CREATE VIEW V_Clientes AS 
SELECT DISTINCT 
                      Cliente_Pasaporte_Nro AS Pasaporte, Cliente_Apellido AS Apellido, Cliente_Nombre AS Nombre, Cliente_Fecha_Nac AS Nacimiento, Cliente_Mail, 
                      Cliente_Dom_Calle AS Calle, Cliente_Nro_Calle AS Altura, Cliente_Piso AS Piso, Cliente_Depto AS Departamento, 
                      Cliente_Nacionalidad AS Nacionalidad
FROM         gd_esquema.Maestra
GO

/* V - CONSUMIBLES */
CREATE VIEW V_Consumibles AS 
SELECT DISTINCT Consumible_Codigo AS Codigo, Consumible_Descripcion AS Descripcion, Consumible_Precio AS Precio
FROM         gd_esquema.Maestra
WHERE     (Consumible_Codigo IS NOT NULL)
GO

/* V - FACTURAS */
CREATE VIEW V_Facturas AS 
SELECT DISTINCT 
                      Factura_Nro AS Factura, Factura_Fecha AS Fecha, Cliente_Pasaporte_Nro AS Cliente, Factura_Total AS Total, Reserva_Codigo AS Reserva
FROM         gd_esquema.Maestra
WHERE     (Consumible_Codigo IS NOT NULL)
GO

/* V - HABITACIONES */
CREATE VIEW V_Habitaciones AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Hotel_Ciudad AS Ciudad_Hotel, Hotel_Calle AS Calle_Hotel, Hotel_Nro_Calle AS Altura_Hotel, Habitacion_Numero AS Numero, 
                      Habitacion_Piso AS Piso, Habitacion_Frente AS Frente, Habitacion_Tipo_Codigo AS Tipo
FROM         gd_esquema.Maestra
ORDER BY Ciudad_Hotel, Calle_Hotel, Altura_Hotel, Piso
GO

/* V - HOTELES */
CREATE VIEW V_Hoteles AS 
SELECT DISTINCT 
                      Hotel_Ciudad AS Ciudad, Hotel_Calle AS Calle, Hotel_Nro_Calle AS Altura, Hotel_CantEstrella AS Estrellas, 
                      Hotel_Recarga_Estrella AS Recarga_Estrella
FROM         gd_esquema.Maestra
GO

/* V - ITEM FACTURA */
CREATE VIEW V_ItemFactura AS 
SELECT DISTINCT TOP (100) PERCENT Factura_Nro AS Factura, Consumible_Codigo AS Consumible,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          gd_esquema.Maestra AS m2
                            WHERE      (Factura_Nro = m.Factura_Nro) AND (Consumible_Codigo = m.Consumible_Codigo)) AS Cantidad,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          gd_esquema.Maestra AS m2
                            WHERE      (Factura_Nro = m.Factura_Nro) AND (Consumible_Codigo = m.Consumible_Codigo)) * Item_Factura_Monto AS Monto
FROM         gd_esquema.Maestra AS m
WHERE     (Consumible_Codigo IS NOT NULL)
ORDER BY Factura
GO

/* V - NACIONALIDAD */
CREATE VIEW V_Nacionalidad AS 
SELECT DISTINCT Cliente_Nacionalidad
FROM         gd_esquema.Maestra
GO

/* V - REGIMENES */
CREATE VIEW v_Regimen AS 
SELECT DISTINCT Regimen_Descripcion AS Descripcion, Regimen_Precio AS Precio
FROM         gd_esquema.Maestra
GO

/* V - RESERVAS */
CREATE VIEW V_Reservas AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Reserva_Codigo AS Codigo, Reserva_Fecha_Inicio AS Fecha_Inicio, Reserva_Cant_Noches AS Noches, 
                      Cliente_Pasaporte_Nro AS Cliente, Regimen_Descripcion AS Regimen, Cliente_Apellido AS Apellido, Cliente_Nombre AS Nombre
FROM         gd_esquema.Maestra
ORDER BY Codigo
GO

/* V - TIPO HABITACION */
CREATE VIEW V_TipoHabitacion AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Habitacion_Tipo_Codigo AS Codigo, Habitacion_Tipo_Descripcion AS Descripcion, 
                      Habitacion_Tipo_Porcentual AS Porcentual
FROM         gd_esquema.Maestra
ORDER BY Codigo
GO



	/*	F U N C I O N E S	*/
create function buscar_ID_Cliente (@pasaporte as varchar(50), @nombre as varchar(50), @apellido as varchar(50))
returns bigint
    BEGIN 
        return (select id from cliente 
					where	numero_identificacion = @pasaporte and
							nombre = @nombre and
							apellido = @apellido)
    END;

create function buscar_ID_Nacionalidad (@pais as varchar(50))
returns bigint
	begin 
		return (select id from paises where nombre = @pais)
	end;
	
create function buscar_ID_Regimen (@regimen as varchar(50))
returns bigint
	begin 
		return (select id from Regimenes where descripcion = @regimen)
	end
;

create function buscar_ID_Hotel (@ciudad as varchar(50), @calle as varchar(50), @altura numeric(18,0))
returns bigint
    BEGIN 
        return (select id from Hoteles 
					where	calle = @calle and
							altura = @altura and
							ciudad = @ciudad)
    END;



	/*	S	P	*/
		
/* SP - CLIENTES */
create procedure IMP_Cliente
AS INSERT INTO Cliente (numero_identificacion, Apellido, Nombre, Nacimiento, Mail, 
						Calle, Altura, Piso, Departamento, pais_id, Habilitado)
		SELECT pasaporte, Apellido, Nombre, Nacimiento, Cliente_Mail, 
						Calle, Altura, Piso, Departamento, dbo.buscar_ID_Nacionalidad(Nacionalidad) as pais_id, 
						'T' as Habilitado
				FROM V_Clientes
GO

/* SP - CONSUMIBLE */
create procedure IMP_Consumible
AS INSERT INTO Producto (codigo, descripcion, precio)
		SELECT codigo, descripcion, precio
				FROM V_Consumibles
GO

/* SP - FACTURAS */
create procedure IMP_Factura
AS INSERT INTO Factura (id, reserva_id, total)
	select Factura, Reserva, total
	from V_Facturas
GO

/* SP - NACIONALIDAD */
create procedure IMP_Nacionalidad
AS INSERT INTO Paises (nombre)
		SELECT cliente_nacionalidad 
				FROM V_nacionalidad
GO

/* SP - REGIMENES */
create procedure IMP_Regimen
AS INSERT INTO Regimenes (Descripcion, precio_base, habilitado)
		SELECT Descripcion, Precio, 'T' as habilitado
			FROM v_Regimen
GO

/* SP - RESERVAS */
create procedure IMP_Reserva
AS INSERT INTO Reservas (id, fecha_realizacion, fecha_inicio, fecha_fin, cliente_titular_id, regimen_id)
	select codigo, fecha_inicio, fecha_inicio, fecha_inicio + noches as fecha_fin,
		dbo.buscar_ID_Cliente(cliente, nombre, apellido) as cliente_id, dbo.buscar_ID_Regimen(regimen) as regimen
	from V_Reservas
GO

/* SP - TIPO HABITACION */
create procedure IMP_Tipo_Habitacion
AS INSERT INTO TipoHabitacion (id, Descripcion, porcentual)
		SELECT Codigo, Descripcion, porcentual
			FROM V_TipoHabitacion
GO

/* SP - HOTEL */
create procedure IMP_Hotel
AS INSERT INTO Hoteles (calle, altura, ciudad, estrellas, recarga_estrellas)
	select Calle, Altura, Ciudad, Estrellas, Recarga_Estrella
	from V_Hoteles
GO

/* SP - HABITACION */
create procedure IMP_Habitacion
AS INSERT INTO Habitaciones (hotel_id, tipo_habitacion_id, numero, piso, interna, habilitada)
	select dbo.buscar_ID_Hotel(Ciudad_Hotel, Calle_Hotel, Altura_Hotel) as hotel_id, Tipo, Numero, 
			Piso, 
			case when Frente = 'S' then 'N' else 'S' end as interna, /* TODO : VER ESTO !!! */
			'S' as habilitada
	from V_Habitaciones
GO



-- S E C U E N C I A 

create nonclustered index IDX_Clientes
	on Cliente(numero_identificacion, nombre);
create nonclustered index IDX_Reservas
	on Cliente(id);
 
delete from paises
delete from cliente
delete from Producto
delete from tipoHabitacion
delete from regimenes
delete from reservas
delete from factura
delete from hoteles
delete from habitaciones


EXEC IMP_Nacionalidad
GO
EXEC IMP_Cliente
GO
EXEC IMP_Consumible
GO
EXEC IMP_Tipo_Habitacion
GO
EXEC IMP_Regimen
GO
EXEC IMP_Reserva
GO
EXEC IMP_Factura
GO
EXEC IMP_Hotel
GO
EXEC IMP_Habitacion
GO