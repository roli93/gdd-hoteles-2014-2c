﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;


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

        public static List<TipoDocumento> TiposDocumentoDisponibles
        {
            get
            {
                //TODO return elementosDisponibles<TipoDocumento>((e) => new TipoDocumento((int)e["id_documento"], (string)e["descripcion"]), "documentos_disponibles");
                return new List<TipoDocumento> { new TipoDocumento(1, "DNI"), new TipoDocumento(2, "LC") };
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
            /*int error=0;
            DataTable tablaUsuario = DatabaseAdapter.traerDataTable("login", username, password,error);
            DatabaseAdapter.CheckExcepcionPara(error);

            Sesion.Usuario = new Usuario((int)tablaUsuario.Rows[0]["id_usuario"],(string)tablaUsuario.Rows[0]["username"]);
            */
            Sesion.Usuario = new Usuario(0, (string)"pepe");
        }
    }
}
