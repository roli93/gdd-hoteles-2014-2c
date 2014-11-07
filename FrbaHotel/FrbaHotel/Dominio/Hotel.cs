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
    public class Hotel:Entidad
    {
        private string nombre;

        public Hotel(int id, string nombre)
        {
            this.Id = id;
            this.nombre = nombre;
        }
        public string Nombre { get; set; }

        public override string ToString()
        {
            return nombre;
        }

    }
}
