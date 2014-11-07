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
    public class Hotel:Entidad
    {
        private string nombre;
        private List<Habitacion> habitaciones;

        public Hotel(int id, string nombre)
        {
            this.Id = id;
            this.nombre = nombre;
        }
        public string Nombre { get; set; }
        public List<Habitacion> Habitaciones { 
            get
            {  /*DataTable elementos = DatabaseAdapter.traerDataTable("obtener_habitaciones", id);
                List<Habitacion> habitaciones = new List<Habitacion>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    habitaciones.Add(new Funcionalidad((int)elemento["id_funcionalidad"], (string)elemento["descripcion"]));
                }*/
                return habitaciones;
            }
        }


        public override string ToString()
        {
            return nombre;
        }

    }
}
