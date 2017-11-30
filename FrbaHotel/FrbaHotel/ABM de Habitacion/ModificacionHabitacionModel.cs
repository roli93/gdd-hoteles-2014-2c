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
        public bool habilitada;


        public void CargarHabitacion()
        {
            int nro, pis;
            HomeHabitaciones.buscarPorId(idHabitacion,out hotel,out nro,out pis,out tipo, out ubicacion, out descripcion,out habilitada) ;
            numero = nro.ToString();
            piso = pis.ToString();
        }

        protected override void Guardar()
        {
            ValidarErrores();
            HomeHabitaciones.actualizarHabitacion(idHabitacion, hotel, Convert.ToInt32(numero), Convert.ToInt32(piso), tipo, ubicacion, descripcion,habilitada);
        }

    }
}
