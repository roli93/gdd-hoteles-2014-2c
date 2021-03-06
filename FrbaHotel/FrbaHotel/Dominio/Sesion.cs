﻿using System;
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
        public static DateTime FechaActual { get; set; }

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
                return elementosDisponibles<Rol>((e) => new Rol(Convert.ToInt32(e["id_rol"]), e["nombre"].ToString()), "roles_disponibles");
            }
        }

        public static List<Hotel> HotelesDisponibles
        {
            get
            {
                DataTable elementos = DatabaseAdapter.traerDataTable("hoteles_disponibles",Sesion.FechaActual);
                List<Hotel> listaElementos = new List<Hotel>();
                foreach (DataRow elemento in elementos.Rows)
                    listaElementos.Add(new Hotel(Convert.ToInt32(elemento["id_hotel"]),elemento["nombre"].ToString()));
                return listaElementos;
                
            }
        }

        public static List<Hotel> HotelesDisponiblesUsuario
        {
            get
            {
                if (Usuario.esGuest())
                {
                    return HotelesDisponibles;
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
                return elementosDisponibles<TipoDocumento>((e) => new TipoDocumento(Convert.ToInt32(e["id_tipo_documento"]), e["descripcion"].ToString()), "documentos_disponibles");
            }
        }

        public static List<TipoDocumento> TiposIdDisponibles
        {
            get
            {
                return TiposDocumentoDisponibles;
            }
        }


        public static List<Funcionalidad> FuncionalidadesDisponibles
        {
            get
            {
                return elementosDisponibles<Funcionalidad>((e) => new Funcionalidad(Convert.ToInt32(e["id_funcionalidad"]), e["descripcion"].ToString()), "funcionalidades_disponibles");
            }
        }

        public static List<Pais> PaisesDisponibles
        {
            get
            {
                return elementosDisponibles<Pais>((e) => new Pais(Convert.ToInt32(e["id_pais"]), e["nombre"].ToString()), "paises_disponibles");
            }
        }

        public static List<string> CiudadesDisponibles
        {
            get
            {
                return elementosDisponibles<string>(((e) => e["ciudad"].ToString()), "ciudades_disponibles");
            }
        }

        public static List<Regimen> RegimenesDisponibles
        {
            get
            {
                return elementosDisponibles<Regimen>((e) => new Regimen(Convert.ToInt32(e["id_regimen"]),e["descripcion"].ToString()), "regimenes_disponibles");
            }
        }


        public static List<TipoHabitacion> TiposHabitacionDisponibles
        {
            get
            {
                return elementosDisponibles<TipoHabitacion>((e) => new TipoHabitacion(Convert.ToInt32(e["id_tipo_habitacion"]),e["descripcion"].ToString()), "tipos_habitacion_disponibles");
            }
        }

        public static List<Producto> ProductosDisponibles
        {
            get
            {
                return elementosDisponibles<Producto>((e) => new Producto(Convert.ToInt32(e["id_producto"]), e["descripcion"].ToString()), "productos_disponibles");
            }
        }

        public static List<ModoPago> ModosPagoDisponibles
        {
            get
            {
                return elementosDisponibles<ModoPago>((e) => new ModoPago(Convert.ToInt32(e["id_metodo_pago"]), e["descripcion"].ToString()), "metodos_pago_disponibles");
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
            int error = 0;
            error = DatabaseAdapter.ejecutarProcedureWithReturnValue("chequear_login", username, password);
            DataTable tablaUsuario = DatabaseAdapter.traerDataTable("usuario_para_login", username, password);
            DatabaseAdapter.CheckExcepcionPara(error);

            Sesion.Usuario = new Usuario(Convert.ToInt32(tablaUsuario.Rows[0]["id_usuario"]),tablaUsuario.Rows[0]["username"].ToString());
        }
    }
}
