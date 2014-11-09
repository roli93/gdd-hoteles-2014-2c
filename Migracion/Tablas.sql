/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Factura_MetodoPago]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_MetodoPago]
GO
/****** Object:  ForeignKey [FK_Factura_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Reservas]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hoteles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
/****** Object:  ForeignKey [FK_Hoteles_Paises]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hoteles]'))
ALTER TABLE [dbo].[Hoteles] DROP CONSTRAINT [FK_Hoteles_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Reservas]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuarios]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]'))
ALTER TABLE [dbo].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hoteles]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Factura]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Producto]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_Reservas_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Cliente]
GO
/****** Object:  ForeignKey [FK_Reservas_Estado]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Estado]
GO
/****** Object:  ForeignKey [FK_Reservas_Regimen]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
/****** Object:  ForeignKey [FK_Usuarios_Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Tipo_documento]
GO
/****** Object:  Table [dbo].[HabitacionReservada_X_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[HabitacionReservada_X_Cliente]
GO
/****** Object:  Table [dbo].[Producto_X_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]') AND type in (N'U'))
DROP TABLE [dbo].[Producto_X_HabitacionReservada]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_MetodoPago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]') AND type in (N'U'))
DROP TABLE [dbo].[HabitacionReservada]
GO
/****** Object:  Table [dbo].[Modificacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modificacion]') AND type in (N'U'))
DROP TABLE [dbo].[Modificacion]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Regimen_X_Hotel]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]') AND type in (N'U'))
DROP TABLE [dbo].[Regimen_X_Hotel]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] DROP CONSTRAINT [FK_Reservas_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservas]') AND type in (N'U'))
DROP TABLE [dbo].[Reservas]
GO
/****** Object:  Table [dbo].[Hotel_X_Empleado]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Hotel_X_Empleado]
GO
/****** Object:  Table [dbo].[Usuario_X_Rol]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario_X_Rol]
GO
/****** Object:  Table [dbo].[Periodo_Cierre]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]'))
ALTER TABLE [dbo].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]') AND type in (N'U'))
DROP TABLE [dbo].[Periodo_Cierre]
GO
/****** Object:  Table [dbo].[Funcionalidad_X_Rol]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]') AND type in (N'U'))
DROP TABLE [dbo].[Funcionalidad_X_Rol]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hoteles]'))
ALTER TABLE [dbo].[Hoteles] DROP CONSTRAINT [FK_Hoteles_Paises]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hoteles]') AND type in (N'U'))
DROP TABLE [dbo].[Hoteles]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Funcionalidad]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionalidad]') AND type in (N'U'))
DROP TABLE [dbo].[Funcionalidad]
GO
/****** Object:  Table [dbo].[MetodoPago]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MetodoPago]') AND type in (N'U'))
DROP TABLE [dbo].[MetodoPago]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_documento]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_documento]
GO
/****** Object:  Table [dbo].[Tipo_habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_habitacion]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_habitacion]
GO
/****** Object:  Table [dbo].[Tipo_modificacion]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_modificacion]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_modificacion]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paises]') AND type in (N'U'))
DROP TABLE [dbo].[Paises]
GO
/****** Object:  Table [dbo].[Regimen]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regimen]') AND type in (N'U'))
DROP TABLE [dbo].[Regimen]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/09/2014 11:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
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
/****** Object:  Table [dbo].[Regimen]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regimen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Regimen](
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
/****** Object:  Table [dbo].[Paises]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paises]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paises](
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
/****** Object:  Table [dbo].[Tipo_modificacion]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_modificacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_modificacion](
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
/****** Object:  Table [dbo].[Tipo_habitacion]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_habitacion](
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
/****** Object:  Table [dbo].[Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_documento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_documento](
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[id_rol] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[habilitado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodoPago]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MetodoPago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MetodoPago](
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
/****** Object:  Table [dbo].[Funcionalidad]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionalidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Funcionalidad](
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
/****** Object:  Table [dbo].[Estado]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estado](
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
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
/****** Object:  Table [dbo].[Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hoteles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Hoteles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK__Hoteles__3213E83F30F848ED] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuarios](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Nombre] [bigint] NOT NULL,
	[Apellido] [bigint] NOT NULL,
	[Estado] [int] NULL,
	[tipo_documento_id] [bigint] NOT NULL,
	[numero_documento] [varchar](50) NOT NULL,
	[mail] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[habilitado] [int] NOT NULL,
	[intentos_fallidos] [int] NOT NULL,
 CONSTRAINT [PK__Usuarios__3213E83F21B6055D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionalidad_X_Rol]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Funcionalidad_X_Rol](
	[id_rol] [bigint] NOT NULL,
	[id_funcionalidad] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Periodo_Cierre]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Periodo_Cierre](
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
/****** Object:  Table [dbo].[Usuario_X_Rol]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario_X_Rol](
	[id_usuario] [bigint] NOT NULL,
	[id_rol] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Hotel_X_Empleado]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Hotel_X_Empleado](
	[usuario_id] [bigint] NULL,
	[hotel_id] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reservas](
	[id_reserva] [bigint] NOT NULL,
	[fecha_realizacion] [date] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
	[id_estado] [bigint] NULL,
	[id_cliente_titular] [bigint] NOT NULL,
	[id_regimen] [bigint] NOT NULL,
 CONSTRAINT [PK__Reservas__3213E83F4BAC3F29] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Regimen_X_Hotel]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Regimen_X_Hotel](
	[id_hotel] [bigint] NOT NULL,
	[id_regimen] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Habitacion](
	[id_habitacion] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[id_tipo_habitacion] [bigint] NOT NULL,
	[numero] [bigint] NOT NULL,
	[piso] [int] NOT NULL,
	[interna] [char](1) NULL,
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
/****** Object:  Table [dbo].[Modificacion]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modificacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Modificacion](
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
/****** Object:  Table [dbo].[HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HabitacionReservada](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reserva_id] [bigint] NOT NULL,
	[habitacion_id] [bigint] NOT NULL,
 CONSTRAINT [PK__Habitaci__3213E83F47DBAE45] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Factura](
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
/****** Object:  Table [dbo].[Producto_X_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto_X_HabitacionReservada](
	[id_habitacion_reservada] [bigint] NOT NULL,
	[id_producto] [bigint] NOT NULL,
	[cantidad] [bigint] NOT NULL,
	[id_factura] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HabitacionReservada_X_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HabitacionReservada_X_Cliente](
	[habitacion_reservada_id] [bigint] NOT NULL,
	[cliente_id] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Paises] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tipo_documento] FOREIGN KEY([id_tipo_identificacion])
REFERENCES [dbo].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Factura_MetodoPago]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_MetodoPago] FOREIGN KEY([id_medoto_pago])
REFERENCES [dbo].[MetodoPago] ([id_metodo_pago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_MetodoPago]
GO
/****** Object:  ForeignKey [FK_Factura_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Reservas] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Reservas]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad] FOREIGN KEY([id_funcionalidad])
REFERENCES [dbo].[Funcionalidad] ([id_funcionalidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidad_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidad_X_Rol]'))
ALTER TABLE [dbo].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Hoteles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipo_habitacion] FOREIGN KEY([id_tipo_habitacion])
REFERENCES [dbo].[Tipo_habitacion] ([id_tipo_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Habitacion]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_Habitacion] FOREIGN KEY([habitacion_id])
REFERENCES [dbo].[Habitacion] ([id_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] CHECK CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_Reservas] FOREIGN KEY([reserva_id])
REFERENCES [dbo].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada]'))
ALTER TABLE [dbo].[HabitacionReservada] CHECK CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] CHECK CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada] FOREIGN KEY([habitacion_reservada_id])
REFERENCES [dbo].[HabitacionReservada] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [dbo].[HabitacionReservada_X_Cliente] CHECK CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Hoteles] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel_X_Empleado]'))
ALTER TABLE [dbo].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
/****** Object:  ForeignKey [FK_Hoteles_Paises]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hoteles]'))
ALTER TABLE [dbo].[Hoteles]  WITH CHECK ADD  CONSTRAINT [FK_Hoteles_Paises] FOREIGN KEY([pais_id])
REFERENCES [dbo].[Paises] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hoteles]'))
ALTER TABLE [dbo].[Hoteles] CHECK CONSTRAINT [FK_Hoteles_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_Reservas]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Reservas] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Reservas]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Tipo_modificacion] FOREIGN KEY([id_tipo_modificacion])
REFERENCES [dbo].[Tipo_modificacion] ([id_tipo_modificacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modificacion]'))
ALTER TABLE [dbo].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Usuarios]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]'))
ALTER TABLE [dbo].[Periodo_Cierre]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Cierre_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Periodo_Cierre]'))
ALTER TABLE [dbo].[Periodo_Cierre] CHECK CONSTRAINT [FK_Periodo_Cierre_Hoteles]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Factura]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[Factura] ([id_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_HabitacionReservada]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [dbo].[HabitacionReservada] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Producto]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Producto] ([id_producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto_X_HabitacionReservada]'))
ALTER TABLE [dbo].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hoteles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [dbo].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Regimen_X_Hotel]'))
ALTER TABLE [dbo].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_Reservas_Cliente]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Cliente] FOREIGN KEY([id_cliente_titular])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Cliente]
GO
/****** Object:  ForeignKey [FK_Reservas_Estado]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Estado]
GO
/****** Object:  ForeignKey [FK_Reservas_Regimen]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [dbo].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservas]'))
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuarios]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_X_Rol]'))
ALTER TABLE [dbo].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
/****** Object:  ForeignKey [FK_Usuarios_Tipo_documento]    Script Date: 11/09/2014 11:01:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipo_documento] FOREIGN KEY([tipo_documento_id])
REFERENCES [dbo].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipo_documento]
GO
