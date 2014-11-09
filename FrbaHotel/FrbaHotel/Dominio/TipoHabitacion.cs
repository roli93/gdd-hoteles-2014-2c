using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class TipoHabitacion : Entidad
    {

        public string descripcion;

        public TipoHabitacion(int unId,string unaDescripcion)
        {
            this.Id = unId;
            this.descripcion = unaDescripcion;
        }

    }
}
