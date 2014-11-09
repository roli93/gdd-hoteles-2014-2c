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
    public class Funcionalidad : Entidad
    {
        public Funcionalidad(int id, string descripcion)
        {
            this.Id = id;
            this.Descripcion = descripcion;
        }

        public string Descripcion { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }

    }
}
