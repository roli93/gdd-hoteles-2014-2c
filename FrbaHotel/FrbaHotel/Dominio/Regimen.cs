using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class Regimen:Entidad
    {
        public string Descripcion { get; set; }
        public double PrecioBase { get; set; }

        public Regimen(int id, string desc)
        {
            this.Id = id;
            this.Descripcion = desc;
        }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
