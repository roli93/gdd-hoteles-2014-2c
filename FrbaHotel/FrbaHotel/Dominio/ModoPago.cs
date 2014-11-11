using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class ModoPago:Entidad
    {
        string Descripcion { get; set; }

        public ModoPago()
        {
        }

        public ModoPago(int Id, string desc)
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
