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
    public class Rol:Entidad
    {
        private string descripcion;

        public Rol(int id, string descripcion)
        {
            this.Id = id;
            this.descripcion = descripcion;
        }
        
        public List<Funcionalidad> Funcionalidades
        {
            get
            {
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_funcionalidades", Id);
                List<Funcionalidad> funcionalidades = new List<Funcionalidad>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    funcionalidades.Add(new Funcionalidad(Convert.ToInt32(elemento["id_funcionalidad"]), elemento["descripcion"].ToString()));
                }
                return funcionalidades;
            }
        }

        public string Descripcion { get; set; }

        public override string ToString()
        {
            return descripcion;
        }
    }
}
