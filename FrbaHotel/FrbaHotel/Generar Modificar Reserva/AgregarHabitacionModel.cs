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
        public Hotel hotel;
        public int cantidad;
        public TipoHabitacion tipoHabitacion;
        public DateTime fechaInicio, fechaFin;
        public bool informar = true;

        public void Agregar()
        {
            ValidarErrores();
            List<Habitacion> habitaciones =  HomeReservas.BuscarHabitaciones(hotel, tipoHabitacion,fechaInicio,fechaFin,generarReserva.Regimen);
            habitaciones.RemoveAll(h => generarReserva.Habitaciones.Any<Habitacion>(h2 => h2.Equals(h)));
            if(habitaciones.Count<cantidad)
                throw new ExcepcionFrbaHoteles("No hay tantas habiatciones disponibles del tipo que ud. solicita");
            generarReserva.AgregarHabitaciones(habitaciones.Take<Habitacion>(cantidad).ToList<Habitacion>());
            Habitacion habitacion = habitaciones.ElementAt<Habitacion>(0);
            if (informar)
            {
                MessageBox.Show("Se han agregado " + cantidad + " habitaciones con un costo diario de $"
                             + habitacion.Costo + " cada una\ntotalizando unos $" + habitacion.Costo * cantidad + " por día");
            }
            Close();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Tipo" }, new object[] { tipoHabitacion });
        }



    }
}