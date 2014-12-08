using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Forms_genericos
{
    public class CustomDateTimePicker:System.Windows.Forms.DateTimePicker
    {
        public CustomDateTimePicker()
            : base()
        {
            if(MinDate<Sesion.FechaActual && Sesion.FechaActual<MaxDate)
                this.Value = Sesion.FechaActual;
        }

    }
}
