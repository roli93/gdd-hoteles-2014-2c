/* TABLAS */

/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Factura_Metodo_pago]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Metodo_pago]
GO
/****** Object:  ForeignKey [FK_Factura_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_reserva]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hotel]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hotel]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hotel]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hotel]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuario]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuario]
GO
/****** Object:  ForeignKey [FK_Hotel_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] DROP CONSTRAINT [FK_Hotel_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_reserva]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuario]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuario]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Factura]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Producto]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] DROP CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_reserva_Cliente]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Cliente]
GO
/****** Object:  ForeignKey [FK_reserva_Estado]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Estado]
GO
/****** Object:  ForeignKey [FK_reserva_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuario]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO
/****** Object:  ForeignKey [FK_Usuario_Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] DROP CONSTRAINT [FK_Usuario_Tipo_documento]
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada_X_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] DROP CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]
GO
/****** Object:  Table [MAX_POWER].[Producto_X_Habitacion_reservada]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Factura]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Metodo_pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_reserva]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Factura]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Factura]
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] DROP CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion_reservada]
GO
/****** Object:  Table [MAX_POWER].[Modificacion]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion]
GO
/****** Object:  Table [MAX_POWER].[Regimen_X_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Regimen_X_Hotel]
GO
/****** Object:  Table [MAX_POWER].[reserva]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] DROP CONSTRAINT [FK_reserva_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[reserva]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[reserva]
GO
/****** Object:  Table [MAX_POWER].[Hotel_X_Empleado]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hotel_X_Empleado]
GO
/****** Object:  Table [MAX_POWER].[Usuario_X_Rol]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuario_X_Rol]
GO
/****** Object:  Table [MAX_POWER].[Periodo_Cierre]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Periodo_Cierre]
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad_X_Rol]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Funcionalidad_X_Rol]
GO
/****** Object:  Table [MAX_POWER].[Usuario]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] DROP CONSTRAINT [FK_Usuario_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuario]
GO
/****** Object:  Table [MAX_POWER].[Hotel]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] DROP CONSTRAINT [FK_Hotel_Paises]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hotel]
GO
/****** Object:  Table [MAX_POWER].[Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Cliente]
GO
/****** Object:  Table [MAX_POWER].[Clientes_Repetidos]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Clientes_Repetidos]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Clientes_Repetidos]
GO
/****** Object:  Table [MAX_POWER].[Estado]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Estado]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Estado]
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Funcionalidad]
GO
/****** Object:  Table [MAX_POWER].[Metodo_pago]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Metodo_pago]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Metodo_pago]
GO
/****** Object:  Table [MAX_POWER].[Rol]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Rol]
GO
/****** Object:  Table [MAX_POWER].[Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_documento]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_documento]
GO
/****** Object:  Table [MAX_POWER].[Tipo_habitacion]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_habitacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_habitacion]
GO
/****** Object:  Table [MAX_POWER].[Tipo_modificacion]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Tipo_modificacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Tipo_modificacion]
GO
/****** Object:  Table [MAX_POWER].[Pais]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Pais]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Pais]
GO
/****** Object:  Table [MAX_POWER].[Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Regimen]
GO
/****** Object:  Table [MAX_POWER].[Producto]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Producto]
GO
/****** Object:  Schema [MAX_POWER]    Script Date: 11/11/2014 21:15:54 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'MAX_POWER')
DROP SCHEMA [MAX_POWER]
GO
/****** Object:  Schema [MAX_POWER]    Script Date: 11/11/2014 21:15:54 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'MAX_POWER')
EXEC sys.sp_executesql N'CREATE SCHEMA [MAX_POWER] AUTHORIZATION [dbo]'
GO
/****** Object:  Table [MAX_POWER].[Producto]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Regimen]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Pais]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Tipo_modificacion]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Tipo_habitacion]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Rol]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Metodo_pago]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Funcionalidad]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Estado]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Clientes_Repetidos]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Cliente]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Hotel]    Script Date: 11/11/2014 21:15:56 ******/
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
	[pais_id] [bigint] NULL,
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
/****** Object:  Table [MAX_POWER].[Usuario]    Script Date: 11/11/2014 21:15:57 ******/
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
	[username] [varchar](50) NOT NULL UNIQUE,
	[pw] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Estado] [int] NULL,
	[tipo_documento_id] [bigint] NOT NULL,
	[numero_documento] [varchar](50) NOT NULL,
	[mail] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[habilitado] [char](1) NOT NULL,
	[intentos_fallidos] [int] NOT NULL,
 CONSTRAINT [PK__Usuario__3213E83F21B6055D] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Funcionalidad_X_Rol]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Periodo_Cierre]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Periodo_Cierre](
	[id_periodo] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[fecha_inicio] [varchar](50) NOT NULL,
	[fecha_fin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Periodos_Cierre] PRIMARY KEY CLUSTERED 
(
	[id_periodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [MAX_POWER].[Usuario_X_Rol]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Hotel_X_Empleado]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Hotel_X_Empleado](
	[id_usuario] [bigint] NOT NULL,
	[id_hotel] [bigint] NOT NULL,
 CONSTRAINT [PK_Hotel_X_Empleado] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_hotel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[reserva]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[reserva]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[reserva](
	[id_reserva] [bigint] NOT NULL,
	[fecha_realizacion] [date] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
	[fecha_salida] [date] NOT NULL,
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
/****** Object:  Table [MAX_POWER].[Regimen_X_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
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
/****** Object:  Table [MAX_POWER].[Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
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
	[frente] [varchar](10) NULL CHECK(frente in('S','N')),
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
/****** Object:  Table [MAX_POWER].[Modificacion]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Habitacion_reservada]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  Table [MAX_POWER].[Factura]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Factura](
	[id_factura] [bigint] NOT NULL,
	[id_medoto_pago] [bigint] NULL,
	[id_reserva] [bigint] NOT NULL,
	[total] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK__Factura__3213E83F66603565] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Producto_X_Habitacion_reservada]    Script Date: 11/11/2014 21:15:57 ******/
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
	[id_factura] [bigint] NOT NULL,
 CONSTRAINT [PK_Producto_X_Habitacion_reservada] PRIMARY KEY CLUSTERED 
(
	[id_habitacion_reservada] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Habitacion_reservada_X_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
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
/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Paises] FOREIGN KEY([id_pais])
REFERENCES [MAX_POWER].[Pais] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] CHECK CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tipo_documento] FOREIGN KEY([id_tipo_identificacion])
REFERENCES [MAX_POWER].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Factura_Metodo_pago]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Metodo_pago] FOREIGN KEY([id_medoto_pago])
REFERENCES [MAX_POWER].[Metodo_pago] ([id_metodo_pago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Metodo_pago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_Metodo_pago]
GO
/****** Object:  ForeignKey [FK_Factura_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_reserva]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad] FOREIGN KEY([id_funcionalidad])
REFERENCES [MAX_POWER].[Funcionalidad] ([id_funcionalidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [MAX_POWER].[Rol] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hotel]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Hotel]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipo_habitacion] FOREIGN KEY([id_tipo_habitacion])
REFERENCES [MAX_POWER].[Tipo_habitacion] ([id_tipo_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_Habitacion] FOREIGN KEY([id_habitacion])
REFERENCES [MAX_POWER].[Habitacion] ([id_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] CHECK CONSTRAINT [FK_Habitacion_reservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada] CHECK CONSTRAINT [FK_Habitacion_reservada_reserva]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] CHECK CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [MAX_POWER].[Habitacion_reservada] ([id_habitacion_reservada])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion_reservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[Habitacion_reservada_X_Cliente] CHECK CONSTRAINT [FK_Habitacion_reservada_X_Cliente_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hotel]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Hotel]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuario]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Usuario]
GO
/****** Object:  ForeignKey [FK_Hotel_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Paises] FOREIGN KEY([pais_id])
REFERENCES [MAX_POWER].[Pais] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel]'))
ALTER TABLE [MAX_POWER].[Hotel] CHECK CONSTRAINT [FK_Hotel_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_reserva]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_reserva] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[reserva] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_reserva]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_reserva]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Tipo_modificacion] FOREIGN KEY([id_tipo_modificacion])
REFERENCES [MAX_POWER].[Tipo_modificacion] ([id_tipo_modificacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuario]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Usuario]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Cierre_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] CHECK CONSTRAINT [FK_Periodo_Cierre_Hotel]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Factura]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura] FOREIGN KEY([id_factura])
REFERENCES [MAX_POWER].[Factura] ([id_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [MAX_POWER].[Habitacion_reservada] ([id_habitacion_reservada])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Habitacion_reservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Habitacion_reservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_Habitacion_reservada_Producto]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto] FOREIGN KEY([id_producto])
REFERENCES [MAX_POWER].[Producto] ([id_producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_Habitacion_reservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_Habitacion_reservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_Habitacion_reservada] CHECK CONSTRAINT [FK_Producto_X_Habitacion_reservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Hotel] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hotel] ([id_hotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hotel]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Hotel]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_reserva_Cliente]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Cliente] FOREIGN KEY([id_cliente_titular])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] CHECK CONSTRAINT [FK_reserva_Cliente]
GO
/****** Object:  ForeignKey [FK_reserva_Estado]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Estado] FOREIGN KEY([id_estado])
REFERENCES [MAX_POWER].[Estado] ([id_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] CHECK CONSTRAINT [FK_reserva_Estado]
GO
/****** Object:  ForeignKey [FK_reserva_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva]  WITH CHECK ADD  CONSTRAINT [FK_reserva_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_reserva_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[reserva]'))
ALTER TABLE [MAX_POWER].[reserva] CHECK CONSTRAINT [FK_reserva_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [MAX_POWER].[Rol] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuario]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Usuario]
GO
/****** Object:  ForeignKey [FK_Usuario_Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_documento] FOREIGN KEY([tipo_documento_id])
REFERENCES [MAX_POWER].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario]'))
ALTER TABLE [MAX_POWER].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_documento]
GO




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

print 'Vistas creadas.'

	/*	F U N C I O N E S	*/

IF OBJECT_ID('MAX_POWER.buscar_ID_Cliente', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Cliente
GO

CREATE FUNCTION [MAX_POWER].buscar_ID_Cliente (@pasaporte as varchar(50), @nombre as varchar(50), @apellido as varchar(50))
returns bigint
    BEGIN 
        return (select id_cliente from MAX_POWER.cliente
					where	numero_identificacion = @pasaporte and
							nombre = @nombre and
							apellido = @apellido)
    END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Nacionalidad', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Nacionalidad
GO

CREATE FUNCTION [MAX_POWER].buscar_ID_Nacionalidad (@pais as varchar(50))
returns bigint
	begin 
		return (select id_pais from MAX_POWER.Pais where nombre = @pais)
	end
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Regimen', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Regimen
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Regimen (@regimen as varchar(50))
returns bigint
	begin 
		return (select id_regimen from MAX_POWER.regimen where descripcion = @regimen)
	end
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Hotel', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Hotel
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Hotel (@ciudad as varchar(50), @calle as varchar(50), @altura numeric(18,0))
returns bigint
    BEGIN 
        return (select id_hotel from MAX_POWER.Hotel 
					where	calle = @calle and
							altura = @altura and
							ciudad = @ciudad)
    END
GO


IF OBJECT_ID('MAX_POWER.buscar_ID_Habitacion_reservada', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Habitacion_reservada
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Habitacion_reservada (@id_habitacion as bigint, @id_reserva as bigint)
returns bigint
    BEGIN 
        return (select id_habitacion_reservada from MAX_POWER.Habitacion_reservada 
					where id_habitacion = @id_habitacion and
						id_reserva = @id_reserva)
    END
GO

IF OBJECT_ID('MAX_POWER.buscar_ID_Habitacion', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Habitacion
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Habitacion (@id_hotel as bigint, @piso as int, @numero as bigint)
returns bigint
    BEGIN 
        return (select id_habitacion from MAX_POWER.Habitacion 
					where id_hotel = @id_hotel and
						numero = @numero and
						piso = @piso)
    END
GO



IF OBJECT_ID('MAX_POWER.buscar_ID_Cliente', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_Cliente
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_Cliente (@pasaporte as varchar(50), @nombre as varchar(50), @apellido as varchar(50))
returns bigint
    BEGIN 
        return (select id_cliente from MAX_POWER.cliente
					where	numero_identificacion = @pasaporte and
							nombre = @nombre and
							apellido = @apellido)
    END
GO


print 'Funciones creadas.'

	/*	S	P	*/
		
/* SP - CLIENTES */
IF OBJECT_ID('MAX_POWER.IMP_Cliente', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Cliente
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Cliente
AS INSERT INTO MAX_POWER.Cliente (numero_identificacion, Apellido, Nombre, fecha_Nacimiento, Mail, 
						Calle, Altura, Piso, Departamento, id_pais, Habilitado)
		SELECT pasaporte, Apellido, Nombre, Nacimiento, Cliente_Mail, 
						Calle, Altura, Piso, Departamento, MAX_POWER.buscar_ID_Nacionalidad(Nacionalidad) as pais_id, 
						'T' as Habilitado
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

/* SP - FACTURAS */
IF OBJECT_ID('MAX_POWER.IMP_Factura', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Factura
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Factura
AS INSERT INTO MAX_POWER.Factura (id_factura, id_reserva, total)
	select Factura, Reserva, total
	from MAX_POWER.V_Facturas
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
		SELECT Descripcion, Precio, 'T' as habilitado
			FROM MAX_POWER.v_Regimen
GO

/* SP - reserva */
IF OBJECT_ID('MAX_POWER.IMP_Reserva', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Reserva
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Reserva
AS INSERT INTO MAX_POWER.reserva (id_reserva, fecha_realizacion, fecha_inicio, fecha_fin, id_cliente_titular, id_regimen)
	select codigo, fecha_inicio, fecha_inicio, fecha_inicio + noches as fecha_fin,
		MAX_POWER.buscar_ID_Cliente(cliente, nombre, Apellido) as id_cliente, MAX_POWER.buscar_ID_Regimen(regimen) as regimen
	from MAX_POWER.V_reserva
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
AS INSERT INTO MAX_POWER.Hotel (calle, altura, ciudad, estrellas, recarga_estrellas)
	select Calle, Altura, Ciudad, Estrellas, Recarga_Estrella
	from MAX_POWER.V_Hotel
GO

/* SP - HABITACION */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion
AS INSERT INTO MAX_POWER.Habitacion (id_hotel, id_tipo_habitacion, numero, piso, frente, habilitada)
	select MAX_POWER.buscar_ID_Hotel(Ciudad_Hotel, Calle_Hotel, Altura_Hotel) as id_hotel, Tipo, Numero, 
			Piso, 
			Frente,
			'S' as habilitada
	from MAX_POWER.V_habitacion
GO

/* SP - HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion_reservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion_reservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion_reservada AS
insert into MAX_POWER.Habitacion_reservada (id_habitacion, id_reserva) 
 (select MAX_POWER.buscar_ID_Habitacion(MAX_POWER.buscar_ID_Hotel(hotel_Ciudad,Hotel_Calle,hotel_Nro_Calle), 
			Habitacion_Piso, Habitacion_Numero),
			codigo
			from MAX_POWER.V_reserva)
GO


/* SP - HABITACION_RESERVADA_CLIENTE */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion_reservada_Cliente', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion_reservada_Cliente
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion_reservada_Cliente AS
insert into MAX_POWER.Habitacion_reservada_X_Cliente (id_habitacion_reservada, id_cliente) 
 (select MAX_POWER.buscar_ID_Habitacion_reservada(MAX_POWER.buscar_ID_Habitacion(MAX_POWER.buscar_ID_Hotel(hotel_Ciudad,Hotel_Calle,hotel_Nro_Calle), Habitacion_Piso, Habitacion_Numero), codigo) as id_HabReservada,
			MAX_POWER.buscar_ID_Cliente(Cliente, Nombre, Apellido) as id_cliente
			from MAX_POWER.V_reserva)
GO


/* SP - PRODUCTO_HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_Producto_Habitacion_reservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Producto_Habitacion_reservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Producto_Habitacion_reservada AS
insert into MAX_POWER.Producto_X_Habitacion_reservada (id_habitacion_reservada, id_producto, cantidad, id_factura) 
 (select hr.id_habitacion_reservada, v.Consumible, v.Cantidad, v.Factura 
		from MAX_POWER.V_ItemFactura v
		join MAX_POWER.Factura f on f.id_factura = v.Factura
		join MAX_POWER.Habitacion_reservada hr on hr.id_reserva = f.id_reserva)
GO

/* SP - CLIENTES REPETIDOS */
IF OBJECT_ID('MAX_POWER.Detectar_Clientes_Repetidos', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.Detectar_Clientes_Repetidos
GO	

CREATE PROCEDURE [MAX_POWER].Detectar_Clientes_Repetidos as

	DECLARE @pasaporte int

	DECLARE C_Repetidos CURSOR 
		LOCAL STATIC READ_ONLY FORWARD_ONLY
	FOR 
		(select Pasaporte from MAX_POWER.V_Clientes
			group by Pasaporte 
			having COUNT(Pasaporte) <> 1)

	OPEN C_Repetidos
	FETCH NEXT FROM C_Repetidos INTO @pasaporte
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		PRINT @pasaporte
		insert into MAX_POWER.Clientes_Repetidos (altura, apellido, calle, departamento, fecha_nacimiento, 
						habilitado, id_pais, id_tipo_identificacion, localidad, 
						mail, nombre, numero_identificacion, piso, telefono, controlado)
				select altura, apellido, calle, departamento, fecha_nacimiento, 
						habilitado, id_pais, id_tipo_identificacion, localidad, 
						mail, nombre, numero_identificacion, piso, telefono, 'N' as controlado
				from MAX_POWER.Cliente where numero_identificacion = @pasaporte 
		FETCH NEXT FROM C_Repetidos INTO @pasaporte
	END
	CLOSE C_Repetidos
	DEALLOCATE C_Repetidos
GO


print 'SP creados.'

/*
drop index IDX_Clientes on cliente
go
drop index IDX_reserva on reserva
go
drop index IDX_habitacion on Habitacion
go
drop index IDX_Hotel on Hotel
go
drop index IDX_habitacion_Reservadas on Habitacion_reservada
go

delete from reserva;
delete from cliente;
delete from Pais;
delete from Producto;
delete from tipo_Habitacion;
delete from Regimen;
delete from factura;
delete from Hotel;
delete from Habitacion;
delete from Habitacion_reservada;
delete from Producto_X_Habitacion_reservada;
*/

-- S E C U E N C I A 

EXEC [MAX_POWER].IMP_Nacionalidad 
GO
print 'Importado: Nacionalidades.'

EXEC [MAX_POWER].IMP_Cliente 
GO
create nonclustered index IDX_Clientes on MAX_POWER.Cliente(numero_identificacion, nombre);
print 'Importado: Cliente.'

EXEC [MAX_POWER].IMP_Consumible 
GO
print 'Importado: Consumible.'

EXEC [MAX_POWER].IMP_Tipo_Habitacion 
GO
print 'Importado: Tipo de Habitacion.'

EXEC [MAX_POWER].IMP_Regimen 
GO
print 'Importado: Regimen.'

EXEC [MAX_POWER].IMP_Reserva 
GO
create nonclustered index IDX_reserva on MAX_POWER.reserva(id_reserva);

print 'Importado: Reserva.'

EXEC [MAX_POWER].IMP_Factura 
GO
print 'Importado: Factura.'

EXEC [MAX_POWER].IMP_Hotel 
GO
create nonclustered index IDX_Hotel on MAX_POWER.Hotel(id_hotel);
print 'Importado: Hotel.'

EXEC [MAX_POWER].IMP_Habitacion 
GO

create nonclustered index IDX_habitacion on MAX_POWER.Habitacion(id_habitacion, numero, piso);
print 'Importado: Habitacion.'

insert into MAX_POWER.Tipo_documento (descripcion) values('DNI')
update MAX_POWER.Cliente set id_tipo_identificacion = 1

EXEC [MAX_POWER].IMP_Habitacion_reservada
GO
create nonclustered index IDX_habitacion_Reservadas on MAX_POWER.Habitacion_reservada(id_reserva, id_habitacion);
print 'Importado: Habitacion Reservada.'

EXEC [MAX_POWER].IMP_Habitacion_reservada_Cliente
GO
print 'Importado: Habitacion Reservada por Cliente.'

EXEC [MAX_POWER].IMP_Producto_Habitacion_reservada
GO
print 'Importado: Producto por Habitacion Reservada.'

print 'MIGRACION FINALIZADA.'


EXEC [MAX_POWER].Detectar_Clientes_Repetidos
GO
print 'Clientes duplicados detectados.'

print 'Comenzando migracion de SP de aplicaion'
GO

/*-----------------------------------------------------------STORED PROCEDURES PARA LA APP----------------------------------------------------------*/

CREATE PROCEDURE [MAX_POWER].roles_disponibles
AS SELECT * FROM MAX_POWER.Rol WHERE UPPER(habilitado) = 'S'
GO

CREATE PROCEDURE [MAX_POWER].Hotel_disponibles
AS SELECT * FROM MAX_POWER.Hotel
GO

CREATE PROCEDURE [MAX_POWER].documentos_disponibles
AS SELECT * FROM MAX_POWER.Tipo_documento
GO

CREATE PROCEDURE [MAX_POWER].funcionalidades_disponibles
AS SELECT * FROM MAX_POWER.Funcionalidad
GO

CREATE PROCEDURE [MAX_POWER].obtener_funcionalidades(@id_rol bigint)
AS SELECT fun.ID_FUNCIONALIDAD,fun.DESCRIPCION
FROM MAX_POWER.Funcionalidad_X_Rol FR
join MAX_POWER.Funcionalidad Fun on Fun.id_funcionalidad = FR.id_funcionalidad
WHERE fr.id_rol = @id_rol
GO

CREATE PROCEDURE [MAX_POWER].obtener_roles(@id_usuario bigint)
AS SELECT R.ID_ROL, R.NOMBRE
FROM MAX_POWER.Usuario_X_Rol UR
join MAX_POWER.Rol R on Rol.id_rol = UR.id_rol
WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].obtener_Hotel(@id_usuario bigint)
AS SELECT H.nombre,H.id_hotel
FROM MAX_POWER.Hotel_X_Empleado HE
join MAX_POWER.Hotel H on HE.id_hotel = H.id_hotel
WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].buscar_usuario_por_id(@id_usuario bigint)
AS SELECT * FROM MAX_POWER.Usuario WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].baja_usuario(@id_usuario bigint)
AS
UPDATE MAX_POWER.Usuario set habilitado = 'N' WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].insertar_usuario_x_rol(@id_usuario int, @id_rol bigint)
AS BEGIN
BEGIN TRY
INSERT INTO MAX_POWER.Usuario_X_Rol (id_usuario, id_rol) VALUES (@id_usuario, @id_rol)
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_usuario_x_rol(@id_usuario bigint, @id_rol bigint)
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

CREATE PROCEDURE [MAX_POWER].insertar_usuario_x_hotel(@id_usuario bigint, @id_hotel bigint)
AS BEGIN
BEGIN TRY
INSERT INTO MAX_POWER.Hotel_X_Empleado (id_usuario, id_hotel) VALUES (@id_usuario, @id_hotel)
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].borrar_usuario_x_hotel(@id_usuario bigint, @id_hotel bigint)
AS BEGIN
BEGIN TRY
DELETE FROM MAX_POWER.Hotel_X_Empleado 
WHERE id_usuario = @id_usuario
AND id_hotel = @id_hotel
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

CREATE PROCEDURE [MAX_POWER].buscar_cliente_por_id(@id_cliente bigint)
AS SELECT * FROM MAX_POWER.Cliente
WHERE id_cliente = @id_cliente
GO

CREATE PROCEDURE [MAX_POWER].chequear_login(@usuario varchar(50), @password varchar(50))
AS
BEGIN
DECLARE @pass_almacenado varchar(50)
DECLARE @intentos_fallidos int
IF not exists (SELECT * FROM MAX_POWER.Usuario WHERE Username = @usuario AND UPPER(habilitado)='S')
	RETURN (-2)
ELSE
	BEGIN
	SELECT @pass_almacenado=pw FROM MAX_POWER.Usuario WHERE Username = @usuario
	IF(@password!=@pass_almacenado)
		RETURN (-1)
	ELSE
		BEGIN
		SELECT @intentos_fallidos=intentos_fallidos FROM MAX_POWER.Usuario WHERE Username = @usuario
		IF(@intentos_fallidos>2)
			RETURN (-3)
		ELSE
			RETURN (0);
		END
	END
END
GO


CREATE PROCEDURE [MAX_POWER].usuario_para_login(@usuario varchar(50), @password varchar(50))
AS 
	SELECT * FROM MAX_POWER.Usuario WHERE Username = @usuario AND UPPER(habilitado)='S'



CREATE PROCEDURE [MAX_POWER].buscar_clientes(@nombre varchar(50), @apellido varchar(50), @email varchar(50), @nroId as bigint, @Id_tipo_identificación as bigint)
AS SELECT * FROM MAX_POWER.Cliente WHERE
upper(nombre) LIKE upper(@nombre)
AND upper(apellido) LIKE upper(@apellido)
AND upper(mail) LIKE upper(@email)
AND CAST(numero_identificacion as varchar(50)) LIKE (select case when @nroId = -1 then '%' else cast(@nroId as varchar(50)) end)
AND cast(id_tipo_identificacion as varchar(50)) like (select case when @Id_tipo_identificación = -1 then '%' else cast(@Id_tipo_identificación as varchar(50)) end )
GO

CREATE PROCEDURE [MAX_POWER].buscar_habitacion_por_id(@id_habitacion bigint)
AS SELECT * FROM MAX_POWER.Habitacion
WHERE id_habitacion = @id_habitacion
GO

CREATE PROCEDURE [MAX_POWER].baja_logica_habitacion(@id_habitacion bigint)
AS
UPDATE MAX_POWER.Habitacion set habilitada = 'N' WHERE id_habitacion = @id_habitacion
GO

CREATE PROCEDURE [MAX_POWER].regimenes_disponibes(@id_hotel bigint)
AS SELECT *
FROM MAX_POWER.Regimen_X_Hotel RH
join MAX_POWER.Regimen R on RH.id_regimen = R.id_regimen
WHERE RH.id_hotel = @id_hotel AND R.habilitado = 'S'
GO

CREATE PROCEDURE [MAX_POWER].tipos_habitacion_disponibles
AS SELECT * FROM MAX_POWER.Tipo_habitacion
GO

CREATE PROCEDURE [MAX_POWER].obtener_habitacion(@id_reserva bigint)
AS SELECT DISTINCT H.id_habitacion, H.id_tipo_habitacion, H.descripcion
FROM MAX_POWER.Habitacion_reservada HR
join MAX_POWER.Habitacion H on H.id_habitacion = HR.id_habitacion
WHERE HR.id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_no_show(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%no show') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_cliente(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%cliente') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_recepcion(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.reserva SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%personal de recepcion') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].productos_disponibles
AS SELECT DISTINCT id_producto, descripcion FROM MAX_POWER.Producto
GO

CREATE PROCEDURE [MAX_POWER].regimenes_disponibles(@id_hotel bigint)
AS SELECT * FROM MAX_POWER.Regimen r,MAX_POWER.Regimen_x_hotel rh WHERE r.id_regimen=rh.id_regimen AND rh-id_hotel=@id_hotel 
GO


create procedure [MAX_POWER].buscar_habitacion(@id_hotel bigint, @numero_habitacion bigint, @piso_habitacion bigint, @ubicacion_habitacion varchar(10), @id_tipo_habitacion bigint, @descripcion_habitacion varchar(50))
AS SELECT * FROM [MAX_POWER].Habitacion WHERE
CAST(id_hotel as varchar(50)) LIKE (select case when @id_hotel = -1 then '%' else cast(@id_hotel as varchar(50)) end)
AND CAST(numero as varchar(50)) LIKE (select case when @numero_habitacion = -1 then '%' else cast(@numero_habitacion as varchar(50)) end)
AND CAST(piso as varchar(50)) LIKE (select case when @piso_habitacion = -1 then '%' else cast(@piso_habitacion as varchar(50)) end)
AND UPPER(frente) LIKE UPPER(@ubicacion_habitacion)
AND CAST(id_tipo_habitacion as varchar(50)) LIKE (select case when @id_tipo_habitacion = -1 then '%' else cast(@id_tipo_habitacion as varchar(50)) end)
AND UPPER(descripcion) LIKE UPPER(@descripcion_habitacion)
GO

CREATE FUNCTION habitacion_libre(@id_habitacion bigint, @fecha_inicio datetime, @fecha_fin datetime) RETURNS INT AS
BEGIN
IF (SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].reserva R ON HR.id_reserva != R.id_reserva WHERE HR.id_habitacion = @id_habitacion AND 
	(@fecha_inicio BETWEEN R.fecha_inicio AND R.fecha_fin
	OR @fecha_fin BETWEEN R.fecha_inicio AND R.fecha_fin
	OR R.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin
	OR R.fecha_fin BETWEEN @fecha_inicio AND @fecha_fin)
	)>0
	RETURN 0
ELSE
	RETURN 1
END
go

create procedure [MAX_POWER].buscar_habitacion_reserva(@id_hotel bigint, @id_tipo_habitacion bigint,@cantidad int, @fecha_inicio datetime, @fecha_fin datetime)
AS SELECT TOP (@CANTIDAD) * FROM habitacion WHERE id_hotel=@id_hotel 
												AND id_tipo_habitacion=@id_tipo_habitacion 
												AND habitacion_libre(id_habitacion,	@fecha_inicio,@fecha_fin)=1
go
												
create procedure [MAX_POWER].buscar_Usuario(@nombre varchar(50), @apellido varchar(50), @email varchar(50), @username varchar(50), @id_rol bigint, @id_hotel bigint)
AS SELECT * FROM [MAX_POWER].Usuario WHERE
UPPER(nombre) LIKE UPPER(@nombre)
AND UPPER(apellido) LIKE UPPER(@apellido)
AND UPPER(mail) LIKE UPPER(@email)
AND UPPER(username) LIKE UPPER(@username)
AND (SELECT id_usuario FROM [MAX_POWER].Usuario_X_Rol WHERE CAST(id_rol as varchar(50)) LIKE (select case when @id_rol = -1 then '%' else cast(@id_rol as varchar(50)) end)) = id_usuario
AND (SELECT id_usuario FROM [MAX_POWER].Hotel_X_Empleado WHERE CAST(id_hotel as varchar(50)) LIKE (select case when @id_hotel = -1 then '%' else cast(@id_hotel as varchar(50)) end)) = id_usuario
GO

create procedure [MAX_POWER].insertar_usuario(@username varchar(50), @password varchar(50), @nombre varchar(50), @apellido varchar(50), @Id_tipo_dni bigint, @dni varchar(50), @mail varchar(50), @telefono varchar(50), @direccion varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
INSERT INTO [MAX_POWER].Usuario (username, pw, nombre, apellido, tipo_documento_id, numero_documento, mail, telefono, direccion, fecha_nacimiento) VALUES (@username, @password, @nombre, @apellido, @Id_tipo_dni, @dni, @mail, @telefono, @direccion, @fechaNacimiento)
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -4
END CATCH
END
GO

create procedure [MAX_POWER].actualizar_usuario(@id bigint, @username varchar(50), @password varchar(50), @nombre varchar(50), @apellido varchar(50), @Id_tipo_dni bigint, @dni varchar(50), @mail varchar(50), @telefono varchar(50), @direccion varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
UPDATE [MAX_POWER].Usuario SET
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
WHERE id_usuario = @id
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -4
END CATCH
END
GO

create procedure [MAX_POWER].insertar_cliente(@nombre varchar(50), @apellido varchar(50), @id_tipo_identificacion bigint, @nroId bigint, @mail varchar(50), @telefono varchar(50), @calle varchar(50), @localidad varchar(50), @fechaNacimiento datetime)
AS BEGIN
BEGIN TRY
INSERT INTO [MAX_POWER].Cliente (nombre, apellido, id_tipo_identificacion, numero_identificacion, mail, telefono, calle, localidad, fecha_nacimiento, habilitado) VALUES (@nombre, @apellido, @id_tipo_identificacion, @nroId, @mail, @telefono, @calle, @localidad, @fechaNacimiento, 1)
END TRY
BEGIN CATCH
IF (SELECT COUNT (mail) FROM [MAX_POWER].Usuario WHERE mail = @mail) > 0
	RETURN -5
IF @@ERROR = 2627
    RETURN -6
END CATCH
END
GO

create procedure [MAX_POWER].actualizar_cliente(@id bigint, @nombre varchar(50), @apellido varchar(50), @id_tipo_identificacion bigint, @nroId bigint, @mail varchar(50), @telefono varchar(50), @calle varchar(50), @localidad varchar(50), @fechaNacimiento datetime, @habilitado char(1))
AS BEGIN
BEGIN TRY
UPDATE [MAX_POWER].Cliente SET
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
IF (SELECT COUNT (mail) FROM [MAX_POWER].Usuario WHERE mail = @mail) > 0
	RETURN -5
IF @@ERROR = 2627
    RETURN -6
END CATCH
END
GO

create procedure [MAX_POWER].insertar_reserva(@id_regimen bigint, @fecha_inicio datetime, @fecha_fin datetime, @id_cliente bigint, @fecha_realizacion datetime)
AS BEGIN
BEGIN TRY
INSERT INTO [MAX_POWER].reserva (id_regimen, fecha_inicio, fecha_fin, id_cliente_titular, fecha_realizacion, id_estado) VALUES (@id_regimen, @fecha_inicio, @fecha_fin, @id_cliente, @fecha_realizacion, (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%correcta'))
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure [MAX_POWER].borrar_habitacion_reservada(@id_reserva bigint, @id_habitacion bigint)
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

create procedure [MAX_POWER].insertar_modificacion(@fecha datetime, @id_reserva bigint, @ide_usuario bigint, @motivo varchar(50), @tipo bigint)
AS BEGIN
BEGIN TRY
IF @tipo = 0
	INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, @tipo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%modifica%'))
IF @tipo = 1
	INSERT INTO [MAX_POWER].Modificacion (fecha, id_reserva, id_usuario, motivo, id_tipo_modificacion, id_tipo_modificacion) VALUES (@fecha, @id_reserva, @ide_usuario, @motivo, @tipo, (SELECT id_tipo_modificacion FROM [MAX_POWER].Tipo_modificacion WHERE descripcion LIKE '%cancela%'))
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure [MAX_POWER].buscar_rol_por_id(@id bigint)
AS SELECT * FROM [MAX_POWER].Rol WHERE id_rol = @id
GO

create procedure [MAX_POWER].baja_rol(@id bigint)
AS
UPDATE [MAX_POWER].Rol SET habilitado = 'N' WHERE id_rol = @id
GO

create procedure [MAX_POWER].insertar_cliente_x_habitacion(@id_habitacion_reservada bigint, @id_cliente bigint)
AS BEGIN
BEGIN TRY
INSERT INTO [MAX_POWER].Habitacion_reservada_X_Cliente (id_habitacion_reservada, id_cliente) VALUES (@id_habitacion_reservada, @id_cliente)
END TRY
BEGIN CATCH
IF @@ERROR = 2627
    RETURN -9
END CATCH
END
GO

create procedure [MAX_POWER].registrar_ingreso_reserva(@id_reserva bigint)
AS
UPDATE [MAX_POWER].reserva SET id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingresa%') WHERE id_reserva = @id_reserva
GO

create procedure [MAX_POWER].insertar_producto_x_habitacion_reservada(@id_reserva bigint,@id_habitacion bigint, @id_producto bigint, @cantidad bigint)
AS BEGIN
IF (SELECT COUNT (*) FROM [MAX_POWER].Producto_X_Habitacion_reservada ph, MAX_POWER.Habitacion_reservada hr 
	WHERE  hr.id_habitacion=@id_habitacion AND hr.id_reserva=@id_reserva and ph.id_habitacion_reservada =hr.id_habitacion_reservada and  ph.id_producto = @id_producto) > 0
	UPDATE [MAX_POWER].Producto_X_Habitacion_reservada SET cantidad = cantidad + @cantidad WHERE id_habitacion_reservada = @id_reserva AND id_producto = @id_producto
ELSE
INSERT INTO [MAX_POWER].Producto_X_Habitacion_reservada (id_habitacion_reservada, id_producto, cantidad) VALUES (@id_reserva, @id_producto, @cantidad)
END
GO

create procedure [MAX_POWER].borrar_producto_x_habitacion_reservada(@id_reserva bigint, @id_producto bigint)
AS BEGIN
delete FROM [MAX_POWER].Producto_X_Habitacion_reservada 
	WHERE id_producto = @id_producto and id_habitacion_reservada in (SELECT id_habitacion_reservada FROM [MAX_POWER].Habitacion_reservada  
																		WHERE id_reserva=@id_reserva)
END
GO

create procedure [MAX_POWER].facturar(@id_reserva bigint, @fecha_salida datetime, @modo_pago varchar(50),@total decimal)
AS BEGIN
BEGIN TRY
UPDATE [MAX_POWER].reserva SET
id_estado = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion = 'facturada'),
fecha_salida = @fecha_salida
WHERE id_reserva = @id_reserva
UPDATE [MAX_POWER].Factura SET id_medoto_pago = (SELECT id_metodo_pago FROM [MAX_POWER].Metodo_pago WHERE descripcion LIKE @modo_pago) WHERE id_reserva = @id_reserva
UPDATE [MAX_POWER].Factura SET total = @total WHERE id_reserva = @id_reserva
END TRY
BEGIN CATCH
--raiseError
END CATCH
END
GO

create procedure total_factura(@id_factura bigint)
AS SELECT DISTINCT total FROM [MAX_POWER].Factura WHERE id_factura = @id_factura
GO

create procedure insertar_habitacion_reservada(@id_reserva bigint, @id_habitacion bigint)
AS BEGIN
DECLARE @fechaReservaInicial datetime
SET @fechaReservaInicial = (SELECT fecha_inicio FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)
DECLARE @fechaReservaFinal datetime
SET @fechaReservaFinal = (SELECT fecha_fin FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)
IF (habitacion_libre(@id_habitacion,@fechaReservaInicial,@fechaReservaFinal)=0)
	RETURN -7
ELSE
	INSERT INTO [MAX_POWER].Habitacion_reservada (id_reserva, id_habitacion) VALUES (@id_reserva, @id_habitacion)
END
GO

create procedure reserva_editable(@id_reserva bigint)
AS IF (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%correc%') OR id_estado = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%modific%')) > 0
	RETURN 1
IF ((SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%cancela%') OR id_estado  = (SELECT id_Estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)=0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND fecha_fin = DATEADD(day,+1,getdate()))>0)
	RETURN 0
GO

create procedure buscar_roles(@nombre varchar(50), @estado char(1))
AS SELECT * FROM [MAX_POWER].Rol WHERE
UPPER(nombre) LIKE UPPER(@nombre)
AND UPPER(habilitado) LIKE UPPER(@estado)
GO

create procedure habitacion_de_reserva(@id_reserva bigint) as
select hc.id_habitacion_reservada as id, h.numero as numero, COUNT(hc.id_cliente) as clientes 
from MAX_POWER.Habitacion_reservada hr,MAX_POWER.Habitacion h, MAX_POWER.Habitacion_reservada_x_cliente hc
where hr.id_habitacion = h.id_habitacion AND hr.id_habitacion_reservada=hc.id_habitacion_reservada and hr.id_reserva=@id_reserva
group by hc.id_habitacion_reservada, h.numero


create procedure cambiar_habitacion(@id_habitacion_reservada bigint, @numero bigint)
AS DECLARE @id_tipo_habitacion_anterior bigint
DECLARE @id_hotel_habitacion_anterior bigint
SET @id_tipo_habitacion_anterior = (SELECT H.id_tipo_habitacion FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_habitacion_reservada = @id_habitacion_reservada)
SET @id_hotel_habitacion_anterior = (SELECT H.id_hotel FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_habitacion_reservada = @id_habitacion_reservada)
IF (SELECT COUNT (*) FROM [MAX_POWER].Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) > 0
	UPDATE [MAX_POWER].Habitacion_reservada SET id_habitacion = (SELECT TOP 1 * FROM [MAX_POWER].Habitacion WHERE id_hotel = @id_hotel_habitacion_anterior AND id_tipo_habitacion = @id_tipo_habitacion_anterior) WHERE id_habitacion_reservada = @id_habitacion_reservada
ELSE
	RETURN -8
GO

create procedure reserva_ingresable(@id_reserva bigint, @id_hotel bigint)
AS IF (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%correc%') OR id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%modific%'))>0
	RETURN 1
IF ((SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%cancel%') OR id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_reserva = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND fecha_inicio < getdate())>0)
	RETURN 0
GO

create procedure reserva_egresable(@id_reserva bigint, @id_hotel bigint)
AS IF (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%ingres%'))>0
	RETURN 1
IF ((SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva AND id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion NOT LIKE '%ingres%'))>0 OR (SELECT COUNT (*) FROM [MAX_POWER].Habitacion_reservada HR JOIN [MAX_POWER].Habitacion H ON H.id_habitacion = HR.id_habitacion WHERE HR.id_reserva = @id_reserva AND H.id_hotel != @id_hotel)=0 OR (SELECT COUNT (*) FROM [MAX_POWER].reserva WHERE id_reserva = @id_reserva)=0)
	RETURN 0
GO

create procedure actualizar_reserva(@id_reserva bigint, @id_regimen bigint, @fecha_inicio datetime, @fecha_fin datetime)
AS
UPDATE [MAX_POWER].reserva SET
id_estado = (SELECT id_estado FROM [MAX_POWER].Estado WHERE descripcion LIKE '%modific%'),
fecha_inicio = @fecha_inicio,
fecha_fin = @fecha_fin,
id_regimen = @id_regimen
WHERE id_reserva = @id_reserva
GO

create procedure buscar_reserva_por_id(@id_reserva bigint) as
SELECT rs.id_reserva,RS.FECHA_FIN AS fecha_fin, RS.FECHA_INICIO as fecha_inicio, H.id_hotel as id_hotel_habitacion, H.NOMBRE as nombre_hotel_habitacion ,RG.ID_REGIMEN as id_regimen_habitacion, RG.DESCRIPCION as descripcion_regimen_habitacion
	FROM MAX_POWER.reserva RS, MAX_POWER.Hotel H, MAX_POWER.REGIMEN RG,MAX_POWER.HABITACION HAB, MAX_POWER.Habitacion_reservada HRS
	WHERE HRS.id_reserva=RS.ID_RESERVA AND HAB.ID_HABITACION=HRS.id_habitacion AND HAB.ID_HOTEL=H.id_hotel AND RG.ID_REGIMEN=RS.ID_REGIMEN and rs.id_reserva=@id_reserva

create procedure consumibles_reserva(@id_reserva bigint) as
select ph.id_producto as id, p.descripcion as descripcion, H.numero as numero_habitacion, ph.cantidad as cantidad,p.precio as precio_unitario, ph.cantidad*p.precio as precio_total
from MAX_POWER.producto_x_Habitacion_reservada ph,MAX_POWER.producto p, MAX_POWER.Habitacion_reservada hr, MAX_POWER.habitacion h
where ph.id_producto=p.id_producto AND hr.id_habitacion_reservada=ph.id_habitacion_reservada and hr.id_habitacion=h.id_habitacion and hr.id_reserva=@id_reserva

create function max_power.precio_dia(@id_reserva bigint, @id_regimen bigint) returns decimal as
begin
declare @precio decimal 
select @precio=SUM(th.porcentual*r.precio_base) from max_power.Habitacion_reservada hr, max_power.regimen r, max_power.habitacion h, max_power.tipo_habitacion th
where @id_reserva=hr.id_reserva and hr.id_habitacion=h.id_habitacion and h.id_tipo_habitacion=th.id_tipo_habitacion and r.id_regimen = @id_regimen
return @precio
end

create procedure items_factura(@id_factura bigint)as
select p.id_producto as id, p.descripcion as descripcion, sum(ph.cantidad) as cantidad, p.precio as precio_unitario, sum(ph.cantidad*p.precio) as precio_total
from MAX_POWER.producto_x_Habitacion_reservada ph,MAX_POWER.producto p
where ph.id_producto=p.id_producto  and ph.id_factura =@id_factura
group by p.id_producto,p.descripcion,p.precio
union
select 0, 'Dias alojado', DATEDIFF(day,r.fecha_inicio, r.fecha_salida), max_power.precio_dia(r.id_reserva,r.id_regimen), DATEDIFF(day,r.fecha_inicio, r.fecha_salida)*max_power.precio_dia(r.id_reserva,r.id_regimen)
from Max_power.factura f,max_power.reserva r 
where f.id_reserva=r.id_reserva and f.id_factura=@id_factura
union
select 0, 'Dias no alojado', DATEDIFF(day,r.fecha_salida, r.fecha_fin), max_power.precio_dia(r.id_reserva,r.id_regimen), DATEDIFF(day,r.fecha_salida, r.fecha_fin)*max_power.precio_dia(r.id_reserva,r.id_regimen)
from Max_power.factura f,max_power.reserva r 
where f.id_reserva=r.id_reserva and f.id_factura=@id_factura

create procedure max_power.tiene_all_inclusive(@id_reserva)as
begin
declare @regimen varchar(50)
select @regimen=rg.descripcion from max_power.regimen rg, max_power.reserva rs
where rs.id_reserva=@id_reserva and rg.id_regimen=rs.Id_regimen
if(@regimen like '%all%inclusive%')
	return 1
else 
	return 0
end




print 'Finalizo la importacion de SP propios de la aplicacion.'

