using System;
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

        public static List<Object> ObjectRoles
        {
            get
            {
                return Usuario.Roles.Cast<Object>().ToList();
            }
        }

        public static List<Object> ObjectHoteles
        {
            get
            {
                return Usuario.Hoteles.Cast<Object>().ToList();
            }
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
