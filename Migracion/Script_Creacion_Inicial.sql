/* TABLAS */
/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Estadia_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Estadia_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]'))
ALTER TABLE [MAX_POWER].[Estadia] DROP CONSTRAINT [FK_Estadia_reserva]
GO
/****** Object:  ForeignKey [FK_Factura_Metodo_pago]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Metodo_pago]
GO
/****** Object:  ForeignKey [FK_Factura_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_reserva]
GO
/****** Object:  ForeignKey [FK_Factura_Tarjeta_credito]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Tarjeta_credito]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Tarjeta_credito]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hotel]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_Habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Hotel_Paises]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] DROP CONSTRAINT [FK_Hotel_Paises]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Usuario_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] DROP CONSTRAINT [FK_Hotel_X_Usuario_Hotel]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Usuario_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] DROP CONSTRAINT [FK_Hotel_X_Usuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Modificacion_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_reserva]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuario]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Factura]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Producto]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_reserva_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Cliente]
GO
/****** Object:  ForeignKey [FK_reserva_Estado]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Estado]
GO
/****** Object:  ForeignKey [FK_reserva_Regimen]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] DROP CONSTRAINT [FK_Usuario_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO
/****** Object:  Check [CK__Habitacio__frent__558D1123]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[MAX_POWER].[CK__Habitacio__frent__558D1123]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[MAX_POWER].[CK__Habitacio__frent__558D1123]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [CK__Habitacio__frent__558D1123]

END
GO
/****** Object:  Table [MAX_POWER].[Producto_X_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada_X_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]
GO
/****** Object:  Table [MAX_POWER].[Factura]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Metodo_pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_reserva]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Tarjeta_credito]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Tarjeta_credito]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Factura]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Factura]
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion_reservada]
GO
/****** Object:  Table [MAX_POWER].[Estadia]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Estadia_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]'))
ALTER TABLE [MAX_POWER].[Estadia] DROP CONSTRAINT [FK_Estadia_reserva]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Estadia]
GO
/****** Object:  Table [MAX_POWER].[Modificacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_reserva]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Modificacion]
GO
/****** Object:  Table [MAX_POWER].[Hotel_X_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] DROP CONSTRAINT [FK_Hotel_X_Usuario_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] DROP CONSTRAINT [FK_Hotel_X_Usuario_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hotel_X_Usuario]
GO
/****** Object:  Table [MAX_POWER].[Periodo_Cierre]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Periodo_Cierre]
GO
/****** Object:  Table [MAX_POWER].[Habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[MAX_POWER].[CK__Habitacio__frent__558D1123]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [CK__Habitacio__frent__558D1123]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion]
GO
/****** Object:  Table [MAX_POWER].[Regimen_X_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Regimen_X_Hotel]
GO
/****** Object:  Table [MAX_POWER].[Reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] DROP CONSTRAINT [FK_reserva_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Reserva]
GO
/****** Object:  Table [MAX_POWER].[Usuario_X_Rol]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuario_X_Rol]
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad_X_Rol]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Funcionalidad_X_Rol]
GO
/****** Object:  Table [MAX_POWER].[Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] DROP CONSTRAINT [FK_Usuario_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Usuario__intento__06DB1F4B]') AND type = 'D')
BEGIN
ALTER TABLE [MAX_POWER].[Usuario] DROP CONSTRAINT [DF__Usuario__intento__06DB1F4B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuario]
GO
/****** Object:  Table [MAX_POWER].[Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Cliente]
GO
/****** Object:  Table [MAX_POWER].[Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] DROP CONSTRAINT [FK_Hotel_Paises]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hotel]
GO
/****** Object:  Table [MAX_POWER].[Pais]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Pais]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Pais]
GO
/****** Object:  Table [MAX_POWER].[Producto]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Producto]
GO
/****** Object:  Table [MAX_POWER].[Metodo_pago]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Metodo_pago]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Metodo_pago]
GO
/****** Object:  Table [MAX_POWER].[Regimen]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Regimen]
GO
/****** Object:  Table [MAX_POWER].[Clientes_Repetidos]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Clientes_Repetidos]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Clientes_Repetidos]
GO
/****** Object:  Table [MAX_POWER].[Estado]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Estado]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Estado]
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Funcionalidad]
GO
/****** Object:  Table [MAX_POWER].[Rol]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Rol]
GO
/****** Object:  Table [MAX_POWER].[Tarjeta_credito]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tarjeta_credito]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tarjeta_credito]
GO
/****** Object:  Table [MAX_POWER].[Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_documento]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_documento]
GO
/****** Object:  Table [MAX_POWER].[Tipo_habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_habitacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_habitacion]
GO
/****** Object:  Table [MAX_POWER].[Tipo_modificacion]    Script Date: 12/08/2014 20:04:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_modificacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_modificacion]
GO
/****** Object:  Schema [MAX_POWER]    Script Date: 12/08/2014 20:04:41 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'MAX_POWER')
DROP SCHEMA [MAX_POWER]
GO
/****** Object:  Schema [MAX_POWER]    Script Date: 12/08/2014 20:04:41 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'MAX_POWER')
EXEC sys.sp_executesql N'CREATE SCHEMA [MAX_POWER] AUTHORIZATION [dbo]'
GO
/****** Object:  Table [MAX_POWER].[Tipo_modificacion]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_modificacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Tipo_modificacion](
	[id_tipo_modificacion] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK__TipoModi__3213E83F6A30C649] PRIMARY KEY CLUSTERED 
(
	[id_tipo_modificacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Tipo_habitacion]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Tipo_habitacion](
	[id_tipo_habitacion] [bigint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[porcentual] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK__TipoHabi__3213E83F3C69FB99] PRIMARY KEY CLUSTERED 
(
	[id_tipo_habitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_documento]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Tipo_documento](
	[id_tipo_documento] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipos_Documentos] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Tarjeta_credito]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tarjeta_credito]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Tarjeta_credito](
	[id_tarjeta] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[codigo_seguridad] [varchar](50) NULL,
 CONSTRAINT [PK_Tarjeta_credito] PRIMARY KEY CLUSTERED 
(
	[id_tarjeta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Rol]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Rol](
	[id_rol] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[habilitado] [char](1) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Funcionalidad](
	[id_funcionalidad] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Funcionalidades] PRIMARY KEY CLUSTERED 
(
	[id_funcionalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Estado]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Estado](
	[id_estado] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Estado__3213E83F5AEE82B9] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Clientes_Repetidos]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Clientes_Repetidos]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Clientes_Repetidos](
	[id_cliente] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tipo_identificacion] [bigint] NULL,
	[numero_identificacion] [bigint] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[altura] [bigint] NOT NULL,
	[piso] [bigint] NULL,
	[departamento] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[localidad] [varchar](50) NULL,
	[id_pais] [bigint] NULL,
	[habilitado] [char](1) NOT NULL,
	[controlado] [char](1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Regimen]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Regimen](
	[id_regimen] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio_base] [numeric](18, 2) NOT NULL,
	[habilitado] [char](1) NOT NULL,
 CONSTRAINT [PK__Regimene__3213E83F34C8D9D1] PRIMARY KEY CLUSTERED 
(
	[id_regimen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Metodo_pago]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Metodo_pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Metodo_pago](
	[id_metodo_pago] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK__MedioPag__3213E83F6E01572D] PRIMARY KEY CLUSTERED 
(
	[id_metodo_pago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Producto]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Producto](
	[id_producto] [bigint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Pais]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Pais]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Pais](
	[id_pais] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Hotel]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Hotel](
	[id_hotel] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[calle] [varchar](50) NULL,
	[altura] [bigint] NULL,
	[fecha_creacion] [date] NULL,
	[estrellas] [int] NULL,
	[recarga_estrellas] [int] NULL,
	[id_pais] [bigint] NULL,
	[ciudad] [varchar](50) NULL,
 CONSTRAINT [PK__Hotel__3213E83F30F848ED] PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Cliente]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Cliente](
	[id_cliente] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tipo_identificacion] [bigint] NULL,
	[numero_identificacion] [bigint] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[altura] [bigint] NOT NULL,
	[piso] [bigint] NULL,
	[departamento] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[localidad] [varchar](50) NULL,
	[id_pais] [bigint] NULL,
	[habilitado] [char](1) NOT NULL,
 CONSTRAINT [PK__Cliente__3213E83F5EBF139D] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Usuario]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Usuario](
	[id_usuario] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[pw] [varchar](100) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[id_tipo_documento] [bigint] NOT NULL,
	[numero_documento] [varchar](50) NOT NULL,
	[mail] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[habilitado] [char](1) NOT NULL,
	[intentos_fallidos] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__Usuario__3213E83F21B6055D] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad_X_Rol]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Funcionalidad_X_Rol](
	[id_rol] [bigint] NOT NULL,
	[id_funcionalidad] [bigint] NOT NULL,
 CONSTRAINT [PK_Funcionalidad_X_Rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC,
	[id_funcionalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Usuario_X_Rol]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Usuario_X_Rol](
	[id_usuario] [bigint] NOT NULL,
	[id_rol] [bigint] NOT NULL,
 CONSTRAINT [PK_Usuario_X_Rol] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Reserva]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Reserva](
	[id_reserva] [bigint] NOT NULL,
	[fecha_realizacion] [date] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
	[id_estado] [bigint] NULL,
	[id_cliente_titular] [bigint] NOT NULL,
	[id_regimen] [bigint] NOT NULL,
 CONSTRAINT [PK__reserva__3213E83F4BAC3F29] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Regimen_X_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Regimen_X_Hotel](
	[id_hotel] [bigint] NOT NULL,
	[id_regimen] [bigint] NOT NULL,
 CONSTRAINT [PK_Regimen_X_Hotel] PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC,
	[id_regimen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Habitacion]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Habitacion](
	[id_habitacion] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[id_tipo_habitacion] [bigint] NOT NULL,
	[numero] [bigint] NOT NULL,
	[piso] [int] NOT NULL,
	[frente] [char](1) NULL,
	[descripcion] [varchar](50) NULL,
	[habilitada] [char](1) NOT NULL,
 CONSTRAINT [PK__Habitaci__3213E83F403A8C7D] PRIMARY KEY CLUSTERED 
(
	[id_habitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Periodo_Cierre]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Periodo_Cierre](
	[id_periodo] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
 CONSTRAINT [PK_Periodos_Cierre] PRIMARY KEY CLUSTERED 
(
	[id_periodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Hotel_X_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Hotel_X_Usuario](
	[id_usuario] [bigint] NOT NULL,
	[id_hotel] [bigint] NOT NULL,
 CONSTRAINT [PK_Hotel_X_Usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_hotel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Modificacion]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Modificacion](
	[id_modificacion] [bigint] IDENTITY(1,1) NOT NULL,
	[id_reserva] [bigint] NOT NULL,
	[motivo] [varchar](50) NOT NULL,
	[fecha] [date] NULL,
	[id_usuario] [bigint] NOT NULL,
	[id_tipo_modificacion] [bigint] NOT NULL,
 CONSTRAINT [PK__Modifica__3213E83F628FA481] PRIMARY KEY CLUSTERED 
(
	[id_modificacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Estadia]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Estadia](
	[id_estadia] [bigint] IDENTITY(1,1) NOT NULL,
	[fecha_ingreso] [date] NULL,
	[fecha_egreso] [date] NULL,
	[id_reserva] [bigint] NOT NULL,
	[valida] [char](1) NULL,
 CONSTRAINT [PK_Estadia] PRIMARY KEY CLUSTERED 
(
	[id_estadia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Habitacion_reservada](
	[id_habitacion_reservada] [bigint] IDENTITY(1,1) NOT NULL,
	[id_reserva] [bigint] NOT NULL,
	[id_habitacion] [bigint] NOT NULL,
 CONSTRAINT [PK__Habitaci__3213E83F47DBAE45] PRIMARY KEY CLUSTERED 
(
	[id_habitacion_reservada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Factura]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Factura](
	[id_factura] [bigint] NOT NULL,
	[id_medoto_pago] [bigint] NULL,
	[id_estadia] [bigint] NOT NULL,
	[total] [numeric](18, 2) NOT NULL,
	[id_tarjeta] [bigint] NULL,
 CONSTRAINT [PK__Factura__3213E83F66603565] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada_X_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente](
	[id_habitacion_reservada] [bigint] NOT NULL,
	[id_cliente] [bigint] NOT NULL,
 CONSTRAINT [PK_Habitacion_reservada_X_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_habitacion_reservada] ASC,
	[id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Producto_X_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Producto_X_Habitacion_reservada](
	[id_habitacion_reservada] [bigint] NOT NULL,
	[id_producto] [bigint] NOT NULL,
	[cantidad] [bigint] NOT NULL,
	[id_factura] [bigint] NULL,
 CONSTRAINT [PK_Producto_X_Habitacion_reservada] PRIMARY KEY CLUSTERED 
(
	[id_habitacion_reservada] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Check [CK__Habitacio__frent__558D1123]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[MAX_POWER].[CK__Habitacio__frent__558D1123]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [CK__Habitacio__frent__558D1123] CHECK  (([frente]='N' OR [frente]='S'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[MAX_POWER].[CK__Habitacio__frent__558D1123]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [CK__Habitacio__frent__558D1123]
GO
/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Paises] FOREIGN KEY([id_pais])
REFERENCES [MAX_POWER].[Pais] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] CHECK CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tipo_documento] FOREIGN KEY([id_tipo_identificacion])
REFERENCES [MAX_POWER].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Estadia_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Estadia_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]'))
ALTER TABLE [MAX_POWER].[Estadia]  WITH CHECK ADD  CONSTRAINT [FK_Estadia_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[Reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Estadia_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Estadia]'))
ALTER TABLE [MAX_POWER].[Estadia] CHECK CONSTRAINT [FK_Estadia_reserva]
GO
/****** Object:  ForeignKey [FK_Factura_Metodo_pago]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Metodo_pago] FOREIGN KEY([id_medoto_pago])
REFERENCES [MAX_POWER].[Metodo_pago] ([id_metodo_pago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_Metodo_pago]
GO
/****** Object:  ForeignKey [FK_Factura_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_reserva] FOREIGN KEY([id_estadia])
REFERENCES [MAX_POWER].[Estadia] ([id_estadia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_reserva]
GO
/****** Object:  ForeignKey [FK_Factura_Tarjeta_credito]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Tarjeta_credito]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Tarjeta_credito] FOREIGN KEY([id_tarjeta])
REFERENCES [MAX_POWER].[Tarjeta_credito] ([id_tarjeta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Tarjeta_credito]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_Tarjeta_credito]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad] FOREIGN KEY([id_funcionalidad])
REFERENCES [MAX_POWER].[Funcionalidad] ([id_funcionalidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [MAX_POWER].[Rol] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Hotel]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipo_habitacion] FOREIGN KEY([id_tipo_habitacion])
REFERENCES [MAX_POWER].[Tipo_habitacion] ([id_tipo_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_Habitacion]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_Habitacion] FOREIGN KEY([id_habitacion])
REFERENCES [MAX_POWER].[Habitacion] ([id_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] CHECK CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[Reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] CHECK CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] CHECK CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [MAX_POWER].[Habitacion_reservada] ([id_habitacion_reservada])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] CHECK CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Hotel_Paises]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Paises] FOREIGN KEY([id_pais])
REFERENCES [MAX_POWER].[Pais] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] CHECK CONSTRAINT [FK_Hotel_Paises]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Usuario_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Usuario_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] CHECK CONSTRAINT [FK_Hotel_X_Usuario_Hotel]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Usuario_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Usuario_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Usuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Usuario]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Usuario] CHECK CONSTRAINT [FK_Hotel_X_Usuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Modificacion_reserva]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[Reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_reserva]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Tipo_modificacion] FOREIGN KEY([id_tipo_modificacion])
REFERENCES [MAX_POWER].[Tipo_modificacion] ([id_tipo_modificacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Usuario]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Cierre_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] CHECK CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Factura]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura] FOREIGN KEY([id_factura])
REFERENCES [MAX_POWER].[Factura] ([id_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [MAX_POWER].[Habitacion_reservada] ([id_habitacion_reservada])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Producto]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto] FOREIGN KEY([id_producto])
REFERENCES [MAX_POWER].[Producto] ([id_producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hotel]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_reserva_Cliente]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Cliente] FOREIGN KEY([id_cliente_titular])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] CHECK CONSTRAINT [FK_reserva_Cliente]
GO
/****** Object:  ForeignKey [FK_reserva_Estado]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Estado] FOREIGN KEY([id_estado])
REFERENCES [MAX_POWER].[Estado] ([id_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] CHECK CONSTRAINT [FK_reserva_Estado]
GO
/****** Object:  ForeignKey [FK_reserva_Regimen]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reserva]'))
ALTER TABLE [MAX_POWER].[Reserva] CHECK CONSTRAINT [FK_reserva_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_Tipo_documento]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_documento] FOREIGN KEY([id_tipo_documento])
REFERENCES [MAX_POWER].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [MAX_POWER].[Rol] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuario]    Script Date: 12/08/2014 20:04:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO


PRINT 'Tablas creadas.'


	/*	V I S T A S	*/

/* V - CLIENTE */
IF OBJECT_ID('MAX_POWER.V_Clientes', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Clientes
GO

CREATE VIEW [MAX_POWER].V_Clientes AS 
SELECT DISTINCT 
                      Cliente_Pasaporte_Nro AS Pasaporte, Cliente_Apellido AS Apellido, Cliente_Nombre AS Nombre, Cliente_Fecha_Nac AS Nacimiento, Cliente_Mail, 
                      Cliente_Dom_Calle AS Calle, Cliente_Nro_Calle AS Altura, Cliente_Piso AS Piso, Cliente_Depto AS Departamento, 
                      Cliente_Nacionalidad AS Nacionalidad
FROM         gd_esquema.Maestra
GO

/* V - CONSUMIBLES */
IF OBJECT_ID('MAX_POWER.V_Consumibles', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Consumibles
GO

CREATE VIEW [MAX_POWER].V_Consumibles AS 
SELECT DISTINCT Consumible_Codigo AS Codigo, Consumible_Descripcion AS Descripcion, Consumible_Precio AS Precio
FROM         gd_esquema.Maestra
WHERE     (Consumible_Codigo IS NOT NULL)
GO

/* V - FACTURAS */
IF OBJECT_ID('MAX_POWER.V_Facturas', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Facturas
GO

CREATE VIEW [MAX_POWER].V_Facturas AS 
SELECT DISTINCT 
                      Factura_Nro AS Factura, Factura_Fecha AS Fecha, Cliente_Pasaporte_Nro AS Cliente, Factura_Total AS Total, Reserva_Codigo AS Reserva
FROM         gd_esquema.Maestra
WHERE     (Consumible_Codigo IS NOT NULL)
GO

/* V - habitacion */
IF OBJECT_ID('MAX_POWER.V_habitacion', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_habitacion
GO

CREATE VIEW [MAX_POWER].V_habitacion AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Hotel_Ciudad AS Ciudad_Hotel, Hotel_Calle AS Calle_Hotel, Hotel_Nro_Calle AS Altura_Hotel, Habitacion_Numero AS Numero, 
                      Habitacion_Piso AS Piso, Habitacion_Frente AS Frente, Habitacion_Tipo_Codigo AS Tipo
FROM         gd_esquema.Maestra
ORDER BY Ciudad_Hotel, Calle_Hotel, Altura_Hotel, Piso
GO

/* V - Hotel */
IF OBJECT_ID('MAX_POWER.V_Hotel', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Hotel
GO

CREATE VIEW [MAX_POWER].V_Hotel AS 
SELECT DISTINCT 
                      Hotel_Ciudad AS Ciudad, Hotel_Calle AS Calle, Hotel_Nro_Calle AS Altura, Hotel_CantEstrella AS Estrellas, 
                      Hotel_Recarga_Estrella AS Recarga_Estrella
FROM         gd_esquema.Maestra
GO

/* V - ITEM FACTURA */
IF OBJECT_ID('MAX_POWER.V_ItemFactura', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_ItemFactura
GO

CREATE VIEW [MAX_POWER].V_ItemFactura AS 
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
IF OBJECT_ID('MAX_POWER.V_Nacionalidad', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Nacionalidad
GO

CREATE VIEW [MAX_POWER].V_Nacionalidad AS 
SELECT DISTINCT Cliente_Nacionalidad
FROM         gd_esquema.Maestra
GO

/* V - REGIMENES */
IF OBJECT_ID('MAX_POWER.v_Regimen', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.v_Regimen
GO

CREATE VIEW [MAX_POWER].v_Regimen AS 
SELECT DISTINCT Regimen_Descripcion AS Descripcion, Regimen_Precio AS Precio
FROM         gd_esquema.Maestra
GO

/* V - reserva */
IF OBJECT_ID('MAX_POWER.V_reserva', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_reserva
GO

CREATE VIEW [MAX_POWER].V_reserva AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle, Habitacion_Numero, Habitacion_Piso, Reserva_Codigo AS Codigo, 
                      Reserva_Fecha_Inicio AS Fecha_Inicio, Reserva_Cant_Noches AS Noches, Cliente_Pasaporte_Nro AS Cliente, Regimen_Descripcion AS Regimen, 
                      Cliente_Apellido AS Apellido, Cliente_Nombre AS Nombre
FROM         gd_esquema.Maestra
ORDER BY Codigo
GO

/* V - TIPO HABITACION */
IF OBJECT_ID('MAX_POWER.V_TipoHabitacion', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_TipoHabitacion
GO

CREATE VIEW [MAX_POWER].V_TipoHabitacion AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Habitacion_Tipo_Codigo AS Codigo, Habitacion_Tipo_Descripcion AS Descripcion, 
                      Habitacion_Tipo_Porcentual AS Porcentual
FROM         gd_esquema.Maestra
ORDER BY Codigo
GO


PRINT 'Vistas creadas.'

	/*	F U N C I O N E S	*/

IF OBJECT_ID('MAX_POWER.buscar_ID_Estadia', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Estadia
GO

CREATE FUNCTION [MAX_POWER].buscar_ID_Estadia (@reserva AS bigint)
RETURNS BIGINT
    BEGIN 
        RETURN (select id_estadia from MAX_POWER.Estadia where id_reserva = @reserva)
    END
GO


IF OBJECT_ID('MAX_POWER.buscar_ID_Cliente', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Cliente
GO

CREATE FUNCTION [MAX_POWER].buscar_ID_Cliente (@pasaporte AS VARCHAR(50), @nombre AS VARCHAR(50), @apellido AS VARCHAR(50))
RETURNS BIGINT
    BEGIN 
        RETURN (SELECT id_cliente FROM MAX_POWER.cliente
					WHERE	numero_identificacion = @pasaporte AND
							nombre = @nombre AND
							apellido = @apellido)
    END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Nacionalidad', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Nacionalidad
GO

CREATE FUNCTION [MAX_POWER].buscar_ID_Nacionalidad (@pais AS VARCHAR(50))
RETURNS BIGINT
	BEGIN 
		RETURN (SELECT id_pais FROM MAX_POWER.Pais WHERE nombre = @pais)
	END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Regimen', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Regimen
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Regimen (@regimen AS VARCHAR(50))
RETURNS BIGINT
	BEGIN 
		RETURN (SELECT id_regimen FROM MAX_POWER.regimen WHERE descripcion = @regimen)
	END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Hotel', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Hotel
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Hotel (@ciudad AS VARCHAR(50), @calle AS VARCHAR(50), @altura numeric(18,0))
RETURNS BIGINT
    BEGIN 
        RETURN (SELECT id_hotel FROM MAX_POWER.Hotel 
					WHERE	calle = @calle AND
							altura = @altura AND
							ciudad = @ciudad)
    END
GO


IF OBJECT_ID('MAX_POWER.buscar_ID_Habitacion_reservada', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Habitacion_reservada
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Habitacion_reservada (@id_habitacion AS BIGINT, @id_reserva AS BIGINT)
RETURNS BIGINT
    BEGIN 
        RETURN (SELECT id_habitacion_reservada FROM MAX_POWER.Habitacion_reservada 
					WHERE id_habitacion = @id_habitacion AND
						id_reserva = @id_reserva)
    END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Habitacion', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Habitacion
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Habitacion (@id_hotel AS BIGINT, @piso AS INT, @numero AS BIGINT)
RETURNS BIGINT
    BEGIN 
        RETURN (SELECT id_habitacion FROM MAX_POWER.Habitacion 
					WHERE id_hotel = @id_hotel AND
						numero = @numero AND
						piso = @piso)
    END
GO



IF OBJECT_ID('MAX_POWER.buscar_ID_Cliente', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Cliente
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Cliente (@pasaporte AS VARCHAR(50), @nombre AS VARCHAR(50), @apellido AS VARCHAR(50))
RETURNS BIGINT
    BEGIN 
        RETURN (SELECT id_cliente FROM MAX_POWER.cliente
					WHERE	numero_identificacion = @pasaporte AND
							nombre = @nombre AND
							apellido = @apellido)
    END
GO


PRINT 'Funciones creadas.'

	/*	S	P	*/
		
/* SP - CLIENTES */
IF OBJECT_ID('MAX_POWER.IMP_Cliente', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Cliente
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Cliente
AS INSERT INTO MAX_POWER.Cliente (id_tipo_identificacion, numero_identificacion, Apellido, Nombre, fecha_Nacimiento, Mail, 
						Calle, Altura, Piso, Departamento, id_pais, Habilitado)
		SELECT 1, pasaporte, Apellido, Nombre, Nacimiento, Cliente_Mail, 
						Calle, Altura, Piso, Departamento, MAX_POWER.buscar_ID_Nacionalidad(Nacionalidad) AS id_pais,
						'S' AS Habilitado
				FROM MAX_POWER.V_Clientes
GO

/* SP - CONSUMIBLE */
IF OBJECT_ID('MAX_POWER.IMP_Consumible', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Consumible
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Consumible
AS INSERT INTO MAX_POWER.Producto (id_producto, descripcion, precio)
		SELECT codigo, descripcion, precio
				FROM MAX_POWER.V_Consumibles
GO


/* SP - ESTADIA */
IF OBJECT_ID('MAX_POWER.IMP_Estadia', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Estadia
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Estadia
AS 
declare @ahora as date
create table #lista (codigo bigint)
insert into #lista (codigo) SELECT DISTINCT 
									Reserva_Codigo AS Codigo
								FROM gd_esquema.Maestra
								group by Reserva_Codigo
								having count(Estadia_Fecha_Inicio) = 0
set @ahora = GETDATE()

insert into MAX_POWER.estadia (fecha_ingreso, fecha_egreso, id_reserva, valida)
	select fecha_inicio, fecha_fin, id_reserva,
		case when fecha_inicio > @ahora then 'N' else 'S' end as valida
	from MAX_POWER.Reserva
	
	where not id_reserva in	(select codigo from #lista)
	
drop table #lista
GO

/* SP - FACTURAS */
IF OBJECT_ID('MAX_POWER.IMP_Factura', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Factura
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Factura
AS INSERT INTO MAX_POWER.Factura (id_factura, id_estadia, total, id_medoto_pago)
	SELECT Factura, (select id_estadia from MAX_POWER.Estadia where id_reserva = Reserva),	total, 1
	FROM MAX_POWER.V_Facturas
GO


/* SP - NACIONALIDAD */
IF OBJECT_ID('MAX_POWER.IMP_Nacionalidad', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Nacionalidad
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Nacionalidad
AS INSERT INTO MAX_POWER.Pais (nombre)
		SELECT cliente_nacionalidad
				FROM MAX_POWER.V_nacionalidad
GO

/* SP - REGIMENES */
IF OBJECT_ID('MAX_POWER.IMP_Regimen', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Regimen
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Regimen
AS INSERT INTO MAX_POWER.Regimen (Descripcion, precio_base, habilitado)
		SELECT Descripcion, Precio, 'S' AS habilitado
			FROM MAX_POWER.v_Regimen
GO

/* SP - reserva */
IF OBJECT_ID('MAX_POWER.IMP_Reserva', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Reserva
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Reserva
AS INSERT INTO MAX_POWER.reserva (id_reserva, fecha_realizacion, fecha_inicio, fecha_fin, id_cliente_titular, id_regimen, id_estado)
	SELECT codigo, fecha_inicio, fecha_inicio, fecha_inicio + noches AS fecha_fin,
		MAX_POWER.buscar_ID_Cliente(cliente, nombre, Apellido) AS id_cliente, MAX_POWER.buscar_ID_Regimen(regimen), 1 AS regimen
	FROM MAX_POWER.V_reserva
GO

/* SP - TIPO HABITACION */
IF OBJECT_ID('MAX_POWER.IMP_Tipo_Habitacion', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Tipo_Habitacion
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Tipo_Habitacion
AS INSERT INTO MAX_POWER.Tipo_Habitacion (id_tipo_habitacion, Descripcion, porcentual)
		SELECT Codigo, Descripcion, porcentual
			FROM MAX_POWER.V_TipoHabitacion
GO

/* SP - HOTEL */
IF OBJECT_ID('MAX_POWER.IMP_Hotel', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Hotel
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Hotel
AS INSERT INTO MAX_POWER.Hotel (calle, altura, ciudad, estrellas, recarga_estrellas, id_pais)
	SELECT Calle, Altura, Ciudad, Estrellas, Recarga_Estrella, 1
	FROM MAX_POWER.V_Hotel
GO

/* SP - HABITACION */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion
AS INSERT INTO MAX_POWER.Habitacion (id_hotel, id_tipo_habitacion, numero, piso, frente, habilitada, descripcion)
	SELECT MAX_POWER.buscar_ID_Hotel(Ciudad_Hotel, Calle_Hotel, Altura_Hotel) AS id_hotel, Tipo, Numero, 
			Piso, 
			Frente,
			'S' AS habilitada,
			'' as descripcion
	FROM MAX_POWER.V_habitacion
GO

/* SP - HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion_reservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion_reservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion_reservada AS
insert into MAX_POWER.Habitacion_reservada (id_habitacion, id_reserva) 
 (SELECT MAX_POWER.buscar_ID_Habitacion(MAX_POWER.buscar_ID_Hotel(hotel_Ciudad,Hotel_Calle,hotel_Nro_Calle), 
			Habitacion_Piso, Habitacion_Numero),
			codigo
			FROM MAX_POWER.V_reserva)
GO


/* SP - HABITACION_RESERVADA_CLIENTE */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion_reservada_Cliente', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion_reservada_Cliente
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion_reservada_Cliente AS
insert into MAX_POWER.Habitacion_reservada_X_Cliente (id_habitacion_reservada, id_cliente) 
 (	select
		hab_res.id_habitacion_reservada AS id_habitacion_reservada,
		MAX_POWER.buscar_ID_Cliente(v.Cliente, v.Nombre, v.Apellido) AS id_cliente
	FROM MAX_POWER.V_reserva V
	join MAX_POWER.Habitacion_Reservada hab_res on hab_res.id_reserva = v.codigo
	join MAX_POWER.Habitacion hab on hab.id_habitacion = hab_res.id_habitacion
	join MAX_POWER.Hotel hot on hab.id_hotel = hot.id_hotel)
GO


/* SP - PRODUCTO_HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_Producto_Habitacion_reservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Producto_Habitacion_reservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Producto_Habitacion_reservada AS
insert into MAX_POWER.Producto_X_Habitacion_reservada (id_habitacion_reservada, id_producto, cantidad, id_factura) 
 (SELECT hr.id_habitacion_reservada, v.Consumible, v.Cantidad, v.Factura 
		FROM MAX_POWER.V_ItemFactura v
		join MAX_POWER.Factura f on f.id_factura = v.Factura
		join MAX_POWER.Habitacion_reservada hr on (select id_estadia from MAX_POWER.Estadia where id_reserva = hr.id_reserva) = f.id_estadia)
GO


/* SP -  REGIMENES POR HOTEL */
IF OBJECT_ID('MAX_POWER.REGIMEN_HOTEL', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.REGIMEN_HOTEL
GO	

CREATE PROCEDURE [MAX_POWER].REGIMEN_HOTEL AS
insert into MAX_POWER.Regimen_X_Hotel (id_hotel, id_regimen)
	select distinct h.id_hotel, re.id_regimen 
	from MAX_POWER.Habitacion_reservada hr
	left join MAX_POWER.Reserva re on re.id_reserva = hr.id_reserva
	left join MAX_POWER.Habitacion h on h.id_habitacion = hr.id_habitacion
order by h.id_hotel, re.id_regimen
GO


/* SP - CLIENTES REPETIDOS */
IF OBJECT_ID('MAX_POWER.Detectar_Clientes_Repetidos', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.Detectar_Clientes_Repetidos
GO	

CREATE PROCEDURE [MAX_POWER].Detectar_Clientes_Repetidos AS
	insert into MAX_POWER.Clientes_Repetidos (altura, apellido, calle, departamento, fecha_nacimiento, 
			habilitado, id_pais, id_tipo_identificacion, localidad, 
			mail, nombre, numero_identificacion, piso, telefono, controlado)
	SELECT altura, apellido, calle, departamento, fecha_nacimiento, 
			habilitado, id_pais, id_tipo_identificacion, localidad, 
			c.mail, nombre, numero_identificacion, piso, telefono, 'N' AS controlado
	from MAX_POWER.Cliente c 
	where c.mail in 
		(select mail from MAX_POWER.Cliente
		group by mail
		having COUNT(mail) > 1 ) OR 
		numero_identificacion in (SELECT numero_identificacion FROM MAX_POWER.Cliente
		group by numero_identificacion 
		having COUNT(numero_identificacion) <> 1)
GO

PRINT 'SP creados.'
GO
/*-----------------------------------------------------------STORED PROCEDURES PARA LA APP----------------------------------------------------------*/
CREATE PROCEDURE [MAX_POWER].roles_disponibles
AS SELECT * FROM MAX_POWER.Rol WHERE UPPER(habilitado) = 'S'
GO

CREATE PROCEDURE [MAX_POWER].Hoteles_disponibles(@fecha_sistema datetime)
AS SELECT * FROM MAX_POWER.Hotel H
	WHERE NOT EXISTS (SELECT 1 FROM MAX_POWER.Periodo_Cierre P 
						WHERE P.id_hotel=H.id_hotel AND @fecha_sistema BETWEEN P.fecha_inicio AND P.fecha_fin)
GO

CREATE PROCEDURE [MAX_POWER].documentos_disponibles
AS SELECT * FROM MAX_POWER.Tipo_documento
GO

CREATE PROCEDURE [MAX_POWER].funcionalidades_disponibles
AS SELECT * FROM MAX_POWER.Funcionalidad
GO

CREATE PROCEDURE [MAX_POWER].obtener_funcionalidades(@id_rol BIGINT)
AS SELECT fun.ID_FUNCIONALIDAD,fun.DESCRIPCION
	FROM MAX_POWER.Funcionalidad_X_Rol FR join MAX_POWER.Funcionalidad Fun on Fun.id_funcionalidad = FR.id_funcionalidad
	WHERE fr.id_rol = @id_rol
GO

CREATE PROCEDURE [MAX_POWER].obtener_roles(@id_usuario BIGINT)
AS SELECT R.ID_ROL, R.NOMBRE
	FROM MAX_POWER.Usuario_X_Rol UR join MAX_POWER.Rol R on R.id_rol = UR.id_rol
	WHERE id_usuario = @id_usuario and R.habilitado = 'S'
GO

CREATE PROCEDURE [MAX_POWER].obtener_Hoteles(@id_usuario BIGINT,@fecha_sistema datetime)
AS SELECT H.nombre,H.id_hotel
	FROM MAX_POWER.Hotel_X_Usuario HE join MAX_POWER.Hotel H on HE.id_hotel = H.id_hotel
	WHERE id_usuario = @id_usuario
		AND NOT EXISTS (SELECT 1 FROM MAX_POWER.Periodo_Cierre P 
						WHERE P.id_hotel=H.id_hotel AND @fecha_sistema BETWEEN P.fecha_inicio AND P.fecha_fin)
GO

CREATE PROCEDURE [MAX_POWER].buscar_usuario_por_id(@id_usuario BIGINT)
AS SELECT * FROM MAX_POWER.Usuario WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].baja_usuario(@id_usuario BIGINT)
AS
UPDATE MAX_POWER.Usuario set habilitado = 'N' WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].insertar_usuario_x_rol(@id_usuario INT, @id_rol BIGINT)
AS BEGIN
	BEGIN TRY
		INSERT INTO MAX_POWER.Usuario_X_Rol (id_usuario, id_rol) VALUES (@id_usuario, @id_rol)
	END TRY
	BEGIN CATCH
	--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_usuario_x_rol(@id_usuario BIGINT, @id_rol BIGINT)
AS BEGIN
	BEGIN TRY
		DELETE FROM MAX_POWER.Usuario_X_Rol
			WHERE id_usuario = @id_usuario
			AND id_rol = @id_rol
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_usuario_x_hotel(@id_usuario BIGINT, @id_hotel BIGINT)
AS BEGIN
	BEGIN TRY
		INSERT INTO MAX_POWER.Hotel_X_Usuario (id_usuario, id_hotel) VALUES (@id_usuario, @id_hotel)
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_usuario_x_hotel(@id_usuario BIGINT, @id_hotel BIGINT)
AS BEGIN
	BEGIN TRY
		DELETE FROM MAX_POWER.Hotel_X_Usuario
			WHERE id_usuario = @id_usuario
			AND id_hotel = @id_hotel
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_funcionalidad_x_rol( @idRol BIGINT, @idFuncionalidad BIGINT)
AS BEGIN
	BEGIN TRY
		DELETE FROM MAX_POWER.Funcionalidad_X_Rol
			WHERE id_funcionalidad = @idFuncionalidad
			AND id_rol = @idRol
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].buscar_cliente_por_id(@id_cliente BIGINT)
AS SELECT * FROM MAX_POWER.Cliente
	WHERE id_cliente = @id_cliente
GO

CREATE FUNCTION [MAX_POWER].es_valido(@id_tipo_documento BIGINT, @nro_id BIGINT)RETURNS CHAR(1) AS
BEGIN
DECLARE @retorno CHAR(1)
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Clientes_Repetidos WHERE id_tipo_identificacion=@id_tipo_documento AND numero_identificacion=@nro_id AND habilitado='S' AND controlado='N'))
		SET @retorno='N'
	ELSE
		SET @retorno='S'
RETURN @retorno
END
GO

CREATE PROCEDURE [MAX_POWER].buscar_clientes(@nombre VARCHAR(50), @apellido VARCHAR(50), @email VARCHAR(50), @nroId VARCHAR(50), @Id_tipo_identificacion BIGINT)
AS SELECT DISTINCT C.id_cliente as ID,Nombre,Apellido,Mail,descripcion as 'Tipo de Identificacion' ,numero_identificacion as 'Número de Identificación', MAX_POWER.es_valido(D.id_tipo_documento,C.numero_identificacion) as Correcto
	FROM MAX_POWER.Cliente C
		JOIN MAX_POWER.Tipo_documento D ON C.id_tipo_identificacion=D.id_tipo_documento
	WHERE habilitado='S'
		AND	UPPER(nombre) LIKE UPPER(@nombre)
		AND UPPER(apellido) LIKE UPPER(@apellido)
		AND UPPER(mail) LIKE UPPER(@email)
		AND numero_identificacion LIKE @nroId 
		AND id_tipo_identificacion LIKE (SELECT CASE WHEN @Id_tipo_identificacion = -1 THEN '%' ELSE CAST(@Id_tipo_identificacion AS VARCHAR(50)) END )
GO

CREATE PROCEDURE [MAX_POWER].buscar_clientes_inhabilitados(@nombre VARCHAR(50), @apellido VARCHAR(50), @email VARCHAR(50), @nroId VARCHAR(50), @Id_tipo_identificacion BIGINT)
AS SELECT DISTINCT C.id_cliente as ID,Nombre,Apellido,Mail,descripcion as 'Tipo de Identificacion' ,numero_identificacion as 'Número de Identificación', MAX_POWER.es_valido(D.id_tipo_documento,C.numero_identificacion) as Correcto
	FROM MAX_POWER.Cliente C
		JOIN MAX_POWER.Tipo_documento D ON C.id_tipo_identificacion=D.id_tipo_documento
	WHERE habilitado='N'
		AND	UPPER(nombre) LIKE UPPER(@nombre)
		AND UPPER(apellido) LIKE UPPER(@apellido)
		AND UPPER(mail) LIKE UPPER(@email)
		AND numero_identificacion LIKE @nroId 
		AND id_tipo_identificacion LIKE (SELECT CASE WHEN @Id_tipo_identificacion = -1 THEN '%' ELSE CAST(@Id_tipo_identificacion AS VARCHAR(50)) END )
GO


CREATE PROCEDURE [MAX_POWER].rehabilitar_cliente(@id_cliente BIGINT)AS
BEGIN
	DECLARE @id_tipo_id BIGINT
	DECLARE @nro_id VARCHAR(50)
	DECLARE @mail VARCHAR(50)
	SELECT @id_tipo_id=id_tipo_identificacion,@nro_id=numero_identificacion, @mail = mail FROM MAX_POWER.Cliente WHERE id_cliente=@id_cliente
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Cliente
				 WHERE habilitado='S' AND ((id_tipo_identificacion=@id_tipo_id AND numero_identificacion=@nro_id) OR mail=@mail)))
		RETURN (-27)
	ELSE
	BEGIN
		UPDATE MAX_POWER.Cliente SET habilitado='S' WHERE id_cliente=@id_cliente
		RETURN (0)
	END
END
GO

CREATE PROCEDURE [MAX_POWER].identificacion_cliente(@id_cli BIGINT, @id_tipo_identificacion BIGINT OUTPUT,@nro_identificacion VARCHAR(50) OUTPUT,@email VARCHAR(50) OUTPUT)AS
BEGIN
	SELECT @nro_identificacion=numero_identificacion, @id_tipo_identificacion= id_tipo_identificacion, @email=mail FROM MAX_POWER.Cliente WHERE id_cliente=@id_cli
END
GO

CREATE PROCEDURE [MAX_POWER].clientes_repetidos_para(@id_cliente BIGINT)AS
BEGIN 
	DECLARE @nro_id VARCHAR(50)
	DECLARE @mail VARCHAR(50)
	DECLARE @id_tipo_id BIGINT
	EXEC [MAX_POWER].identificacion_cliente @id_cli=@id_cliente, @id_tipo_identificacion=@id_tipo_id OUTPUT,@nro_identificacion=@nro_id OUTPUT,@email=@mail OUTPUT
	SELECT C.id_cliente,c.numero_identificacion, C.nombre, C.apellido, C.mail, C.id_tipo_identificacion, D.descripcion
		FROM MAX_POWER.Cliente C INNER JOIN MAX_POWER.Tipo_documento D ON C.id_tipo_identificacion=D.id_tipo_documento
		WHERE (C.numero_identificacion=@nro_id AND C.id_tipo_identificacion=@id_tipo_id) OR C.mail=@mail
END
GO

CREATE PROCEDURE [MAX_POWER].baja_cliente_repetido(@id_cliente BIGINT)AS
BEGIN 
	UPDATE MAX_POWER.Cliente SET habilitado='N' WHERE id_cliente=@id_cliente
END 
GO

CREATE PROCEDURE [MAX_POWER].reparar_cliente_repetido(@id_cliente BIGINT,@id_tipo_id BIGINT, @nro_id VARCHAR(50), @mail VARCHAR(50))AS
BEGIN 
	UPDATE MAX_POWER.Cliente SET id_tipo_identificacion=@id_tipo_id, numero_identificacion=@nro_id, mail=@mail WHERE id_cliente=@id_cliente
END 
GO

CREATE PROCEDURE [MAX_POWER].limpiar_repetidos(@id_tipo_id BIGINT, @nro_id VARCHAR(50),@mail VARCHAR(50))AS
BEGIN 
	UPDATE MAX_POWER.Clientes_Repetidos SET habilitado='N',controlado='S' 
		WHERE (id_tipo_identificacion=@id_tipo_id AND numero_identificacion=@nro_id)OR mail=@mail
END 
GO

CREATE PROCEDURE [MAX_POWER].validar_unicidad_cliente_ID(@id_cliente BIGINT,@id_tipo_id BIGINT, @nro_id VARCHAR(50))AS
BEGIN 
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Cliente WHERE (id_tipo_identificacion=@id_tipo_id AND numero_identificacion=@nro_id) AND id_cliente!=@id_cliente))
		RETURN (1)
	ELSE 
		RETURN(0)
END 
GO

CREATE PROCEDURE [MAX_POWER].validar_unicidad_cliente_mail(@id_cliente BIGINT, @mail VARCHAR(50))AS
BEGIN 
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Cliente WHERE mail=@mail AND id_cliente!=@id_cliente))
		RETURN (1)
	ELSE 
		RETURN(0)
END 
GO

CREATE PROCEDURE [MAX_POWER].buscar_habitacion_por_id(@id_habitacion BIGINT)
AS SELECT * FROM MAX_POWER.Habitacion
	WHERE id_habitacion = @id_habitacion
GO

CREATE PROCEDURE [MAX_POWER].baja_rol(@id BIGINT)
AS
UPDATE [MAX_POWER].Rol SET habilitado = 'N' WHERE id_rol = @id
GO

CREATE PROCEDURE [MAX_POWER].buscar_hoteles(@nombre VARCHAR(50), @estrellas BIGINT, @id_pais BIGINT, @ciudad VARCHAR(50), @fecha_sistema datetime)
AS 
	SELECT H.id_hotel AS ID, H.nombre AS HNOMBRE,mail,telefono,calle,altura,fecha_creacion,estrellas,recarga_estrellas,H.id_pais AS HPais,ciudad
 	FROM [MAX_POWER].Hotel H  join MAX_POWER.Pais P ON P.id_pais=H.id_pais
	WHERE UPPER(H.nombre) LIKE UPPER(@nombre)
		AND UPPER(ciudad) LIKE UPPER(@ciudad)
		AND P.id_pais like (SELECT CASE WHEN  @id_pais = -1 THEN '%' ELSE CAST(@id_pais AS VARCHAR(50)) END)
		AND CAST(estrellas AS VARCHAR(50)) like (SELECT CASE WHEN @estrellas = 0 THEN '%' ELSE CAST(@estrellas AS VARCHAR(50)) END)
		AND (NOT EXISTS(SELECT 1 FROM MAX_POWER.Periodo_Cierre Per 
							WHERE Per.fecha_fin>CONVERT(DATE,@fecha_sistema,102)
								AND Per.fecha_inicio<CONVERT(DATE,@fecha_sistema,102)
								AND Per.id_hotel = H.id_hotel))
GO

CREATE PROCEDURE [MAX_POWER].buscar_habitaciones(@idHotel BIGINT,@unNumero VARCHAR(10), @unPiso VARCHAR(10), @unaUbicacion CHAR(1), @idTipo BIGINT, @unaDescripcion VARCHAR(50), @Habilitada CHAR(1))
AS 
	SELECT id_habitacion as ID, id_hotel,T.descripcion as 'Tipo de Habitación',Numero,Piso,
			(CASE WHEN frente='S' THEN 'Exterior' ELSE 'Interior' END)AS 'Ubicación',H.Descripcion
 		FROM [MAX_POWER].Habitacion H INNER JOIN  MAX_POWER.Tipo_habitacion T ON T.id_tipo_habitacion=H.id_tipo_habitacion
		WHERE CAST(id_hotel as VARCHAR(50)) like (SELECT CASE WHEN  @idHotel = -1 THEN '%' ELSE CAST(@idHotel AS VARCHAR(50)) END)
			AND CAST(numero as VARCHAR(50)) like @unNumero
			AND CAST(piso as VARCHAR(50)) like	@unPiso 
			AND UPPER(frente) like UPPER(@unaUbicacion)
			AND CAST(H.id_tipo_habitacion as VARCHAR(50)) like (SELECT CASE WHEN @idTipo = -1 THEN '%' ELSE CAST(@idTipo AS VARCHAR(50)) END)
			AND UPPER(H.descripcion) LIKE UPPER(@unaDescripcion)
			AND UPPER(habilitada) like UPPER(@Habilitada)
GO

CREATE PROCEDURE [MAX_POWER].ciudades_disponibles
AS
	SELECT DISTINCT RTRIM(ciudad)as ciudad FROM [MAX_POWER].Hotel
GO

CREATE PROCEDURE [MAX_POWER].buscar_pais_por_id(@id BIGINT)
 AS
  SELECT * FROM [mAX_POWER].Pais WHERE id_pais=@id
GO

CREATE PROCEDURE [MAX_POWER].baja_logica_habitacion(@id_habitacion BIGINT)
AS
UPDATE MAX_POWER.Habitacion set habilitada = 'N' WHERE id_habitacion = @id_habitacion
GO

CREATE PROCEDURE [MAX_POWER].paises_disponibles
AS SELECT * FROM MAX_POWER.Pais;
GO

CREATE PROCEDURE [MAX_POWER].insertar_rol(@nombre VARCHAR(50),@habilitado VARCHAR(50))
AS INSERT INTO MAX_POWER.Rol (nombre,habilitado) VALUES (@nombre,@habilitado)
GO

CREATE PROCEDURE [MAX_POWER].insertar_funcionalidad_X_rol(@id_rol BIGINT,@id_funcionalidad BIGINT)
AS INSERT INTO MAX_POWER.Funcionalidad_X_Rol(id_rol,id_funcionalidad) VALUES (@id_rol,@id_funcionalidad)
GO

CREATE PROCEDURE [MAX_POWER].obtener_regimenes(@id_hotel BIGINT)
AS SELECT R.id_regimen as ID, R.descripcion as Descripción
	FROM MAX_POWER.Regimen_X_Hotel RH join MAX_POWER.Regimen R on RH.id_regimen = R.id_regimen
	WHERE RH.id_hotel = @id_hotel AND R.habilitado = 'S'
GO

CREATE PROCEDURE [MAX_POWER].tipos_habitacion_disponibles
AS SELECT * FROM MAX_POWER.Tipo_habitacion
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_no_show(@id_reserva BIGINT)
AS
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%no%show%') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_cliente(@id_reserva BIGINT)
AS
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%cliente%') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_recepcion(@id_reserva BIGINT)
AS
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%recepci%') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].productos_disponibles
AS SELECT DISTINCT id_producto, descripcion FROM MAX_POWER.Producto
GO

CREATE PROCEDURE [MAX_POWER].regimenes_disponibles AS
SELECT * FROM MAX_POWER.Regimen
GO

CREATE PROCEDURE [MAX_POWER].buscar_rol_por_id(@id BIGINT)
AS SELECT * FROM [MAX_POWER].Rol WHERE id_rol = @id
GO

CREATE PROCEDURE [MAX_POWER].buscar_hotel_por_id(@id BIGINT)
AS SELECT * FROM [MAX_POWER].Hotel WHERE id_hotel = @id
GO

CREATE PROCEDURE [MAX_POWER].buscar_roles(@nombre VARCHAR(50), @estado CHAR(1))
AS SELECT id_rol as ID,nombre,habilitado FROM [MAX_POWER].Rol 
	WHERE UPPER(nombre) LIKE UPPER(@nombre)
		AND UPPER(habilitado) LIKE UPPER(@estado)
GO

CREATE PROCEDURE [MAX_POWER].insertar_periodo_cierre(@idHotel BIGINT, @fechaDesde VARCHAR(50), @fechaHasta VARCHAR(50))
AS
BEGIN
	IF(EXISTS (SELECT 1 FROM MAX_POWER.Reserva R, MAX_POWER.Habitacion_reservada HR, MAX_POWER.Habitacion H
					WHERE R.id_reserva=HR.id_reserva AND HR.id_habitacion=H.id_habitacion
						AND H.id_hotel=@idHotel
						AND(R.fecha_inicio BETWEEN @fechaDesde AND @fechaHasta OR
							R.fecha_fin BETWEEN @fechaDesde AND @fechaHasta OR
							@fechaDesde BETWEEN R.fecha_inicio AND R.fecha_fin OR
							@fechaHasta BETWEEN R.fecha_inicio AND R.fecha_fin)))
		RETURN(-26)	
	IF(EXISTS (SELECT 1 FROM MAX_POWER.Periodo_Cierre P
					WHERE  P.id_hotel=@idHotel
						AND (P.fecha_inicio BETWEEN @fechaDesde AND @fechaHasta OR
							P.fecha_fin BETWEEN @fechaDesde AND @fechaHasta OR
							@fechaDesde BETWEEN P.fecha_inicio AND P.fecha_fin OR
							@fechaHasta BETWEEN P.fecha_inicio AND P.fecha_fin)))
		RETURN(-28)
	ELSE
	BEGIN			
		INSERT INTO MAX_POWER.Periodo_Cierre (id_hotel,fecha_inicio,fecha_fin) SELECT @idHotel,@fechaDesde,@fechaHasta
		RETURN (0)
	END
END
GO

CREATE PROCEDURE [MAX_POWER].buscar_reserva_por_id(@id_reserva BIGINT) AS
SELECT rs.id_reserva,RS.FECHA_FIN AS fecha_fin, RS.FECHA_INICIO AS fecha_inicio, H.id_hotel AS id_hotel_habitacion, H.NOMBRE AS nombre_hotel_habitacion ,RG.ID_REGIMEN AS id_regimen_habitacion, RG.DESCRIPCION AS descripcion_regimen_habitacion
	FROM MAX_POWER.reserva RS, MAX_POWER.Hotel H, MAX_POWER.REGIMEN RG,MAX_POWER.HABITACION HAB, MAX_POWER.Habitacion_reservada HRS
	WHERE HRS.id_reserva=RS.ID_RESERVA AND HAB.ID_HABITACION=HRS.id_habitacion AND HAB.ID_HOTEL=H.id_hotel AND RG.ID_REGIMEN=RS.ID_REGIMEN AND rs.id_reserva=@id_reserva
GO

CREATE FUNCTION MAX_POWER.reserva_es_de_hotel(@id_reserva BIGINT,@id_hotel BIGINT) RETURNS INT AS
BEGIN
	DECLARE @ret INT
	IF(
		EXISTS(
				SELECT 1 FROM MAX_POWER.Habitacion_reservada HR 
							INNER JOIN MAX_POWER.Habitacion H 
							ON H.id_habitacion=HR.id_habitacion
						WHERE HR.id_reserva=@id_reserva
							AND H.id_hotel!=@id_hotel
			  )
	  )
		SET @ret=0
	ELSE
		SET @ret = 1 
RETURN @ret
END
GO

CREATE PROCEDURE [MAX_POWER].reserva_editable(@id_reserva BIGINT,@id_hotel BIGINT, @fecha_sistema datetime) AS
BEGIN
	IF (NOT EXISTS (SELECT 1 FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva))
		RETURN(-10)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%CANCELAD%'))
		RETURN (-12)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%INGRES%'))
		RETURN (-13)
	ELSE IF ((SELECT fecha_inicio FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)<=CONVERT(DATE,@fecha_sistema))
		RETURN (-11)
	ELSE IF(@id_hotel!=-1)
		IF(MAX_POWER.reserva_es_de_hotel(@id_reserva, @id_hotel)=0)
			RETURN (-14)
	ELSE
		RETURN(0)
END
GO

CREATE PROCEDURE [MAX_POWER].reserva_ingresable(@id_reserva BIGINT,@id_hotel BIGINT, @fecha_sistema datetime) AS
BEGIN
	IF (NOT EXISTS (SELECT 1 FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva))
		RETURN(-10)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%CANCELAD%'))
		RETURN (-12)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%INGRES%'))
		RETURN (-13)
	ELSE IF ((SELECT fecha_inicio FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)!=CONVERT(DATE,@fecha_sistema))
		RETURN (-15)
	ELSE IF ((SELECT C.habilitado FROM MAX_POWER.Reserva R,MAX_POWER.Cliente C WHERE C.id_cliente=R.id_cliente_titular and id_reserva=@id_reserva)='N')
		RETURN(-24)
	ELSE IF(@id_hotel!=-1)
		IF(MAX_POWER.reserva_es_de_hotel(@id_reserva, @id_hotel)=0)
			RETURN (-14)
	ELSE
		RETURN(0)
END
GO

CREATE PROCEDURE [MAX_POWER].reserva_egresable(@id_reserva BIGINT,@id_hotel BIGINT) AS
BEGIN
	IF (NOT EXISTS (SELECT 1 FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva))
		RETURN(-10)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%CANCELAD%'))
		RETURN (-12)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)NOT LIKE UPPER('%INGRES%'))
		RETURN (-17)
	ELSE IF (EXISTS(SELECT 1 FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva AND fecha_egreso IS NOT NULL))
		RETURN (-18)
	ELSE IF(@id_hotel!=-1)
		IF(MAX_POWER.reserva_es_de_hotel(@id_reserva, @id_hotel)=0)
			RETURN (-14)
	ELSE
		RETURN(0)
END
GO

CREATE PROCEDURE [MAX_POWER].reserva_facturable(@id_reserva BIGINT,@id_hotel BIGINT) AS
BEGIN
	IF (NOT EXISTS (SELECT 1 FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva))
		RETURN(-10)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)LIKE UPPER('%CANCELAD%'))
		RETURN (-12)
	ELSE IF ((SELECT UPPER(E.descripcion) 
			FROM [MAX_POWER].reserva R INNER JOIN MAX_POWER.Estado E ON R.id_estado=E.id_estado
			WHERE id_reserva = @id_reserva)NOT LIKE UPPER('%INGRES%'))
		RETURN (-17)
	ELSE IF (EXISTS(SELECT 1 FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva AND fecha_egreso IS NULL))
		RETURN (-22)
	ELSE IF (EXISTS(SELECT 1 FROM MAX_POWER.Factura F,MAX_POWER.Estadia E WHERE E.id_estadia=F.id_estadia AND E.id_reserva=@id_reserva ))
		RETURN (-23)
	ELSE IF(@id_hotel!=-1)
		IF(MAX_POWER.reserva_es_de_hotel(@id_reserva, @id_hotel)=0)
			RETURN (-14)
	ELSE
		RETURN(0)
END
GO


CREATE PROCEDURE [MAX_POWER].hay_inconsistencia(@id_reserva BIGINT) AS
BEGIN
	IF(EXISTS (SELECT 1 FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva AND valida='N'))
		RETURN (1)
	ELSE
		RETURN (0)
END
GO

CREATE PROCEDURE [MAX_POWER].habitaciones_de_reserva(@id_reserva BIGINT) AS
BEGIN
	SELECT  HR.id_habitacion_reservada as ID,H.numero as 'Número de Habitación',H.piso as Piso,
				CASE WHEN C.nombre IS NULL THEN 'Nadie aún' ELSE C.nombre END AS 'Nombre del cliente',
				CASE WHEN C.apellido IS NULL THEN '-' ELSE C.apellido END AS 'Apellido del cliente',
				CASE WHEN C.numero_identificacion IS NULL THEN '-' ELSE cast(C.numero_identificacion as varchar) END AS 'Identificación del cliente'
			FROM MAX_POWER.Habitacion_reservada HR 
			INNER JOIN MAX_POWER.Habitacion H
				ON HR.id_habitacion=H.id_habitacion
			LEFT JOIN MAX_POWER.Habitacion_reservada_X_Cliente HRC
				ON HR.id_habitacion_reservada=HRC.id_habitacion_reservada
			LEFT JOIN MAX_POWER.Cliente C
				ON HRC.id_cliente=C.id_cliente
		WHERE HR.id_reserva=@id_reserva
END
GO

CREATE PROCEDURE [MAX_POWER].fechas_estadia(@id_reserva BIGINT)AS
SELECT fecha_ingreso AS 'Fecha de ingreso', fecha_egreso AS 'Fecha de egreso' FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva
GO

CREATE PROCEDURE [MAX_POWER].restaurar_estadia_mala(@id_reserva BIGINT)AS
BEGIN
	UPDATE MAX_POWER.Estadia SET valida='S' WHERE id_reserva=@id_reserva
	UPDATE MAX_POWER.Reserva SET id_estado=6 WHERE id_reserva=@id_reserva
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_estadia_mala(@id_reserva BIGINT)AS
BEGIN
	DELETE FROM MAX_POWER.Habitacion_reservada_X_Cliente 
		WHERE id_habitacion_reservada IN (SELECT id_habitacion_reservada FROM MAX_POWER.Habitacion_reservada
												WHERE id_reserva=@id_reserva)
	DELETE FROM MAX_POWER.Producto_X_Habitacion_reservada
		WHERE id_habitacion_reservada IN (SELECT id_habitacion_reservada FROM MAX_POWER.Habitacion_reservada
												WHERE id_reserva=@id_reserva)
	DELETE FROM MAX_POWER.Factura WHERE id_estadia=(SELECT id_estadia FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva)
	DELETE FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva
END
GO

CREATE PROCEDURE [MAX_POWER].habitaciones_reservadas_para_consumibles(@id_reserva BIGINT)AS
BEGIN
	SELECT * 
		FROM MAX_POWER.Habitacion H, MAX_POWER.Habitacion_reservada HR
		WHERE H.id_habitacion=HR.id_habitacion AND HR.id_reserva=@id_reserva
END
GO

CREATE PROCEDURE [MAX_POWER].consumibles_de_reserva(@id_reserva BIGINT)AS
BEGIN
SELECT  PHR.id_producto as ID, HR.id_habitacion_reservada as IDHR, P.descripcion as Descripción,H.numero as 'Número de Habitación',P.precio as ' Precio Unitario',PHR.Cantidad, PHR.cantidad*P.precio AS Total
		FROM MAX_POWER.Habitacion_reservada HR, MAX_POWER.Producto_X_Habitacion_reservada PHR, MAX_POWER.Producto P,MAX_POWER.Habitacion H
		WHERE @id_reserva=HR.id_reserva AND HR.id_habitacion_reservada=PHR.id_habitacion_reservada 
			AND PHR.id_producto=P.id_producto AND H.id_habitacion=HR.id_habitacion
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_producto_x_habitacion_reservada(@id_habitacion_reservada BIGINT, @id_producto BIGINT, @cantidad BIGINT)
AS BEGIN
	IF (EXISTS(SELECT 1 FROM MAX_POWER.Producto_X_Habitacion_reservada WHERE id_producto=@id_producto AND id_habitacion_reservada=@id_habitacion_reservada))
		UPDATE [MAX_POWER].Producto_X_Habitacion_reservada SET cantidad = cantidad + @cantidad WHERE id_habitacion_reservada = @id_habitacion_reservada AND id_producto = @id_producto
	ELSE
		INSERT INTO [MAX_POWER].Producto_X_Habitacion_reservada (id_habitacion_reservada, id_producto, cantidad) VALUES (@id_habitacion_reservada, @id_producto, @cantidad)
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_producto_x_habitacion_reservada(@id_habitacion_reservada BIGINT, @id_producto BIGINT)
AS BEGIN
	DELETE FROM [MAX_POWER].Producto_X_Habitacion_reservada 
		WHERE id_producto = @id_producto AND id_habitacion_reservada =@id_habitacion_reservada
END
GO

CREATE PROCEDURE [MAX_POWER].registrar_egreso(@id_reserva BIGINT, @fecha DATETIME)
AS BEGIN
	IF(CONVERT(DATE, @fecha)>(SELECT fecha_fin FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva))
		RETURN(-21)
	UPDATE MAX_POWER.Estadia SET fecha_egreso=@fecha WHERE id_reserva=@id_reserva
	RETURN (0)
END
GO

CREATE PROCEDURE [MAX_POWER].metodos_pago_disponibles
AS BEGIN
	SELECT * FROM MAX_POWER.Metodo_pago
END
GO

CREATE PROCEDURE [MAX_POWER].facturar(@id_reserva BIGINT, @id_metodo_pago BIGINT, @nombre VARCHAR(50), @apellido VARCHAR(50) , @codigo VARCHAR(50)) AS
BEGIN
	DECLARE @id_tarjeta BIGINT 
	IF(@id_metodo_pago!=1)
	BEGIN
		IF(NOT EXISTS(SELECT 1 FROM MAX_POWER.Tarjeta_credito WHERE codigo_seguridad=@codigo))
			INSERT INTO Tarjeta_credito (nombre,apellido,codigo_seguridad) VALUES (@nombre,@apellido,@codigo)
		SELECT @id_tarjeta=id_tarjeta FROM MAX_POWER.Tarjeta_credito WHERE codigo_seguridad=@codigo
	END
	ELSE
		SET @id_tarjeta=NULL
	DECLARE @id_estadia BIGINT 
	SELECT @id_estadia=id_estadia FROM MAX_POWER.Estadia WHERE id_reserva=@id_reserva
	DECLARE @id_factura BIGINT
	SELECT @id_factura=(MAX(id_factura)+1) FROM MAX_POWER.Factura
	INSERT INTO MAX_POWER.Factura (id_factura, id_estadia,id_medoto_pago,id_tarjeta,total) VALUES (@id_factura, @id_estadia,@id_metodo_pago,@id_tarjeta,0)
	UPDATE MAX_POWER.Producto_X_Habitacion_reservada SET id_factura=@id_factura 
		WHERE id_habitacion_reservada IN (SELECT id_habitacion_reservada FROM MAX_POWER.Habitacion_reservada WHERE id_reserva=@id_reserva)
END
GO

CREATE PROCEDURE [MAX_POWER].items_factura(@id_reserva BIGINT, @id_factura BIGINT) AS
BEGIN
	DECLARE @costo DECIMAL
	DECLARE @costo_parcial DECIMAL
	DECLARE cur_costos CURSOR FOR (
	SELECT MAX_POWER.costo_diario_habitacion(H.id_hotel,H.id_habitacion,R.id_regimen)
		FROM MAX_POWER. Reserva R, MAX_POWER.Habitacion H,	MAX_POWER.Habitacion_reservada HR
		WHERE HR.id_reserva=R.id_reserva AND H.id_habitacion=HR.id_habitacion AND R.id_reserva=@id_reserva)
	SET @costo=0
	OPEN cur_costos 
	FETCH NEXT FROM cur_costos INTO @costo_parcial
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		SET @costo = @costo + @costo_parcial
		FETCH NEXT FROM cur_costos INTO @costo_parcial
	END
	CLOSE cur_costos
	DEALLOCATE cur_costos
	DECLARE @diasA INT
	SELECT @diasA=DATEDIFF(DAY, E.fecha_ingreso,E.fecha_egreso)
		FROM MAX_POWER.Estadia E, MAX_POWER. Reserva R
		WHERE E.id_reserva=R.id_reserva AND R.id_reserva=@id_reserva
	DECLARE @diasNA INT
	SELECT @diasNA=DATEDIFF(DAY, E.fecha_egreso,R.fecha_fin)
		FROM MAX_POWER.Estadia E, MAX_POWER. Reserva R
		WHERE E.id_reserva=R.id_reserva AND R.id_reserva=@id_reserva
	SELECT P.descripcion AS Descripción, SUM(PHR.cantidad) AS  Cantidad,P.precio AS 'Precio Unitario', (P.precio*SUM(PHR.cantidad)) AS Total
		FROM MAX_POWER.Producto_X_Habitacion_reservada PHR, MAX_POWER.Producto P
		WHERE P.id_producto=PHR.id_producto AND id_factura=@id_factura
		GROUP BY P.descripcion,P.precio
	UNION
	SELECT '*Días Alojado' as Descripción, 
			@diasA AS Cantidad,
			@costo AS 'Precio Unitario',
			@costo*@diasA AS Total
	UNION
	SELECT '*Días No Alojado' as Descripción, 
			@diasNA AS Cantidad,
			@costo AS 'Precio Unitario',
			@costo*@diasNA AS Total
			
END
GO

CREATE PROCEDURE [MAX_POWER].tiene_all_inclusive(@id_reserva BIGINT) AS
BEGIN
	IF((SELECT UPPER(RG.descripcion) FROM MAX_POWER.Reserva RS, MAX_POWER.Regimen RG 
			WHERE RS.id_regimen=RG.id_regimen AND RS.id_reserva=@id_reserva) LIKE UPPER('%All%Inclusive%'))
		RETURN (1)
	ELSE
		RETURN (0)
END
GO

CREATE PROCEDURE [MAX_POWER].guardar_total_factura(@id_factura BIGINT, @total DECIMAL) AS 
BEGIN
	UPDATE MAX_POWER.Factura SET total=@total WHERE id_factura=@id_factura
END 
GO

CREATE PROCEDURE [MAX_POWER].ID_ULTIMA_FACTURA AS 
BEGIN
	DECLARE @id_factura BIGINT
	SELECT @id_factura=(MAX(id_factura)) FROM MAX_POWER.Factura
	RETURN @id_factura
END 
GO


CREATE PROCEDURE [MAX_POWER].cambiar_habitacion(@id_habitacion_reservada BIGINT, @numero BIGINT) AS
BEGIN
	DECLARE @id_hotel BIGINT
	DECLARE @id_tipo_hab_original BIGINT
	SELECT @id_hotel=H.id_hotel,@id_tipo_hab_original=H.id_tipo_habitacion FROM MAX_POWER.Habitacion H,MAX_POWER.Habitacion_reservada HR
		WHERE H.id_habitacion=HR.id_habitacion AND HR.id_habitacion_reservada=@id_habitacion_reservada
	IF(NOT EXISTS(SELECT 1 FROM MAX_POWER.Habitacion WHERE id_hotel=@id_hotel AND numero=@numero))
		RETURN (-8)
	DECLARE @id_tipo_hab_pedido BIGINT
	SELECT @id_tipo_hab_pedido=id_tipo_habitacion FROM MAX_POWER.Habitacion WHERE id_hotel=@id_hotel AND numero=@numero
	IF(@id_tipo_hab_original!=@id_tipo_hab_pedido)
		RETURN (-9)
	DECLARE @id_reserva BIGINT
	SELECT @id_reserva=id_reserva FROM MAX_POWER.Habitacion_reservada WHERE id_habitacion_reservada=@id_habitacion_reservada
	DECLARE @id_nueva_hab BIGINT
	SELECT @id_nueva_hab=id_habitacion FROM MAX_POWER.Habitacion WHERE id_hotel=@id_hotel AND NUMERO=@numero
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Habitacion_reservada WHERE id_habitacion=@id_nueva_hab AND id_reserva=@id_reserva))
		RETURN(-19)	
	UPDATE MAX_POWER.Habitacion_reservada SET id_habitacion = @id_nueva_hab WHERE id_habitacion_reservada=@id_habitacion_reservada
	RETURN(0)	
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_cliente_x_habitacion(@id_habitacion_reservada BIGINT, @id_cliente BIGINT)
AS BEGIN
	BEGIN TRY
		INSERT INTO [MAX_POWER].Habitacion_reservada_X_Cliente (id_habitacion_reservada, id_cliente) VALUES (@id_habitacion_reservada, @id_cliente)
	END TRY
	BEGIN CATCH
		IF @@ERROR = 2627
			RETURN (-16)
	END CATCH
	RETURN(0)
	END
GO

CREATE PROCEDURE [MAX_POWER].registrar_ingreso_reserva(@id_reserva BIGINT)AS
BEGIN
	UPDATE [MAX_POWER].reserva SET id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingre%') WHERE id_reserva = @id_reserva
	INSERT [MAX_POWER].Estadia (id_reserva,fecha_ingreso,valida) VALUES (@id_reserva,(SELECT fecha_inicio FROM MAX_POWER.Reserva WHERE id_reserva=@id_reserva),'S')
END	
GO

CREATE PROCEDURE [MAX_POWER].actualizar_reserva(@id_reserva BIGINT, @id_regimen BIGINT, @fecha_inicio DATETIME, @fecha_fin DATETIME)
AS
	UPDATE [MAX_POWER].reserva SET
		id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE UPPER(descripcion) LIKE UPPER('%modific%')),
		fecha_inicio = @fecha_inicio,
		fecha_fin = @fecha_fin,
		id_regimen = @id_regimen
		WHERE id_reserva = @id_reserva
		RETURN(0)
GO


CREATE PROCEDURE [MAX_POWER].borrar_habitacion_reservada(@id_reserva BIGINT, @id_habitacion BIGINT)
AS BEGIN
	BEGIN TRY
		DELETE FROM [MAX_POWER].Habitacion_reservada 
			WHERE id_reserva = @id_reserva
				AND id_habitacion = @id_habitacion
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_modificacion(@fecha DATETIME, @id_reserva BIGINT, @ide_usuario BIGINT, @motivo VARCHAR(50), @tipo BIGINT)
AS BEGIN
	BEGIN TRY
		IF @tipo = 0
			INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%modifica%'))
		IF @tipo = 1
			INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%cancela%'))
		IF @tipo = 2
			INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%check%in%'))
		IF @tipo = 3
			INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%check%out%'))
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].chequear_login(@usuario VARCHAR(50), @password VARCHAR(50))
AS
BEGIN
	DECLARE @pass_almacenado VARCHAR(50)
	DECLARE @intentos_fallidos INT
	IF not exists (SELECT * FROM MAX_POWER.Usuario WHERE Username = @usuario AND UPPER(habilitado)='S')
		RETURN (-2)
	ELSE
	BEGIN
		SELECT @intentos_fallidos=intentos_fallidos FROM MAX_POWER.Usuario WHERE Username = @usuario
		IF(@intentos_fallidos>2)
			RETURN (-3)
		ELSE
		BEGIN
			SELECT @pass_almacenado=pw FROM MAX_POWER.Usuario WHERE Username = @usuario
			IF(@password!=@pass_almacenado)
			BEGIN
				UPDATE MAX_POWER.Usuario SET intentos_fallidos=intentos_fallidos+1 WHERE username=@usuario
				RETURN (-1)
			END
			ELSE
			BEGIN
				UPDATE MAX_POWER.Usuario SET intentos_fallidos=0 WHERE username=@usuario
				RETURN (0);
			END
		END
	END
END
GO

CREATE PROCEDURE [MAX_POWER].actualizar_usuario(@id BIGINT, @username VARCHAR(50), @password VARCHAR(50), @nombre VARCHAR(50), @apellido VARCHAR(50), @Id_tipo_dni BIGINT, @dni VARCHAR(50), @mail VARCHAR(50), @telefono VARCHAR(50), @direccion VARCHAR(50), @fechaNacimiento DATETIME)
AS BEGIN
	BEGIN TRY
		UPDATE [MAX_POWER].Usuario SET
			Username = @username,
			pw = @password,
			nombre = @nombre,
			apellido = @apellido,
			id_tipo_documento = @Id_tipo_dni,
			numero_documento = @dni,
			mail = @mail,
			telefono = @telefono,
			direccion = @direccion,
			fecha_nacimiento = @fechaNacimiento
			WHERE id_usuario = @id
	END TRY
	BEGIN CATCH
		IF @@ERROR = 2627
			RETURN (-4)
	END CATCH
	RETURN(0)
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_cliente(@nombre VARCHAR(50), @apellido VARCHAR(50), @id_tipo_identificacion BIGINT, @nroId BIGINT, @mail VARCHAR(50), @telefono VARCHAR(50), @calle VARCHAR(50),@altura VARCHAR(10),@piso VARCHAR(10),@depto VARCHAR(50), @localidad VARCHAR(50), @fechaNacimiento DATETIME,@id_pais BIGINT)
AS BEGIN
	IF (SELECT COUNT (mail) FROM [MAX_POWER].Cliente WHERE mail = @mail and habilitado='S') > 0
		RETURN (-5)
	IF (EXISTS (SELECT 1 FROM MAX_POWER.Cliente WHERE id_tipo_identificacion=@id_tipo_identificacion AND numero_identificacion=@nroId and habilitado='S'))
		RETURN (-6)
	INSERT INTO [MAX_POWER].Cliente (nombre, apellido, id_tipo_identificacion, numero_identificacion, mail, telefono, calle,altura,piso,departamento, localidad, fecha_nacimiento, id_pais, habilitado) 
	VALUES (@nombre, @apellido, @id_tipo_identificacion, @nroId, @mail, @telefono, @calle,CAST(@altura AS BIGINT),CASE WHEN @piso=-1 THEN NULL ELSE CAST(@piso AS BIGINT) END,CASE WHEN @depto='-' THEN NULL ELSE @depto END, @localidad, @fechaNacimiento,@id_pais, 'S')
END
GO

CREATE PROCEDURE [MAX_POWER].actualizar_cliente(@id BIGINT, @nombre VARCHAR(50), @apellido VARCHAR(50), @id_tipo_identificacion BIGINT, @nroId BIGINT, @mail VARCHAR(50), @telefono VARCHAR(50), @calle VARCHAR(50),@altura VARCHAR(10),@piso VARCHAR(10),@depto VARCHAR(50), @localidad VARCHAR(50), @fechaNacimiento DATETIME, @habilitado CHAR(1))
AS BEGIN
	IF EXISTS(SELECT 1 FROM [MAX_POWER].Cliente WHERE mail = @mail AND id_cliente!=@id and habilitado='S')
		RETURN (-5)
	IF (EXISTS (SELECT 1 FROM MAX_POWER.Cliente WHERE id_tipo_identificacion=@id_tipo_identificacion AND numero_identificacion=@nroId AND id_cliente!=@id and habilitado='S'))
		RETURN (-6)
	UPDATE [MAX_POWER].Cliente SET
	nombre = @nombre,
	apellido = @apellido,
	id_tipo_identificacion = @id_tipo_identificacion,
	numero_identificacion = @nroId,
	mail = @mail,
	telefono = @telefono,
	calle = @calle,
	altura=@altura ,
	piso=CASE WHEN @piso=-1 THEN NULL ELSE CAST(@piso AS BIGINT) END ,
	departamento=CASE WHEN @depto='-' THEN NULL ELSE @depto END,
	localidad = @localidad,
	fecha_nacimiento = @fechaNacimiento,
	habilitado = @habilitado
		WHERE id_cliente = @id
END
GO

CREATE PROCEDURE [MAX_POWER].usuario_para_login(@usuario VARCHAR(50), @password VARCHAR(50))
AS 
	SELECT * FROM MAX_POWER.Usuario WHERE Username = @usuario AND UPPER(habilitado)='S'
GO

CREATE PROCEDURE [MAX_POWER].obtener_habitacion(@id_reserva BIGINT)
AS SELECT DISTINCT H.id_habitacion, H.id_tipo_habitacion, th.descripcion
	FROM MAX_POWER.Habitacion_reservada HR 
	join MAX_POWER.Habitacion H on H.id_habitacion = HR.id_habitacion
	join MAX_POWER.Tipo_habitacion th on H.id_tipo_habitacion = th.id_tipo_habitacion
	WHERE HR.id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].obtener_documento(@id_usuario BIGINT)
AS SELECT T.id_tipo_documento, T.descripcion, U.numero_documento
	FROM Usuario U JOIN Tipo_documento T ON U.id_tipo_documento=T.id_tipo_documento
	WHERE U.id_usuario=@id_usuario
GO

CREATE PROCEDURE [MAX_POWER].obtener_identificacion(@id_cliente BIGINT)
AS SELECT T.id_tipo_documento as id_tipo_identificacion,T.descripcion, c.numero_identificacion
	FROM Cliente C JOIN Tipo_documento T ON T.id_tipo_documento=C.id_tipo_identificacion
	WHERE C.id_cliente=@id_cliente
GO

CREATE PROCEDURE [MAX_POWER].obtener_pais_cliente(@id_cliente BIGINT)
AS SELECT P.id_pais,P.nombre
	FROM Cliente C JOIN Pais P ON P.id_pais=C.id_pais
	WHERE C.id_cliente=@id_cliente
GO

CREATE PROCEDURE [MAX_POWER].buscar_habitacion(@id_hotel BIGINT, @numero_habitacion BIGINT, @piso_habitacion BIGINT, @ubicacion_habitacion CHAR(1), @id_tipo_habitacion BIGINT, @descripcion_habitacion VARCHAR(50))
AS SELECT * FROM [MAX_POWER].Habitacion 
	WHERE CAST(id_hotel AS VARCHAR(50)) LIKE (SELECT CASE WHEN @id_hotel = -1 THEN '%' ELSE CAST(@id_hotel AS VARCHAR(50)) END)
		AND CAST(numero AS VARCHAR(50)) LIKE (SELECT CASE WHEN @numero_habitacion = -1 THEN '%' ELSE CAST(@numero_habitacion AS VARCHAR(50)) END)
		AND CAST(piso AS VARCHAR(50)) LIKE (SELECT CASE WHEN @piso_habitacion = -1 THEN '%' ELSE CAST(@piso_habitacion AS VARCHAR(50)) END)
		AND UPPER(frente) LIKE UPPER(@ubicacion_habitacion)
		AND CAST(id_tipo_habitacion AS VARCHAR(50)) LIKE (SELECT CASE WHEN @id_tipo_habitacion = -1 THEN '%' ELSE CAST(@id_tipo_habitacion AS VARCHAR(50)) END)
		AND (UPPER(descripcion) LIKE UPPER(@descripcion_habitacion) OR (@descripcion_habitacion = '%' and descripcion is null) )
GO

CREATE PROCEDURE [MAX_POWER].buscar_Usuarios(@nombre VARCHAR(50), @apellido VARCHAR(50), @email VARCHAR(50), @username VARCHAR(50), @id_rol BIGINT, @id_hotel BIGINT)
AS SELECT distinct U.id_usuario as ID, username,Nombre,apellido,numero_documento,mail,direccion 
	FROM [MAX_POWER].Usuario U 
		join MAX_POWER.Usuario_X_Rol UR on UR.id_usuario=U.id_usuario 
		join MAX_POWER.Hotel_X_Usuario UH on U.id_usuario=UH.id_usuario
	WHERE U.habilitado LIKE 'S'
		AND	UPPER(nombre) LIKE UPPER(@nombre)
		AND UPPER(apellido) LIKE UPPER(@apellido)
		AND UPPER(mail) LIKE UPPER(@email)
		AND UPPER(username) LIKE UPPER(@username)
		AND UR.id_rol like (SELECT CASE WHEN  @id_rol= -1 THEN '%' ELSE CAST(@id_rol AS VARCHAR(50)) END)
		AND UH.id_hotel like (SELECT CASE WHEN @id_hotel = -1 THEN '%' ELSE CAST(@id_hotel AS VARCHAR(50)) END)
GO

CREATE PROCEDURE [MAX_POWER].total_factura(@id_factura BIGINT)
AS SELECT DISTINCT total FROM [MAX_POWER].Factura WHERE id_factura = @id_factura
GO

CREATE PROCEDURE [MAX_POWER].id_ultima_insercion(@tabla varchar(50)) AS
RETURN IDENT_CURRENT(@tabla)
GO

CREATE PROCEDURE [MAX_POWER].insertar_usuario(@username VARCHAR(50), @password VARCHAR(100), @nombre VARCHAR(50), @apellido VARCHAR(50), @Id_tipo_dni BIGINT, @dni VARCHAR(50), @mail VARCHAR(50), @telefono VARCHAR(50), @direccion VARCHAR(50), @fechaNacimiento date)
AS BEGIN
	BEGIN TRY
		INSERT INTO [MAX_POWER].Usuario (username, pw, nombre, apellido, id_tipo_documento, numero_documento, mail, telefono, direccion, fecha_nacimiento,habilitado,intentos_fallidos) VALUES (@username, @password, @nombre, @apellido, @Id_tipo_dni, @dni, @mail, @telefono, @direccion, @fechaNacimiento,'S',0)
	END TRY
	BEGIN CATCH
		print 'CATCH, @@error=' print @@error
		IF @@ERROR = 2627
			RETURN (-4)
		
	END CATCH
END
GO

CREATE FUNCTION [MAX_POWER].habitacion_libre(@id_habitacion BIGINT, @fecha_inicio DATE, @fecha_fin DATE) RETURNS INT AS
BEGIN
DECLARE @esta_libre INT
	IF ((SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR 
		JOIN [MAX_POWER].reserva R ON HR.id_reserva = R.id_reserva 
			WHERE HR.id_habitacion = @id_habitacion 
			AND R.id_estado not in (SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%cancel%'))
			AND (@fecha_inicio BETWEEN R.fecha_inicio AND R.fecha_fin
				OR @fecha_fin BETWEEN R.fecha_inicio AND R.fecha_fin
				OR R.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin
				OR R.fecha_fin BETWEEN @fecha_inicio AND @fecha_fin)
		)>0
		OR
		EXISTS (SELECT 1 FROM MAX_POWER.Periodo_Cierre P, MAX_POWER.Habitacion H
					WHERE P.id_hotel=H.id_hotel 
					AND(P.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin OR
						P.fecha_fin BETWEEN @fecha_inicio AND @fecha_fin OR
						@fecha_inicio BETWEEN P.fecha_inicio AND P.fecha_fin OR
						@fecha_fin BETWEEN P.fecha_inicio AND P.fecha_fin))
		)
		SET @esta_libre=0 -- OCUPADA
	ELSE
		SET @esta_libre=1 -- LIBRE
RETURN @esta_libre
END
GO

CREATE PROCEDURE [MAX_POWER].actualizar_hotel( @idHotel BIGINT, @nombre VARCHAR(50), @email VARCHAR(50), @telefono VARCHAR(50), @calle VARCHAR(50), @altura BIGINT, @estrellas BIGINT, @idPais BIGINT, @ciudad VARCHAR(50), @fechaCreacion VARCHAR(50),@recargaEstrellas BIGINT)
AS
	UPDATE [MAX_POWER].Hotel set nombre=@nombre WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set mail=@email WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set telefono=@telefono WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set calle=@calle WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set altura=@altura WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set estrellas=@estrellas WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set id_pais=@idPais WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set ciudad=@ciudad WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set fecha_creacion=@fechaCreacion WHERE id_hotel=@idHotel
	UPDATE [MAX_POWER].Hotel set recarga_estrellas=@recargaEstrellas WHERE id_hotel=@idHotel
GO


CREATE PROCEDURE [MAX_POWER].actualizar_habitacion(@idHabitacion BIGINT,@idHotel BIGINT, @Numero BIGINT, @unPiso BIGINT, @IdTipoHabitacion BIGINT,@unaUbicacion VARCHAR(1),@unaDescripcion VARCHAR(50),@habilitada VARCHAR(1))
 AS
	UPDATE [MAX_POWER].Habitacion set id_hotel=@idHotel where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set id_tipo_habitacion=@IdTipoHabitacion where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set numero=@Numero where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set piso=@unPiso where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set frente=@unaUbicacion where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set descripcion=@unaDescripcion where id_habitacion=@idHabitacion
	UPDATE [MAX_POWER].Habitacion set habilitada=@habilitada where id_habitacion=@idHabitacion
GO

CREATE PROCEDURE [MAX_POWER].[insertar_habitacion](@idHotel BIGINT,@unNumero BIGINT, @unPiso BIGINT , @idTipo BIGINT, @frente VARCHAR(1), @unaDescripcion VARCHAR(50),@Habilitada VARCHAR(1))
AS BEGIN
	
		IF (EXISTS(SELECT 1 FROM [MAX_POWER].Habitacion where id_hotel = @idHotel and numero=@unNumero)) RETURN -25
	
		INSERT INTO [MAX_POWER].Habitacion(id_hotel,numero,piso,id_tipo_habitacion,frente,descripcion,habilitada) VALUES (@idHotel,@unNumero,@unPiso,@idTipo,@frente,@unaDescripcion,@Habilitada)
	
END
GO

	
	

CREATE PROCEDURE [MAX_POWER].actualizar_rol( @idRol BIGINT, @nombre VARCHAR(50), @habilitado VARCHAR(1))
AS
	UPDATE [MAX_POWER].Rol set nombre=@nombre WHERE id_rol=@idRol
	UPDATE [MAX_POWER].Rol set habilitado=@habilitado WHERE id_rol=@idRol
GO	

CREATE PROCEDURE [MAX_POWER].borrar_regimen_x_hotel(@idHotel BIGINT,@id_regimen BIGINT)
AS 
	DELETE [MAX_POWER].Regimen_X_Hotel WHERE id_hotel=@idHotel AND id_regimen=@id_regimen
GO

CREATE PROCEDURE [MAX_POWER].borrar_regimen_x_hotel_chequeo(@idHotel BIGINT,@id_regimen BIGINT,@fecha_sistema DATETIME)
AS BEGIN
	IF(EXISTS(SELECT 1 FROM MAX_POWER.Reserva R,MAX_POWER.Habitacion_reservada HR,MAX_POWER.Habitacion H
				WHERE R.id_reserva=HR.id_reserva AND HR.id_habitacion=H.id_habitacion AND H.id_hotel=@idHotel
					AND R.id_regimen=@id_regimen AND R.fecha_fin>=@fecha_sistema))
		RETURN(-1*@id_regimen-30)
	ELSE
		RETURN(0)	
END		
GO

/*   L I S T A D O S   */
CREATE PROCEDURE [MAX_POWER].top5estadistico_hoteles_mas_reservas_canceladas(@trimestre as bigint, @anio as bigint) as
select top 5
	hot.nombre, hot.mail, hot.telefono, hot.calle, hot.altura, hot.fecha_creacion, 
	hot.estrellas, hot.recarga_estrellas, hot.ciudad, p.nombre as pais, canceladas
from (select 
		h.id_hotel,
		COUNT(h.id_hotel) as canceladas

	from MAX_POWER.Reserva r
	join MAX_POWER.Estado e on e.id_estado = r.id_estado and e.descripcion like '%cancel%'
	join MAX_POWER.Habitacion_reservada hr on hr.id_reserva = r.id_reserva
	join MAX_POWER.Habitacion h on h.id_habitacion = hr.id_habitacion
	left join MAX_POWER.Modificacion m on m.id_reserva = r.id_reserva and m.id_tipo_modificacion = (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%cancel%')

	where (floor(MONTH(m.fecha)/4) + 1) = @trimestre
		and YEAR(m.fecha) = @anio
	group by h.id_hotel, h.frente
)tabla
join MAX_POWER.Hotel hot on hot.id_hotel = tabla.id_hotel
join MAX_POWER.Pais p on p.id_pais = hot.id_pais
order by canceladas desc
GO

CREATE PROCEDURE [MAX_POWER].top5estadistico_hoteles_mas_consumibles_facturados(@trimestre as bigint, @anio as bigint) as
select top 5
	hot.nombre, hot.mail, hot.telefono, hot.calle, hot.altura, hot.fecha_creacion, 
	hot.estrellas, hot.recarga_estrellas, hot.ciudad, p.nombre as pais, consumibles
from (select 
		h.id_hotel,
		sum(prod.cantidad) as consumibles
	
	from MAX_POWER.Estadia e
	join MAX_POWER.Factura f on e.id_estadia = f.id_estadia and e.valida = 'S'
	join MAX_POWER.Producto_X_Habitacion_reservada prod on prod.id_factura = f.id_factura
	join MAX_POWER.Habitacion_reservada hr on prod.id_habitacion_reservada = hr.id_habitacion_reservada
	join MAX_POWER.Habitacion h on h.id_habitacion = hr.id_habitacion

	where (floor(MONTH(e.fecha_egreso)/4) + 1) = @trimestre
		and YEAR(e.fecha_egreso) = @anio
		
	group by h.id_hotel
)tabla
join MAX_POWER.Hotel hot on hot.id_hotel = tabla.id_hotel
join MAX_POWER.Pais p on p.id_pais = hot.id_pais
order by consumibles desc

GO

CREATE PROCEDURE [MAX_POWER].top5estadistico_hoteles_con_mas_periodo_inactivo(@trimestre as bigint, @anio as bigint) as
select top 5
	hot.nombre, hot.mail, hot.telefono, hot.calle, hot.altura, hot.fecha_creacion, 
	hot.estrellas, hot.recarga_estrellas, hot.ciudad, p.nombre as pais, dias_inactivo
from (select 
		pc.id_hotel,
		sum( DATEDIFF(DAY,pc.fecha_inicio,coalesce(pc.fecha_fin,getdate())) ) as dias_inactivo
	from MAX_POWER.Periodo_Cierre pc

	where (floor(MONTH(pc.fecha_inicio)/4) + 1) = @trimestre
		and YEAR(pc.fecha_inicio) = @anio
		
	group by pc.id_hotel
)tabla
join MAX_POWER.Hotel hot on hot.id_hotel = tabla.id_hotel
join MAX_POWER.Pais p on p.id_pais = hot.id_pais
order by dias_inactivo desc

GO

create PROCEDURE [MAX_POWER].top5estadistico_habitaciones_mas_ocupadas(@trimestre as bigint, @anio as bigint) as
select top 5
	hot.nombre as nombre_hotel, th.descripcion as tipo_habitacion, hab.numero, hab.piso, hab.frente, 
	hab.descripcion, hab.habilitada, cantidad_dias, cantidad_veces
from (select 
		h.id_habitacion,
		COUNT( h.id_habitacion ) as cantidad_veces,
		sum(DATEDIFF(DAY,e.fecha_ingreso,e.fecha_egreso)) as cantidad_dias
		
	from MAX_POWER.Estadia e
	join MAX_POWER.Reserva r on e.id_reserva = r.id_reserva and e.valida = 'S'
	join MAX_POWER.Habitacion_reservada hr on hr.id_reserva = r.id_reserva
	join MAX_POWER.Habitacion h on h.id_habitacion = hr.id_habitacion

	where (floor(MONTH(e.fecha_ingreso)/4) + 1) = @trimestre
		and YEAR(e.fecha_ingreso) = @anio
		
	group by h.id_habitacion
)tabla
join MAX_POWER.Habitacion hab on hab.id_habitacion = tabla.id_habitacion
join MAX_POWER.Hotel hot on hot.id_hotel = hab.id_hotel
join MAX_POWER.Tipo_habitacion th on th.id_tipo_habitacion = hab.id_tipo_habitacion
order by cantidad_veces desc, cantidad_dias desc

GO

create PROCEDURE [MAX_POWER].top5estadistico_clientes_por_puntaje(@trimestre as bigint, @anio as bigint) as
select top 5
floor(precio_estadia/10) + floor(
(select SUM(p.precio * phr.cantidad) as precio_producto 
	from MAX_POWER.Producto_X_Habitacion_reservada phr
	join MAX_POWER.Producto p on p.id_producto = phr.id_producto
	where phr.id_factura = tabla.factura ) /5) as puntos,
	c.numero_identificacion, td.descripcion as tipo_documento, c.apellido, c.nombre, 
	c.fecha_nacimiento, c.mail, c.calle, c.altura, c.piso, c.departamento, 
	c.telefono, c.localidad, p.nombre, c.habilitado
from (select 
		r.id_cliente_titular as cliente,
		e.id_estadia as estadia, 
		(select DATEDIFF(D,r.fecha_inicio, r.fecha_fin ) * ( reg.precio_base * sum(th.porcentual) + min(hot.recarga_estrellas) * min(hot.estrellas)*count(th.porcentual)) as cantidad
		from MAX_POWER.Reserva r2
		join MAX_POWER.Habitacion_reservada hr on hr.id_reserva = r2.id_reserva
		join MAX_POWER.Habitacion h on h.id_habitacion = hr.id_habitacion
		join MAX_POWER.Hotel hot on hot.id_hotel = h.id_hotel
		join MAX_POWER.Tipo_habitacion th on th.id_tipo_habitacion = h.id_tipo_habitacion
		where r.id_reserva = r2.id_reserva ) as precio_estadia,
		f.id_factura as factura
		
	from MAX_POWER.Estadia e
	join MAX_POWER.Reserva r on e.id_reserva = r.id_reserva and e.valida = 'S'
	join MAX_POWER.Regimen reg on reg.id_regimen = r.id_regimen
	join MAX_POWER.Factura f on f.id_estadia = e.id_estadia

	where (floor(MONTH(e.fecha_ingreso)/4) + 1) = @trimestre
		and YEAR(e.fecha_ingreso) = @anio
)tabla
join MAX_POWER.Cliente c on c.id_cliente = tabla.cliente
join MAX_POWER.Tipo_documento td on td.id_tipo_documento = c.id_tipo_identificacion
join MAX_POWER.Pais p on p.id_pais = c.id_pais
order by puntos desc
GO

CREATE FUNCTION [MAX_POWER].costo_diario_habitacion(@id_hotel BIGINT,@id_habitacion BIGINT,@id_regimen BIGINT)RETURNS DECIMAL AS
BEGIN
	DECLARE @costo DECIMAL
	SELECT @costo=((R.precio_base*T.porcentual)+(O.recarga_estrellas*O.estrellas))
				FROM MAX_POWER.Habitacion H, MAX_POWER.Hotel O, MAX_POWER.Regimen R, MAX_POWER.Tipo_habitacion T
				WHERE H.id_habitacion=@id_habitacion AND O.id_hotel=@id_hotel AND R.id_regimen=@id_regimen AND T.id_tipo_habitacion=H.id_tipo_habitacion
	RETURN @costo
END
GO

CREATE PROCEDURE [MAX_POWER].buscar_habitacion_reserva(@id_hotel BIGINT, @id_tipo_habitacion BIGINT, @fecha_inicio DATETIME, @fecha_fin DATETIME,@id_regimen BIGINT)
AS SELECT id_habitacion,MAX_POWER.costo_diario_habitacion(@id_hotel,id_habitacion,@id_regimen)as costo FROM Max_power.Habitacion WHERE id_hotel=@id_hotel 
												AND id_tipo_habitacion=@id_tipo_habitacion 
												AND habilitada='S'
												AND MAX_POWER.habitacion_libre(id_habitacion,	@fecha_inicio,@fecha_fin)=1
GO

CREATE PROCEDURE [MAX_POWER].baja_reservas_viejas(@fecha_sistema datetime,@id_usuario BIGINT) AS
BEGIN
INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion) 
	select @fecha_sistema, id_reserva, @id_usuario, 'Cancelacion automática por no-show', (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%cancela%')
	from MAX_POWER.Reserva
	WHERE cast(fecha_inicio as date)<cast(@fecha_sistema as date)
		AND (id_estado != (SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%ingres%'))
			AND id_estado not in (SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%cancel%')))
UPDATE MAX_POWER.Reserva SET id_estado=(SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%no%show%'))
	WHERE cast(fecha_inicio as date)<cast(@fecha_sistema as date)
		AND (id_estado != (SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%ingres%'))
			AND id_estado not in (SELECT id_estado FROM MAX_POWER.Estado WHERE UPPER(descripcion) LIKE UPPER('%cancel%')))
END
GO

CREATE PROCEDURE [MAX_POWER].proximo_id_reserva AS
BEGIN
	DECLARE @proximo_id BIGINT
	SELECT @proximo_id=MAX(id_reserva) FROM MAX_POWER.Reserva
	SET @proximo_id=@proximo_id+1
	RETURN (@proximo_id)
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_reserva(@id_regimen BIGINT, @fecha_inicio DATETIME, @fecha_fin DATETIME, @id_cliente BIGINT, @fecha_realizacion DATETIME)
AS BEGIN
	BEGIN TRY
	DECLARE @id BIGINT
	EXEC @id=MAX_POWER.proximo_id_reserva
		INSERT INTO [MAX_POWER].reserva (id_reserva,id_regimen, fecha_inicio, fecha_fin, id_cliente_titular, fecha_realizacion, id_estado) VALUES (@id, @id_regimen, @fecha_inicio, @fecha_fin, @id_cliente, @fecha_realizacion, (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%correcta'))
	END TRY
	BEGIN CATCH
		--raiseError
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_habitacion_reservada(@id_reserva BIGINT, @id_habitacion BIGINT)
AS
BEGIN
	INSERT INTO [MAX_POWER].Habitacion_reservada (id_reserva, id_habitacion) VALUES (@id_reserva, @id_habitacion)
	RETURN (0)
END
GO

CREATE PROCEDURE [MAX_POWER].insertar_hotel(
 @nombre VARCHAR(50), @email VARCHAR(50), @telefono VARCHAR(50), @calle VARCHAR(50), @altura BIGINT, @estrellas BIGINT, @id_pais BIGINT, @ciudad VARCHAR(50), @fechaCreacion VARCHAR(50), @recargaEstrellas BIGINT, @fecha_sistema datetime)
 
 AS BEGIN
	BEGIN TRY
	INSERT INTO [MAX_POWER].Hotel (nombre,mail,telefono,calle,altura,fecha_creacion,estrellas,recarga_estrellas,id_pais,ciudad) 
		VALUES (	@nombre,
					@email,
					@telefono,
					@calle,
					@altura,
					CONVERT(DATE,@fecha_sistema,102),
					@estrellas,
					@recargaEstrellas,
					@id_pais,
					@ciudad)
	END TRY
	
	BEGIN CATCH		
	print 'CATCH, @@error=' 
	print @@error
		IF @@ERROR = 2627
			RETURN (-20)
	END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].[id_hotel](@nombre VARCHAR(50))
AS 
	SELECT id_hotel FROM [MAX_POWER].hotel WHERE nombre like @nombre
GO

CREATE PROCEDURE [MAX_POWER].[insertar_regimen_x_hotel](@id_hotel BIGINT,@id_regimen BIGINT)
AS 
	INSERT INTO [MAX_POWER].Regimen_X_Hotel (id_hotel,id_regimen) VALUES (@id_hotel,@id_regimen)
GO

PRINT 'Finalizo la importacion de SP propios de la aplicacion.'


-- S E C U E N C I A 

EXEC [MAX_POWER].IMP_Nacionalidad 
GO
CREATE nonclustered index IDX_Pais on MAX_POWER.Pais(nombre);
PRINT 'Importado: Nacionalidades.'

insert into MAX_POWER.Tipo_documento (descripcion) values('DNI')
PRINT 'Creados los tipos de documento.'

EXEC [MAX_POWER].IMP_Cliente 
GO
CREATE nonclustered index IDX_Clientes on MAX_POWER.Cliente(numero_identificacion, nombre);
PRINT 'Importado: Cliente.'

EXEC [MAX_POWER].IMP_Consumible 
GO
CREATE nonclustered index IDX_Producto on MAX_POWER.Producto(descripcion);
PRINT 'Importado: Consumible.'

EXEC [MAX_POWER].IMP_Tipo_Habitacion 
GO
CREATE nonclustered index IDX_Tipo_habitacion on MAX_POWER.Tipo_habitacion(id_tipo_habitacion);
PRINT 'Importado: Tipo de Habitacion.'

EXEC [MAX_POWER].IMP_Regimen 
GO
CREATE nonclustered index IDX_Regimen on MAX_POWER.Regimen(descripcion);
PRINT 'Importado: Regimen.'

insert into MAX_POWER.Estado (descripcion) values ('Correcta')
insert into MAX_POWER.Estado (descripcion) values ('Modificada')
insert into MAX_POWER.Estado (descripcion) values ('Cancelada por Recepcion')
insert into MAX_POWER.Estado (descripcion) values ('Cancelada por Cliente')
insert into MAX_POWER.Estado (descripcion) values ('Cancelada por No-Show')
insert into MAX_POWER.Estado (descripcion) values ('Con Ingreso')
PRINT 'Creados los estados.'

EXEC [MAX_POWER].IMP_Reserva 
GO
CREATE nonclustered index IDX_reserva on MAX_POWER.reserva(id_reserva, fecha_inicio, fecha_fin);
PRINT 'Importado: Reserva.'

EXEC [MAX_POWER].IMP_Estadia 
GO
CREATE nonclustered index IDX_Estadia on MAX_POWER.Estadia(id_estadia, id_reserva);
PRINT 'Importado: Estadia.'

insert into MAX_POWER.Metodo_pago (descripcion) values ('Efectivo')
insert into MAX_POWER.Metodo_pago (descripcion) values ('Tarjeta de credito')
PRINT 'Creados los metodos de pago.'
EXEC [MAX_POWER].IMP_Factura 
GO
PRINT 'Importado: Factura.'

EXEC [MAX_POWER].IMP_Hotel 
GO
CREATE nonclustered index IDX_Hotel on MAX_POWER.Hotel(id_hotel);
PRINT 'Importado: Hotel.'

EXEC [MAX_POWER].IMP_Habitacion 
GO

CREATE nonclustered index IDX_habitacion on MAX_POWER.Habitacion(id_habitacion, numero, piso);
PRINT 'Importado: Habitacion.'

EXEC [MAX_POWER].IMP_Habitacion_reservada
GO
CREATE nonclustered index IDX_habitacion_Reservadas on MAX_POWER.Habitacion_reservada(id_reserva, id_habitacion);
PRINT 'Importado: Habitacion Reservada.'

EXEC [MAX_POWER].IMP_Habitacion_reservada_Cliente
GO
PRINT 'Importado: Habitacion Reservada por Cliente.'

EXEC [MAX_POWER].IMP_Producto_Habitacion_reservada
GO
PRINT 'Importado: Producto por Habitacion Reservada.'


EXEC [MAX_POWER].REGIMEN_HOTEL
GO
PRINT 'Importado: Regimenes por Hotel.'

update MAX_POWER.Reserva set MAX_POWER.Reserva.id_estado = 6
from MAX_POWER.Reserva
join MAX_POWER.Estadia on MAX_POWER.Estadia.id_reserva = MAX_POWER.Reserva.id_reserva
where MAX_POWER.Estadia.valida = 'S'
GO

PRINT 'Actualizo estado de estadias invalidas'



PRINT '---------------------'
PRINT 'MIGRACION FINALIZADA.'
PRINT '---------------------'

EXEC [MAX_POWER].Detectar_Clientes_Repetidos
GO
PRINT 'Clientes duplicados detectados.'


insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Roles')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Usuarios')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Clientes')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Hoteles')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Habitaciones')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Administrar Reservas')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Check in/out')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Listado Estadístico')
insert into MAX_POWER.Funcionalidad (descripcion) values ('Facturar Estadías')


exec MAX_POWER.insertar_rol 'Administrador General', 'S'
GO
exec MAX_POWER.insertar_rol 'Recepcionista', 'S'
GO
exec MAX_POWER.insertar_rol 'Guest', 'S'
GO

exec MAX_POWER.insertar_funcionalidad_X_rol 1, 1
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 2
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 3
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 4
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 5
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 6
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 7
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 8
exec MAX_POWER.insertar_funcionalidad_X_rol 1, 9
exec MAX_POWER.insertar_funcionalidad_X_rol 2, 3
exec MAX_POWER.insertar_funcionalidad_X_rol 2, 5
exec MAX_POWER.insertar_funcionalidad_X_rol 2, 6
exec MAX_POWER.insertar_funcionalidad_X_rol 2, 7
exec MAX_POWER.insertar_funcionalidad_X_rol 2, 9
exec MAX_POWER.insertar_funcionalidad_X_rol 3, 6
go

PRINT 'Creadas las funcionalidades y roles.'

declare @nacimiento as date
set @nacimiento = CAST('01/01/1993' as DATE)
exec MAX_POWER.insertar_usuario 'admin', 'e6b87050bfcb8143fcb8db0170a4dc9ed00d904ddd3e2a4ad1b1e8dc0fdc9be7', 'Max', 'Power', 1, '99999999', 'admin@power.max', '44444444', 'falsa 123', @nacimiento
exec MAX_POWER.insertar_usuario 'Guest', '', 'Guest', 'Guest', 1, '99999999', 'guest@power.max', '44444444', 'falsa 123', @nacimiento
go

exec MAX_POWER.insertar_usuario_x_rol 1, 1
exec MAX_POWER.insertar_usuario_x_rol 2,3
go

exec MAX_POWER.insertar_usuario_x_hotel 1, 1
exec MAX_POWER.insertar_usuario_x_hotel 1, 2
exec MAX_POWER.insertar_usuario_x_hotel 1, 3
exec MAX_POWER.insertar_usuario_x_hotel 1, 4
exec MAX_POWER.insertar_usuario_x_hotel 1, 5
exec MAX_POWER.insertar_usuario_x_hotel 1, 6
exec MAX_POWER.insertar_usuario_x_hotel 1, 7
exec MAX_POWER.insertar_usuario_x_hotel 1, 8
exec MAX_POWER.insertar_usuario_x_hotel 1, 9
exec MAX_POWER.insertar_usuario_x_hotel 1, 10
exec MAX_POWER.insertar_usuario_x_hotel 1, 11
exec MAX_POWER.insertar_usuario_x_hotel 1, 12
exec MAX_POWER.insertar_usuario_x_hotel 1, 13
exec MAX_POWER.insertar_usuario_x_hotel 1, 14
exec MAX_POWER.insertar_usuario_x_hotel 1, 15
exec MAX_POWER.insertar_usuario_x_hotel 1, 16
GO

exec MAX_POWER.insertar_usuario_x_hotel 2, 1
exec MAX_POWER.insertar_usuario_x_hotel 2, 2
exec MAX_POWER.insertar_usuario_x_hotel 2, 3
exec MAX_POWER.insertar_usuario_x_hotel 2, 4
exec MAX_POWER.insertar_usuario_x_hotel 2, 5
exec MAX_POWER.insertar_usuario_x_hotel 2, 6
exec MAX_POWER.insertar_usuario_x_hotel 2, 7
exec MAX_POWER.insertar_usuario_x_hotel 2, 8
exec MAX_POWER.insertar_usuario_x_hotel 2, 9
exec MAX_POWER.insertar_usuario_x_hotel 2, 10
exec MAX_POWER.insertar_usuario_x_hotel 2, 11
exec MAX_POWER.insertar_usuario_x_hotel 2, 12
exec MAX_POWER.insertar_usuario_x_hotel 2, 13
exec MAX_POWER.insertar_usuario_x_hotel 2, 14
exec MAX_POWER.insertar_usuario_x_hotel 2, 15
exec MAX_POWER.insertar_usuario_x_hotel 2, 16
GO

insert into MAX_POWER.Tipo_modificacion (descripcion) values ('Modificacion')
insert into MAX_POWER.Tipo_modificacion (descripcion) values ('Cancelacion')
insert into MAX_POWER.Tipo_modificacion (descripcion) values ('Check in')
insert into MAX_POWER.Tipo_modificacion (descripcion) values ('Check out')

/*Renombra los hoteles migrados para que no aparezcan en blanco en la app*/

UPDATE MAX_POWER.Hotel SET nombre='Hotel sin nombre '+CAST(id_hotel AS VARCHAR(30)) WHERE nombre IS NULL

UPDATE MAX_POWER.Hotel SET fecha_creacion='2000.06.25' WHERE fecha_creacion IS NULL

UPDATE MAX_POWER.Pais SET nombre='Argentina' where nombre='ARGENTINO'

INSERT INTO MAX_POWER.Pais (nombre) VALUES ('Brasil')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('Estados Unidos')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('Canadá')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('España')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('Perú')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('Sudáfrica')
INSERT INTO MAX_POWER.Pais (nombre) VALUES ('India')

INSERT INTO MAX_POWER.Tipo_documento (descripcion) VALUES ('LC')
INSERT INTO MAX_POWER.Tipo_documento (descripcion) VALUES ('LE')
INSERT INTO MAX_POWER.Tipo_documento (descripcion) VALUES ('Pasaporte')

PRINT 'Generados datos basicos'
