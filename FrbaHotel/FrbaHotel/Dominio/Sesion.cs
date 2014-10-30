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
                
        public static void iniciar(string username, string password)
        {
          /*  int exitoso=0;
            DataTable tablaUsuario = DatabaseAdapter.traerDataTable("login", username, password,exitoso);
            if (exitoso==0) //Fallar, no coincide

            Sesion.Usuario = new Usuario((int)tablaUsuario.Rows[0]["id_usuario"],(string)tablaUsuario.Rows[0]["username"]);
            */
            Sesion.Usuario = new Usuario(0, (string)"pepe");
        }
        
        private static string[] dataTableToString(string procedure, string columna, object argumento)
        {
            DataTable elementos = DatabaseAdapter.traerDataTable(procedure, argumento);
            List<string> lista = new List<string>();

            foreach (DataRow elemento in elementos.Rows)
            {
               lista.Add(elemento[columna].ToString());
            }
            return lista.ToArray();
        }

        public static string[] getFuncionalidades()
        {
           // return dataTableToString("obtener_funcionalidades","Descripcion",rol)
            return new string[] { "jaja", "jeje" };
        }

        public static string[] getRoles()
        {
            // return dataTableToString("obtener_roles","Descripcion",usuario)
            return new string[] { "jaja", "jeje" };
        }
    }
}
