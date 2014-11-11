using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class Producto:Entidad
    {
        string Descripcion { get; set; }

        public Producto()
        {
        }

        public Producto(int Id, string desc)
        {
            this.Id = Id;
            this.Descripcion = desc;
        }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
