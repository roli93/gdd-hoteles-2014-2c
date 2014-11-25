using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class Agregar_Habitación : Alta
    {
        private GenerarReserva generarReserva;
        private Hotel hotel;
        private int cantidad;
        private TipoHabitacion tipoHabitacion;
        private DateTime fechaInicio, fechaFin;

        public void Agregar()
        {
            ValidarErrores();
            List<Habitacion> habitaciones =  HomeReservas.BuscarHabitaciones(hotel, tipoHabitacion,fechaInicio,fechaFin);
            habitaciones.RemoveAll(h => generarReserva.Habitaciones.Any<Habitacion>(h2 => h2.Equals(h)));
            if(habitaciones.Count<cantidad)
                throw new ExcepcionFrbaHoteles("No hay tantas habiatciones disponibles del tipo que ud. solicita");
            generarReserva.AgregarHabitaciones(habitaciones.Take<Habitacion>(cantidad).ToList<Habitacion>());
            Close();

        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Tipo" }, new object[] { tipoHabitacion });
        }



    }
}