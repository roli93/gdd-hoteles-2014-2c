using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class TipoHabitacion : Entidad
    {

        public TipoHabitacion(int unId,string unaDescripcion)
        {
            this.Id = unId;
            this.Descripcion = unaDescripcion;
        }

        public string Descripcion { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
