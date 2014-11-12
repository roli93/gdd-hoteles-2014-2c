/* TABLAS */

/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Paises]
GO
/****** Object:  ForeignKey [FK_Cliente_Tipo_documento]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente] DROP CONSTRAINT [FK_Cliente_Tipo_documento]
GO
/****** Object:  ForeignKey [FK_Factura_MetodoPago]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_MetodoPago]
GO
/****** Object:  ForeignKey [FK_Factura_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Reservas]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Funcionalidad]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Funcionalidad]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Funcionalidad]
GO
/****** Object:  ForeignKey [FK_Funcionalidad_X_Rol_Roles]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] DROP CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hoteles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_HabitacionReservada]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuarios]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
/****** Object:  ForeignKey [FK_Hoteles_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]'))
ALTER TABLE [MAX_POWER].[Hoteles] DROP CONSTRAINT [FK_Hoteles_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Reservas]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuarios]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuarios]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hoteles]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hoteles]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Factura]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_HabitacionReservada]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Producto]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hoteles]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_Reservas_Cliente]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Cliente]
GO
/****** Object:  ForeignKey [FK_Reservas_Estado]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Estado]
GO
/****** Object:  ForeignKey [FK_Reservas_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuarios]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
/****** Object:  ForeignKey [FK_Usuarios_Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]'))
ALTER TABLE [MAX_POWER].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Tipo_documento]
GO
/****** Object:  Table [MAX_POWER].[HabitacionReservada_X_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] DROP CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[HabitacionReservada_X_Cliente]
GO
/****** Object:  Table [MAX_POWER].[Producto_X_HabitacionReservada]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] DROP CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Producto_X_HabitacionReservada]
GO
/****** Object:  Table [MAX_POWER].[Factura]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_MetodoPago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] DROP CONSTRAINT [FK_Factura_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Factura]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Factura]
GO
/****** Object:  Table [MAX_POWER].[HabitacionReservada]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] DROP CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[HabitacionReservada]
GO
/****** Object:  Table [MAX_POWER].[Modificacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Reservas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] DROP CONSTRAINT [FK_Modificacion_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Modificacion]
GO
/****** Object:  Table [MAX_POWER].[Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] DROP CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Habitacion]
GO
/****** Object:  Table [MAX_POWER].[Regimen_X_Hotel]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] DROP CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Regimen_X_Hotel]
GO
/****** Object:  Table [MAX_POWER].[Reservas]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] DROP CONSTRAINT [FK_Reservas_Regimen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Reservas]
GO
/****** Object:  Table [MAX_POWER].[Hotel_X_Empleado]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] DROP CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hotel_X_Empleado]
GO
/****** Object:  Table [MAX_POWER].[Usuario_X_Rol]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] DROP CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuario_X_Rol]
GO
/****** Object:  Table [MAX_POWER].[Periodo_Cierre]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] DROP CONSTRAINT [FK_Periodo_Cierre_Hoteles]
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
/****** Object:  Table [MAX_POWER].[Usuarios]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]'))
ALTER TABLE [MAX_POWER].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Tipo_documento]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Usuarios]
GO
/****** Object:  Table [MAX_POWER].[Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]'))
ALTER TABLE [MAX_POWER].[Hoteles] DROP CONSTRAINT [FK_Hoteles_Paises]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Hoteles]
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
/****** Object:  Table [MAX_POWER].[MetodoPago]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[MetodoPago]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[MetodoPago]
GO
/****** Object:  Table [MAX_POWER].[Roles]    Script Date: 11/11/2014 21:15:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Roles]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Roles]
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
/****** Object:  Table [MAX_POWER].[Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Paises]') AND type in (N'U'))
DROP TABLE [MAX_POWER].[Paises]
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
/****** Object:  Table [MAX_POWER].[Paises]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Paises]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Paises](
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
/****** Object:  Table [MAX_POWER].[Roles]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Roles](
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
/****** Object:  Table [MAX_POWER].[MetodoPago]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[MetodoPago]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[MetodoPago](
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
/****** Object:  Table [MAX_POWER].[Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Hoteles](
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
/****** Object:  Table [MAX_POWER].[Usuarios]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Usuarios](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
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
 CONSTRAINT [PK__Usuarios__3213E83F21B6055D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
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
	[usuario_id] [bigint] NOT NULL,
	[hotel_id] [bigint] NOT NULL,
 CONSTRAINT [PK_Hotel_X_Empleado] PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC,
	[hotel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[Reservas]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Reservas](
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
	[ubicacion] [varchar](10) NULL,
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
/****** Object:  Table [MAX_POWER].[HabitacionReservada]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[HabitacionReservada](
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
/****** Object:  Table [MAX_POWER].[Producto_X_HabitacionReservada]    Script Date: 11/11/2014 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[Producto_X_HabitacionReservada](
	[id_habitacion_reservada] [bigint] NOT NULL,
	[id_producto] [bigint] NOT NULL,
	[cantidad] [bigint] NOT NULL,
	[id_factura] [bigint] NOT NULL,
 CONSTRAINT [PK_Producto_X_HabitacionReservada] PRIMARY KEY CLUSTERED 
(
	[id_habitacion_reservada] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [MAX_POWER].[HabitacionReservada_X_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [MAX_POWER].[HabitacionReservada_X_Cliente](
	[habitacion_reservada_id] [bigint] NOT NULL,
	[cliente_id] [bigint] NOT NULL,
 CONSTRAINT [PK_HabitacionReservada_X_Cliente] PRIMARY KEY CLUSTERED 
(
	[habitacion_reservada_id] ASC,
	[cliente_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_Cliente_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Cliente_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Cliente]'))
ALTER TABLE [MAX_POWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Paises] FOREIGN KEY([id_pais])
REFERENCES [MAX_POWER].[Paises] ([id_pais])
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
/****** Object:  ForeignKey [FK_Factura_MetodoPago]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_MetodoPago] FOREIGN KEY([id_medoto_pago])
REFERENCES [MAX_POWER].[MetodoPago] ([id_metodo_pago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_MetodoPago]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_MetodoPago]
GO
/****** Object:  ForeignKey [FK_Factura_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Reservas] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Factura_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Factura]'))
ALTER TABLE [MAX_POWER].[Factura] CHECK CONSTRAINT [FK_Factura_Reservas]
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
REFERENCES [MAX_POWER].[Roles] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Funcionalidad_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Funcionalidad_X_Rol]'))
ALTER TABLE [MAX_POWER].[Funcionalidad_X_Rol] CHECK CONSTRAINT [FK_Funcionalidad_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Hoteles]
GO
/****** Object:  ForeignKey [FK_Habitacion_Tipo_habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipo_habitacion] FOREIGN KEY([id_tipo_habitacion])
REFERENCES [MAX_POWER].[Tipo_habitacion] ([id_tipo_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Habitacion_Tipo_habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Habitacion]'))
ALTER TABLE [MAX_POWER].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipo_habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Habitacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_Habitacion] FOREIGN KEY([habitacion_id])
REFERENCES [MAX_POWER].[Habitacion] ([id_habitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Habitacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] CHECK CONSTRAINT [FK_HabitacionReservada_Habitacion]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_Reservas] FOREIGN KEY([reserva_id])
REFERENCES [MAX_POWER].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada] CHECK CONSTRAINT [FK_HabitacionReservada_Reservas]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_Cliente]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente] FOREIGN KEY([cliente_id])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] CHECK CONSTRAINT [FK_HabitacionReservada_X_Cliente_Cliente]
GO
/****** Object:  ForeignKey [FK_HabitacionReservada_X_Cliente_HabitacionReservada]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada] FOREIGN KEY([habitacion_reservada_id])
REFERENCES [MAX_POWER].[HabitacionReservada] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_HabitacionReservada_X_Cliente_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[HabitacionReservada_X_Cliente]'))
ALTER TABLE [MAX_POWER].[HabitacionReservada_X_Cliente] CHECK CONSTRAINT [FK_HabitacionReservada_X_Cliente_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Hoteles]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Hoteles] FOREIGN KEY([hotel_id])
REFERENCES [MAX_POWER].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Hoteles]
GO
/****** Object:  ForeignKey [FK_Hotel_X_Empleado_Usuarios]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_X_Empleado_Usuarios] FOREIGN KEY([usuario_id])
REFERENCES [MAX_POWER].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hotel_X_Empleado_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hotel_X_Empleado]'))
ALTER TABLE [MAX_POWER].[Hotel_X_Empleado] CHECK CONSTRAINT [FK_Hotel_X_Empleado_Usuarios]
GO
/****** Object:  ForeignKey [FK_Hoteles_Paises]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]'))
ALTER TABLE [MAX_POWER].[Hoteles]  WITH CHECK ADD  CONSTRAINT [FK_Hoteles_Paises] FOREIGN KEY([pais_id])
REFERENCES [MAX_POWER].[Paises] ([id_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Hoteles_Paises]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Hoteles]'))
ALTER TABLE [MAX_POWER].[Hoteles] CHECK CONSTRAINT [FK_Hoteles_Paises]
GO
/****** Object:  ForeignKey [FK_Modificacion_Reservas]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Reservas] FOREIGN KEY([id_reserva])
REFERENCES [MAX_POWER].[Reservas] ([id_reserva])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Reservas]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Reservas]
GO
/****** Object:  ForeignKey [FK_Modificacion_Tipo_modificacion]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Tipo_modificacion] FOREIGN KEY([id_tipo_modificacion])
REFERENCES [MAX_POWER].[Tipo_modificacion] ([id_tipo_modificacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Tipo_modificacion]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Tipo_modificacion]
GO
/****** Object:  ForeignKey [FK_Modificacion_Usuarios]    Script Date: 11/11/2014 21:15:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion]  WITH CHECK ADD  CONSTRAINT [FK_Modificacion_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Modificacion_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Modificacion]'))
ALTER TABLE [MAX_POWER].[Modificacion] CHECK CONSTRAINT [FK_Modificacion_Usuarios]
GO
/****** Object:  ForeignKey [FK_Periodo_Cierre_Hoteles]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Cierre_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Periodo_Cierre_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Periodo_Cierre]'))
ALTER TABLE [MAX_POWER].[Periodo_Cierre] CHECK CONSTRAINT [FK_Periodo_Cierre_Hoteles]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Factura]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura] FOREIGN KEY([id_factura])
REFERENCES [MAX_POWER].[Factura] ([id_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Factura]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_Factura]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_HabitacionReservada]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada] FOREIGN KEY([id_habitacion_reservada])
REFERENCES [MAX_POWER].[HabitacionReservada] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_HabitacionReservada]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_HabitacionReservada]
GO
/****** Object:  ForeignKey [FK_Producto_X_HabitacionReservada_Producto]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada]  WITH CHECK ADD  CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto] FOREIGN KEY([id_producto])
REFERENCES [MAX_POWER].[Producto] ([id_producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Producto_X_HabitacionReservada_Producto]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Producto_X_HabitacionReservada]'))
ALTER TABLE [MAX_POWER].[Producto_X_HabitacionReservada] CHECK CONSTRAINT [FK_Producto_X_HabitacionReservada_Producto]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Hoteles]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Hoteles] FOREIGN KEY([id_hotel])
REFERENCES [MAX_POWER].[Hoteles] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Hoteles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Hoteles]
GO
/****** Object:  ForeignKey [FK_Regimen_X_Hotel_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Regimen_X_Hotel_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Regimen_X_Hotel_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Regimen_X_Hotel]'))
ALTER TABLE [MAX_POWER].[Regimen_X_Hotel] CHECK CONSTRAINT [FK_Regimen_X_Hotel_Regimen]
GO
/****** Object:  ForeignKey [FK_Reservas_Cliente]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Cliente] FOREIGN KEY([id_cliente_titular])
REFERENCES [MAX_POWER].[Cliente] ([id_cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Cliente]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] CHECK CONSTRAINT [FK_Reservas_Cliente]
GO
/****** Object:  ForeignKey [FK_Reservas_Estado]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Estado] FOREIGN KEY([id_estado])
REFERENCES [MAX_POWER].[Estado] ([id_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Estado]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] CHECK CONSTRAINT [FK_Reservas_Estado]
GO
/****** Object:  ForeignKey [FK_Reservas_Regimen]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Regimen] FOREIGN KEY([id_regimen])
REFERENCES [MAX_POWER].[Regimen] ([id_regimen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Reservas_Regimen]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Reservas]'))
ALTER TABLE [MAX_POWER].[Reservas] CHECK CONSTRAINT [FK_Reservas_Regimen]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Roles]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Roles] FOREIGN KEY([id_rol])
REFERENCES [MAX_POWER].[Roles] ([id_rol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Roles]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Roles]
GO
/****** Object:  ForeignKey [FK_Usuario_X_Rol_Usuarios]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_X_Rol_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [MAX_POWER].[Usuarios] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuario_X_Rol_Usuarios]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuario_X_Rol]'))
ALTER TABLE [MAX_POWER].[Usuario_X_Rol] CHECK CONSTRAINT [FK_Usuario_X_Rol_Usuarios]
GO
/****** Object:  ForeignKey [FK_Usuarios_Tipo_documento]    Script Date: 11/11/2014 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]'))
ALTER TABLE [MAX_POWER].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipo_documento] FOREIGN KEY([tipo_documento_id])
REFERENCES [MAX_POWER].[Tipo_documento] ([id_tipo_documento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[MAX_POWER].[FK_Usuarios_Tipo_documento]') AND parent_object_id = OBJECT_ID(N'[MAX_POWER].[Usuarios]'))
ALTER TABLE [MAX_POWER].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipo_documento]
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

/* V - HABITACIONES */
IF OBJECT_ID('MAX_POWER.V_Habitaciones', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Habitaciones
GO

CREATE VIEW [MAX_POWER].V_Habitaciones AS 
SELECT DISTINCT 
                      TOP (100) PERCENT Hotel_Ciudad AS Ciudad_Hotel, Hotel_Calle AS Calle_Hotel, Hotel_Nro_Calle AS Altura_Hotel, Habitacion_Numero AS Numero, 
                      Habitacion_Piso AS Piso, Habitacion_Frente AS Frente, Habitacion_Tipo_Codigo AS Tipo
FROM         gd_esquema.Maestra
ORDER BY Ciudad_Hotel, Calle_Hotel, Altura_Hotel, Piso
GO

/* V - HOTELES */
IF OBJECT_ID('MAX_POWER.V_Hoteles', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Hoteles
GO

CREATE VIEW [MAX_POWER].V_Hoteles AS 
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

/* V - RESERVAS */
IF OBJECT_ID('MAX_POWER.V_Reservas', 'V') IS NOT NULL
  DROP VIEW MAX_POWER.V_Reservas
GO

CREATE VIEW [MAX_POWER].V_Reservas AS 
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
		return (select id_pais from MAX_POWER.paises where nombre = @pais)
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
        return (select id from MAX_POWER.Hoteles 
					where	calle = @calle and
							altura = @altura and
							ciudad = @ciudad)
    END
GO


IF OBJECT_ID('MAX_POWER.buscar_ID_HabitacionReservada', 'FN') IS NOT NULL
  DROP FUNCTION MAX_POWER.buscar_ID_HabitacionReservada
GO	

CREATE FUNCTION [MAX_POWER].buscar_ID_HabitacionReservada (@id_habitacion as bigint, @id_reserva as bigint)
returns bigint
    BEGIN 
        return (select id from MAX_POWER.HabitacionReservada 
					where habitacion_id = @id_habitacion and
						reserva_id = @id_reserva)
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
AS INSERT INTO MAX_POWER.Paises (nombre)
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

/* SP - RESERVAS */
IF OBJECT_ID('MAX_POWER.IMP_Reserva', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Reserva
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Reserva
AS INSERT INTO MAX_POWER.Reservas (id_reserva, fecha_realizacion, fecha_inicio, fecha_fin, id_cliente_titular, id_regimen)
	select codigo, fecha_inicio, fecha_inicio, fecha_inicio + noches as fecha_fin,
		MAX_POWER.buscar_ID_Cliente(cliente, nombre, Apellido) as cliente_id, MAX_POWER.buscar_ID_Regimen(regimen) as regimen
	from MAX_POWER.V_Reservas
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
AS INSERT INTO MAX_POWER.Hoteles (calle, altura, ciudad, estrellas, recarga_estrellas)
	select Calle, Altura, Ciudad, Estrellas, Recarga_Estrella
	from MAX_POWER.V_Hoteles
GO

/* SP - HABITACION */
IF OBJECT_ID('MAX_POWER.IMP_Habitacion', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Habitacion
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Habitacion
AS INSERT INTO MAX_POWER.Habitacion (id_hotel, id_tipo_habitacion, numero, piso, ubicacion, habilitada)
	select MAX_POWER.buscar_ID_Hotel(Ciudad_Hotel, Calle_Hotel, Altura_Hotel) as hotel_id, Tipo, Numero, 
			Piso, 
			case when Frente = 'S' then 'N' else 'S' end as interna, /* TODO : VER ESTO !!! */
			'S' as habilitada
	from MAX_POWER.V_Habitaciones
GO

/* SP - HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_HabitacionReservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_HabitacionReservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_HabitacionReservada AS
insert into MAX_POWER.HabitacionReservada (habitacion_id, reserva_id) 
 (select MAX_POWER.buscar_ID_Habitacion(MAX_POWER.buscar_ID_Hotel(hotel_Ciudad,Hotel_Calle,hotel_Nro_Calle), 
			Habitacion_Piso, Habitacion_Numero),
			codigo
			from MAX_POWER.V_Reservas)
GO


/* SP - HABITACION_RESERVADA_CLIENTE */
IF OBJECT_ID('MAX_POWER.IMP_HabitacionReservada_Cliente', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_HabitacionReservada_Cliente
GO	

CREATE PROCEDURE [MAX_POWER].IMP_HabitacionReservada_Cliente AS
insert into MAX_POWER.HabitacionReservada_X_Cliente (habitacion_reservada_id, cliente_id) 
 (select MAX_POWER.buscar_ID_HabitacionReservada(MAX_POWER.buscar_ID_Habitacion(MAX_POWER.buscar_ID_Hotel(hotel_Ciudad,Hotel_Calle,hotel_Nro_Calle), Habitacion_Piso, Habitacion_Numero), codigo) as id_HabReservada,
			MAX_POWER.buscar_ID_Cliente(Cliente, Nombre, Apellido) as id_cliente
			from MAX_POWER.V_Reservas)
GO


/* SP - PRODUCTO_HABITACION_RESERVADA */
IF OBJECT_ID('MAX_POWER.IMP_Producto_HabitacionReservada', 'P') IS NOT NULL
  DROP PROCEDURE MAX_POWER.IMP_Producto_HabitacionReservada
GO	

CREATE PROCEDURE [MAX_POWER].IMP_Producto_HabitacionReservada AS
insert into MAX_POWER.Producto_X_HabitacionReservada (id_habitacion_reservada, id_producto, cantidad, id_factura) 
 (select hr.id, v.Consumible, v.Cantidad, v.Factura 
		from MAX_POWER.V_ItemFactura v
		join MAX_POWER.Factura f on f.id_factura = v.Factura
		join MAX_POWER.HabitacionReservada hr on hr.reserva_id = f.id_reserva)
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
drop index IDX_Reservas on Reservas
go
drop index IDX_Habitaciones on Habitacion
go
drop index IDX_Hoteles on Hoteles
go
drop index IDX_Habitaciones_Reservadas on HabitacionReservada
go

delete from reservas;
delete from cliente;
delete from paises;
delete from Producto;
delete from tipo_Habitacion;
delete from Regimen;
delete from factura;
delete from hoteles;
delete from Habitacion;
delete from HabitacionReservada;
delete from Producto_X_HabitacionReservada;
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
create nonclustered index IDX_Reservas on MAX_POWER.Reservas(id_reserva);

print 'Importado: Reserva.'

EXEC [MAX_POWER].IMP_Factura 
GO
print 'Importado: Factura.'

EXEC [MAX_POWER].IMP_Hotel 
GO
create nonclustered index IDX_Hoteles on MAX_POWER.Hoteles(id);
print 'Importado: Hotel.'

EXEC [MAX_POWER].IMP_Habitacion 
GO

create nonclustered index IDX_Habitaciones on MAX_POWER.Habitacion(id_habitacion, numero, piso);
print 'Importado: Habitacion.'

insert into MAX_POWER.Tipo_documento (descripcion) values('DNI')
update MAX_POWER.Cliente set id_tipo_identificacion = 1

EXEC [MAX_POWER].IMP_HabitacionReservada
GO
create nonclustered index IDX_Habitaciones_Reservadas on MAX_POWER.HabitacionReservada(reserva_id, habitacion_id);
print 'Importado: Habitacion Reservada.'

EXEC [MAX_POWER].IMP_HabitacionReservada_Cliente
GO
print 'Importado: Habitacion Reservada por Cliente.'

EXEC [MAX_POWER].IMP_Producto_HabitacionReservada
GO
print 'Importado: Producto por Habitacion Reservada.'

print 'MIGRACION FINALIZADA.'


EXEC [MAX_POWER].Detectar_Clientes_Repetidos
GO
print 'Clientes duplicados detectados.'

print 'Comenzando migracion de SP de aplicaion'
GO

CREATE PROCEDURE [MAX_POWER].roles_disponibles
AS SELECT * FROM MAX_POWER.Roles WHERE UPPER(habilitado) = 'S'
GO

CREATE PROCEDURE [MAX_POWER].hoteles_disponibles
AS SELECT * FROM MAX_POWER.Hoteles
GO

CREATE PROCEDURE [MAX_POWER].documentos_disponibles
AS SELECT * FROM MAX_POWER.Tipo_documento
GO

CREATE PROCEDURE [MAX_POWER].funcionalidades_disponibles
AS SELECT * FROM MAX_POWER.Funcionalidad
GO

CREATE PROCEDURE [MAX_POWER].obtener_funcionalidades(@id_rol bigint)
AS SELECT descripcion 
FROM MAX_POWER.Funcionalidad_X_Rol FR
join MAX_POWER.Funcionalidad Fun on Fun.id_funcionalidad = FR.id_funcionalidad
WHERE fr.id_rol = @id_rol
GO

CREATE PROCEDURE [MAX_POWER].obtener_roles(@id_usuario bigint)
AS SELECT nombre, habilitado
FROM MAX_POWER.Usuario_X_Rol UR
join MAX_POWER.Roles on Roles.id_rol = UR.id_rol
WHERE id_usuario = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].obtener_hoteles(@id_usuario bigint)
AS SELECT nombre, mail, telefono, calle, altura, fecha_creacion, estrellas, recarga_estrellas, pais_id, ciudad
FROM MAX_POWER.Hotel_X_Empleado HE
join MAX_POWER.Hoteles on HE.hotel_id = Hoteles.id
WHERE usuario_id = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].buscar_usuario_por_id(@id_usuario bigint)
AS SELECT * FROM MAX_POWER.Usuarios WHERE id = @id_usuario
GO

CREATE PROCEDURE [MAX_POWER].baja_usuario(@id_usuario bigint)
AS
UPDATE MAX_POWER.Usuarios set habilitado = 'N' WHERE id = @id_usuario
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
INSERT INTO MAX_POWER.Hotel_X_Empleado (usuario_id, hotel_id) VALUES (@id_usuario, @id_hotel)
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
WHERE usuario_id = @id_usuario
AND hotel_id = @id_hotel
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

CREATE PROCEDURE [MAX_POWER].chequear_login(@usuario varchar(50), @password varchar(50), @error bigint OUTPUT)
AS
IF not exists (SELECT * FROM MAX_POWER.Usuarios WHERE Username = @usuario)
	SET @error = -2
ELSE
	BEGIN
	IF  not exists (SELECT * FROM MAX_POWER.Usuarios WHERE Username = @usuario AND pw = @password)
	SET @error = -1
	ELSE
		BEGIN
		SET @error = 0
		SELECT * FROM MAX_POWER.Usuarios WHERE Username = @usuario AND pw = @password;
		END
	END
RETURN
GO

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

CREATE PROCEDURE [MAX_POWER].obtener_habitaciones(@id_reserva bigint)
AS SELECT DISTINCT H.id_habitacion, H.id_tipo_habitacion, H.descripcion
FROM MAX_POWER.HabitacionReservada HR
join MAX_POWER.Habitacion H on H.id_habitacion = HR.habitacion_id
WHERE HR.reserva_id = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_no_show(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.Reservas SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%no show') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_cliente(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.Reservas SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%cliente') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].cancelar_reserva_recepcion(@id_reserva bigint)
AS
DECLARE @estado bigint
UPDATE MAX_POWER.Reservas SET id_estado = (SELECT id_Estado FROM MAX_POWER.Estado WHERE descripcion LIKE '%personal de recepcion') WHERE id_reserva = @id_reserva
GO

CREATE PROCEDURE [MAX_POWER].productos_disponibles
AS SELECT DISTINCT id_producto, descripcion FROM MAX_POWER.Producto
GO

print 'Finalizo la importacion de SP propios de la aplicacion.'

