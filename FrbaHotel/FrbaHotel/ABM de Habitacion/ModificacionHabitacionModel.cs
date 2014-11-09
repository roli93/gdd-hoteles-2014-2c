using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class ModificacionHabitacion
    {
        public int idHabitacion;

        public void CargarHabitacion()
        {
            HomeHabitaciones.buscarPorId(idHabitacion,out hotel,out numero,out piso,out tipo, out ubicacion, out descripcion) ;
            
        }

        protected override void Guardar()
        {
            ValidarErrores();
            HomeHabitaciones.actualizarHabitacion(idHabitacion, hotel, numero, piso, tipo, ubicacion, descripcion);
        }

    }
}
