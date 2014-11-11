using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Dominio;


namespace FrbaHotel
{
    public static class Sesion
    {
        private static Usuario usuario;
        public delegate TResul Constructor<T,TResul>(T entrada);

        public static Usuario Usuario
        {
            get
            {
                return usuario;
            }
            set
            {
                usuario = value;
            }
        }

        public static List<Rol> RolesDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Rol>((e) => new Rol((int)e["id_rol"], (string)e["descripcion"]), "roles_disponibles");
                return new List<Rol> { new Rol(1, "admin"), new Rol(2, "recep") };
            }
        }

        public static List<Hotel> HotelesDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Hotel>((e) => new Hotel((int)e["id_hotel"], (string)e["nombre"]), "hoteles_disponibles");
                return new List<Hotel> { new Hotel(1, "SuperHote"), new Hotel(2, "HotelFeo"), new Hotel(3, "Hotelucho") };
            }
        }

        public static List<Hotel> HotelesDisponiblesUsuario
        {
            get
            {
                if (Usuario.esGuest())
                {
                    //TODO return elementosDisponibles<Hotel>((e) => new Hotel((int)e["id_hotel"], (string)e["nombre"]), "hoteles_disponibles");
                    return new List<Hotel> { new Hotel(1, "SuperHote"), new Hotel(2, "HotelFeo"), new Hotel(3, "Hotelucho") };
                }
                else
                {
                    return new List<Hotel> { Usuario.Hotel };
                }
            }
        }



        public static List<TipoDocumento> TiposDocumentoDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<TipoDocumento>((e) => new TipoDocumento((int)e["id_tipo_documento"], (string)e["descripcion"]), "documentos_disponibles");
                return new List<TipoDocumento> { new TipoDocumento(1, "DNI"), new TipoDocumento(2, "LC") };
            }
        }

        public static List<TipoDocumento> TiposIdDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<TipoDocumento>((e) => new TipoDocumento((int)e["id_tipo_identificacion"], (string)e["descripcion"]), "identificaciones_disponibles");
                return new List<TipoDocumento> { new TipoDocumento(1, "DNI"), new TipoDocumento(2, "Pasaporte") };
            }
        }


        public static List<Funcionalidad> FuncionalidadesDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Funcionalidad>((e) => new Funcionalidad((int)e["id_funcionalidad"], (string)e["descripcion"]), "funcionalidades_disponibles");
                return new List<Funcionalidad> { new Funcionalidad(1, "Habilitar gente"), new Funcionalidad(2, "Realizar check in"), new Funcionalidad(3, "Reservar") };
            }
        }

        public static List<Pais> PaisesDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Pais>((e) => new Pais((int)e["id_pais"], (string)e["descripcion"]), "paises_disponibles");
                return new List<Pais> { new Pais(1,"Argentina"), new Pais(2,"Brasil"), new Pais(3,"España")};
            }
        }

        public static List<TipoHabitacion> TiposHabitacionDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<TipoHabitaion>((e) => new TipoHabitacion(DATOS, "tipos_habitacion_disponibles");
                return new List<TipoHabitacion> { new TipoHabitacion(1, "KingSize"), new TipoHabitacion(2, "TamanioBanio"), new TipoHabitacion(3, "TamanioStandar") };
            }
        }

        public static List<Producto> ProductosDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Producto>((e) => new Producto((int)e["id_producto"], (string)e["descripcion"]), "productos_disponibles");
                return new List<Producto> { new Producto(1, "Coca-Cola"), new Producto(2, "Rhodesia"), new Producto(3, "Dr. Lemon") };
            }
        }

        public static List<ModoPago> ModosPagoDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<Producto>((e) => new ModoPago((int)e["id_metodo_pago"], (string)e["descripcion"]), "metodos_pago_disponibles");
                return new List<ModoPago> { new ModoPago(1, "Tarjeta de crédito"), new ModoPago(2, "Tarjeta de Débito"), new ModoPago(3, "Efectivo") };
            }
        }


        private static List<T> elementosDisponibles<T>(Constructor<DataRow,T> constructor, string procedure)
        {
            DataTable elementos = DatabaseAdapter.traerDataTable(procedure);
            List<T> listaElementos = new List<T>();
            foreach (DataRow elemento in elementos.Rows)
                listaElementos.Add(constructor(elemento));
            return listaElementos;
        }

                
        public static void iniciar(string username, string password)
        {

            if (username.Equals("Guest"))
            {
                Sesion.Usuario = new Usuario(-1, "Guest");
                Sesion.Usuario.Rol = new Rol(-1/*TODO id guest*/, "Guest");
            }
            else
            {
                /*int error=0;
                DataTable tablaUsuario = DatabaseAdapter.traerDataTable("login", username, password,error);
                DatabaseAdapter.CheckExcepcionPara(error);

                Sesion.Usuario = new Usuario((int)tablaUsuario.Rows[0]["id_usuario"],(string)tablaUsuario.Rows[0]["username"]);
                */
                Sesion.Usuario = new Usuario(0, (string)"pepe");
            }
        }
    }
}
