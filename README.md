gdd-hoteles-2014-2c
===================

Aplicación de Hoteles en C#

SP faltantes:

create procedure buscar_habiaciones(@id_hotel bigint, @id_tipo_habitacion bigint, @cantidad bigint, @fecha_inicio datetime, @fecha_fin datetime)
--hace un select para devovler las top cantidad habitaciones que hay de ese tipo en ese hotel que estén disponibles
--entre esas fechas, es decir tales que no hay otra reserva asociada q se superponga.El orden es trivial.

create procedure buscar_reserva_por_id(@id_reserva bigint)
--Hace un select con los joins correspondientes para devovlerme las siguientes columnas para la reserva del id dado:
--fecha_fin, fecha_inicio,id_hotel_habitacion,nombre_hotel_habitacion,id_regimen_habitacon, descripcion_regimen_habitacion

create procedure consumibles_de_reserva(@id_reserva bigint)
--Hace un select y devuelve los consumibles de esa reserva. las columnas son: id (id del producto) descripcion,
--cantidad,precio unitario, precio total (cantidad * unitario)

create procedure items_factura(@id_factura bigint)
--Hace un select que me devuelve todos los items de la factura y también devuelve un item dias Alojado y dias no alojado.
--Tambien tiene que estar el item de devolucion por all inclusive si corresponde, para esto yo lo que
--habia pensado es simplementye hacer que haya un producto "Devolucion All Inclusive" de precio -1 y cargarlo
--en los items con la cantidad igual a lo q hay q restar, para que al multiplicar se eso y reste solo.

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
